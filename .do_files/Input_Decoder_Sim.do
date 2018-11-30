##################################
# A very simple modelsim do file #
##################################

# 1) Create a library for working in
vlib work

# 2) Load file for simulation
vsim Input_Decoder

# 3) Open some selected windows for viewing
view structure
view signals
view wave

# 4) Show some of the signals in the wave window
add wave -noupdate -divider -height 32 Inputs
add wave -noupdate Clock
add wave -noupdate Choice
add wave -noupdate PU
add wave -noupdate PD
add wave -noupdate PL
add wave -noupdate PR
add wave -noupdate PReadable

add wave -noupdate IU
add wave -noupdate ID
add wave -noupdate IL
add wave -noupdate IR
add wave -noupdate IReadable

add wave -noupdate NU
add wave -noupdate ND
add wave -noupdate NL
add wave -noupdate NR
add wave -noupdate NReadable
add wave -noupdate -divider -height 32 Outputs
add wave -noupdate Up
add wave -noupdate Down
add wave -noupdate Left
add wave -noupdate Right


# 5) Set some test patterns the format is force Input value time(in ns)
#Clock 1
force Clock 1 0
force Choice 0 0
force PU 1 0
force PD 0 0
force PL 0 0
force PR 0 0
force PReadable 0 0
force IU 0 0
force ID 0 0
force IR 0 0
force IL 0 0
force IReadable 0 0
force NU 0 0
force ND 0 0
force NR 0 0
force NL 0 0
force NReadable 0 0

force Clock 0 50

#Clock 2
force Clock 1 100
force Choice 0 100
force PU 0 100
force PD 1 100
force PL 0 100
force PR 0 100
force PReadable 0 100
force IU 0 100
force ID 0 100
force IR 0 100
force IL 0 100
force IReadable 0 100
force NU 0 100
force ND 0 100
force NR 0 100
force NL 0 100
force NReadable 0 100

force Clock 0 150

#Clock 3
force Clock 1 200
force Choice 0 200
force PU 0 200
force PD 1 200
force PL 0 200
force PR 0 200
force PReadable 1 200
force IU 0 200
force ID 0 200
force IR 0 200
force IL 0 200
force IReadable 0 200
force NU 0 200
force ND 0 200
force NR 0 200
force NL 0 200
force NReadable 0 200

force Clock 0 250

#Clock 4
force Clock 1 300
force Choice 0 300
force PU 1 300
force PD 0 300
force PL 0 300
force PR 0 300
force PReadable 1 300
force IU 0 300
force ID 0 300
force IR 0 300
force IL 0 300
force IReadable 0 300
force NU 0 300
force ND 0 300
force NR 0 300
force NL 0 300
force NReadable 0 300

force Clock 0 350

#Clock 5
force Clock 1 400
force Choice 1 400
force PU 0 400
force PD 0 400
force PL 0 400
force PR 0 400
force PReadable 0 400
force IU 1 400
force ID 0 400
force IR 0 400
force IL 0 400
force IReadable 0 400
force NU 0 400
force ND 0 400
force NR 0 400
force NL 0 400
force NReadable 0 400

force Clock 0 450

#Clock 6
force Clock 1 500
force Choice 1 500
force PU 0 500
force PD 0 500
force PL 0 500
force PR 0 500
force PReadable 0 500
force IU 0 500
force ID 1 500
force IR 0 500
force IL 0 500
force IReadable 0 500
force NU 0 500
force ND 0 500
force NR 0 500
force NL 0 500
force NReadable 0 500

force Clock 0 550

#Clock 7
force Clock 1 600
force Choice 1 600
force PU 0 600
force PD 0 600
force PL 0 600
force PR 0 600
force PReadable 0 600
force IU 0 600
force ID 1 600
force IR 0 600
force IL 0 600
force IReadable 1 600
force NU 0 600
force ND 0 600
force NR 0 600
force NL 0 600
force NReadable 0 600

force Clock 0 650

#Clock 8
force Clock 1 700
force Choice 1 700
force PU 0 700
force PD 0 700
force PL 0 700
force PR 0 700
force PReadable 0 700
force IU 1 700
force ID 0 700
force IR 0 700
force IL 0 700
force IReadable 1 700
force NU 0 700
force ND 0 700
force NR 0 700
force NL 0 700
force NReadable 0 700

force Clock 0 750

#Clock 9
force Clock 1 800
force Choice 10 800
force PU 0 800
force PD 0 800
force PL 0 800
force PR 0 800
force PReadable 0 800
force IU 0 800
force ID 0 800
force IR 0 800
force IL 0 800
force IReadable 0 800
force NU 1 800
force ND 0 800
force NR 0 800
force NL 0 800
force NReadable 0 800

force Clock 0 850

