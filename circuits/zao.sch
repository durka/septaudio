v 20130925 2
C 40000 40000 0 0 0 title-B.sym
C 35400 47000 1 90 0 resistor-1.sym
{
T 35000 47300 5 10 0 0 90 0 1
device=RESISTOR
T 35100 47200 5 10 1 0 90 0 1
R13=R13
}
C 38700 48600 1 90 0 resistor-1.sym
{
T 38300 48900 5 10 0 0 90 0 1
device=RESISTOR
T 38400 48800 5 10 1 0 90 0 1
R9=R9
}
C 38700 50000 1 90 0 resistor-1.sym
{
T 38300 50300 5 10 0 0 90 0 1
device=RESISTOR
T 38400 50100 5 10 1 0 90 0 1
R7=R7
}
C 39400 44600 1 180 0 resistor-1.sym
{
T 39100 44200 5 10 0 0 180 0 1
device=RESISTOR
T 39200 44300 5 10 1 0 180 0 1
R11=R11
}
C 41600 45100 1 0 0 resistor-1.sym
{
T 41900 45500 5 10 0 0 0 0 1
device=RESISTOR
T 41800 45300 5 10 1 1 0 0 1
refdes=R14
}
C 45900 44700 1 0 0 resistor-1.sym
{
T 46200 45100 5 10 0 0 0 0 1
device=RESISTOR
T 46100 45000 5 10 1 1 0 0 1
refdes=R6
}
C 46800 43900 1 0 0 resistor-1.sym
{
T 47100 44300 5 10 0 0 0 0 1
device=RESISTOR
T 47000 44200 5 10 1 1 0 0 1
refdes=R22
}
C 45400 47700 1 270 0 resistor-1.sym
{
T 45800 47400 5 10 0 0 270 0 1
device=RESISTOR
T 45700 47500 5 10 1 1 270 0 1
refdes=R19
}
C 46600 46600 1 270 0 resistor-1.sym
{
T 47000 46300 5 10 0 0 270 0 1
device=RESISTOR
T 46900 46400 5 10 1 1 270 0 1
refdes=R21
}
C 37500 46700 1 90 0 capacitor-1.sym
{
T 36800 46900 5 10 0 0 90 0 1
device=CAPACITOR
T 37000 46900 5 10 1 0 90 0 1
C12=1 uF
T 36600 46900 5 10 0 0 90 0 1
symversion=0.1
}
C 35800 46500 1 0 0 capacitor-1.sym
{
T 36000 47200 5 10 0 0 0 0 1
device=CAPACITOR
T 36000 47000 5 10 1 0 0 0 1
C11=C11
T 36000 47400 5 10 0 0 0 0 1
symversion=0.1
}
C 39600 48600 1 90 0 capacitor-1.sym
{
T 38900 48800 5 10 0 0 90 0 1
device=CAPACITOR
T 39100 48800 5 10 1 1 90 0 1
refdes=C10
T 38700 48800 5 10 0 0 90 0 1
symversion=0.1
}
C 58800 43200 1 0 0 IRLZ24N-1.sym
{
T 59400 43400 5 10 1 1 0 0 1
device=IRF540
T 59400 43700 5 10 0 0 0 0 1
footprint=TO-220AB
T 59400 43800 5 10 1 1 0 0 1
refdes=Q1
}
C 58800 42400 1 0 0 IRLZ24N-1.sym
{
T 59400 42600 5 10 1 1 0 0 1
device=IRF540
T 59400 42900 5 10 0 0 0 0 1
footprint=TO-220AB
T 59400 43000 5 10 1 1 0 0 1
refdes=Q1
}
C 38400 45000 1 0 0 opamp-1.sym
{
T 39100 45800 5 10 0 0 0 0 1
device=OPAMP
T 39100 45600 5 10 1 1 0 0 1
refdes=IC2B
T 39100 46400 5 10 0 0 0 0 1
symversion=0.1
}
C 35900 47800 1 0 0 pwrjack-1.sym
{
T 36000 48300 5 10 0 0 0 0 1
device=PWRJACK
T 35900 48300 5 10 1 1 0 0 1
refdes=AUDIO
}
C 35100 49700 1 0 0 12V-plus-1.sym
C 38400 51100 1 0 0 12V-plus-1.sym
C 38500 46400 1 0 0 gnd-1.sym
C 35100 46700 1 180 1 generic-power.sym
{
T 35300 46450 5 10 1 1 180 3 1
net=ECM
}
N 37300 47600 37300 47900 4
N 37300 47900 36800 47900 4
N 37300 46700 36700 46700 4
N 35800 46700 35300 46700 4
N 35300 49700 35300 47900 4
N 35300 47000 35300 46700 4
N 36800 48100 38600 48100 4
N 38600 46700 38600 48600 4
N 38600 51100 38600 50900 4
N 38600 50000 38600 49500 4
N 38600 49500 39800 49500 4
N 39400 48600 38600 48600 4
C 36800 45100 1 0 0 pot-bourns.sym
{
T 37600 46000 5 10 0 0 0 0 1
device=VARIABLE_RESISTOR
T 37400 45500 5 10 1 1 0 0 1
refdes=R12
}
C 41600 44200 1 0 0 pot-bourns.sym
{
T 42400 45100 5 10 0 0 0 0 1
device=VARIABLE_RESISTOR
T 42200 44600 5 10 1 1 0 0 1
refdes=R?
}
N 37300 46700 37300 45700 4
N 37700 45200 38400 45200 4
N 39800 46100 39800 50300 4
N 39800 46100 38400 46100 4
N 38400 46100 38400 45600 4
N 38500 44500 38400 44500 4
N 38400 44500 38400 45200 4
N 39400 44500 39400 45400 4
C 41600 45900 1 0 0 pt2399.sym
{
T 85300 92500 5 10 1 1 0 0 1
device=PT2399
T 84700 92500 5 10 1 1 0 0 1
refdes=X1
}
C 51300 46000 1 0 0 EMBEDDEDpt2399.sym
[
B 85200 91400 1800 1700 3 0 0 0 -1 -1 0 -1 -1 -1 -1 -1
P 85100 92900 85200 92900 1 0 0
{
T 85100 92900 5 10 0 0 0 0 1
pintype=unknown
T 85255 92895 1 10 1 1 0 0 1
pinlabel=VCC
T 85005 92845 5 10 1 1 0 6 1
pinnumber=1
T 85100 92900 5 10 0 0 0 0 1
pinseq=1
}
P 85100 92700 85200 92700 1 0 0
{
T 85100 92700 5 10 0 0 0 0 1
pintype=unknown
T 85255 92695 1 10 1 1 0 0 1
pinlabel=REF
T 85005 92645 5 10 1 1 0 6 1
pinnumber=2
T 85100 92700 5 10 0 0 0 0 1
pinseq=2
}
P 85100 92500 85200 92500 1 0 0
{
T 85100 92500 5 10 0 0 0 0 1
pintype=unknown
T 85255 92495 1 10 1 1 0 0 1
pinlabel=AGND
T 85005 92445 5 10 1 1 0 6 1
pinnumber=3
T 85100 92500 5 10 0 0 0 0 1
pinseq=3
}
P 85100 92300 85200 92300 1 0 0
{
T 85100 92300 5 10 0 0 0 0 1
pintype=unknown
T 85255 92295 1 10 1 1 0 0 1
pinlabel=DGND
T 85005 92245 5 10 1 1 0 6 1
pinnumber=4
T 85100 92300 5 10 0 0 0 0 1
pinseq=4
}
P 85100 92100 85200 92100 1 0 0
{
T 85100 92100 5 10 0 0 0 0 1
pintype=unknown
T 85255 92095 1 10 1 1 0 0 1
pinlabel=CLKO
T 85005 92045 5 10 1 1 0 6 1
pinnumber=5
T 85100 92100 5 10 0 0 0 0 1
pinseq=5
}
P 85100 91900 85200 91900 1 0 0
{
T 85100 91900 5 10 0 0 0 0 1
pintype=unknown
T 85255 91895 1 10 1 1 0 0 1
pinlabel=VCO
T 85005 91845 5 10 1 1 0 6 1
pinnumber=6
T 85100 91900 5 10 0 0 0 0 1
pinseq=6
}
P 85100 91700 85200 91700 1 0 0
{
T 85100 91700 5 10 0 0 0 0 1
pintype=unknown
T 85255 91695 1 10 1 1 0 0 1
pinlabel=CC1
T 85005 91645 5 10 1 1 0 6 1
pinnumber=7
T 85100 91700 5 10 0 0 0 0 1
pinseq=7
}
P 85100 91500 85200 91500 1 0 0
{
T 85100 91500 5 10 0 0 0 0 1
pintype=unknown
T 85255 91495 1 10 1 1 0 0 1
pinlabel=CC0
T 85005 91445 5 10 1 1 0 6 1
pinnumber=8
T 85100 91500 5 10 0 0 0 0 1
pinseq=8
}
P 87100 92900 87000 92900 1 0 0
{
T 87100 92900 5 10 0 0 0 0 1
pintype=unknown
T 86945 92895 1 10 1 1 0 6 1
pinlabel=LPF1IN
T 87195 92845 5 10 1 1 0 0 1
pinnumber=16
T 87100 92900 5 10 0 0 0 0 1
pinseq=16
}
P 87100 92700 87000 92700 1 0 0
{
T 87100 92700 5 10 0 0 0 0 1
pintype=unknown
T 86945 92695 1 10 1 1 0 6 1
pinlabel=LPF1OUT
T 87195 92645 5 10 1 1 0 0 1
pinnumber=15
T 87100 92700 5 10 0 0 0 0 1
pinseq=15
}
P 87100 92500 87000 92500 1 0 0
{
T 87100 92500 5 10 0 0 0 0 1
pintype=unknown
T 86945 92495 1 10 1 1 0 6 1
pinlabel=LPF2OUT
T 87195 92445 5 10 1 1 0 0 1
pinnumber=14
T 87100 92500 5 10 0 0 0 0 1
pinseq=14
}
P 87100 92300 87000 92300 1 0 0
{
T 87100 92300 5 10 0 0 0 0 1
pintype=unknown
T 86945 92295 1 10 1 1 0 6 1
pinlabel=LPF2IN
T 87195 92245 5 10 1 1 0 0 1
pinnumber=13
T 87100 92300 5 10 0 0 0 0 1
pinseq=13
}
P 87100 92100 87000 92100 1 0 0
{
T 87100 92100 5 10 0 0 0 0 1
pintype=unknown
T 86945 92095 1 10 1 1 0 6 1
pinlabel=OP2OUT
T 87195 92045 5 10 1 1 0 0 1
pinnumber=12
T 87100 92100 5 10 0 0 0 0 1
pinseq=12
}
P 87100 91900 87000 91900 1 0 0
{
T 87100 91900 5 10 0 0 0 0 1
pintype=unknown
T 86945 91895 1 10 1 1 0 6 1
pinlabel=OP2IN
T 87195 91845 5 10 1 1 0 0 1
pinnumber=11
T 87100 91900 5 10 0 0 0 0 1
pinseq=11
}
P 87100 91700 87000 91700 1 0 0
{
T 87100 91700 5 10 0 0 0 0 1
pintype=unknown
T 86945 91695 1 10 1 1 0 6 1
pinlabel=OP1IN
T 87195 91645 5 10 1 1 0 0 1
pinnumber=10
T 87100 91700 5 10 0 0 0 0 1
pinseq=10
}
P 87100 91500 87000 91500 1 0 0
{
T 87100 91500 5 10 0 0 0 0 1
pintype=unknown
T 86945 91495 1 10 1 1 0 6 1
pinlabel=OP1OUT
T 87195 91445 5 10 1 1 0 0 1
pinnumber=9
T 87100 91500 5 10 0 0 0 0 1
pinseq=9
}
T 85800 93200 8 10 0 1 0 0 1
device=PT2399
T 85200 93200 8 10 0 1 0 0 1
refdes=X?
]
{
T 85800 93200 5 10 1 1 0 0 1
device=PT2399
T 85200 93200 5 10 1 1 0 0 1
refdes=X?
}
C 40800 49800 1 0 0 5V-plus-1.sym
N 41000 49800 41000 47400 4
N 41000 47400 41800 47400 4
C 44000 48700 1 270 0 capacitor-1.sym
{
T 44700 48500 5 10 0 0 270 0 1
device=CAPACITOR
T 44500 48500 5 10 1 1 270 0 1
refdes=C19
T 44900 48500 5 10 0 0 270 0 1
symversion=0.1
}
C 44600 47700 1 270 0 capacitor-1.sym
{
T 45300 47500 5 10 0 0 270 0 1
device=CAPACITOR
T 45100 47500 5 10 1 1 270 0 1
refdes=C23
T 45500 47500 5 10 0 0 270 0 1
symversion=0.1
}
C 45800 46600 1 270 0 capacitor-1.sym
{
T 46500 46400 5 10 0 0 270 0 1
device=CAPACITOR
T 46300 46400 5 10 1 1 270 0 1
refdes=C22
T 46700 46400 5 10 0 0 270 0 1
symversion=0.1
}
C 43000 44800 1 0 0 capacitor-1.sym
{
T 43200 45500 5 10 0 0 0 0 1
device=CAPACITOR
T 43200 45300 5 10 1 1 0 0 1
refdes=C16
T 43200 45700 5 10 0 0 0 0 1
symversion=0.1
}
C 43000 43700 1 0 0 capacitor-1.sym
{
T 43200 44400 5 10 0 0 0 0 1
device=CAPACITOR
T 43200 44200 5 10 1 1 0 0 1
refdes=C17
T 43200 44600 5 10 0 0 0 0 1
symversion=0.1
}
C 44600 46200 1 270 0 capacitor-1.sym
{
T 45300 46000 5 10 0 0 270 0 1
device=CAPACITOR
T 45100 46000 5 10 1 1 270 0 1
refdes=C18
T 45500 46000 5 10 0 0 270 0 1
symversion=0.1
}
C 45000 44600 1 0 0 capacitor-1.sym
{
T 45200 45300 5 10 0 0 0 0 1
device=CAPACITOR
T 45200 45100 5 10 1 1 0 0 1
refdes=C25
T 45200 45500 5 10 0 0 0 0 1
symversion=0.1
}
C 45900 43800 1 0 0 capacitor-1.sym
{
T 46100 44500 5 10 0 0 0 0 1
device=CAPACITOR
T 46100 44300 5 10 1 1 0 0 1
refdes=C24
T 46100 44700 5 10 0 0 0 0 1
symversion=0.1
}
C 40600 47800 1 90 0 capacitor-1.sym
{
T 39900 48000 5 10 0 0 90 0 1
device=CAPACITOR
T 40200 48000 5 10 1 1 90 0 1
refdes=C13
T 39700 48000 5 10 0 0 90 0 1
symversion=0.1
}
C 40600 48700 1 90 0 capacitor-1.sym
{
T 39900 48900 5 10 0 0 90 0 1
device=CAPACITOR
T 40200 49000 5 10 1 1 90 0 1
refdes=C15
T 39700 48900 5 10 0 0 90 0 1
symversion=0.1
}
C 40100 48800 1 270 0 gnd-1.sym
N 41800 47000 40800 47000 4
N 40800 46800 40800 48700 4
N 40800 48700 40400 48700 4
N 41800 46800 40800 46800 4
N 41800 47200 40400 47200 4
N 40400 47200 40400 47800 4
N 40400 49600 41000 49600 4
N 42500 45200 42500 44300 4
C 42600 43000 1 0 0 gnd-1.sym
N 40800 45200 40800 46400 4
N 40800 46400 41800 46400 4
N 40800 45200 41600 45200 4
N 41200 43300 41200 44800 4
N 41200 44800 42100 44800 4
N 41200 43300 45000 43300 4
N 43000 43900 42700 43900 4
N 42700 43300 42700 45000 4
N 43000 45000 42700 45000 4
N 43900 45000 43900 45600 4
N 41200 45600 43900 45600 4
N 41200 45600 41200 46200 4
N 41200 46200 41800 46200 4
N 44000 43900 44000 45700 4
N 44000 45700 41400 45700 4
N 41400 45700 41400 46000 4
N 41400 46000 41800 46000 4
N 44000 43900 43900 43900 4
N 44800 46200 43800 46200 4
N 43800 46000 44400 46000 4
N 44400 46000 44400 45300 4
N 44400 45300 44800 45300 4
N 43800 46600 46700 46600 4
N 43800 46400 45600 46400 4
N 45600 46400 45600 45700 4
N 45600 45700 46000 45700 4
N 45000 45400 45000 43300 4
N 44800 46800 43800 46800 4
N 43800 47000 44500 47000 4
N 44500 47000 44500 47700 4
N 44500 47700 47400 47700 4
N 45500 46800 47300 46800 4
N 47300 46800 47300 45400 4
N 47300 45400 45000 45400 4
N 46700 45700 46700 45400 4
N 46800 44800 47400 44800 4
N 47400 44800 47400 47700 4
N 45900 44000 45900 44800 4
C 47700 43800 1 0 0 opamp-1.sym
{
T 48400 44600 5 10 0 0 0 0 1
device=OPAMP
T 48400 44400 5 10 1 1 0 0 1
refdes=IC2A
T 48400 45200 5 10 0 0 0 0 1
symversion=0.1
}
N 39800 50300 47700 50300 4
N 47700 50300 47700 44400 4
C 49100 43700 1 180 0 resistor-1.sym
{
T 48800 43300 5 10 0 0 180 0 1
device=RESISTOR
T 48900 43400 5 10 1 1 180 0 1
refdes=R10
}
N 49100 43600 49100 44200 4
N 49100 44200 48700 44200 4
N 43800 47200 44200 47200 4
N 43800 48700 45000 48700 4
N 43800 48700 43800 47400 4
C 46000 50300 1 180 0 gnd-1.sym
C 44300 49300 1 0 0 resistor-1.sym
{
T 44600 49700 5 10 0 0 0 0 1
device=RESISTOR
T 44500 49600 5 10 1 1 0 0 1
refdes=R18
}
C 45000 48600 1 0 0 resistor-1.sym
{
T 45300 49000 5 10 0 0 0 0 1
device=RESISTOR
T 45200 48800 5 10 1 1 0 0 1
refdes=R16
}
C 45000 48000 1 0 0 resistor-1.sym
{
T 45300 48400 5 10 0 0 0 0 1
device=RESISTOR
T 45200 48300 5 10 1 1 0 0 1
refdes=R17
}
C 43400 49200 1 0 0 capacitor-1.sym
{
T 43600 49900 5 10 0 0 0 0 1
device=CAPACITOR
T 43600 49700 5 10 1 1 0 0 1
refdes=C20
T 43600 50100 5 10 0 0 0 0 1
symversion=0.1
}
C 46100 49100 1 90 0 capacitor-1.sym
{
T 45400 49300 5 10 0 0 90 0 1
device=CAPACITOR
T 45700 49300 5 10 1 1 90 0 1
refdes=C21
T 45200 49300 5 10 0 0 90 0 1
symversion=0.1
}
N 44200 47800 44800 47800 4
N 44800 47800 44800 48100 4
N 44200 47800 44200 47200 4
N 44800 48100 45000 48100 4
N 45900 48100 45900 49100 4
N 45200 49400 45400 49400 4
N 45400 49100 45400 49400 4
N 45400 49100 45900 49100 4
N 39900 50200 43400 50200 4
N 39416 45382 39400 45382 4
N 39400 45400 39900 45400 4
N 39900 50200 39900 45400 4
N 43400 49400 43400 50200 4
C 49100 44000 1 0 0 capacitor-1.sym
{
T 49300 44700 5 10 0 0 0 0 1
device=CAPACITOR
T 49300 44500 5 10 1 1 0 0 1
refdes=C3
T 49300 44900 5 10 0 0 0 0 1
symversion=0.1
}
C 50500 45600 1 180 0 resistor-variable-1.sym
{
T 49700 44700 5 10 0 0 180 0 1
device=VARIABLE_RESISTOR
T 49900 45200 5 10 1 1 180 0 1
refdes=R1
}
N 50000 44200 50000 45000 4
C 49000 46200 1 270 0 gnd-1.sym
N 49600 45500 49300 45500 4
N 49300 45500 49300 46600 4
C 49600 46400 1 0 0 capacitor-1.sym
{
T 49800 47100 5 10 0 0 0 0 1
device=CAPACITOR
T 49800 46900 5 10 1 1 0 0 1
refdes=C8
T 49800 47300 5 10 0 0 0 0 1
symversion=0.1
}
N 49600 46600 49300 46600 4
N 50500 44600 50500 46600 4
C 51200 43300 1 0 0 tl494cn.sym
{
T 52100 45100 5 10 1 1 0 0 1
device=TL494CN
T 51500 45100 5 10 1 1 0 0 1
refdes=X2
}
N 51400 44200 50000 44200 4
N 51400 44800 50800 44800 4
N 50800 44800 50800 45400 4
N 50800 45400 54000 45400 4
N 54000 44200 54000 45400 4
N 54000 44800 53400 44800 4
C 52500 45700 1 180 0 gnd-1.sym
N 51400 44600 50500 44600 4
N 53400 44600 54300 44600 4
N 54300 44600 54300 46600 4
N 54300 46600 50500 46600 4
C 49500 42600 1 90 0 capacitor-1.sym
{
T 48800 42800 5 10 0 0 90 0 1
device=CAPACITOR
T 49000 42800 5 10 1 1 90 0 1
refdes=C1
T 48600 42800 5 10 0 0 90 0 1
symversion=0.1
}
N 50800 43800 49300 43800 4
N 49300 43800 49300 43500 4
C 49700 42300 1 0 0 gnd-1.sym
N 51400 43600 51200 43600 4
N 51200 43600 51200 42600 4
N 48200 42600 51200 42600 4
N 50800 44000 50800 43800 4
N 51400 44000 50800 44000 4
C 51100 43100 1 180 0 resistor-1.sym
{
T 50800 42700 5 10 0 0 180 0 1
device=RESISTOR
T 50900 42800 5 10 1 1 180 0 1
refdes=R3
}
C 50500 43600 1 180 0 resistor-variable-1.sym
{
T 49700 42700 5 10 0 0 180 0 1
device=VARIABLE_RESISTOR
T 49900 43200 5 10 1 1 180 0 1
refdes=R2
}
N 50500 43500 51000 43500 4
N 51000 43500 51000 43800 4
N 51000 43800 51400 43800 4
N 49600 43500 49600 43000 4
N 49600 43000 50200 43000 4
N 51100 43000 51200 43000 4
N 51400 43400 51400 42600 4
N 51400 42600 53800 42600 4
N 53800 42600 53800 44000 4
N 53800 43800 53400 43800 4
N 53400 44000 55300 44000 4
C 54600 44900 1 0 0 12V-plus-1.sym
N 54800 44900 54800 44000 4
N 53400 44200 54000 44200 4
N 53400 44400 53800 44400 4
N 53800 44400 53800 44600 4
C 54200 43300 1 0 0 resistor-1.sym
{
T 54500 43700 5 10 0 0 0 0 1
device=RESISTOR
T 54400 43600 5 10 1 1 0 0 1
refdes=R8
}
N 54200 43400 53400 43400 4
C 55500 42100 1 0 0 ir2111.sym
{
T 56400 43900 5 10 1 1 0 0 1
device=IR2111
T 55800 43900 5 10 1 1 0 0 1
refdes=X?
}
N 55700 43400 55100 43400 4
N 55700 43600 55300 43600 4
N 55300 43600 55300 44000 4
C 56300 44400 1 0 0 diode-1.sym
{
T 56700 45000 5 10 0 0 0 0 1
device=DIODE
T 56600 44900 5 10 1 1 0 0 1
refdes=D1
}
N 56300 44600 54800 44600 4
N 57200 44600 58400 44600 4
N 57700 44600 57700 43600 4
N 55700 43200 54300 43200 4
N 54300 43200 54300 42200 4
N 50300 42200 60700 42200 4
N 50300 42200 50300 42600 4
N 58800 43400 57700 43400 4
C 58800 42700 1 180 0 resistor-1.sym
{
T 58500 42300 5 10 0 0 180 0 1
device=RESISTOR
T 58600 42400 5 10 1 1 180 0 1
refdes=R?
}
N 55700 43000 55700 42600 4
N 55700 42600 57900 42600 4
N 59300 42400 59300 42200 4
C 59100 45400 1 0 0 generic-power.sym
{
T 59300 45650 5 10 1 1 0 3 1
net=+24V
}
C 60500 44200 1 270 0 capacitor-1.sym
{
T 61200 44000 5 10 0 0 270 0 1
device=CAPACITOR
T 61000 44000 5 10 1 1 270 0 1
refdes=C7
T 61400 44000 5 10 0 0 270 0 1
symversion=0.1
}
N 59300 45400 59300 44000 4
N 60700 44200 60700 44900 4
N 60700 44900 59300 44900 4
N 60700 43300 60700 42200 4
N 57700 43200 61800 43200 4
C 58200 44600 1 270 0 capacitor-1.sym
{
T 58900 44400 5 10 0 0 270 0 1
device=CAPACITOR
T 58700 44400 5 10 1 1 270 0 1
refdes=C2
T 59100 44400 5 10 0 0 270 0 1
symversion=0.1
}
N 58400 43700 58400 43200 4
C 57200 48200 1 0 0 lm7812-1.sym
{
T 58800 49500 5 10 0 0 0 0 1
device=7812
T 58600 49200 5 10 1 1 0 6 1
refdes=IC1
}
C 59700 48200 1 0 0 lm7805-1.sym
{
T 61300 49500 5 10 0 0 0 0 1
device=7805
T 61100 49200 5 10 1 1 0 6 1
refdes=IC3
}
N 58800 48800 59700 48800 4
N 54400 48200 60500 48200 4
C 59200 47900 1 0 0 gnd-1.sym
C 61600 48800 1 270 0 capacitor-1.sym
{
T 62300 48600 5 10 0 0 270 0 1
device=CAPACITOR
T 62100 48600 5 10 1 1 270 0 1
refdes=C27
T 62500 48600 5 10 0 0 270 0 1
symversion=0.1
}
C 59300 53300 1 0 0 capacitor-1.sym
{
T 59500 54000 5 10 0 0 0 0 1
device=CAPACITOR
T 59500 53800 5 10 1 1 0 0 1
refdes=C9
T 59500 54200 5 10 0 0 0 0 1
symversion=0.1
}
C 59300 50900 1 0 0 capacitor-1.sym
{
T 59500 51600 5 10 0 0 0 0 1
device=CAPACITOR
T 59500 51400 5 10 1 1 0 0 1
refdes=C29
T 59500 51800 5 10 0 0 0 0 1
symversion=0.1
}
C 57000 47900 1 90 0 capacitor-1.sym
{
T 56300 48100 5 10 0 0 90 0 1
device=CAPACITOR
T 56500 48100 5 10 1 1 90 0 1
refdes=C14
T 56100 48100 5 10 0 0 90 0 1
symversion=0.1
}
C 59300 51700 1 0 0 capacitor-1.sym
{
T 59500 52400 5 10 0 0 0 0 1
device=CAPACITOR
T 59500 52200 5 10 1 1 0 0 1
refdes=C28
T 59500 52600 5 10 0 0 0 0 1
symversion=0.1
}
C 59300 50100 1 0 0 capacitor-1.sym
{
T 59500 50800 5 10 0 0 0 0 1
device=CAPACITOR
T 59500 50600 5 10 1 1 0 0 1
refdes=C30
T 59500 51000 5 10 0 0 0 0 1
symversion=0.1
}
C 59300 52500 1 0 0 capacitor-1.sym
{
T 59500 53200 5 10 0 0 0 0 1
device=CAPACITOR
T 59500 53000 5 10 1 1 0 0 1
refdes=C6
T 59500 53400 5 10 0 0 0 0 1
symversion=0.1
}
C 55800 50000 1 270 0 capacitor-1.sym
{
T 56500 49800 5 10 0 0 270 0 1
device=CAPACITOR
T 56300 49800 5 10 1 1 270 0 1
refdes=C4
T 56700 49800 5 10 0 0 270 0 1
symversion=0.1
}
C 54400 48600 1 0 0 diode-1.sym
{
T 54800 49200 5 10 0 0 0 0 1
device=DIODE
T 54700 49100 5 10 1 1 0 0 1
refdes=D2
}
C 52700 48000 1 0 0 connector3-1.sym
{
T 54500 48900 5 10 0 0 0 0 1
device=CONNECTOR_3
T 52700 49100 5 10 1 1 0 0 1
refdes=POWER
}
N 57200 48800 55300 48800 4
C 59100 54100 1 0 0 12V-plus-1.sym
C 61600 51200 1 0 0 5V-plus-1.sym
C 55300 50200 1 0 0 generic-power.sym
{
T 55500 50450 5 10 1 1 0 3 1
net=+24V
}
N 55500 50200 55500 48800 4
N 56000 50000 55500 50000 4
N 56000 49100 56000 48200 4
N 59300 54100 59300 48800 4
N 61800 51200 61800 48800 4
N 61800 48800 61300 48800 4
N 61800 47900 59900 47900 4
N 59900 47900 59900 48200 4
C 60600 54400 1 180 0 gnd-1.sym
N 60200 53500 60500 53500 4
N 60500 50300 60500 54100 4
N 60200 52700 60500 52700 4
N 60200 51900 60500 51900 4
N 60200 51100 60500 51100 4
N 60200 50300 60500 50300 4
N 56800 47900 57300 47900 4
N 57300 47900 57300 48200 4
C 63500 43400 1 180 0 connector2-1.sym
{
T 63300 42400 5 10 0 0 180 0 1
device=CONNECTOR_2
T 63500 42600 5 10 1 1 180 0 1
refdes=OUTPUT
}
N 61800 42900 60700 42900 4
N 48200 43600 47700 43600 4
N 47700 43600 47700 44000 4
N 38900 45000 39600 45000 4
N 39600 45000 39600 46700 4
N 39600 46700 38600 46700 4
N 38900 45800 38900 48500 4
N 38900 48500 35300 48500 4
N 48200 43800 48200 42600 4
N 48200 44600 48200 50900 4
N 48200 50900 38600 50900 4
