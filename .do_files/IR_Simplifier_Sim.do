##################################
# A very simple modelsim do file #
##################################

# 1) Create a library for working in
vlib work

# 2) Load file for simulation
vsim IR_Simplifier

# 3) Open some selected windows for viewing
view structure
view signals
view wave

# 4) Show some of the signals in the wave window
add wave -noupdate -divider -height 32 Inputs
add wave -noupdate Clock
add wave -noupdate In_Data
add wave -noupdate -divide -height 32 Internas 
add wave -noupdate Count
add wave -noupdate -divider -height 32 Outputs
add wave -noupdate Out_Data


# 5) Set some test patterns, the format is force Input value time(in ns)

# CLock 1, Data 1
force Clock 1 0
force In_Data 1 0

force Clock 0 75

force Clock 1 150

force In_Data 0 200

force Clock 0 225

force Clock 1 300

force Clock 0 375

force Clock 1 450

force Clock 0 525

#Cycle 2
force Clock 1 600
force In_Data 1 600

force Clock 0 675

force Clock 1 750

force In_Data 0 800

force Clock 0 825

force Clock 1 900

force Clock 0 975

force Clock 1 1050

force Clock 0 1125

#Cycle 2
force Clock 1 1200

force Clock 0 1275

force Clock 1 1350

force Clock 0 1425

force Clock 1 1500

force Clock 0 1575

force Clock 1 1650

force Clock 0 1725

force Clock 1 1800

force Clock 0 1875

force Clock 1 1950

force Clock 0 2025

force Clock 1 2100

force Clock 0 2175

force Clock 1 2250

force Clock 0 2325

force Clock 1 2400

force Clock 0 2475

force Clock 1 2550

force Clock 0 2625

force Clock 1 2700

force Clock 0 2775

force Clock 1 2850

force Clock 0 2925

force Clock 1 3000

force Clock 0 3075

force Clock 1 3150

force Clock 0 3225

force Clock 1 3300

force Clock 0 3375

force Clock 1 3450

force Clock 0 3525

force Clock 1 3600

force Clock 0 3675

force Clock 1 3750

force Clock 0 3825

force Clock 1 3900

force Clock 0 3975

force Clock 1 4050

force Clock 0 4125

force Clock 1 4200

force Clock 0 4275

force Clock 1 4350

force Clock 0 4425

force Clock 1 4500

force Clock 0 4575

force Clock 1 4650

force Clock 0 4725

force Clock 1 4800

force Clock 0 4875

force Clock 1 4950

force Clock 0 5025

force Clock 1 5100

force Clock 0 5175

force Clock 1 5250

force Clock 0 5325

force Clock 1 5400

force Clock 0 5475

force Clock 1 5550

force Clock 0 5625

force Clock 1 5700

force Clock 0 5775

force Clock 1 5850

force Clock 0 5925

force Clock 1 6000

force Clock 0 6075

force Clock 1 6150

force Clock 0 6225

force Clock 1 6300

force Clock 0 6375

force Clock 1 6450

force Clock 0 6525

force Clock 1 6600

force Clock 0 6675

force Clock 1 6750

force Clock 0 6825

force Clock 1 6900

force Clock 0 6975

force Clock 1 7050

force Clock 0 7125

force Clock 1 7200

force Clock 0 7275

force Clock 1 7350

force Clock 0 7425

force Clock 1 7500

force Clock 0 7575

force Clock 1 7650

force Clock 0 7725

force Clock 1 7800

force Clock 0 7875

force Clock 1 7950

force Clock 0 8025

force Clock 1 8100

force Clock 0 8175

force Clock 1 8250

force Clock 0 8325

force Clock 1 8400

force Clock 0 8475

force Clock 1 8550

force Clock 0 8625

force Clock 1 8700

force Clock 0 8775

force Clock 1 8850

force Clock 0 8925

force Clock 1 9000

force Clock 0 9075

force Clock 1 9150

force Clock 0 9225

force Clock 1 9300

force Clock 0 9375

force Clock 1 9450

force Clock 0 9525

force Clock 1 9600

force Clock 0 9675

force Clock 1 9750

force Clock 0 9825

force Clock 1 9900

force Clock 0 9975

force Clock 1 10050

force Clock 0 10125

force Clock 1 10200

force Clock 0 10275

force Clock 1 10350

force Clock 0 10425

force Clock 1 10500

force Clock 0 10575

force Clock 1 10650

force Clock 0 10725

force Clock 1 10800

force Clock 0 10875

force Clock 1 10950

