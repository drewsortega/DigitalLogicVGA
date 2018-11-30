# 1) Create a library for working in
vlib work

# 2) Load file for simulation
vsim Renderer

# 3) Open some selected windows for viewing
view structure
view signals
view wave

# 4) Show some of the signals in the wave window
add wave -noupdate -divider -height 32 Inputs
add wave -noupdate ycoord
add wave -noupdate xcoord
add wave -noupdate nocolor
add wave -noupdate p1x
add wave -noupdate p1y
add wave -noupdate p2x
add wave -noupdate p2y
add wave -noupdate -divider -height 32 Outputs
add wave -noupdate red
add wave -noupdate blue
add wave -noupdate green

# 5) Set some test patterns, the format is force Input value time(in ns)
force ycoord 0000000101 0
force xcoord 0000000101 0
force nocolor 0 0
force p1x 1 0
force p1y 0 0
force p2x 1 0
force p2y 0 0

force p1x 0 50

force p1x 1 100
force p2x 0 100

force p1x 0 150

force xcoord 0110010000 200

force p1x 1 250

force p1x 0 300
force p2x 1 300

force p1x 1 350

force ycoord 0110010000 400

force p1y 1 450

force p1y 0 500
force p2y 1 500

force p1y 1 550

force xcoord 0 600

force p1x 0 650

force p1x 1 700
force p2x 0 700

force p1x 0 750

force nocolor 1 800

force nocolor 0 850

# 6) Run the simulation for 600 ns
run 1000