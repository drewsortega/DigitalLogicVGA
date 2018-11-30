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

force clock 1 0, 0 {50 ps} -r 100

#Clock 1
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

#Clock 2
force PU 0 100
force PD 1 100

#Clock 3
force PReadable 1 200

#Clock 4
force PU 1 300
force PD 0 300

#Clock 5
force Choice 1 400
force PU 0 400
force PReadable 0 400
force IU 1 400

#Clock 6
force IU 0 500
force ID 1 500

#Clock 7
force IReadable 1 600

#Clock 8
force IU 1 700
force ID 0 700

#Clock 9
force Choice 10 800
force IU 0 800
force IReadable 0 800
force NU 1 800

#Clock 10
force NU 0 900
force ND 1 900

#Clock 11
force NReadable 1 1000

#Clock 12
force NU 1 1100
force ND 0 1100

#Clock 13
force Choice 11 1200
force NReadable 0 1200

#Clock 14
force NU 0 1300
force ND 1 1300

#Clock 15
force NReadable 1 1400

#Clock 16
force NU 1 1500
force ND 0 1500

#Clock 17
force Choice 0 1600
force NU 0 1600
force NReadable 0 1600


run 2500