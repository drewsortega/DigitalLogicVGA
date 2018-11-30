# 1) Create a library for working in
vlib work

# 2) Load file for simulation
vsim IR_Parser

# 3) Open some selected windows for viewing
view structure
view signals
view wave

# 4) Show some of the signals in the wave window
add wave -noupdate -divider -height 32 Inputs
add wave -noupdate Clock
add wave -noupdate Data
add wave -noupdate -divider -height 32 Internals
add wave -noupdate Stage
add wave -noupdate Toggle
add wave -noupdate InputAddress
add wave -noupdate LocalAddress
add wave -noupdate InputValue
add wave -noupdate BitState
add wave -noupdate InputAddressCounter
add wave -noupdate InputValueCounter
add wave -noupdate -divider -height 32 Outputs
add wave -noupdate Up
add wave -noupdate Down
add wave -noupdate Left
add wave -noupdate Right
add wave -noupdate Readable


# 5) Set some test patterns, the format is force Input value time(in ns)

force Clock 1 0, 0 {50 ps} -r 100

# Input 1 (Left)
# Clock 1
force Data 0 0

# Clock 2
force Data 1 125

# Clock 3
force Data 0 225

# Clock 4
force Data 1 325

# Clock 5
force Data 0 425

# Clock 6
force Data 1 525

#Clock 8
force Data 0 725

# Clock 10
force Data 1 925

# Clock 11
force Data 0 1025

# Clock 12
force Data 1 1125

# Clock 14
force Data 0 1325

# Clock 16
force Data 1 1525

#Clock 18
force Data 0 1725

#Clock 19
force Data 1 1825

# Clock 20
force Data 0 1925

# Clock 21
force Data 1 2025

# Clock 22
force Data 0 2125

# Clock 23
force Data 1 2225

# Clock 24
force Data 0 2325

# Clock 26
force Data 1 2525

# Clock 28
force Data 0 2725

# 6) Run the simulation for 4400 ns
run 4400