#Clock 10
force Clock 1 900
force Choice 10 900
force PU 0 900
force PD 0 900
force PL 0 900
force PR 0 900
force PReadable 0 900
force IU 0 900
force ID 0 900
force IR 0 900
force IL 0 900
force IReadable 0 900
force NU 0 900
force ND 1 900
force NR 0 900
force NL 0 900
force NReadable 0 900

force Clock 0 950

#Clock 11
force Clock 1 1000
force Choice 10 1000
force PU 0 1000
force PD 0 1000
force PL 0 1000
force PR 0 1000
force PReadable 0 1000
force IU 0 1000
force ID 0 1000
force IR 0 1000
force IL 0 1000
force IReadable 0 1000
force NU 0 1000
force ND 1 1000
force NR 0 1000
force NL 0 1000
force NReadable 1 1000

force Clock 0 1050

#Clock 12
force Clock 1 1100
force Choice 10 1100
force PU 0 1100
force PD 0 1100
force PL 0 1100
force PR 0 1100
force PReadable 0 1100
force IU 0 1100
force ID 0 1100
force IR 0 1100
force IL 0 1100
force IReadable 0 1100
force NU 1 1100
force ND 0 1100
force NR 0 1100
force NL 0 1100
force NReadable 1 1100

force Clock 0 1150

#Clock 13
force Clock 1 1200
force Choice 11 1200
force PU 0 1200
force PD 0 1200
force PL 0 1200
force PR 0 1200
force PReadable 0 1200
force IU 0 1200
force ID 0 1200
force IR 0 1200
force IL 0 1200
force IReadable 0 1200
force NU 1 1200
force ND 0 1200
force NR 0 1200
force NL 0 1200
force NReadable 0 1200

force Clock 0 1250

#Clock 14
force Clock 1 1300
force Choice 11 1300
force PU 0 1300
force PD 0 1300
force PL 0 1300
force PR 0 1300
force PReadable 0 1300
force IU 0 1300
force ID 0 1300
force IR 0 1300
force IL 0 1300
force IReadable 0 1300
force NU 0 1300
force ND 1 1300
force NR 0 1300
force NL 0 1300
force NReadable 0 1300

force Clock 0 1350

#Clock 15
force Clock 1 1400
force Choice 11 1400
force PU 0 1400
force PD 0 1400
force PL 0 1400
force PR 0 1400
force PReadable 0 1400
force IU 0 1400
force ID 0 1400
force IR 0 1400
force IL 0 1400
force IReadable 0 1400
force NU 0 1400
force ND 1 1400
force NR 0 1400
force NL 0 1400
force NReadable 1 1400

force Clock 0 1450

#Clock 16
force Clock 1 1500
force Choice 11 1500
force PU 0 1500
force PD 0 1500
force PL 0 1500
force PR 0 1500
force PReadable 0 1500
force IU 0 1500
force ID 0 1500
force IR 0 1500
force IL 0 1500
force IReadable 0 1500
force NU 1 1500
force ND 0 1500
force NR 0 1500
force NL 0 1500
force NReadable 1 1500

force Clock 0 1550

#Clock 17
force Clock 1 1600
force Choice 0 1600
force PU 0 1600
force PD 0 1600
force PL 0 1600
force PR 0 1600
force PReadable 0 1600
force IU 0 1600
force ID 0 1600
force IR 0 1600
force IL 0 1600
force IReadable 0 1600
force NU 0 1600
force ND 0 1600
force NR 0 1600
force NL 0 1600
force NReadable 0 1600

force Clock 0 1650

#Clock 18
force Clock 1 1700
force Choice 0 1700
force PU 0 1700
force PD 0 1700
force PL 0 1700
force PR 0 1700
force PReadable 0 1700
force IU 0 1700
force ID 0 1700
force IR 0 1700
force IL 0 1700
force IReadable 0 1700
force NU 0 1700
force ND 0 1700
force NR 0 1700
force NL 0 1700
force NReadable 0 1700

force Clock 0 1750

#Clock 19
force Clock 1 1800
force Choice 0 1800
force PU 0 1800
force PD 0 1800
force PL 0 1800
force PR 0 1800
force PReadable 0 1800
force IU 0 1800
force ID 0 1800
force IR 0 1800
force IL 0 1800
force IReadable 0 1800
force NU 0 1800
force ND 0 1800
force NR 0 1800
force NL 0 1800
force NReadable 0 1800

force Clock 0 1850

#Clock 20
force Clock 1 1900
force Choice 0 1900
force PU 0 1900
force PD 0 1900
force PL 0 1900
force PR 0 1900
force PReadable 0 1900
force IU 0 1900
force ID 0 1900
force IR 0 1900
force IL 0 1900
force IReadable 0 1900
force NU 0 1900
force ND 0 1900
force NR 0 1900
force NL 0 1900
force NReadable 0 1900

force Clock 0 1950


run 2500