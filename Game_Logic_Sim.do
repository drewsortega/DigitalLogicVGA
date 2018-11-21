##################################
# A very simple modelsim do file #
##################################

# 1) Create a library for working in
vlib work

# 2) Load file for simulation
vsim Game_Logic

# 3) Open some selected windows for viewing
view structure
view signals
view wave

# 4) Show some of the signals in the wave window
add wave -noupdate -divider -height 32 Inputs
add wave -noupdate Up
add wave -noupdate Down
add wave -noupdate Left
add wave -noupdate Right
add wave -noupdate -divider -height 32 Outputs
add wave -noupdate X
add wave -noupdate Y


# 5) Set some test patterns, the format is force Input value time(in ns)
force Up 0 0
force Down 0 0
force Left 0 0
force Right 0 0

# Up = 1, at 1000 ns
force Up 1 1000

# Up = 0, Right = 1 at 2000 ns
force Up 0 2000
force Right 1 2000

# Right = 0, Down = 1 at 3000 ns
force Right 0 3000
force Down 1 3000

# 6) Run the simulation for 40 ns
run 4000