force Clock 0 11025

force Clock 1 11100

force Clock 0 11175

force Clock 1 11250

force Clock 0 11325

force Clock 1 11400

force Clock 0 11475

force Clock 1 11550

force Clock 0 11625

force Clock 1 11700

force Clock 0 11775

force Clock 1 11850

force Clock 0 11925

force Clock 1 12000

force Clock 0 12075

force Clock 1 12150

force Clock 0 12225

force Clock 1 12300

force Clock 0 12375

force Clock 1 12450

force Clock 0 12525

force Clock 1 12600

force Clock 0 12675

force Clock 1 12750

force Clock 0 12825

force Clock 1 12900

force Clock 0 12975

force Clock 1 13050

force Clock 0 13125

force Clock 1 13200

force Clock 0 13275

force Clock 1 13350

force Clock 0 13425

force Clock 1 13500

force Clock 0 13575

force Clock 1 13650

force Clock 0 13725

force Clock 1 13800

force Clock 0 13875

force Clock 1 13950

force Clock 0 14025

force Clock 1 14100

force Clock 0 14175

force Clock 1 14250

force Clock 0 14325

force Clock 1 14400

force Clock 0 14475

force Clock 1 14550

force Clock 0 14625

force Clock 1 14700

force Clock 0 14775

force Clock 1 14850

force Clock 0 14925

force Clock 1 15000

force Clock 0 15075

force Clock 1 15150

force Clock 0 15225

force Clock 1 15300

force Clock 0 15375

force Clock 1 15450

force Clock 0 15525

force Clock 1 15600

force Clock 0 15675

force Clock 1 15750

force Clock 0 15825

force Clock 1 15900

force Clock 0 15975

force Clock 1 16050

force Clock 0 16125

force Clock 1 16200

force Clock 0 16275

force Clock 1 16350

force Clock 0 16425

force Clock 1 16500

force Clock 0 16575

force Clock 1 16650

force Clock 0 16725

force Clock 1 16800

force Clock 0 16875

force Clock 1 16950

force Clock 0 17025

force Clock 1 17100

force Clock 0 17175

force Clock 1 17250

force Clock 0 17325

force Clock 1 17400

force Clock 0 17475

force Clock 1 17550

force Clock 0 17625

force Clock 1 17700

force Clock 0 17775

force Clock 1 17850

force Clock 0 17925

force Clock 1 18000

force Clock 0 18075

force Clock 1 18150

force Clock 0 18225

force Clock 1 18300

force Clock 0 18375

force Clock 1 18450

force Clock 0 18525

force Clock 1 18600

force Clock 0 18675

force Clock 1 18750

force Clock 0 18825

force Clock 1 18900

force Clock 0 18975

force Clock 1 19050

force Clock 0 19125

force Clock 1 19200

force Clock 0 19275

force Clock 1 19350

force Clock 0 19425

force Clock 1 19500

force Clock 0 19575

force Clock 1 19650

force Clock 0 19725

force Clock 1 19800

force Clock 0 19875

force Clock 1 19950

force Clock 0 20025

force Clock 1 20100

force Clock 0 20175

force Clock 1 20250

force Clock 0 20325

force Clock 1 20400

force Clock 0 20475

force Clock 1 20550

force Clock 0 20625

force Clock 1 20700

force Clock 0 20775

force Clock 1 20850

force Clock 0 20925

force Clock 1 21000

force Clock 0 21075

force Clock 1 21150

force Clock 0 21225

force Clock 1 21300

force Clock 0 21375

force Clock 1 21450

force Clock 0 21525

force Clock 1 21600

force Clock 0 21675

force Clock 1 21750

force Clock 0 21825

force Clock 1 21900

force Clock 0 21975

force Clock 1 22050

force Clock 0 22125

force Clock 1 22200

force Clock 0 22275

force Clock 1 22350

force Clock 0 22425

force Clock 1 22500

force Clock 0 22575

force Clock 1 22650

force Clock 0 22725

force Clock 1 22800

force Clock 0 22875

force Clock 1 22950

force Clock 0 23025

force Clock 1 23100

force Clock 0 23175

force Clock 1 23250

force Clock 0 23325

force Clock 1 23400

force Clock 0 23475

force Clock 1 23550

force Clock 0 23625

force Clock 1 23700

force Clock 0 23775

force Clock 1 23850

force Clock 0 23925

force Clock 1 24000

force Clock 0 24075

force Clock 1 24150

force Clock 0 24225

force Clock 1 24300

force Clock 0 24375

force Clock 1 24450

