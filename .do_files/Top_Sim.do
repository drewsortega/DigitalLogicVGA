##################################
# A very simple modelsim do file #
##################################

# 1) Create a library for working in
vlib work

# 2) Load file for simulation
vsim Top_Level

# 3) Open some selected windows for viewing
view structure
view signals
view wave

# 4) Show some of the signals in the wave window
add wave -noupdate -divider -height 32 Inputs
add wave -noupdate Clock
add wave -noupdate Choice_Player1
add wave -noupdate IRData1
add wave -noupdate PS2Data1
add wave -noupdate SNESData1
add wave -noupdate Choice_Player2
add wave -noupdate IRData2
add wave -noupdate PS2Data2
add wave -noupdate SNESData2

add wave -noupdate -divider -height 32 Internals
add wave -noupdate X1
add wave -noupdate Y1
add wave -noupdate X2
add wave -noupdate Y2
add wave -noupdate XDraw
add wave -noupdate YDraw
add wave -noupdate No_Color

add wave -noupdate -divider -height 32 Outputs
add wave -noupdate NStrobe_Latch1
add wave -noupdate NShift_Clock1
add wave -noupdate NStrobe_Latch2
add wave -noupdate NShift_Clock2
add wave -noupdate H_Sync
add wave -noupdate V_Sync
add wave -noupdate Red
add wave -noupdate Green
add wave -noupdate Blue


# 5) Set some test patterns, the format is force Input value time(in ns)
#Clock 1
force Clock 1 0
force Choice_Player1 10 0
force IRData1 0 0
force PS2Data1 0 0
force SNESData1 0 0
force Choice_Player2 0 0
force IRData2 0 0
force PS2Data2 0 0
force SNESData2 0 0

force Clock 0 50

#Clock 2
force Clock 1 100
force Choice_Player1 10 100
force IRData1 0 100
force PS2Data1 0 100
force SNESData1 1 100
force Choice_Player2 0 100
force IRData2 0 100
force PS2Data2 1 100
force SNESData2 0 100

force Clock 0 150

#Clock 3
force Clock 1 200
force Choice_Player1 10 200
force IRData1 0 200
force PS2Data1 0 200
force SNESData1 0 200
force Choice_Player2 0 200
force IRData2 0 200
force PS2Data2 1 200
force SNESData2 0 200

force Clock 0 250

#Clock 4
force Clock 1 300
force Choice_Player1 10 300
force IRData1 0 300
force PS2Data1 0 300
force SNESData1 0 300
force Choice_Player2 0 300
force IRData2 0 300
force PS2Data2 1 300
force SNESData2 0 300

force Clock 0 350

#Clock 5
force Clock 1 400
force Choice_Player1 10 400
force IRData1 0 400
force PS2Data1 0 400
force SNESData1 0 400
force Choice_Player2 0 400
force IRData2 0 400
force PS2Data2 1 400
force SNESData2 0 400

force Clock 0 450

#Clock 6
force Clock 1 500
force Choice_Player1 10 500
force IRData1 0 500
force PS2Data1 0 500
force SNESData1 0 500
force Choice_Player2 0 500
force IRData2 0 500
force PS2Data2 1 500
force SNESData2 0 500

force Clock 0 550

#Clock 7
force Clock 1 600
force Choice_Player1 10 600
force IRData1 0 600
force PS2Data1 0 600
force SNESData1 0 600
force Choice_Player2 0 600
force IRData2 0 600
force PS2Data2 1 600
force SNESData2 0 600

force Clock 0 650

#Clock 8
force Clock 1 700
force Choice_Player1 10 700
force IRData1 0 700
force PS2Data1 0 700
force SNESData1 0 700
force Choice_Player2 0 700
force IRData2 0 700
force PS2Data2 1 700
force SNESData2 0 700

force Clock 0 750

#Clock 9
force Clock 1 800
force Choice_Player1 10 800
force IRData1 0 800
force PS2Data1 0 800
force SNESData1 0 800
force Choice_Player2 0 800
force IRData2 0 800
force PS2Data2 1 800
force SNESData2 0 800

force Clock 0 850

#Clock 10
force Clock 1 900
force Choice_Player1 10 900
force IRData1 0 900
force PS2Data1 0 900
force SNESData1 0 900
force Choice_Player2 0 900
force IRData2 0 900
force PS2Data2 1 900
force SNESData2 0 900

force Clock 0 950

#Clock 11
force Clock 1 1000
force Choice_Player1 10 1000
force IRData1 0 1000
force PS2Data1 0 1000
force SNESData1 0 1000
force Choice_Player2 0 1000
force IRData2 0 1000
force PS2Data2 1 1000
force SNESData2 0 1000

force Clock 0 1050

#Clock 12
force Clock 1 1100
force Choice_Player1 10 1100
force IRData1 0 1100
force PS2Data1 0 1100
force SNESData1 1 1100
force Choice_Player2 0 1100
force IRData2 0 1100
force PS2Data2 1 1100
force SNESData2 0 1100

force Clock 0 1150

#Clock 13
force Clock 1 1200
force Choice_Player1 10 1200
force IRData1 0 1200
force PS2Data1 0 1200
force SNESData1 1 1200
force Choice_Player2 0 1200
force IRData2 0 1200
force PS2Data2 1 1200
force SNESData2 0 1200

force Clock 0 1250

#Clock 14
force Clock 1 1300
force Choice_Player1 10 1300
force IRData1 0 1300
force PS2Data1 0 1300
force SNESData1 0 1300
force Choice_Player2 0 1300
force IRData2 0 1300
force PS2Data2 1 1300
force SNESData2 0 1300

force Clock 0 1350

#Clock 15
force Clock 1 1400
force Choice_Player1 10 1400
force IRData1 0 1400
force PS2Data1 0 1400
force SNESData1 1 1400
force Choice_Player2 0 1400
force IRData2 0 1400
force PS2Data2 1 1400
force SNESData2 0 1400

force Clock 0 1450

#Clock 16
force Clock 1 1500
force Choice_Player1 10 1500
force IRData1 0 1500
force PS2Data1 0 1500
force SNESData1 1 1500
force Choice_Player2 0 1500
force IRData2 0 1500
force PS2Data2 1 1500
force SNESData2 0 1500

force Clock 0 1550

#Clock 17
force Clock 1 1600
force Choice_Player1 10 1600
force IRData1 0 1600
force PS2Data1 0 1600
force SNESData1 1 1600
force Choice_Player2 0 1600
force IRData2 0 1600
force PS2Data2 1 1600
force SNESData2 0 1600

force Clock 0 1650

#Clock 18
force Clock 1 1700
force Choice_Player1 10 1700
force IRData1 0 1700
force PS2Data1 0 1700
force SNESData1 1 1700
force Choice_Player2 0 1700
force IRData2 0 1700
force PS2Data2 1 1700
force SNESData2 0 1700

force Clock 0 1750

#Clock 19
force Clock 1 1800
force Choice_Player1 10 1800
force IRData1 0 1800
force PS2Data1 0 1800
force SNESData1 1 1800
force Choice_Player2 0 1800
force IRData2 0 1800
force PS2Data2 1 1800
force SNESData2 0 1800

force Clock 0 1850

#Clock 20
force Clock 1 1900
force Choice_Player1 10 1900
force IRData1 0 1900
force PS2Data1 0 1900
force SNESData1 1 1900
force Choice_Player2 0 1900
force IRData2 0 1900
force PS2Data2 1 1900
force SNESData2 0 1900

force Clock 0 1950


# 6) Run the simulation for 3200 ns
run 3200