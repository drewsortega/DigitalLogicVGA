# 1) Create a library for working in
vlib work

# 2) Load file for simulation
vsim Top_Level

# 3) Open some selected windows for viewing
view structure
view signals
view wave

# 4) Show some of the signals in the wave window
add wave -noupdate -divider -height 32 Inputs
add wave -noupdate Clock
add wave -noupdate Choice_Player1
add wave -noupdate IRData1
add wave -noupdate PS2Data1
add wave -noupdate SNESData1
add wave -noupdate Choice_Player2
add wave -noupdate IRData2
add wave -noupdate PS2Data2
add wave -noupdate SNESData2

add wave -noupdate -divider -height 32 Internals
add wave -noupdate X1
add wave -noupdate Y1
add wave -noupdate X2
add wave -noupdate Y2
add wave -noupdate XDraw
add wave -noupdate YDraw
add wave -noupdate No_Color

add wave -noupdate -divider -height 32 Outputs
add wave -noupdate NStrobe_Latch1
add wave -noupdate NShift_Clock1
add wave -noupdate NStrobe_Latch2
add wave -noupdate NShift_Clock2
add wave -noupdate H_Sync
add wave -noupdate V_Sync
add wave -noupdate Red
add wave -noupdate Green
add wave -noupdate Blue


# 5) Set some test patterns, the format is force Input value time(in ns)

force Clock 1 0, 0 {50 ps} -r 100

#Clock 1
force Choice_Player1 10 0
force IRData1 0 0
force PS2Data1 0 0
force SNESData1 0 0
force Choice_Player2 0 0
force IRData2 0 0
force PS2Data2 0 0
force SNESData2 0 0

#Clock 2
force SNESData1 1 100
force PS2Data2 1 100

#Clock 3
force SNESData1 0 200

#Clock 12
force SNESData1 1 1100

#Clock 14
force SNESData1 0 1300

#Clock 15
force SNESData1 1 1400


# 6) Run the simulation for 3200 ns
run 3200