force Clock 0 24525

force Clock 1 24600

force Clock 0 24675

force Clock 1 24750

force Clock 0 24825

force Clock 1 24900

force Clock 0 24975

force Clock 1 25050

force Clock 0 25125

force Clock 1 25200

force Clock 0 25275

force Clock 1 25350

force Clock 0 25425

force Clock 1 25500

force Clock 0 25575

force Clock 1 25650

force Clock 0 25725

force Clock 1 25800

force Clock 0 25875

force Clock 1 25950

force Clock 0 26025

force Clock 1 26100

force Clock 0 26175

force Clock 1 26250

force Clock 0 26325

force Clock 1 26400

force Clock 0 26475

force Clock 1 26550

force Clock 0 26625

force Clock 1 26700

force Clock 0 26775

force Clock 1 26850

force Clock 0 26925

force Clock 1 27000

force Clock 0 27075

force Clock 1 27150

force Clock 0 27225

force Clock 1 27300

force Clock 0 27375

force Clock 1 27450

force Clock 0 27525

force Clock 1 27600

force Clock 0 27675

force Clock 1 27750

force Clock 0 27825

force Clock 1 27900

force Clock 0 27975

force Clock 1 28050

force Clock 0 28125

force Clock 1 28200

force Clock 0 28275

force Clock 1 28350

force Clock 0 28425

force Clock 1 28500

force Clock 0 28575

force Clock 1 28650

force Clock 0 28725

force Clock 1 28800

force Clock 0 28875

force Clock 1 28950

force Clock 0 29025

force Clock 1 29100

force Clock 0 29175

force Clock 1 29250

force Clock 0 29325

force Clock 1 29400

force Clock 0 29475

force Clock 1 29550

force Clock 0 29625

force Clock 1 29700

force Clock 0 29775

force Clock 1 29850

force Clock 0 29925

force Clock 1 30000

force Clock 0 30075

force Clock 1 30150

force Clock 0 30225

force Clock 1 30300

force Clock 0 30375

force Clock 1 30450

force Clock 0 30525

force Clock 1 30600

force Clock 0 30675

force Clock 1 30750

force Clock 0 30825

force Clock 1 30900

force Clock 0 30975

force Clock 1 31050

force Clock 0 31125

force Clock 1 31200

force Clock 0 31275

force Clock 1 31350

force Clock 0 31425

force Clock 1 31500

force Clock 0 31575

force Clock 1 31650

force Clock 0 31725

force Clock 1 31800

force Clock 0 31875

force Clock 1 31950

force Clock 0 32025

force Clock 1 32100

force Clock 0 32175

force Clock 1 32250

force Clock 0 32325

force Clock 1 32400

force Clock 0 32475

force Clock 1 32550

force Clock 0 32625

force Clock 1 32700

force Clock 0 32775

force Clock 1 32850

force Clock 0 32925

force Clock 1 33000

force Clock 0 33075

force Clock 1 33150

force Clock 0 33225

force Clock 1 33300

force Clock 0 33375

force Clock 1 33450

force Clock 0 33525

force Clock 1 33600

force Clock 0 33675

force Clock 1 33750

force Clock 0 33825

force Clock 1 33900

force Clock 0 33975

force Clock 1 34050

force Clock 0 34125

force Clock 1 34200

force Clock 0 34275

force Clock 1 34350

force Clock 0 34425

force Clock 1 34500

force Clock 0 34575

force Clock 1 34650

force Clock 0 34725

force Clock 1 34800

force Clock 0 34875

force Clock 1 34950

force Clock 0 35025

force Clock 1 35100

force Clock 0 35175

force Clock 1 35250

force Clock 0 35325

force Clock 1 35400

force Clock 0 35475

force Clock 1 35550

force Clock 0 35625

force Clock 1 35700

force Clock 0 35775

force Clock 1 35850

force Clock 0 35925

force Clock 1 36000

force Clock 0 36075

force Clock 1 36150

force Clock 0 36225

force Clock 1 36300

force Clock 0 36375

force Clock 1 36450

force Clock 0 36525

force Clock 1 36600

force Clock 0 36675

force Clock 1 36750

force Clock 0 36825

force Clock 1 36900

force Clock 0 36975

force Clock 1 37050

force Clock 0 37125

force Clock 1 37200

force Clock 0 37275

force Clock 1 37350

force Clock 0 37425

force Clock 1 37500

force Clock 0 37575

force Clock 1 37650

force Clock 0 37725

force Clock 1 37800

force Clock 0 37875

