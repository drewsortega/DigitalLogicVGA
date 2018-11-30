# 1) Create a library for working in
vlib work

# 2) Load file for simulation
vsim Player

# 3) Open some selected windows for viewing
view structure
view signals
view wave

# 4) Show some of the signals in the wave window
add wave -noupdate -divider -height 32 Inputs
add wave -noupdate Choice
add wave -noupdate Clock
add wave -noupdate IRData
add wave -noupdate PS2Data
add wave -noupdate NData
add wave -noupdate -divider -height 32 Outputs
add wave -noupdate X
add wave -noupdate Y
add wave -noupdate NStrobe_Latch
add wave -noupdate NShift_Clock


# 5) Set some test patterns, the format is force Input value time(in ns)

force Clock 1 0, 0 {50 ps} -r 100

# Clock 1
force Choice 10 0
force IRData 0 0
force PS2Data 0 0
force NData 1 0

# Clock 2
force NData 1 100

# Clock 10
force NData 0 900

# Clock 12
force NData 1 1100

# Clock 14
force NData 0 1300

# Clock 16
force NData 1 1500

# 6) Run the simulation for 3200 ns
run 3200