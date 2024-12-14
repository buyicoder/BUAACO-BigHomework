ori $4 $0 0
loop1_start: nop
add $20 $22 $21
nop 
ori $22 $21 7477
add $21 $20 $20
sub $22 $22 $21
ori $22 $0 2915
sw $21 1741($22)
lui $21 11254
ori $21 $21 16327
add $21 $21 $22
lui $20 64932
nop 
add $20 $20 $20
ori $21 $0 12490
lw $22 -2558($21)
lui $20 65438
sub $20 $20 $22
ori $20 $20 8403
nop 
nop 
nop 
nop 
ori $22 $0 19710
sw $22 -15990($22)
ori $22 $0 28387
lw $22 -17247($22)
lui $22 17893
nop 
sub $21 $22 $22
nop 
lui $21 49137
lui $22 27028
lui $21 51852
sub $22 $21 $20
sub $22 $22 $22
sub $22 $22 $22
lui $22 5964
ori $21 $0 32419
lw $22 -21983($21)
ori $21 $21 57418
nop 
ori $21 $22 41776
ori $20 $0 19074
sw $20 -7230($20)
nop 
ori $21 $0 6311
lw $22 -5775($21)
ori $22 $0 1741
lw $21 2579($22)
nop 
lui $21 50480
ori $21 $20 19759
ori $20 $0 9448
lw $21 1836($20)
nop 
add $20 $22 $21
add $22 $20 $20
ori $22 $20 20108
nop 
ori $1 $0 1
add $4 $4 $1
ori $1 $0 10
beq $1 $4 loop1_end
ori $22 $0 13503
lw $21 -6875($22)
jal loop1_start
ori $22 $20 2761
loop1_end: nop
jal jal_conflict1_start
sub $11 $31 $19
jal_conflict1_start: 
lw $12 -12256($31)
lui $18 29846
ori $31 $0 12592
jr $31
ori $11 $0 30223
sw $21 -27735($11)
ori $17 $0 23350
sw $10 -15206($17)
jal jal_conflict2_start
ori $17 $31 36487
jal_conflict2_start: 
lui $8 54849
ori $17 $31 47001
ori $31 $0 12632
jr $31
lui $14 26472
ori $17 $0 28072
sw $14 -19384($17)
jal jal_conflict3_start
sw $15 -12244($31)
jal_conflict3_start: 
lui $8 31
lui $9 14266
ori $31 $0 12668
jr $31
add $8 $20 $13
ori $18 $0 12080
lw $13 -5420($18)
jal jal_conflict4_start
nop 
jal_conflict4_start: 
sub $13 $21 $31
sub $11 $31 $9
ori $31 $0 12704
jr $31
ori $16 $0 14386
lw $14 -8234($16)
sub $11 $11 $18
jal jal_conflict5_start
nop 
jal_conflict5_start: 
lui $17 31
ori $18 $0 11070
lw $13 42($18)
ori $31 $0 12744
jr $31
ori $9 $0 23938
lw $20 -13962($9)
lui $18 59763
jal jal_conflict6_start
lw $13 -12240($31)
jal_conflict6_start: 
lui $15 2809
ori $20 $31 40854
ori $31 $0 12780
jr $31
add $11 $8 $13
add $11 $17 $20
jal jal_conflict7_start
add $17 $31 $18
jal_conflict7_start: 
lui $20 31
ori $15 $18 31
ori $31 $0 12812
jr $31
ori $19 $0 5328
lw $17 -756($19)
add $19 $14 $18
jal jal_conflict8_start
lui $17 31
jal_conflict8_start: 
nop 
ori $19 $31 36888
ori $31 $0 12848
jr $31
ori $21 $0 8745
sw $15 -3069($21)
nop 
jal jal_conflict9_start
sw $19 -12260($31)
jal_conflict9_start: 
lw $16 -12248($31)
lui $11 700
ori $31 $0 12884
jr $31
add $12 $14 $9
ori $11 $0 19472
lw $17 -10616($11)
jal jal_conflict10_start
add $19 $31 $16
jal_conflict10_start: 
add $19 $17 $31
lui $17 31
ori $31 $0 12920
jr $31
nop 
sub $10 $9 $14
jal jal_conflict11_start
sub $15 $31 $20
jal_conflict11_start: 
add $19 $31 $8
nop 
ori $31 $0 12952
jr $31
add $14 $20 $17
ori $10 $12 36284
jal jal_conflict12_start
add $9 $31 $20
jal_conflict12_start: 
ori $16 $0 15715
lw $21 -15027($16)
add $18 $31 $12
ori $31 $0 12988
jr $31
ori $18 $0 28636
lw $15 -22864($18)
ori $21 $0 32692
lw $17 -22872($21)
jal jal_conflict13_start
sub $21 $31 $20
jal_conflict13_start: 
ori $18 $31 44580
ori $12 $10 31
ori $31 $0 13028
jr $31
ori $11 $0 29436
lw $15 -28664($11)
nop 
jal jal_conflict14_start
lui $12 31
jal_conflict14_start: 
add $15 $14 $31
lui $8 31
ori $31 $0 13064
jr $31
ori $15 $0 17417
sw $21 -14173($15)
ori $8 $8 45585
jal jal_conflict15_start
sw $10 -12288($31)
jal_conflict15_start: 
ori $11 $31 15777
lui $17 54329
ori $31 $0 13100
jr $31
add $14 $20 $8
sub $19 $16 $20
jal jal_conflict16_start
sub $9 $31 $21
jal_conflict16_start: 
sub $12 $16 $31
nop 
ori $31 $0 13132
jr $31
ori $13 $0 21482
lw $21 -14526($13)
sub $10 $21 $11
jal jal_conflict17_start
add $13 $31 $20
jal_conflict17_start: 
lui $17 31
sub $14 $14 $31
ori $31 $0 13168
jr $31
sub $19 $15 $16
sub $19 $12 $8
jal jal_conflict18_start
nop 
jal_conflict18_start: 
sub $19 $16 $31
sw $11 -12264($31)
ori $31 $0 13200
jr $31
sub $15 $17 $18
ori $12 $0 6587
lw $11 4269($12)
jal jal_conflict19_start
lui $10 31
jal_conflict19_start: 
lw $15 -12260($31)
ori $20 $0 18955
sw $8 -8407($20)
ori $31 $0 13240
jr $31
ori $12 $0 314
lw $12 6822($12)
lui $15 9167
jal jal_conflict20_start
add $20 $31 $10
jal_conflict20_start: 
add $9 $18 $31
nop 
ori $31 $0 13276
jr $31
ori $21 $0 9312
sw $19 -8792($21)
ori $11 $0 5468
sw $11 6284($11)
jal jal_conflict21_start
sw $16 -12248($31)
jal_conflict21_start: 
lui $8 31
nop 
ori $31 $0 13316
jr $31
ori $11 $17 44970
ori $16 $11 1542
jal jal_conflict22_start
sub $10 $31 $14
jal_conflict22_start: 
ori $15 $0 5555
sw $17 -1147($15)
add $17 $31 $11
ori $31 $0 13352
jr $31
sub $12 $13 $8
lui $15 43032
jal jal_conflict23_start
sw $19 -12260($31)
jal_conflict23_start: 
nop 
sub $16 $21 $31
ori $31 $0 13384
jr $31
lui $9 4274
ori $11 $0 12643
sw $10 -12027($11)
jal jal_conflict24_start
add $8 $31 $13
jal_conflict24_start: 
lui $13 41288
add $14 $31 $9
ori $31 $0 13420
jr $31
lui $18 49874
nop 
jal jal_conflict25_start
lw $20 -12264($31)
jal_conflict25_start: 
lw $10 -12288($31)
ori $13 $0 8276
sw $8 -7176($13)
ori $31 $0 13456
jr $31
sub $11 $11 $20
ori $15 $10 747
jal jal_conflict26_start
lui $11 31
jal_conflict26_start: 
sub $16 $19 $31
sub $8 $31 $9
ori $31 $0 13488
jr $31
lui $16 22578
sub $10 $16 $15
jal jal_conflict27_start
nop 
jal_conflict27_start: 
add $14 $31 $14
nop 
ori $31 $0 13520
jr $31
ori $14 $0 10569
lw $14 -6109($14)
sub $9 $12 $20
jal jal_conflict28_start
sub $15 $31 $8
jal_conflict28_start: 
ori $11 $0 19718
lw $15 -13142($11)
add $21 $31 $19
ori $31 $0 13560
jr $31
ori $17 $9 17060
ori $20 $17 2863
jal jal_conflict29_start
nop 
jal_conflict29_start: 
nop 
add $19 $16 $31
ori $31 $0 13592
jr $31
add $21 $8 $9
nop 
jal jal_conflict30_start
sub $12 $31 $14
jal_conflict30_start: 
ori $18 $16 31
lw $9 -12280($31)
ori $31 $0 13624
jr $31
ori $21 $13 43016
lui $18 26586
jal jal_conflict101_start
add $9 $31 $11
jal_conflict101_start: 
beq $31 $31 jal_conflict101_end
jal_conflict101_end: nop
jal jal_normal_start
nop 
add $15 $9 $11
ori $17 $13 50298
ori $20 $17 44947
nop 
add $11 $15 $21
nop 
sub $16 $21 $17
ori $13 $18 11963
ori $9 $14 35402
nop 
jal jal_normal_end
jal_normal_start: nop
sub $19 $8 $19
lui $18 58087
sub $18 $10 $14
ori $20 $14 57210
ori $12 $0 32740
sw $17 -25720($12)
lui $20 45816
sub $15 $14 $15
ori $20 $0 17875
lw $17 -12831($20)
sub $17 $19 $14
ori $17 $0 9318
sw $21 -5266($17)
sub $15 $21 $17
lui $18 50524
nop 
ori $12 $15 34610
nop 
ori $20 $12 23805
ori $19 $0 22530
lw $15 -22214($19)
add $19 $12 $21
nop 
sub $10 $13 $15
jr $31
jal_normal_end: nop
ori $17 $17 9
ori $8 $17 17
ori $17 $0 24396
lw $9 -20208($17)
ori $17 $0 13789
sw $9 -10121($17)
nop 
add $9 $8 $17
ori $17 $0 29009
lw $8 -21385($17)
add $8 $8 $17
nop 
lui $8 17
nop 
nop 
nop 
nop 
ori $9 $0 31090
sw $8 -21646($9)
ori $17 $0 15033
sw $17 -9045($17)
sub $9 $9 $8
ori $8 $0 27113
lw $9 -20953($8)
nop 
sub $9 $9 $9
nop 
ori $9 $0 12203
sw $9 -9691($9)
ori $17 $17 17
ori $8 $0 30264
sw $17 -28732($8)
ori $9 $0 11418
lw $17 -10770($9)
sub $17 $9 $9
lui $8 9
lui $17 8
ori $9 $8 9
sub $9 $8 $8
sub $9 $8 $17
lui $17 8
ori $9 $8 9
ori $17 $0 4624
lw $17 -596($17)
sub $9 $9 $9
ori $9 $0 30235
sw $8 -27995($9)
ori $9 $17 8
add $9 $8 $8
ori $8 $0 17002
lw $8 -10262($8)
ori $17 $0 15612
sw $17 -7108($17)
ori $8 $0 12974
lw $8 -10826($8)
lui $17 8
sub $8 $9 $9
add $17 $8 $17
ori $8 $0 17096
sw $9 -6400($8)
add $8 $17 $9
ori $8 $0 13940
lw $17 -7492($8)
ori $9 $17 9
sub $9 $17 $17
ori $17 $0 4653
lw $9 91($17)
add $9 $8 $17
add $17 $17 $9
sub $17 $17 $8
sub $8 $9 $9
lui $8 8
ori $17 $0 21802
lw $17 -16134($17)
ori $8 $0 13649
lw $9 -11089($8)
ori $17 $0 15440
sw $8 -7028($17)
ori $9 $8 9
ori $9 $0 4599
lw $8 -1807($9)
ori $9 $0 32419
lw $17 -20523($9)
ori $9 $0 24617
lw $8 -14253($9)
sub $9 $8 $8
ori $9 $0 12195
sw $8 -11139($9)
sub $17 $17 $9
sub $8 $8 $17
nop 
add $8 $8 $8
ori $17 $0 27501
sw $17 -27077($17)
ori $17 $0 6258
sw $9 -2114($17)
ori $9 $9 17
ori $8 $0 13792
sw $9 -9404($8)
ori $17 $0 29874
lw $9 -23070($17)
nop 
ori $8 $0 10220
lw $9 -10220($8)
lui $9 17
add $9 $17 $8
lui $17 9
add $17 $17 $17
ori $9 $8 17
ori $8 $0 7673
sw $9 -2769($8)
ori $17 $0 2481
sw $8 9655($17)
ori $17 $0 15241
lw $8 -6741($17)
nop 
ori $17 $8 17
lui $17 8
sub $9 $17 $9
ori $8 $0 21276
lw $9 -9100($8)
sub $17 $17 $9
nop 
ori $9 $0 29375
lw $8 -27851($9)
lui $9 9
ori $17 $0 2201
sw $8 -269($17)
add $8 $8 $17
ori $9 $0 21915
sw $8 -13115($9)
ori $9 $0 8824
sw $17 1076($9)
ori $8 $0 7116
lw $9 4896($8)
ori $9 $17 8
sub $9 $8 $8
add $17 $17 $9
nop 
sub $8 $9 $17
sub $8 $17 $9
ori $8 $0 9803
sw $17 -2335($8)
ori $17 $0 14170
sw $8 -8362($17)
add $9 $17 $17
lui $9 17
sub $17 $17 $9
lui $9 9
sub $8 $9 $9
ori $8 $0 10239
sw $9 -6955($8)
ori $9 $0 14931
sw $9 -8731($9)
ori $17 $0 20858
lw $9 -11070($17)
add $8 $9 $9
sub $17 $17 $9
sub $8 $17 $9
add $17 $17 $8
add $9 $17 $8
add $17 $9 $9
sub $17 $8 $9
nop 
ori $9 $0 31272
sw $8 -24500($9)
ori $8 $0 10304
sw $8 884($8)
ori $17 $8 8
lui $9 9
ori $17 $0 32629
sw $17 -31397($17)
ori $17 $0 30853
lw $9 -26317($17)
lui $8 17
add $9 $8 $8
sub $8 $9 $9
sub $8 $17 $9
ori $17 $9 8
sub $8 $9 $9
add $17 $17 $8
ori $9 $0 7458
sw $9 -5742($9)
lui $9 17
sub $9 $17 $8
sub $8 $9 $8
nop 
lui $9 8
add $9 $9 $9
ori $8 $0 16205
sw $17 -12289($8)
sub $9 $17 $8
add $17 $8 $8
ori $8 $0 15409
lw $17 -12013($8)
ori $17 $0 28683
sw $9 -19123($17)
ori $17 $0 10648
sw $8 -8564($17)
ori $17 $0 24227
lw $9 -20543($17)
add $8 $17 $8
ori $9 $0 7950
lw $17 -6682($9)
ori $15 $0 17184
sw $12 -14936($15)
ori $12 $0 21831
sw $14 -20043($12)
add $16 $9 $20
beq $12 $16 beqConflict1_end
nop 
lui $16 25320
beqConflict1_end: nop
nop 
ori $18 $0 914
lw $14 10834($18)
nop 
beq $14 $0 beqConflict2_end
ori $15 $0 4579
lw $17 -1563($15)
nop 
beqConflict2_end: nop
ori $16 $0 26275
lw $19 -25063($16)
lui $21 49410
ori $18 $0 29015
lw $9 -27523($18)
beq $19 $9 beqConflict3_end
add $17 $17 $16
sub $16 $15 $17
beqConflict3_end: nop
sub $12 $21 $13
sub $18 $16 $11
sub $13 $9 $21
beq $13 $18 beqConflict4_end
nop 
ori $17 $16 29706
beqConflict4_end: nop
ori $2 $0 14464
ori $3 $0 25349
sw $3 0($0)
lw $2 0($0)
beq $2 $3 beqConflict5_end
lui $16 36418
ori $17 $16 43157
beqConflict5_end: nop
nop 
add $8 $10 $21
ori $17 $0 21186
sw $20 -21014($17)
beq $8 $20 beqConflict6_end
ori $15 $0 29968
sw $17 -21956($15)
sub $16 $17 $17
beqConflict6_end: nop
ori $11 $0 3637
lw $14 -3457($11)
nop 
add $13 $13 $13
beq $13 $0 beqConflict7_end
ori $17 $0 17360
lw $15 -6616($17)
add $15 $17 $15
beqConflict7_end: nop
lui $8 40196
ori $18 $19 46876
sub $8 $11 $9
beq $8 $8 beqConflict8_end
ori $15 $17 26155
lui $15 31280
beqConflict8_end: nop
ori $18 $9 49300
nop 
ori $20 $0 5025
sw $15 -997($20)
beq $18 $0 beqConflict9_end
add $16 $15 $17
ori $17 $17 32033
beqConflict9_end: nop
ori $2 $0 50792
ori $3 $0 5217
sw $3 0($0)
lw $2 0($0)
beq $2 $3 beqConflict10_end
lui $17 54284
ori $15 $0 14103
lw $17 -7555($15)
beqConflict10_end: nop
nop 
sub $8 $8 $14
ori $17 $0 17114
lw $10 -13594($17)
beq $0 $8 beqConflict11_end
lui $17 47148
lui $16 55934
beqConflict11_end: nop
nop 
add $19 $19 $18
sub $10 $19 $20
beq $10 $19 beqConflict12_end
ori $16 $0 25995
sw $16 -14867($16)
ori $17 $15 62535
beqConflict12_end: nop
lui $20 61338
ori $16 $0 4592
sw $13 -1264($16)
add $9 $10 $18
beq $9 $20 beqConflict13_end
ori $17 $16 44285
add $17 $15 $16
beqConflict13_end: nop
ori $14 $0 10653
sw $17 -2345($14)
add $20 $20 $18
sub $19 $16 $17
beq $17 $19 beqConflict14_end
nop 
ori $15 $17 47946
beqConflict14_end: nop
ori $2 $0 31620
ori $3 $0 4447
sw $3 0($0)
lw $2 0($0)
beq $2 $3 beqConflict15_end
nop 
lui $17 25898
beqConflict15_end: nop
ori $21 $0 28715
sw $17 -17363($21)
ori $9 $0 25220
sw $21 -15860($9)
ori $19 $11 61325
beq $19 $17 beqConflict16_end
ori $17 $17 1257
sub $17 $16 $16
beqConflict16_end: nop
ori $17 $0 8682
lw $15 -5318($17)
ori $8 $0 8121
sw $13 471($8)
ori $8 $0 8337
sw $18 -3181($8)
beq $18 $15 beqConflict17_end
ori $17 $0 27961
lw $16 -18225($17)
lui $17 23553
beqConflict17_end: nop
sub $19 $21 $17
add $10 $16 $18
ori $11 $10 16982
beq $19 $10 beqConflict18_end
add $16 $16 $16
add $15 $15 $17
beqConflict18_end: nop
add $19 $17 $16
lui $14 14284
ori $11 $0 31100
sw $20 -29424($11)
beq $20 $19 beqConflict19_end
ori $17 $17 2304
sub $16 $17 $16
beqConflict19_end: nop
ori $2 $0 30630
ori $3 $0 25804
sw $3 0($0)
lw $2 0($0)
beq $2 $3 beqConflict20_end
ori $16 $0 20454
lw $15 -13702($16)
add $16 $15 $16
beqConflict20_end: nop
sub $13 $16 $13
nop 
lui $10 51256
beq $0 $13 beqConflict21_end
ori $17 $0 19793
sw $17 -11693($17)
sub $15 $15 $15
beqConflict21_end: nop
nop 
ori $17 $0 29850
sw $15 -21710($17)
lui $19 25395
beq $0 $19 beqConflict22_end
ori $16 $16 10505
ori $16 $0 30653
lw $16 -23061($16)
beqConflict22_end: nop
sub $21 $11 $20
sub $9 $20 $14
ori $18 $0 8133
lw $11 2003($18)
beq $11 $21 beqConflict23_end
ori $16 $0 7208
lw $16 3488($16)
ori $16 $0 6288
lw $15 -592($16)
beqConflict23_end: nop
sub $20 $21 $9
add $12 $15 $18
lui $16 22395
beq $16 $20 beqConflict24_end
add $17 $16 $17
ori $17 $0 5532
lw $16 6040($17)
beqConflict24_end: nop
ori $2 $0 49058
ori $3 $0 586
sw $3 0($0)
lw $2 0($0)
beq $2 $3 beqConflict25_end
nop 
lui $17 60584
beqConflict25_end: nop
nop 
ori $21 $16 54857
ori $21 $8 1158
beq $21 $0 beqConflict26_end
lui $15 1085
add $15 $17 $16
beqConflict26_end: nop
nop 
sub $19 $16 $10
nop 
beq $0 $19 beqConflict27_end
ori $15 $0 322
lw $15 6834($15)
ori $16 $0 9065
sw $16 -6649($16)
beqConflict27_end: nop
nop 
ori $10 $0 29035
lw $12 -25859($10)
lui $9 26668
beq $9 $0 beqConflict28_end
ori $15 $0 21272
lw $17 -14296($15)
add $17 $16 $15
beqConflict28_end: nop
nop 
sub $11 $9 $20
nop 
beq $0 $0 beqConflict29_end
nop 
nop 
beqConflict29_end: nop
ori $2 $0 48646
ori $3 $0 12519
sw $3 0($0)
lw $2 0($0)
beq $2 $3 beqConflict30_end
lui $17 60240
sub $17 $15 $15
beqConflict30_end: nop
ori $19 $0 15644
sw $19 0($0)
lw $19 0($0)
jr $19
nop 
ori $19 $0 15656
jr $19
nop 
ori $19 $0 15672
add $3 $19 $0
jr $3
nop 
ori $19 $0 15688
sub $19 $19 $0
jr $19
nop 
ori $19 $0 15708
add $3 $19 $0
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
ori $19 $0 15760
sw $19 0($0)
lw $2 0($0)
add $14 $10 $8
sub $14 $14 $15
jr $2
nop 
ori $2 $0 664
ori $3 $0 664
add $12 $2 $3
lw $15 0($12)
sw $12 0($12)
lw $3 0($12)
lw $14 0($3)
lui $12 0
lw $10 672($12)
sw $12 0($12)
lw $3 0($12)
sw $12 0($3)
ori $13 $0 22807
lw $9 -16207($13)
ori $12 $9 1314
ori $12 $9 1314
ori $11 $9 1314