force Clock 1 37950

force Clock 0 38025

force Clock 1 38100

force Clock 0 38175

force Clock 1 38250

force Clock 0 38325

force Clock 1 38400

force Clock 0 38475

force Clock 1 38550

force Clock 0 38625

force Clock 1 38700

force Clock 0 38775

force Clock 1 38850

force Clock 0 38925

force Clock 1 39000

force Clock 0 39075

force Clock 1 39150

force Clock 0 39225

force Clock 1 39300

force Clock 0 39375

force Clock 1 39450

force Clock 0 39525

force Clock 1 39600

force Clock 0 39675

force Clock 1 39750

force Clock 0 39825

force Clock 1 39900

force Clock 0 39975

force Clock 1 40050

force Clock 0 40125

force Clock 1 40200

force Clock 0 40275

force Clock 1 40350

force Clock 0 40425

force Clock 1 40500

force Clock 0 40575

force Clock 1 40650

force Clock 0 40725

force Clock 1 40800

force Clock 0 40875

force Clock 1 40950

force Clock 0 41025

force Clock 1 41100

force Clock 0 41175

force Clock 1 41250

force Clock 0 41325

force Clock 1 41400

force Clock 0 41475

force Clock 1 41550

force Clock 0 41625

force Clock 1 41700

force Clock 0 41775

force Clock 1 41850

force Clock 0 41925

force Clock 1 42000

force Clock 0 42075

force Clock 1 42150

force Clock 0 42225

force Clock 1 42300

force Clock 0 42375

force Clock 1 42450

force Clock 0 42525

force Clock 1 42600

force Clock 0 42675

force Clock 1 42750

force Clock 0 42825

force Clock 1 42900

force Clock 0 42975

force Clock 1 43050

force Clock 0 43125

force Clock 1 43200

force Clock 0 43275

force Clock 1 43350

force Clock 0 43425

force Clock 1 43500

force Clock 0 43575

force Clock 1 43650

force Clock 0 43725

force Clock 1 43800

force Clock 0 43875

force Clock 1 43950

force Clock 0 44025

force Clock 1 44100

force Clock 0 44175

force Clock 1 44250

force Clock 0 44325

force Clock 1 44400

force Clock 0 44475

force Clock 1 44550

force Clock 0 44625

force Clock 1 44700

force Clock 0 44775

force Clock 1 44850

force Clock 0 44925

force Clock 1 45000

force Clock 0 45075

force Clock 1 45150

force Clock 0 45225

force Clock 1 45300

force Clock 0 45375

force Clock 1 45450

force Clock 0 45525

force Clock 1 45600

force Clock 0 45675

force Clock 1 45750

force Clock 0 45825

force Clock 1 45900

force Clock 0 45975

force Clock 1 46050

force Clock 0 46125

force Clock 1 46200

force Clock 0 46275

force Clock 1 46350

force Clock 0 46425

force Clock 1 46500

force Clock 0 46575

force Clock 1 46650

force Clock 0 46725

force Clock 1 46800

force Clock 0 46875

force Clock 1 46950

force Clock 0 47025

force Clock 1 47100

force Clock 0 47175

force Clock 1 47250

force Clock 0 47325

force Clock 1 47400

force Clock 0 47475

force Clock 1 47550

force Clock 0 47625

force Clock 1 47700

force Clock 0 47775

force Clock 1 47850

force Clock 0 47925

force Clock 1 48000

force Clock 0 48075

force Clock 1 48150

force Clock 0 48225

force Clock 1 48300

force Clock 0 48375

force Clock 1 48450

force Clock 0 48525

force Clock 1 48600

force Clock 0 48675

force Clock 1 48750

force Clock 0 48825

force Clock 1 48900

force Clock 0 48975

force Clock 1 49050

force Clock 0 49125

force Clock 1 49200

force Clock 0 49275

force Clock 1 49350

force Clock 0 49425

force Clock 1 49500

force Clock 0 49575

force Clock 1 49650

force Clock 0 49725

force Clock 1 49800

force Clock 0 49875

force Clock 1 49950

force Clock 0 50025

force Clock 1 50100

force Clock 0 50175

force Clock 1 50250

force Clock 0 50325

force Clock 1 50400

force Clock 0 50475

force Clock 1 50550

force Clock 0 50625

force Clock 1 50700

force Clock 0 50775

force Clock 1 50850

force Clock 0 50925

force Clock 1 51000

force Clock 0 51075

force Clock 1 51150

force Clock 0 51225

force Clock 1 51300

force Clock 0 51375

