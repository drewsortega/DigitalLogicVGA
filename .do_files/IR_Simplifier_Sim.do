# 1) Create a library for working in
vlib work

# 2) Load file for simulation
vsim IR_Simplifier

# 3) Open some selected windows for viewing
view structure
view signals
view wave

# 4) Show some of the signals in the wave window
add wave -noupdate -divider -height 32 Inputs
add wave -noupdate Clock
add wave -noupdate In_Data
add wave -noupdate -divide -height 32 Internas 
add wave -noupdate Count
add wave -noupdate -divider -height 32 Outputs
add wave -noupdate Out_Data


# 5) Set some test patterns, the format is force Input value time(in ns)

force Clock 1 0, 0 {75 ps} -r 150

# CLock 1, Data 1
force In_Data 1 0

force In_Data 0 200

#Cycle 2
force In_Data 1 600

force In_Data 0 800

#Ignore rest

force Clock 0 1

# 6) Run the simulation for 104925 ns
run 104925