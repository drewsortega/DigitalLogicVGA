##################################
# A very simple modelsim do file #
##################################

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
# Input 1 (W key, Up)
# Clock 1
force Clock 1 0
force Data 0 0

force Clock 0 50

# Clock 2
force Clock 1 100
force Data 1 100

force Clock 0 150

# Clock 3
force Clock 1 200
force Data 0 200

force Clock 0 250

# Clock 4
force Clock 1 300

force Clock 0 350

# Clock 5
force Clock 1 400

force Clock 0 450

# Clock 6
force Clock 1 500
force Data 1 500

force Clock 0 550

#Clock 7
force Clock 1 600
force Data 0 600

force Clock 0 650

#Clock 8
force Clock 1 700

force Clock 0 750

# Clock 9
force Clock 1 800

force Clock 0 850

# Clock 10
force Clock 1 900
force Data 1 900

force Clock 0 950

# Clock 11
force Clock 1 1000

force Clock 0 1050

# Input 2 (A key, Left)
# Clock 1
force Clock 1 1100
force Data 0 1100

force Clock 0 1150

# Clock 2
force Clock 1 1200

force Clock 0 1250

# Clock 3
force Clock 1 1300
force Data 1 1300

force Clock 0 1350

# Clock 4
force Clock 1 1400

force Clock 0 1450

# Clock 5
force Clock 1 1500

force Clock 0 1550

# Clock 6
force Clock 1 1600

force Clock 0 1650

#Clock 7
force Clock 1 1700
force Data 0 1700

force Clock 0 1750

#Clock 8
force Clock 1 1800

force Clock 0 1850

# Clock 9
force Clock 1 1900

force Clock 0 1950

# Clock 10
force Clock 1 2000
force Data 1 2000

force Clock 0 2050

# Clock 11
force Clock 1 2100

force Clock 0 2150

# Input 3 (S key, Down)
# Clock 1
force Clock 1 2200
force Data 0 2200

force Clock 0 2250

# Clock 2
force Clock 1 2300
force Data 1 2300

force Clock 0 2350

# Clock 3
force Clock 1 2400

force Clock 0 2450

# Clock 4
force Clock 1 2500

force Clock 0 2550

# Clock 5
force Clock 1 2600

force Clock 0 2650

# Clock 6
force Clock 1 2700

force Clock 0 2750

#Clock 7
force Clock 1 2800
force Data 0 2800

force Clock 0 2850

#Clock 8
force Clock 1 2900

force Clock 0 2950

# Clock 9
force Clock 1 3000

force Clock 0 3050

# Clock 10
force Clock 1 3100

force Clock 0 3150

# Clock 11
force Clock 1 3200
force Data 1 3200

force Clock 0 3250

# Input 4 (D key, Right)
# Clock 1
force Clock 1 3300
force Data 0 3300

force Clock 0 3350

# Clock 2
force Clock 1 3400

force Clock 0 3450

# Clock 3
force Clock 1 3500

force Clock 0 3550

# Clock 4
force Clock 1 3600

force Clock 0 3650

# Clock 5
force Clock 1 3700

force Clock 0 3750

# Clock 6
force Clock 1 3800

force Clock 0 3850

#Clock 7
force Clock 1 3900
force Data 1 3900

force Clock 0 3950

#Clock 8
force Clock 1 4000
force Data 0 4000

force Clock 0 4050

# Clock 9
force Clock 1 4100

force Clock 0 4150

# Clock 10
force Clock 1 4200

force Clock 0 4250

# Clock 11
force Clock 1 4300
force Data 1 4300

force Clock 0 4350

# 6) Run the simulation for 4400 ns
run 4400