force Clock 1 51450

force Clock 0 51525

force Clock 1 51600

force Clock 0 51675

force Clock 1 51750

force Clock 0 51825

force Clock 1 51900

force Clock 0 51975

force Clock 1 52050

force Clock 0 52125

force Clock 1 52200

force Clock 0 52275

force Clock 1 52350

force Clock 0 52425

force Clock 1 52500

force Clock 0 52575

force Clock 1 52650

force Clock 0 52725

force Clock 1 52800

force Clock 0 52875

force Clock 1 52950

force Clock 0 53025

force Clock 1 53100

force Clock 0 53175

force Clock 1 53250

force Clock 0 53325

force Clock 1 53400

force Clock 0 53475

force Clock 1 53550

force Clock 0 53625

force Clock 1 53700

force Clock 0 53775

force Clock 1 53850

force Clock 0 53925

force Clock 1 54000

force Clock 0 54075

force Clock 1 54150

force Clock 0 54225

force Clock 1 54300

force Clock 0 54375

force Clock 1 54450

force Clock 0 54525

force Clock 1 54600

force Clock 0 54675

force Clock 1 54750

force Clock 0 54825

force Clock 1 54900

force Clock 0 54975

force Clock 1 55050

force Clock 0 55125

force Clock 1 55200

force Clock 0 55275

force Clock 1 55350

force Clock 0 55425

force Clock 1 55500

force Clock 0 55575

force Clock 1 55650

force Clock 0 55725

force Clock 1 55800

force Clock 0 55875

force Clock 1 55950

force Clock 0 56025

force Clock 1 56100

force Clock 0 56175

force Clock 1 56250

force Clock 0 56325

force Clock 1 56400

force Clock 0 56475

force Clock 1 56550

force Clock 0 56625

force Clock 1 56700

force Clock 0 56775

force Clock 1 56850

force Clock 0 56925

force Clock 1 57000

force Clock 0 57075

force Clock 1 57150

force Clock 0 57225

force Clock 1 57300

force Clock 0 57375

force Clock 1 57450

force Clock 0 57525

force Clock 1 57600

force Clock 0 57675

force Clock 1 57750

force Clock 0 57825

force Clock 1 57900

force Clock 0 57975

force Clock 1 58050

force Clock 0 58125

force Clock 1 58200

force Clock 0 58275

force Clock 1 58350

force Clock 0 58425

force Clock 1 58500

force Clock 0 58575

force Clock 1 58650

force Clock 0 58725

force Clock 1 58800

force Clock 0 58875

force Clock 1 58950

force Clock 0 59025

force Clock 1 59100

force Clock 0 59175

force Clock 1 59250

force Clock 0 59325

force Clock 1 59400

force Clock 0 59475

force Clock 1 59550

force Clock 0 59625

force Clock 1 59700

force Clock 0 59775

force Clock 1 59850

force Clock 0 59925

force Clock 1 60000

force Clock 0 60075

force Clock 1 60150

force Clock 0 60225

force Clock 1 60300

force Clock 0 60375

force Clock 1 60450

force Clock 0 60525

force Clock 1 60600

force Clock 0 60675

force Clock 1 60750

force Clock 0 60825

force Clock 1 60900

force Clock 0 60975

force Clock 1 61050

force Clock 0 61125

force Clock 1 61200

force Clock 0 61275

force Clock 1 61350

force Clock 0 61425

force Clock 1 61500

force Clock 0 61575

force Clock 1 61650

force Clock 0 61725

force Clock 1 61800

force Clock 0 61875

force Clock 1 61950

force Clock 0 62025

force Clock 1 62100

force Clock 0 62175

force Clock 1 62250

force Clock 0 62325

force Clock 1 62400

force Clock 0 62475

force Clock 1 62550

force Clock 0 62625

force Clock 1 62700

force Clock 0 62775

force Clock 1 62850

force Clock 0 62925

force Clock 1 63000

force Clock 0 63075

force Clock 1 63150

force Clock 0 63225

force Clock 1 63300

force Clock 0 63375

force Clock 1 63450

force Clock 0 63525

force Clock 1 63600

force Clock 0 63675

force Clock 1 63750

force Clock 0 63825

force Clock 1 63900

force Clock 0 63975

force Clock 1 64050

force Clock 0 64125

force Clock 1 64200

force Clock 0 64275

force Clock 1 64350

force Clock 0 64425

force Clock 1 64500

force Clock 0 64575

force Clock 1 64650

force Clock 0 64725

force Clock 1 64800

