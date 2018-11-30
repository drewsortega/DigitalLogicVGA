# 1) Create a library for working in
vlib work

# 2) Load file for simulation
vsim SNES_Input

# 3) Open some selected windows for viewing
view structure
view signals
view wave

# 4) Show some of the signals in the wave window
add wave -noupdate -divider -height 32 Inputs
add wave -noupdate Data
add wave -noupdate Mode
add wave -noupdate Clock
add wave -noupdate -divider -height 32 Outputs
add wave -noupdate Up
add wave -noupdate Down
add wave -noupdate Left
add wave -noupdate Right
add wave -noupdate Shift_Clock
add wave -noupdate Strobe_Latch
add wave -noupdate Readable
add wave -noupdate Increment


# 5) Set some test patterns, the format is force Input value time(in ns)

force Clock 1 0, 0 {50 ps} -r 100

# Clock 1
force Mode 2 0
force Data 1 0

# Clock 2
force Data 1 100

#Clock 10
force Data 0 900

# Clock 12
force Data 1 1100

# Clock 14
force Data 0 1300

# Clock 16
force Data 1 1500

# 6) Run the simulation for 3200 ns
run 3200