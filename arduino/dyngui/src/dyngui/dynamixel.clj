(ns dyngui.dynamixel
  (:require [serial-port :as serial]
            [clojure.string :as s]))

(def ^:dynamic *device-pattern* #".*cu\.usbserial.*")
(def ^:dynamic *port* (atom nil))
(def ^:dynamic *baud* 9600)

(defn open! []
  (let [names (filter #(re-matches *device-pattern* %)
                      (map #(.getName %)
                           (serial/port-ids)))]
    (if (zero? (count names))
      (println "ERROR: no matching devices")
      (do
        (println (str (count names) " matching devices; opening " (first names)))
        (swap! *port* (constantly (serial/open (first names) *baud*)))))))

(defn close! []
  (serial/close @*port*))

(defn send! [s]
  (when @*port*
    (serial/write @*port* (.getBytes (str s "\n")))))

(defn recv!
  ([] (recv! 0))
  ([t]
   (Thread/sleep t)
   (apply str (map (fn [_] (char (.read (:in-stream @*port*))))
                   (range (.available (:in-stream @*port*)))))))

; returns a map of motor ID => position
(defn read! [motors]
  (send! (apply str "r " (interpose " " (map str motors))))
  (let [data (if (not @*port*)
               "Motor #0 position = -1\r\nMotor #1 position = 239\r\nMotor #2 position = 109\r\nMotor #3 position = 919\r\nMotor #4 position = 98\r\nMotor #5 position = 922\r\nMotor #6 position = 453\r\nMotor #7 position = -1\r\nMotor #8 position = -1\r\nMotor #9 position = -1\r\nMotor #10 position = -1\r\nMotor #11 position = -1\r\nMotor #12 position = -1\r\nMotor #13 position = -1\r\nMotor #14 position = -1\r\nMotor #15 position = -1\r\nMotor #16 position = -1\r\n"
               (recv! (* 50 (count motors))))]
    ;(prn data)
    (zipmap motors
            (map #(Integer/parseInt (second (re-find #"= (-?\d+)" %)))
                 (s/split data #"\r\n")))))

; returns a vector of live motor IDs
(defn scan! [from to]
  (filter #(pos? (second %))
          (read! (range from (inc to)))))