force Clock 0 64875

force Clock 1 64950

force Clock 0 65025

force Clock 1 65100

force Clock 0 65175

force Clock 1 65250

force Clock 0 65325

force Clock 1 65400

force Clock 0 65475

force Clock 1 65550

force Clock 0 65625

force Clock 1 65700

force Clock 0 65775

force Clock 1 65850

force Clock 0 65925

force Clock 1 66000

force Clock 0 66075

force Clock 1 66150

force Clock 0 66225

force Clock 1 66300

force Clock 0 66375

force Clock 1 66450

force Clock 0 66525

force Clock 1 66600

force Clock 0 66675

force Clock 1 66750

force Clock 0 66825

force Clock 1 66900

force Clock 0 66975

force Clock 1 67050

force Clock 0 67125

force Clock 1 67200

force Clock 0 67275

force Clock 1 67350

force Clock 0 67425

force Clock 1 67500

force Clock 0 67575

force Clock 1 67650

force Clock 0 67725

force Clock 1 67800

force Clock 0 67875

force Clock 1 67950

force Clock 0 68025

force Clock 1 68100

force Clock 0 68175

force Clock 1 68250

force Clock 0 68325

force Clock 1 68400

force Clock 0 68475

force Clock 1 68550

force Clock 0 68625

force Clock 1 68700

force Clock 0 68775

force Clock 1 68850

force Clock 0 68925

force Clock 1 69000

force Clock 0 69075

force Clock 1 69150

force Clock 0 69225

force Clock 1 69300

force Clock 0 69375

force Clock 1 69450

force Clock 0 69525

force Clock 1 69600

force Clock 0 69675

force Clock 1 69750

force Clock 0 69825

force Clock 1 69900

force Clock 0 69975

force Clock 1 70050

force Clock 0 70125

force Clock 1 70200

force Clock 0 70275

force Clock 1 70350

force Clock 0 70425

force Clock 1 70500

force Clock 0 70575

force Clock 1 70650

force Clock 0 70725

force Clock 1 70800

force Clock 0 70875

force Clock 1 70950

force Clock 0 71025

force Clock 1 71100

force Clock 0 71175

force Clock 1 71250

force Clock 0 71325

force Clock 1 71400

force Clock 0 71475

force Clock 1 71550

force Clock 0 71625

force Clock 1 71700

force Clock 0 71775

force Clock 1 71850

force Clock 0 71925

force Clock 1 72000

force Clock 0 72075

force Clock 1 72150

force Clock 0 72225

force Clock 1 72300

force Clock 0 72375

force Clock 1 72450

force Clock 0 72525

force Clock 1 72600

force Clock 0 72675

force Clock 1 72750

force Clock 0 72825

force Clock 1 72900

force Clock 0 72975

force Clock 1 73050

force Clock 0 73125

force Clock 1 73200

force Clock 0 73275

force Clock 1 73350

force Clock 0 73425

force Clock 1 73500

force Clock 0 73575

force Clock 1 73650

force Clock 0 73725

force Clock 1 73800

force Clock 0 73875

force Clock 1 73950

force Clock 0 74025

force Clock 1 74100

force Clock 0 74175

force Clock 1 74250

force Clock 0 74325

force Clock 1 74400

force Clock 0 74475

force Clock 1 74550

force Clock 0 74625

force Clock 1 74700

force Clock 0 74775

force Clock 1 74850

force Clock 0 74925

force Clock 1 75000

force Clock 0 75075

force Clock 1 75150

force Clock 0 75225

force Clock 1 75300

force Clock 0 75375

force Clock 1 75450

force Clock 0 75525

force Clock 1 75600

force Clock 0 75675

force Clock 1 75750

force Clock 0 75825

force Clock 1 75900

force Clock 0 75975

force Clock 1 76050

force Clock 0 76125

force Clock 1 76200

force Clock 0 76275

force Clock 1 76350

force Clock 0 76425

force Clock 1 76500

force Clock 0 76575

force Clock 1 76650

force Clock 0 76725

force Clock 1 76800

force Clock 0 76875

force Clock 1 76950

force Clock 0 77025

force Clock 1 77100

force Clock 0 77175

force Clock 1 77250

force Clock 0 77325

force Clock 1 77400

force Clock 0 77475

force Clock 1 77550

force Clock 0 77625

force Clock 1 77700

force Clock 0 77775

force Clock 1 77850

force Clock 0 77925

force Clock 1 78000

force Clock 0 78075

force Clock 1 78150

force Clock 0 78225

force Clock 1 78300

