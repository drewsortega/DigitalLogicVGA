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
force Mode 2 0
force Clock 1 0
force Data 1 0

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
force Data 0 900

# Clock 11
force Clock 1 1000
force Clock 0 1050

# Clock 12
force Clock 1 1100
force Clock 0 1150
force Data 1 1100

# Clock 13
force Clock 1 1200
force Clock 0 1250

# Clock 14
force Clock 1 1300
force Clock 0 1350
force Data 0 1300

# Clock 15
force Clock 1 1400
force Clock 0 1450

# Clock 16
force Clock 1 1500
force Clock 0 1550
force Data 1 1500

# Clock 17
force Clock 1 1600
force Clock 0 1650

# Clock 18
force Clock 1 1700
force Clock 0 1750

# Clock 19
force Clock 1 1800
force Clock 0 1850

# Clock 20
force Clock 1 1900
force Clock 0 1950

# Clock 21
force Clock 1 2000
force Clock 0 2050

# Clock 22
force Clock 1 2100
force Clock 0 2150

# Clock 23
force Clock 1 2200
force Clock 0 2250

# Clock 24
force Clock 1 2300
force Clock 0 2350

# Clock 25
force Clock 1 2400
force Clock 0 2450

# Clock 26
force Clock 1 2500
force Clock 0 2550

# Clock 27
force Clock 1 2600
force Clock 0 2650

# Clock 28
force Clock 1 2700
force Clock 0 2750

# Clock 29
force Clock 1 2800
force Clock 0 2850

# Clock 30
force Clock 1 2900
force Clock 0 2950

# Clock 31
force Clock 1 3000
force Clock 0 3050

# Clock 32
force Clock 1 3100
force Clock 0 3150

# 6) Run the simulation for 3200 ns
run 3200