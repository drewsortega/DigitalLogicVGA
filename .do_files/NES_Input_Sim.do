##################################
# A very simple modelsim do file #
##################################

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
# CLock 1
force Mode 1 0
force Clock 1 0
force Data 0 0

force Clock 0 50

# Clock 2
force Clock 1 100
force Data 1 100
force Clock 0 150

# Clock 3
force Clock 1 200
force Clock 0 250

# Clock 4
force Clock 1 300
force Clock 0 350

# Clock 5
force Clock 1 400
force Clock 0 450

# Clock 6
force Clock 1 500
force Clock 0 550

#Clock 7
force Clock 1 600
force Clock 0 650

#Clock 8
force Clock 1 700
force Clock 0 750

# Clock 9
force Clock 1 800
force Clock 0 850

# Clock 10
force Clock 1 900
force Clock 0 950

# Clock 11
force Clock 1 1000
force Clock 0 1050

# Clock 12
force Clock 1 1100
force Clock 0 1150

# Clock 13
force Clock 1 1200
force Clock 0 1250

# Clock 14
force Clock 1 1300
force Data 0 1300
force Clock 0 1350

# Clock 15
force Clock 1 1400
force Clock 0 1450

# Clock 16
force Clock 1 1500
force Clock 0 1550

# 6) Run the simulation for 1600 ns
run 1600