force Clock 0 78375

force Clock 1 78450

force Clock 0 78525

force Clock 1 78600

force Clock 0 78675

force Clock 1 78750

force Clock 0 78825

force Clock 1 78900

force Clock 0 78975

force Clock 1 79050

force Clock 0 79125

force Clock 1 79200

force Clock 0 79275

force Clock 1 79350

force Clock 0 79425

force Clock 1 79500

force Clock 0 79575

force Clock 1 79650

force Clock 0 79725

force Clock 1 79800

force Clock 0 79875

force Clock 1 79950

force Clock 0 80025

force Clock 1 80100

force Clock 0 80175

force Clock 1 80250

force Clock 0 80325

force Clock 1 80400

force Clock 0 80475

force Clock 1 80550

force Clock 0 80625

force Clock 1 80700

force Clock 0 80775

force Clock 1 80850

force Clock 0 80925

force Clock 1 81000

force Clock 0 81075

force Clock 1 81150

force Clock 0 81225

force Clock 1 81300

force Clock 0 81375

force Clock 1 81450

force Clock 0 81525

force Clock 1 81600

force Clock 0 81675

force Clock 1 81750

force Clock 0 81825

force Clock 1 81900

force Clock 0 81975

force Clock 1 82050

force Clock 0 82125

force Clock 1 82200

force Clock 0 82275

force Clock 1 82350

force Clock 0 82425

force Clock 1 82500

force Clock 0 82575

force Clock 1 82650

force Clock 0 82725

force Clock 1 82800

force Clock 0 82875

force Clock 1 82950

force Clock 0 83025

force Clock 1 83100

force Clock 0 83175

force Clock 1 83250

force Clock 0 83325

force Clock 1 83400

force Clock 0 83475

force Clock 1 83550

force Clock 0 83625

force Clock 1 83700

force Clock 0 83775

force Clock 1 83850

force Clock 0 83925

force Clock 1 84000

force Clock 0 84075

force Clock 1 84150

force Clock 0 84225

force Clock 1 84300

force Clock 0 84375

force Clock 1 84450

force Clock 0 84525

force Clock 1 84600

force Clock 0 84675

force Clock 1 84750

force Clock 0 84825

force Clock 1 84900

force Clock 0 84975

force Clock 1 85050

force Clock 0 85125

force Clock 1 85200

force Clock 0 85275

force Clock 1 85350

force Clock 0 85425

force Clock 1 85500

force Clock 0 85575

force Clock 1 85650

force Clock 0 85725

force Clock 1 85800

force Clock 0 85875

force Clock 1 85950

force Clock 0 86025

force Clock 1 86100

force Clock 0 86175

force Clock 1 86250

force Clock 0 86325

force Clock 1 86400

force Clock 0 86475

force Clock 1 86550

force Clock 0 86625

force Clock 1 86700

force Clock 0 86775

force Clock 1 86850

force Clock 0 86925

force Clock 1 87000

force Clock 0 87075

force Clock 1 87150

force Clock 0 87225

force Clock 1 87300

force Clock 0 87375

force Clock 1 87450

force Clock 0 87525

force Clock 1 87600

force Clock 0 87675

force Clock 1 87750

force Clock 0 87825

force Clock 1 87900

force Clock 0 87975

force Clock 1 88050

force Clock 0 88125

force Clock 1 88200

force Clock 0 88275

force Clock 1 88350

force Clock 0 88425

force Clock 1 88500

force Clock 0 88575

force Clock 1 88650

force Clock 0 88725

force Clock 1 88800

force Clock 0 88875

force Clock 1 88950

force Clock 0 89025

force Clock 1 89100

force Clock 0 89175

force Clock 1 89250

force Clock 0 89325

force Clock 1 89400

force Clock 0 89475

force Clock 1 89550

force Clock 0 89625

force Clock 1 89700

force Clock 0 89775

force Clock 1 89850

force Clock 0 89925

force Clock 1 90000

force Clock 0 90075

force Clock 1 90150

force Clock 0 90225

force Clock 1 90300

force Clock 0 90375

force Clock 1 90450

force Clock 0 90525

force Clock 1 90600

force Clock 0 90675

force Clock 1 90750

force Clock 0 90825

force Clock 1 90900

force Clock 0 90975

force Clock 1 91050

force Clock 0 91125

force Clock 1 91200

force Clock 0 91275

force Clock 1 91350

force Clock 0 91425

force Clock 1 91500

force Clock 0 91575

force Clock 1 91650

force Clock 0 91725

