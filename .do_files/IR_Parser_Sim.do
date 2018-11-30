##################################
# A very simple modelsim do file #
##################################

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
# Input 1 (Left)
# Clock 1
force Clock 1 0
force Data 0 0

force Clock 0 50

# Clock 2
force Clock 1 100
force Data 1 125

force Clock 0 150

# Clock 3
force Clock 1 200
force Data 0 225

force Clock 0 250

# Clock 4
force Clock 1 300
force Data 1 325

force Clock 0 350

# Clock 5
force Clock 1 400
force Data 0 425

force Clock 0 450

# Clock 6
force Clock 1 500
force Data 1 525

force Clock 0 550

#Clock 7
force Clock 1 600
force Data 1 625

force Clock 0 650

#Clock 8
force Clock 1 700
force Data 0 725

force Clock 0 750

# Clock 9
force Clock 1 800
force Data 0 825

force Clock 0 850

# Clock 10
force Clock 1 900
force Data 1 925

force Clock 0 950

# Clock 11
force Clock 1 1000
force Data 0 1025

force Clock 0 1050

# Clock 12
force Clock 1 1100
force Data 1 1125

force Clock 0 1150

# Clock 13
force Clock 1 1200
force Data 1 1225

force Clock 0 1250

# Clock 14
force Clock 1 1300
force Data 0 1325

force Clock 0 1350

# Clock 15
force Clock 1 1400
force Data 0 1425

force Clock 0 1450

# Clock 16
force Clock 1 1500
force Data 1 1525

force Clock 0 1550

# Clock 17
force Clock 1 1600
force Data 1 1625

force Clock 0 1650

#Clock 18
force Clock 1 1700
force Data 0 1725

force Clock 0 1750

#Clock 19
force Clock 1 1800
force Data 1 1825

force Clock 0 1850

# Clock 20
force Clock 1 1900
force Data 0 1925

force Clock 0 1950

# Clock 21
force Clock 1 2000
force Data 1 2025

force Clock 0 2050

# Clock 22
force Clock 1 2100
force Data 0 2125

force Clock 0 2150

# Clock 23
force Clock 1 2200
force Data 1 2225

force Clock 0 2250

# Clock 24
force Clock 1 2300
force Data 0 2325

force Clock 0 2350

# Clock 25
force Clock 1 2400
force Data 0 2425

force Clock 0 2450

# Clock 26
force Clock 1 2500
force Data 1 2525

force Clock 0 2550

# Clock 27
force Clock 1 2600
force Data 1 2625

force Clock 0 2650

# Clock 28
force Clock 1 2700
force Data 0 2725

force Clock 0 2750

#Clock 29
force Clock 1 2800
force Data 0 2825

force Clock 0 2850

#Clock 30
force Clock 1 2900

force Clock 0 2950

# Clock 31
force Clock 1 3000

force Clock 0 3050

# Clock 32
force Clock 1 3100

force Clock 0 3150

# Clock 33
force Clock 1 3200

force Clock 0 3250

# Clock 34
force Clock 1 3300

force Clock 0 3350

# Clock 35
force Clock 1 3400

force Clock 0 3450

# Clock 36
force Clock 1 3500

force Clock 0 3550

# Clock 37
force Clock 1 3600

force Clock 0 3650

# Clock 38
force Clock 1 3700

force Clock 0 3750

# Clock 39
force Clock 1 3800

force Clock 0 3850

#Clock 40
force Clock 1 3900

force Clock 0 3950

#Clock 41
force Clock 1 4000

force Clock 0 4050

# Clock 42
force Clock 1 4100

force Clock 0 4150

# Clock 43
force Clock 1 4200

force Clock 0 4250

# Clock 44
force Clock 1 4300

force Clock 0 4350

# 6) Run the simulation for 4400 ns
run 4400