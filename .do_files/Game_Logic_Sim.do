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

# Up = 1, at 100 ns
force Up 1 100

# Up = 0, Right = 1 at 200 ns
force Up 0 200
force Right 1 200

# Right = 0, Down = 1 at 300 ns
force Right 0 300
force Down 1 300

# Left = 1, Down = 0 at 400 ns
force Left 1 400
force Down 0 400

# Left = 0, Up = 1, Right = 1 at 500 ns
force Left 0 500
force Up 1 500
force Right 1 500

# 6) Run the simulation for 600 ns
run 600