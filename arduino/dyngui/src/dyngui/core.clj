(ns dyngui.core
  (:use seesaw.core)
  (:require [dyngui.dynamixel :as D]))

(def ^:dynamic *state* (atom {:win nil
                              :tick nil
                              :motors []
                              :joints []
                              :speed 50}))

(defn update-lists! [win]
  (let [select-groups (fn [klass]
                        (group-by #(clojure.set/difference (seesaw.selector/class-of %)
                                                           #{klass})
                                  (select win [(keyword (str "." klass))])))
        list-groups (select-groups "list")
        item-groups (select-groups "item")]
    (dorun (map (fn [[tag lists]]
                  (dorun (map (fn [liszt]
                                (config! liszt :model (map text (item-groups tag))))
                              lists)))
                list-groups))))

(defn -main [& args]
  (println "Starting...")
  (invoke-later
    (native!)
    (let [win (frame :title "Hello"
                     :content (border-panel
                                :north "Dynamixel Commander"
                                :center (vertical-panel :id :vert
                                          :items [(horizontal-panel
                                                    :items [(button :id :scan
                                                                    :text "Scan")
                                                            "from"
                                                            (text :id :scan-from
                                                                  :text "0")
                                                            "to"
                                                            (text :id :scan-to
                                                                  :text "16")])
                                                  (horizontal-panel
                                                    :items [(button :id :bind
                                                                    :text "Bind")
                                                            "motor"
                                                            (combobox :id :bind-first
                                                                      :class #{:list :motor})
                                                            "to"
                                                            (combobox :id :bind-second
                                                                      :class #{:list :motor})])])
                                :vgap 5 :hgap 5 :border 5)
                     :on-close :dispose)]
      (swap! *state* assoc :win win)
      (swap! *state* assoc :tick (timer (fn [state]
                                          (if (and (:win @state) (pos? (count (:motors @state))))
                                            (dorun (map (fn [[m p]]
                                                          (text! (select (:win @state) [(keyword (str "#motor" m "-pos"))]) (str p)))
                                                        (D/read! (:motors @state)))))
                                          state)
                                        :initial-value *state*))
      (listen (select win [:#scan])
              :action (fn [e]
                        (if-let [scan-results (select win [:#scan-results])]
                          (remove! (select win [:#vert]) scan-results))
                        (let [from   (Integer/parseInt (text (select win [:#scan-from])))
                              to     (Integer/parseInt (text (select win [:#scan-to])))
                          
                              motors (D/scan! from to)
                              panel  (vertical-panel :id :scan-results)]
                          (swap! *state* assoc :motors (keys motors))
                          (dorun (map (fn [[m p]]
                                        (add! panel
                                              (horizontal-panel :id (keyword (str "scan-results" m))
                                                                :items ["Motor "
                                                                        (label :class #{:item :motor}
                                                                               :text (str m))
                                                                        " is at "
                                                                        (text :id (keyword (str "motor" m "-pos"))
                                                                              :text (str p))])))
                                      motors))
                          (add! (select win [:#vert]) panel)
                          (update-lists! win)
                          (-> win pack! show!))))
      (listen win
              :window-closed (fn [e]
                               (println "Window closed")
                               (.stop (:tick @*state*))
                               (swap! *state* assoc :win nil :tick nil :motors [] :joints [])))
      (-> win pack! show!))))
