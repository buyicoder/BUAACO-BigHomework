ori $4 $0 0
loop1_start: nop
ori $20 $20 27536
sub $21 $20 $22
ori $20 $0 31106
lw $22 -27318($20)
sub $20 $21 $20
lui $20 20370
sub $20 $20 $22
ori $20 $0 21754
sw $21 -19178($20)
ori $22 $0 27372
sw $20 -25472($22)
lui $20 10230
ori $20 $0 30306
lw $22 -26106($20)
ori $21 $20 26009
ori $20 $0 17597
sw $20 -8801($20)
ori $21 $0 26260
sw $22 -22652($21)
add $22 $20 $20
ori $21 $0 26010
sw $21 -21278($21)
add $21 $21 $22
add $20 $20 $22
sub $20 $22 $22
lui $20 13298
ori $20 $0 12175
sw $21 -7539($20)
ori $21 $0 9296
lw $20 -4612($21)
nop 
ori $22 $21 54528
lui $21 56288
ori $21 $0 6280
lw $20 3004($21)
nop 
add $21 $20 $21
ori $20 $20 18882
nop 
lui $21 44681
ori $22 $22 54953
ori $20 $0 10231
sw $22 -2979($20)
add $21 $22 $20
add $20 $20 $22
ori $20 $20 64223
ori $21 $0 7675
lw $20 -1303($21)
ori $21 $22 31574
ori $21 $0 13847
sw $21 -1843($21)
ori $22 $0 11726
sw $20 506($22)
ori $21 $0 46
lw $20 8886($21)
nop 
lui $21 62435
lui $20 15144
nop 
nop 
sub $20 $21 $21
lui $20 31730
nop 
nop 
lui $22 26188
ori $1 $0 1
add $4 $4 $1
ori $1 $0 10
beq $1 $4 loop1_end
add $22 $22 $20
jal loop1_start
lui $21 284
loop1_end: nop
jal jal_conflict1_start
lw $21 -12240($31)
jal_conflict1_start: 
lw $9 -12256($31)
sub $10 $15 $31
ori $31 $0 12612
jr $31
sub $8 $10 $13
ori $19 $0 6936
sw $15 1388($19)
jal jal_conflict2_start
ori $16 $31 50855
jal_conflict2_start: 
ori $15 $16 31
ori $10 $31 19107
ori $31 $0 12648
jr $31
nop 
add $11 $19 $17
jal jal_conflict3_start
lw $10 -12252($31)
jal_conflict3_start: 
lui $19 31
ori $8 $0 12119
sw $20 -1059($8)
ori $31 $0 12684
jr $31
ori $15 $0 9580
lw $10 -460($15)
nop 
jal jal_conflict4_start
sw $11 -12280($31)
jal_conflict4_start: 
lui $20 33996
add $18 $31 $15
ori $31 $0 12720
jr $31
ori $14 $0 4758
lw $11 6082($14)
ori $11 $12 57130
jal jal_conflict5_start
sw $19 -12268($31)
jal_conflict5_start: 
nop 
sub $11 $20 $31
ori $31 $0 12756
jr $31
lui $19 29240
ori $20 $0 24969
lw $10 -16201($20)
jal jal_conflict6_start
nop 
jal_conflict6_start: 
sub $17 $13 $31
sw $10 -12244($31)
ori $31 $0 12792
jr $31
ori $15 $0 4336
lw $11 3176($15)
ori $14 $0 7121
lw $19 5035($14)
jal jal_conflict7_start
sub $11 $31 $17
jal_conflict7_start: 
lw $12 -12260($31)
add $17 $13 $31
ori $31 $0 12832
jr $31
sub $19 $19 $10
ori $8 $0 30836
lw $16 -28016($8)
jal jal_conflict8_start
lw $8 -12264($31)
jal_conflict8_start: 
lui $9 28469
ori $21 $31 57151
ori $31 $0 12868
jr $31
ori $8 $0 15834
sw $19 -14362($8)
ori $12 $0 24642
sw $14 -14366($12)
jal jal_conflict9_start
add $19 $31 $18
jal_conflict9_start: 
lui $8 31
ori $14 $0 18981
lw $9 -7773($14)
ori $31 $0 12912
jr $31
lui $12 54759
sub $20 $17 $18
jal jal_conflict10_start
nop 
jal_conflict10_start: 
ori $20 $0 17772
sw $19 -9308($20)
add $16 $31 $14
ori $31 $0 12948
jr $31
add $12 $21 $10
lui $14 24492
jal jal_conflict11_start
lw $17 -12252($31)
jal_conflict11_start: 
sw $9 -12244($31)
ori $14 $11 31
ori $31 $0 12980
jr $31
nop 
lui $11 24814
jal jal_conflict12_start
sub $10 $31 $11
jal_conflict12_start: 
add $9 $8 $31
lw $15 -12276($31)
ori $31 $0 13012
jr $31
ori $11 $20 13455
sub $17 $15 $14
jal jal_conflict13_start
nop 
jal_conflict13_start: 
nop 
ori $19 $0 30500
lw $11 -26532($19)
ori $31 $0 13048
jr $31
ori $18 $0 10091
sw $20 957($18)
lui $20 55774
jal jal_conflict14_start
ori $17 $31 24186
jal_conflict14_start: 
sub $10 $14 $31
add $14 $31 $15
ori $31 $0 13084
jr $31
nop 
ori $8 $0 21375
sw $9 -13351($8)
jal jal_conflict15_start
lui $18 31
jal_conflict15_start: 
ori $10 $31 26332
ori $17 $0 5568
lw $21 -2000($17)
ori $31 $0 13124
jr $31
ori $11 $13 35415
ori $20 $0 27411
lw $13 -17715($20)
jal jal_conflict16_start
add $10 $31 $15
jal_conflict16_start: 
lui $21 24740
sub $17 $31 $16
ori $31 $0 13160
jr $31
ori $13 $0 23293
lw $20 -21489($13)
ori $17 $0 1006
sw $18 10294($17)
jal jal_conflict17_start
lui $8 31
jal_conflict17_start: 
nop 
nop 
ori $31 $0 13200
jr $31
ori $19 $0 21843
lw $10 -10679($19)
lui $12 47959
jal jal_conflict18_start
lw $20 -12268($31)
jal_conflict18_start: 
ori $18 $0 7288
sw $15 -6068($18)
ori $13 $31 59473
ori $31 $0 13240
jr $31
ori $12 $0 30322
sw $10 -30298($12)
ori $18 $0 20716
sw $10 -15284($18)
jal jal_conflict19_start
add $11 $31 $12
jal_conflict19_start: 
add $21 $31 $19
ori $18 $8 31
ori $31 $0 13280
jr $31
ori $10 $21 25181
nop 
jal jal_conflict20_start
ori $8 $31 43580
jal_conflict20_start: 
ori $15 $0 564
lw $20 10292($15)
sub $9 $31 $13
ori $31 $0 13316
jr $31
ori $9 $0 16685
sw $13 -9153($9)
add $15 $19 $15
jal jal_conflict21_start
nop 
jal_conflict21_start: 
nop 
ori $16 $0 21538
lw $13 -16074($16)
ori $31 $0 13356
jr $31
lui $20 17355
add $13 $21 $12
jal jal_conflict22_start
lw $21 -12288($31)
jal_conflict22_start: 
ori $18 $0 19327
sw $17 -9199($18)
sw $12 -12272($31)
ori $31 $0 13392
jr $31
add $11 $12 $12
ori $11 $21 49732
jal jal_conflict23_start
sub $21 $31 $15
jal_conflict23_start: 
nop 
ori $17 $0 14203
sw $11 -12711($17)
ori $31 $0 13428
jr $31
lui $8 8732
ori $10 $17 57101
jal jal_conflict24_start
lui $11 31
jal_conflict24_start: 
ori $20 $0 17523
sw $14 -17387($20)
sub $12 $31 $13
ori $31 $0 13464
jr $31
nop 
ori $20 $12 36979
jal jal_conflict25_start
ori $15 $31 21505
jal_conflict25_start: 
ori $16 $31 63200
ori $13 $0 15854
sw $14 -3614($13)
ori $31 $0 13500
jr $31
nop 
ori $21 $11 40757
jal jal_conflict26_start
lui $17 31
jal_conflict26_start: 
sub $13 $11 $31
add $11 $31 $16
ori $31 $0 13532
jr $31
ori $18 $10 63278
sub $9 $15 $16
jal jal_conflict27_start
add $14 $31 $13
jal_conflict27_start: 
nop 
ori $16 $8 31
ori $31 $0 13564
jr $31
ori $14 $0 25929
lw $17 -18149($14)
ori $12 $17 38733
jal jal_conflict28_start
nop 
jal_conflict28_start: 
ori $15 $0 1075
lw $18 981($15)
lui $21 31
ori $31 $0 13604
jr $31
nop 
ori $16 $0 17155
sw $15 -6163($16)
jal jal_conflict29_start
lui $16 31
jal_conflict29_start: 
add $13 $31 $9
ori $19 $0 20984
sw $8 -16084($19)
ori $31 $0 13644
jr $31
ori $11 $0 778
lw $14 8726($11)
add $21 $14 $8
jal jal_conflict30_start
lui $21 31
jal_conflict30_start: 
lui $11 5891
sw $16 -12268($31)
ori $31 $0 13680
jr $31
nop 
ori $9 $0 32239
sw $20 -20695($9)
jal jal_conflict101_start
lui $20 31
jal_conflict101_start: 
beq $31 $31 jal_conflict101_end
jal_conflict101_end: nop
jal jal_normal_start
nop 
ori $13 $14 55635
add $14 $17 $8
sub $10 $8 $10
add $9 $19 $17
ori $16 $19 57394
add $19 $12 $12
nop 
sub $12 $16 $9
ori $13 $0 20576
sw $10 -14068($13)
lui $14 55256
jal jal_normal_end
jal_normal_start: nop
ori $18 $0 17756
sw $13 -9152($18)
lui $12 63806
nop 
nop 
sub $8 $21 $20
ori $9 $0 1624
lw $14 10220($9)
add $21 $17 $11
sub $19 $8 $13
lui $8 14979
lui $11 9548
ori $14 $12 17480
ori $19 $0 12115
sw $19 -10379($19)
ori $13 $0 14690
sw $9 -9134($13)
sub $20 $18 $13
add $17 $20 $10
ori $9 $20 60554
ori $9 $21 25084
ori $16 $0 29934
lw $16 -19938($16)
ori $9 $0 1204
sw $18 7300($9)
ori $19 $0 31825
sw $17 -21217($19)
jr $31
jal_normal_end: nop
lui $9 8
sub $9 $8 $9
ori $8 $9 9
ori $9 $9 8
ori $17 $0 15853
sw $9 -5689($17)
ori $9 $0 17541
lw $17 -14849($9)
nop 
lui $9 8
lui $8 9
nop 
ori $8 $0 6256
sw $17 2444($8)
ori $17 $8 17
add $8 $17 $9
add $17 $9 $9
sub $8 $9 $8
nop 
sub $17 $17 $17
ori $17 $0 28151
sw $17 -16767($17)
lui $17 9
nop 
nop 
ori $9 $0 11834
lw $9 -11598($9)
add $8 $8 $17
ori $8 $0 14188
lw $9 -4884($8)
nop 
sub $9 $8 $17
nop 
lui $8 9
ori $17 $9 17
lui $17 9
add $8 $17 $17
nop 
ori $8 $9 8
add $8 $17 $8
add $17 $8 $8
ori $9 $0 1646
lw $9 166($9)
ori $17 $0 9810
lw $9 -8982($17)
lui $8 17
lui $17 8
nop 
add $8 $9 $17
ori $17 $17 9
ori $9 $8 8
ori $8 $17 17
ori $8 $8 8
ori $9 $8 17
sub $8 $17 $8
lui $17 17
nop 
ori $8 $0 5307
sw $17 6245($8)
ori $17 $8 17
lui $9 9
ori $8 $0 28813
lw $9 -21945($8)
nop 
ori $9 $8 8
ori $9 $0 14595
sw $17 -9419($9)
nop 
ori $8 $8 17
ori $9 $0 22777
sw $8 -19061($9)
lui $17 9
ori $17 $17 8
ori $8 $0 4212
lw $9 2200($8)
lui $17 8
ori $9 $0 6946
sw $8 5038($9)
sub $17 $8 $8
lui $17 17
ori $17 $9 17
nop 
ori $8 $0 16247
lw $8 -12491($8)
lui $8 8
sub $8 $9 $9
sub $9 $8 $8
lui $9 8
sub $17 $8 $17
lui $17 8
lui $8 8
ori $17 $0 10914
sw $9 -194($17)
sub $17 $8 $8
sub $9 $8 $8
lui $9 8
ori $17 $0 17978
sw $9 -11998($17)
ori $17 $0 22079
lw $8 -19023($17)
ori $8 $9 8
nop 
ori $9 $0 1763
sw $9 8461($9)
ori $17 $9 9
lui $17 9
ori $9 $0 27137
lw $8 -23941($9)
ori $17 $17 9
lui $17 8
nop 
ori $17 $9 8
sub $17 $8 $17
ori $9 $17 9
ori $9 $0 7886
sw $9 -1550($9)
sub $8 $9 $8
ori $8 $0 939
sw $8 369($8)
nop 
sub $17 $17 $17
ori $9 $0 27244
sw $8 -16680($9)
ori $8 $9 17
ori $9 $17 17
ori $17 $0 555
lw $17 7517($17)
sub $9 $8 $17
nop 
add $17 $17 $8
nop 
ori $8 $0 30290
sw $9 -27130($8)
ori $17 $0 22636
sw $17 -17044($17)
add $9 $9 $9
ori $9 $0 30626
sw $9 -25306($9)
add $17 $8 $8
lui $8 9
nop 
nop 
ori $17 $0 14411
sw $8 -9143($17)
ori $9 $0 14955
sw $8 -13535($9)
add $9 $8 $9
ori $8 $0 27033
sw $17 -15545($8)
add $17 $9 $17
ori $8 $9 8
add $8 $17 $17
nop 
add $17 $9 $9
ori $8 $0 31888
lw $9 -24296($8)
ori $9 $17 17
add $17 $17 $9
lui $17 8
ori $17 $17 8
lui $8 8
add $8 $8 $8
add $17 $9 $17
ori $17 $0 24437
lw $9 -20705($17)
nop 
ori $9 $0 29719
sw $8 -22359($9)
add $8 $17 $9
ori $8 $0 14503
lw $17 -12191($8)
add $17 $9 $9
sub $17 $17 $17
lui $9 8
nop 
add $9 $9 $17
ori $8 $0 27431
lw $8 -16799($8)
add $17 $17 $9
ori $9 $9 9
ori $8 $0 3048
sw $9 2696($8)
ori $9 $0 29505
lw $17 -24445($9)
nop 
lui $17 8
add $8 $9 $8
lui $18 60962
ori $8 $0 4169
sw $17 3139($8)
add $13 $21 $10
beq $13 $17 beqConflict1_end
ori $15 $16 46996
lui $16 4675
beqConflict1_end: nop
nop 
nop 
nop 
beq $0 $0 beqConflict2_end
add $15 $17 $15
sub $16 $15 $16
beqConflict2_end: nop
ori $12 $0 32076
lw $19 -31296($12)
nop 
ori $15 $0 1253
lw $13 9187($15)
beq $0 $13 beqConflict3_end
nop 
nop 
beqConflict3_end: nop
ori $10 $0 7616
sw $15 1428($10)
lui $13 1414
add $15 $14 $18
beq $15 $15 beqConflict4_end
add $16 $17 $17
add $17 $15 $17
beqConflict4_end: nop
ori $2 $0 39482
ori $3 $0 3000
sw $3 0($0)
lw $2 0($0)
beq $2 $3 beqConflict5_end
nop 
ori $15 $16 41812
beqConflict5_end: nop
sub $17 $17 $11
sub $19 $10 $10
ori $14 $0 3079
sw $21 4917($14)
beq $21 $17 beqConflict6_end
nop 
lui $16 59049
beqConflict6_end: nop
add $21 $19 $17
ori $8 $0 13626
lw $17 -11662($8)
lui $19 1576
beq $21 $19 beqConflict7_end
ori $17 $17 54216
nop 
beqConflict7_end: nop
lui $13 21646
ori $18 $0 18589
sw $14 -12121($18)
ori $12 $0 12450
sw $10 -12362($12)
beq $13 $14 beqConflict8_end
sub $15 $15 $17
add $15 $16 $17
beqConflict8_end: nop
sub $15 $12 $13
lui $18 29771
add $11 $20 $12
beq $11 $18 beqConflict9_end
ori $17 $0 32578
sw $17 -30314($17)
add $17 $16 $16
beqConflict9_end: nop
ori $2 $0 48013
ori $3 $0 1444
sw $3 0($0)
lw $2 0($0)
beq $2 $3 beqConflict10_end
ori $17 $0 3894
sw $17 4446($17)
nop 
beqConflict10_end: nop
ori $16 $0 23010
sw $19 -21106($16)
ori $20 $0 14365
sw $8 -3697($20)
add $14 $13 $8
beq $14 $19 beqConflict11_end
sub $17 $15 $16
ori $16 $17 58138
beqConflict11_end: nop
sub $12 $16 $17
ori $14 $0 5194
sw $17 -4818($14)
ori $19 $0 32375
sw $13 -29811($19)
beq $13 $12 beqConflict12_end
ori $17 $15 38203
lui $15 25224
beqConflict12_end: nop
lui $11 8897
ori $12 $0 10062
lw $8 1594($12)
ori $20 $0 9461
sw $9 -8389($20)
beq $11 $9 beqConflict13_end
lui $16 28133
nop 
beqConflict13_end: nop
ori $18 $0 12796
lw $10 -8412($18)
ori $13 $0 29416
sw $13 -24572($13)
ori $11 $0 24813
lw $20 -19329($11)
beq $20 $10 beqConflict14_end
sub $16 $16 $16
ori $15 $0 14558
lw $16 -3634($15)
beqConflict14_end: nop
ori $2 $0 26493
ori $3 $0 31878
sw $3 0($0)
lw $2 0($0)
beq $2 $3 beqConflict15_end
ori $16 $0 23133
lw $15 -16001($16)
lui $17 48176
beqConflict15_end: nop
nop 
ori $8 $0 30407
lw $8 -25403($8)
add $10 $13 $20
beq $0 $10 beqConflict16_end
ori $16 $0 29414
sw $17 -20794($16)
add $15 $17 $17
beqConflict16_end: nop
ori $19 $0 31549
lw $16 -23997($19)
ori $13 $15 8684
ori $20 $0 22566
lw $13 -10326($20)
beq $13 $16 beqConflict17_end
lui $15 53833
ori $16 $0 28352
sw $17 -18740($16)
beqConflict17_end: nop
ori $17 $17 2550
ori $17 $0 22352
lw $19 -20928($17)
add $8 $12 $18
beq $8 $17 beqConflict18_end
add $16 $15 $15
add $15 $16 $16
beqConflict18_end: nop
sub $8 $11 $9
nop 
ori $11 $15 53716
beq $11 $0 beqConflict19_end
ori $16 $0 31560
lw $15 -29816($16)
lui $16 42011
beqConflict19_end: nop
ori $2 $0 27332
ori $3 $0 14802
sw $3 0($0)
lw $2 0($0)
beq $2 $3 beqConflict20_end
lui $15 2763
ori $17 $0 6157
lw $16 -5133($17)
beqConflict20_end: nop
add $15 $8 $12
nop 
ori $17 $0 793
sw $8 2395($17)
beq $0 $15 beqConflict21_end
add $16 $15 $16
nop 
beqConflict21_end: nop
lui $10 14216
sub $20 $18 $18
ori $19 $0 23206
sw $11 -14302($19)
beq $20 $10 beqConflict22_end
lui $16 53955
nop 
beqConflict22_end: nop
ori $18 $0 232
lw $17 9932($18)
ori $20 $14 20166
sub $13 $13 $9
beq $13 $20 beqConflict23_end
add $16 $15 $15
lui $15 64596
beqConflict23_end: nop
ori $20 $0 1756
lw $13 8396($20)
ori $11 $10 29339
lui $8 22166
beq $13 $11 beqConflict24_end
nop 
lui $15 32126
beqConflict24_end: nop
ori $2 $0 20727
ori $3 $0 22557
sw $3 0($0)
lw $2 0($0)
beq $2 $3 beqConflict25_end
add $16 $15 $16
ori $16 $17 63477
beqConflict25_end: nop
ori $18 $9 43642
ori $20 $12 22176
sub $11 $10 $9
beq $11 $18 beqConflict26_end
nop 
ori $15 $0 1338
lw $15 7578($15)
beqConflict26_end: nop
ori $17 $0 28112
sw $15 -16284($17)
add $8 $18 $10
add $20 $11 $9
beq $20 $8 beqConflict27_end
nop 
ori $16 $0 687
lw $15 9529($16)
beqConflict27_end: nop
nop 
ori $8 $0 24282
sw $21 -15514($8)
add $8 $15 $17
beq $21 $8 beqConflict28_end
ori $17 $0 26451
lw $17 -14347($17)
nop 
beqConflict28_end: nop
ori $17 $20 22258
ori $17 $11 18480
nop 
beq $17 $0 beqConflict29_end
ori $17 $0 17789
lw $15 -5853($17)
lui $17 40354
beqConflict29_end: nop
ori $2 $0 38997
ori $3 $0 14834
sw $3 0($0)
lw $2 0($0)
beq $2 $3 beqConflict30_end
ori $15 $0 8786
lw $16 3266($15)
add $15 $16 $15
beqConflict30_end: nop
ori $10 $0 15672
sw $10 0($0)
lw $10 0($0)
jr $10
nop 
ori $10 $0 15684
jr $10
nop 
ori $10 $0 15700
add $3 $10 $0
jr $3
nop 
ori $10 $0 15716
sub $10 $10 $0
jr $10
nop 
ori $10 $0 15736
add $3 $10 $0
sub $2 $3 $0
jr $3
nop 
jal jrConflict_start
nop 
jal jrConflict_end
nop 
jrConflict_start: 
jr $31
jrConflict_end: nop
ori $10 $0 15788
sw $10 0($0)
lw $2 0($0)
add $10 $17 $13
add $14 $15 $11
jr $2
nop 
ori $2 $0 184
ori $3 $0 184
add $22 $2 $3
lw $18 0($22)
sw $22 0($22)
lw $3 0($22)
lw $9 0($3)
lui $22 0
lw $15 236($22)
sw $22 0($22)
lw $3 0($22)
sw $22 0($3)
ori $15 $0 23823
lw $20 -17731($15)
ori $12 $20 1314
ori $9 $20 1314
ori $12 $20 1314
