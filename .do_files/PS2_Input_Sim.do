# 1) Create a library for working in
vlib work

# 2) Load file for simulation
vsim PS2_Input

# 3) Open some selected windows for viewing
view structure
view signals
view wave

# 4) Show some of the signals in the wave window
add wave -noupdate -divider -height 32 Inputs
add wave -noupdate Data
add wave -noupdate Clock
add wave -noupdate -divider -height 32 Outputs
add wave -noupdate Up
add wave -noupdate Down
add wave -noupdate Left
add wave -noupdate Right
add wave -noupdate count
add wave -noupdate workingdata
add wave -noupdate parity


# 5) Set some test patterns, the format is force Input value time(in ns)

force Clock 1 0, 0 {50 ps} -r 100

# Input 1 (W key, Up)
# Clock 1
force Data 0 0

# Clock 2
force Data 1 100

# Clock 3
force Data 0 200

# Clock 6
force Data 1 500

#Clock 7
force Data 0 600

# Clock 10
force Data 1 900

# Input 2 (A key, Left)
# Clock 12
force Data 0 1100

# Clock 14
force Data 1 1300

# Clock 18
force Data 0 1700

# Clock 21
force Data 1 2000

# Input 3 (S key, Down)
# Clock 23
force Data 0 2200

# Clock 24
force Data 1 2300

#Clock 29
force Data 0 2800

# Clock 33
force Data 1 3200

# Input 4 (D key, Right)
# Clock 34
force Data 0 3300

#Clock 40
force Data 1 3900

#Clock 41
force Data 0 4000

# Clock 44
force Data 1 4300

# 6) Run the simulation for 4400 ns
run 4400