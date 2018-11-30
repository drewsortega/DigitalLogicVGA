# 1) Create a library for working in
vlib work

# 2) Load file for simulation
vsim XYCounter

# 3) Open some selected windows for viewing
view structure
view signals
view wave

# 4) Show some of the signals in the wave window
add wave -noupdate -divider -height 32 Inputs
add wave -noupdate clock
add wave -noupdate -divider -height 32 Outputs
add wave -noupdate ycoord
add wave -noupdate xcoord
add wave -noupdate hsync
add wave -noupdate vsync
add wave -noupdate nocolor

# 5) Set some test patterns, the format is force Input value time(in ns)
force clock 1 0, 0 {50 ps} -r 100

# 6) Run the simulation for 20000000 ns
run 200000000