force Clock 1 91800

force Clock 0 91875

force Clock 1 91950

force Clock 0 92025

force Clock 1 92100

force Clock 0 92175

force Clock 1 92250

force Clock 0 92325

force Clock 1 92400

force Clock 0 92475

force Clock 1 92550

force Clock 0 92625

force Clock 1 92700

force Clock 0 92775

force Clock 1 92850

force Clock 0 92925

force Clock 1 93000

force Clock 0 93075

force Clock 1 93150

force Clock 0 93225

force Clock 1 93300

force Clock 0 93375

force Clock 1 93450

force Clock 0 93525

force Clock 1 93600

force Clock 0 93675

force Clock 1 93750

force Clock 0 93825

force Clock 1 93900

force Clock 0 93975

force Clock 1 94050

force Clock 0 94125

force Clock 1 94200

force Clock 0 94275

force Clock 1 94350

force Clock 0 94425

force Clock 1 94500

force Clock 0 94575

force Clock 1 94650

force Clock 0 94725

force Clock 1 94800

force Clock 0 94875

force Clock 1 94950

force Clock 0 95025

force Clock 1 95100

force Clock 0 95175

force Clock 1 95250

force Clock 0 95325

force Clock 1 95400

force Clock 0 95475

force Clock 1 95550

force Clock 0 95625

force Clock 1 95700

force Clock 0 95775

force Clock 1 95850

force Clock 0 95925

force Clock 1 96000

force Clock 0 96075

force Clock 1 96150

force Clock 0 96225

force Clock 1 96300

force Clock 0 96375

force Clock 1 96450

force Clock 0 96525

force Clock 1 96600

force Clock 0 96675

force Clock 1 96750

force Clock 0 96825

force Clock 1 96900

force Clock 0 96975

force Clock 1 97050

force Clock 0 97125

force Clock 1 97200

force Clock 0 97275

force Clock 1 97350

force Clock 0 97425

force Clock 1 97500

force Clock 0 97575

force Clock 1 97650

force Clock 0 97725

force Clock 1 97800

force Clock 0 97875

force Clock 1 97950

force Clock 0 98025

force Clock 1 98100

force Clock 0 98175

force Clock 1 98250

force Clock 0 98325

force Clock 1 98400

force Clock 0 98475

force Clock 1 98550

force Clock 0 98625

force Clock 1 98700

force Clock 0 98775

force Clock 1 98850

force Clock 0 98925

force Clock 1 99000

force Clock 0 99075

force Clock 1 99150

force Clock 0 99225

force Clock 1 99300

force Clock 0 99375

force Clock 1 99450

force Clock 0 99525

force Clock 1 99600

force Clock 0 99675

force Clock 1 99750

force Clock 0 99825

force Clock 1 99900

force Clock 0 99975

force Clock 1 100050

force Clock 0 100125

force Clock 1 100200

force Clock 0 100275

force Clock 1 100350

force Clock 0 100425

force Clock 1 100500

force Clock 0 100575

force Clock 1 100650

force Clock 0 100725

force Clock 1 100800

force Clock 0 100875

force Clock 1 100950

force Clock 0 101025

force Clock 1 101100

force Clock 0 101175

force Clock 1 101250

force Clock 0 101325

force Clock 1 101400

force Clock 0 101475

force Clock 1 101550

force Clock 0 101625

force Clock 1 101700

force Clock 0 101775

force Clock 1 101850

force Clock 0 101925

force Clock 1 102000

force Clock 0 102075

force Clock 1 102150

force Clock 0 102225

force Clock 1 102300

force Clock 0 102375

force Clock 1 102450

force Clock 0 102525

force Clock 1 102600

force Clock 0 102675

force Clock 1 102750

force Clock 0 102825

force Clock 1 102900

force Clock 0 102975

force Clock 1 103050

force Clock 0 103125

force Clock 1 103200

force Clock 0 103275

force Clock 1 103350

force Clock 0 103425

force Clock 1 103500

force Clock 0 103575

force Clock 1 103650

force Clock 0 103725

force Clock 1 103800

force Clock 0 103875

force Clock 1 103950

force Clock 0 104025

force Clock 1 104100

force Clock 0 104175

force Clock 1 104250

force Clock 0 104325

force Clock 1 104400

force Clock 0 104475

force Clock 1 104550

force Clock 0 104625

force Clock 1 104700

force Clock 0 104775

force Clock 1 104850

force Clock 0 104925

#Ignore rest

force Clock 0 1

# 6) Run the simulation for 104925 ns
run 104925