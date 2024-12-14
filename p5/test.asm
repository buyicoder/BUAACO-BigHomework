ori $28, $0, 0
ori $29, $0, 0
lui $3, 55755
ori $11, $0, 0
lw $3, 4($11)
jal label1
ori $11, $0, 16
lui $3, 49389
label1: addu $11, $11, $31
jr $11
nop
lui $2, 1972
beq $11, $11, label2
addu $3, $11, $2
lui $11, 38250
label2: ori $3, $2, 5393
subu $2, $11, $2
beq $11, $3, label3
ori $11, $0, 0
lw $11, 4($11)
addu $3, $3, $3
label3: addu $2, $11, $2
addu $11, $2, $11
ori $11, $0, 0
sw $3, 8($11)
beq $11, $11, label4
addu $2, $2, $3
subu $11, $11, $11
label4: addu $11, $3, $2
ori $2, $11, 49415
ori $2, $0, 0
sw $3, 0($2)
ori $3, $0, 0
lw $3, 8($3)
j label5
lui $3, 44596
addu $11, $11, $2
label5: lui $11, 62850
beq $3, $11, label6
subu $2, $2, $3
lui $11, 6431
label6: subu $11, $11, $2
beq $3, $3, label7
ori $3, $0, 0
sw $3, 4($3)
ori $2, $3, 34692
label7: lui $2, 54928
jal label8
ori $2, $0, 16
addu $2, $2, $2
label8: addu $2, $2, $31
jr $2
nop
lui $11, 10986
jal label9
ori $2, $0, 16
ori $11, $2, 4685
label9: addu $2, $2, $31
jr $2
nop
ori $2, $0, 0
lw $2, 4($2)
jal label10
ori $2, $0, 16
lui $11, 60135
label10: addu $2, $2, $31
jr $2
nop
ori $11, $0, 0
sw $11, 0($11)
ori $2, $2, 58826
j label11
addu $11, $2, $11
addu $3, $11, $11
label11: lui $3, 19247
beq $11, $2, label12
lui $3, 49406
ori $3, $11, 22127
label12: ori $2, $0, 0
lw $3, 0($2)
j label13
ori $2, $0, 0
sw $2, 4($2)
subu $2, $11, $11
label13: ori $2, $0, 0
lw $2, 8($2)
ori $11, $0, 0
lw $2, 12($11)
j label14
ori $3, $3, 1937
ori $3, $3, 2048
label14: ori $2, $0, 0
lw $11, 12($2)
ori $11, $0, 0
sw $3, 8($11)
beq $2, $2, label15
ori $2, $0, 0
sw $2, 4($2)
lui $2, 44220
label15: ori $2, $11, 18374
subu $11, $2, $3
beq $3, $2, label16
lui $11, 5528
addu $11, $11, $3
label16: ori $2, $11, 8854
j label17
ori $3, $3, 15662
lui $2, 6777
label17: ori $2, $0, 0
lw $11, 0($2)
ori $2, $0, 0
lw $2, 8($2)
lui $11, 59320
j label18
ori $3, $3, 49890
addu $11, $3, $11
label18: ori $3, $3, 43467
jal label19
ori $2, $0, 16
subu $2, $11, $11
label19: addu $2, $2, $31
jr $2
nop
ori $3, $2, 9422
ori $3, $11, 1698
ori $11, $11, 58567
ori $2, $0, 0
lw $2, 4($2)
addu $3, $3, $2
ori $11, $0, 0
sw $11, 8($11)
subu $11, $3, $2
subu $2, $2, $3
beq $2, $3, label20
ori $2, $3, 37973
ori $2, $0, 0
lw $11, 8($2)
label20: lui $2, 8485
addu $2, $11, $3
ori $3, $11, 57508
ori $11, $11, 28795
ori $2, $0, 0
sw $3, 4($2)
addu $2, $2, $2
ori $11, $11, 56832
beq $11, $3, label21
addu $3, $11, $11
addu $11, $3, $3
label21: ori $3, $0, 0
lw $11, 0($3)
subu $11, $11, $11
beq $11, $2, label22
subu $2, $2, $3
addu $3, $3, $3
label22: ori $3, $0, 0
lw $3, 8($3)
ori $11, $0, 0
sw $2, 12($11)
j label23
addu $11, $3, $3
ori $3, $0, 0
lw $11, 8($3)
label23: ori $2, $0, 0
sw $11, 0($2)
subu $3, $11, $2
jal label24
ori $2, $0, 16
subu $3, $3, $2
label24: addu $2, $2, $31
jr $2
nop
jal label25
ori $11, $0, 16
lui $3, 13780
label25: addu $11, $11, $31
jr $11
nop
j label26
subu $2, $3, $2
ori $11, $3, 39991
label26: ori $11, $0, 0
sw $11, 4($11)
ori $11, $0, 0
lw $11, 0($11)
ori $2, $0, 0
lw $2, 12($2)
ori $2, $0, 0
sw $2, 8($2)
ori $11, $2, 31641
ori $2, $0, 0
sw $11, 4($2)
ori $2, $0, 0
lw $2, 0($2)
ori $3, $0, 0
lw $11, 4($3)
j label27
addu $2, $2, $3
ori $3, $0, 0
lw $11, 8($3)
label27: addu $2, $11, $3
lui $2, 4645
ori $11, $0, 0
lw $2, 0($11)
ori $3, $0, 0
lw $3, 0($3)
ori $11, $3, 11100
ori $2, $2, 61336
jal label28
ori $3, $0, 16
subu $11, $3, $2
label28: addu $3, $3, $31
jr $3
nop
addu $11, $2, $2
ori $11, $3, 39462
subu $2, $3, $2
subu $2, $11, $3
subu $11, $3, $3
ori $2, $3, 32905
addu $3, $11, $3
ori $3, $2, 24087
lui $11, 4602
j label29
lui $2, 58341
ori $2, $0, 0
lw $3, 12($2)
label29: ori $3, $0, 0
lw $11, 12($3)
j label30
subu $2, $11, $11
ori $3, $0, 0
lw $2, 8($3)
label30: ori $3, $2, 11172
ori $2, $2, 63903
subu $11, $3, $3
lui $11, 13904
jal label31
ori $3, $0, 16
addu $2, $11, $3
label31: addu $3, $3, $31
jr $3
nop
ori $3, $0, 0
sw $3, 4($3)
beq $3, $2, label32
lui $3, 53904
subu $3, $11, $2
label32: lui $11, 46724
j label33
ori $11, $11, 54047
ori $3, $11, 38427
label33: ori $11, $0, 0
sw $2, 12($11)
beq $11, $3, label34
lui $3, 60486
ori $11, $0, 0
sw $3, 12($11)
label34: lui $11, 32510
lui $3, 19298
lui $3, 21116
j label35
addu $11, $3, $3
subu $2, $11, $11
label35: addu $3, $11, $2
ori $11, $0, 0
lw $11, 12($11)
ori $2, $3, 18075
jal label36
ori $11, $0, 16
addu $11, $11, $11
label36: addu $11, $11, $31
jr $11
nop
jal label37
ori $2, $0, 16
subu $11, $3, $3
label37: addu $2, $2, $31
jr $2
nop
addu $11, $2, $11
ori $11, $0, 0
lw $2, 8($11)
ori $2, $0, 0
lw $11, 8($2)
subu $2, $3, $11
subu $11, $11, $11
jal label38
ori $11, $0, 16
addu $11, $2, $3
label38: addu $11, $11, $31
jr $11
nop
lui $2, 52793
ori $11, $0, 0
lw $2, 12($11)
subu $11, $11, $11
ori $3, $0, 0
lw $2, 8($3)
ori $2, $0, 0
sw $2, 4($2)
ori $2, $0, 0
lw $2, 12($2)
ori $11, $0, 0
sw $2, 4($11)
lui $3, 19902
ori $2, $0, 0
sw $3, 0($2)
ori $11, $2, 58206
ori $11, $0, 0
lw $3, 0($11)
ori $3, $0, 0
lw $3, 0($3)
subu $2, $11, $11
ori $2, $0, 0
sw $3, 4($2)
subu $11, $2, $2
lui $11, 59754
subu $11, $3, $11
jal label39
ori $3, $0, 16
subu $11, $2, $3
label39: addu $3, $3, $31
jr $3
nop
ori $11, $2, 31061
jal label40
ori $2, $0, 16
ori $2, $3, 57085
label40: addu $2, $2, $31
jr $2
nop
addu $3, $3, $3
beq $3, $2, label41
ori $2, $11, 2619
subu $3, $11, $3
label41: lui $3, 5579
beq $3, $2, label42
lui $2, 2335
addu $2, $11, $2
label42: addu $11, $11, $3
j label43
subu $2, $2, $3
ori $2, $3, 32809
label43: addu $11, $3, $3
subu $3, $11, $2
beq $2, $2, label44
lui $2, 34966
subu $11, $3, $11
label44: addu $3, $11, $3
subu $2, $11, $2
lui $3, 4337
lui $11, 7761
beq $2, $11, label45
subu $2, $11, $2
ori $2, $0, 0
lw $11, 4($2)
label45: lui $3, 29278
addu $11, $2, $3
addu $3, $3, $2
lui $3, 57132
j label46
addu $11, $2, $2
addu $11, $2, $11
label46: lui $3, 64105
jal label47
ori $2, $0, 16
addu $3, $11, $3
label47: addu $2, $2, $31
jr $2
nop
jal label48
ori $2, $0, 16
addu $3, $2, $2
label48: addu $2, $2, $31
jr $2
nop
ori $11, $3, 32715
lui $11, 17683
ori $2, $11, 51402
ori $11, $0, 0
lw $3, 4($11)
jal label49
ori $11, $0, 16
lui $2, 50612
label49: addu $11, $11, $31
jr $11
nop
addu $3, $2, $3
subu $3, $3, $11
ori $11, $0, 0
sw $11, 0($11)
ori $11, $0, 0
sw $2, 8($11)
lui $3, 37592
addu $11, $2, $3
j label50
addu $2, $2, $3
ori $3, $0, 0
lw $11, 12($3)
label50: addu $3, $11, $2
j label51
ori $3, $0, 0
lw $3, 4($3)
subu $3, $2, $3
label51: ori $11, $0, 0
lw $3, 0($11)
lui $3, 54793
j label52
addu $3, $11, $2
subu $3, $2, $2
label52: lui $11, 9415
j label53
subu $11, $11, $11
ori $11, $3, 7071
label53: ori $2, $0, 0
lw $11, 12($2)
jal label54
ori $11, $0, 16
ori $3, $11, 46631
label54: addu $11, $11, $31
jr $11
nop
j label55
ori $3, $0, 0
lw $11, 12($3)
ori $2, $0, 0
lw $2, 0($2)
label55: ori $2, $0, 0
lw $3, 8($2)
beq $3, $11, label56
ori $11, $3, 22384
ori $11, $2, 13241
label56: ori $2, $0, 0
sw $11, 8($2)
ori $11, $0, 0
sw $11, 12($11)
ori $11, $3, 18076
lui $11, 31555
ori $11, $0, 0
sw $11, 12($11)
j label57
ori $3, $0, 0
lw $3, 8($3)
subu $11, $3, $11
label57: addu $3, $3, $11
jal label58
ori $3, $0, 16
ori $2, $2, 10084
label58: addu $3, $3, $31
jr $3
nop
beq $3, $11, label59
ori $2, $11, 46316
addu $2, $3, $2
label59: lui $11, 23891
j label60
ori $11, $0, 0
lw $3, 8($11)
subu $3, $11, $11
label60: addu $3, $11, $2
j label61
lui $11, 21133
lui $11, 41587
label61: lui $11, 6992
ori $2, $0, 0
lw $11, 12($2)
lui $3, 33985
lui $2, 5102
addu $11, $11, $3
j label62
ori $2, $11, 53290
lui $3, 36301
label62: addu $3, $3, $3
beq $3, $3, label63
subu $3, $3, $3
subu $3, $11, $2
label63: addu $2, $2, $2
jal label64
ori $3, $0, 16
lui $11, 22230
label64: addu $3, $3, $31
jr $3
nop
ori $3, $2, 48239
addu $2, $2, $3
ori $11, $0, 0
lw $2, 4($11)
subu $11, $2, $3
addu $2, $2, $3
addu $2, $2, $11
ori $11, $0, 0
sw $11, 4($11)
ori $2, $0, 0
lw $11, 0($2)
lui $2, 35701
lui $11, 51034
j label65
lui $3, 6253
addu $3, $3, $3
label65: addu $11, $3, $2
j label66
ori $11, $0, 0
sw $3, 0($11)
ori $11, $0, 0
lw $3, 12($11)
label66: addu $11, $3, $2
lui $11, 43295
subu $2, $11, $11
jal label67
ori $11, $0, 16
ori $2, $2, 14513
label67: addu $11, $11, $31
jr $11
nop
beq $11, $3, label68
ori $3, $3, 40652
lui $3, 1313
label68: addu $3, $3, $11
lui $11, 63892
beq $3, $3, label69
subu $3, $2, $2
lui $3, 7223
label69: subu $11, $2, $3
ori $11, $0, 0
sw $3, 8($11)
ori $3, $11, 62799
j label70
addu $11, $11, $2
ori $2, $11, 38449
label70: ori $11, $0, 0
sw $3, 4($11)
beq $2, $3, label71
ori $2, $0, 0
sw $3, 8($2)
addu $3, $11, $3
label71: ori $11, $0, 0
lw $3, 12($11)
addu $11, $3, $11
lui $3, 22988
lui $2, 3694
addu $2, $2, $11
beq $11, $2, label72
ori $3, $0, 0
sw $3, 12($3)
subu $3, $2, $11
label72: ori $2, $2, 57974
ori $2, $0, 0
sw $3, 12($2)
ori $3, $2, 50052
addu $2, $2, $3
ori $2, $0, 0
lw $11, 12($2)
j label73
lui $2, 42657
ori $11, $11, 42665
label73: ori $11, $0, 0
sw $3, 4($11)
ori $3, $0, 0
sw $11, 4($3)
lui $11, 5408
jal label74
ori $2, $0, 16
ori $3, $11, 18714
label74: addu $2, $2, $31
jr $2
nop
j label75
addu $11, $2, $2
ori $3, $0, 0
lw $11, 0($3)
label75: lui $3, 60484
ori $2, $3, 62901
subu $11, $3, $3
jal label76
ori $2, $0, 16
lui $11, 8218
label76: addu $2, $2, $31
jr $2
nop
ori $2, $11, 12018
ori $11, $0, 0
lw $2, 8($11)
subu $2, $3, $2
ori $3, $0, 0
sw $11, 8($3)
j label77
ori $3, $0, 0
lw $3, 4($3)
lui $2, 23331
label77: subu $3, $2, $11
j label78
subu $2, $3, $11
subu $2, $11, $11
label78: addu $3, $2, $2
beq $3, $3, label79
lui $11, 34261
ori $3, $0, 0
sw $2, 0($3)
label79: ori $2, $2, 9916
ori $2, $0, 0
sw $11, 12($2)
subu $11, $2, $11
ori $11, $0, 0
lw $2, 4($11)
ori $3, $0, 0
lw $2, 4($3)
addu $11, $11, $11
ori $3, $0, 0
lw $11, 0($3)
j label80
ori $2, $0, 0
lw $2, 8($2)
lui $2, 30410
label80: ori $3, $0, 0
lw $3, 4($3)
jal label81
ori $2, $0, 16
addu $3, $3, $11
label81: addu $2, $2, $31
jr $2
nop
j label82
ori $2, $0, 0
sw $2, 12($2)
addu $3, $11, $11
label82: ori $11, $2, 65400
j label83
lui $3, 17186
ori $2, $0, 0
lw $11, 4($2)
label83: ori $11, $0, 0
lw $11, 12($11)
subu $11, $11, $2
addu $2, $2, $11
jal label84
ori $2, $0, 16
subu $3, $2, $2
label84: addu $2, $2, $31
jr $2
nop
addu $11, $3, $3
ori $11, $2, 10754
ori $3, $0, 0
sw $2, 8($3)
beq $2, $11, label85
lui $3, 43284
ori $2, $0, 0
sw $11, 8($2)
label85: ori $2, $3, 17278
addu $11, $2, $11
ori $2, $0, 0
sw $3, 8($2)
ori $2, $0, 0
sw $2, 0($2)
subu $3, $3, $2
beq $3, $11, label86
ori $11, $0, 0
sw $3, 12($11)
ori $11, $0, 0
lw $11, 12($11)
label86: ori $2, $0, 0
lw $11, 0($2)
addu $3, $3, $11
addu $2, $11, $11
subu $2, $3, $2
subu $3, $11, $11
jal label87
ori $2, $0, 16
lui $11, 23428
label87: addu $2, $2, $31
jr $2
nop
addu $11, $3, $3
j label88
ori $11, $2, 64518
addu $3, $3, $2
label88: lui $2, 38216
lui $2, 33707
addu $3, $3, $3
jal label89
ori $11, $0, 16
addu $11, $2, $2
label89: addu $11, $11, $31
jr $11
nop
ori $2, $0, 0
sw $3, 12($2)
subu $11, $3, $11
jal label90
ori $11, $0, 16
ori $3, $3, 59468
label90: addu $11, $11, $31
jr $11
nop
lui $2, 60672
j label91
ori $11, $0, 0
lw $3, 0($11)
subu $2, $2, $11
label91: subu $11, $11, $11
beq $2, $2, label92
lui $2, 49202
subu $2, $3, $2
label92: lui $11, 44034
subu $3, $2, $3
ori $11, $0, 0
sw $11, 4($11)
j label93
ori $2, $0, 0
sw $3, 12($2)
ori $2, $0, 0
sw $11, 8($2)
label93: ori $11, $0, 0
sw $2, 0($11)
jal label94
ori $2, $0, 16
subu $11, $2, $3
label94: addu $2, $2, $31
jr $2
nop
jal label95
ori $2, $0, 16
addu $2, $2, $3
label95: addu $2, $2, $31
jr $2
nop
addu $11, $11, $11
ori $2, $0, 0
lw $3, 8($2)
subu $11, $2, $11
ori $3, $0, 0
lw $2, 12($3)
ori $3, $0, 0
lw $11, 0($3)
beq $2, $2, label96
subu $2, $3, $11
subu $2, $11, $11
label96: addu $3, $3, $3
subu $11, $3, $3
ori $2, $0, 0
lw $3, 0($2)
ori $11, $2, 48026
addu $2, $3, $3
jal label97
ori $11, $0, 16
addu $2, $11, $3
label97: addu $11, $11, $31
jr $11
nop
ori $2, $0, 0
sw $3, 4($2)
ori $11, $0, 0
sw $3, 4($11)
lui $3, 58180
j label98
subu $2, $2, $11
ori $2, $2, 10586
label98: subu $2, $11, $2
ori $11, $0, 0
lw $2, 8($11)
ori $3, $0, 0
lw $3, 12($3)
j label99
ori $11, $11, 22885
ori $11, $11, 31034
label99: ori $11, $11, 54170
j label100
lui $3, 18156
addu $11, $11, $3
label100: addu $2, $3, $3
ori $11, $0, 0
sw $11, 0($11)
lui $3, 56267
ori $2, $2, 12857
beq $2, $2, label101
addu $11, $2, $2
lui $3, 30328
label101: subu $2, $2, $11
jal label102
ori $11, $0, 16
subu $11, $11, $3
label102: addu $11, $11, $31
jr $11
nop
lui $3, 12093
subu $11, $11, $11
addu $2, $11, $3
lui $2, 5925
ori $2, $0, 0
sw $2, 8($2)
lui $11, 26953
ori $3, $0, 0
lw $2, 0($3)
addu $11, $3, $2
addu $3, $3, $11
beq $2, $2, label103
subu $11, $11, $2
ori $11, $0, 0
lw $11, 0($11)
label103: ori $3, $11, 49941
ori $3, $3, 11669
lui $2, 22021
j label104
addu $3, $3, $11
subu $2, $11, $2
label104: subu $3, $11, $11
ori $3, $0, 0
sw $11, 4($3)
jal label105
ori $11, $0, 16
addu $3, $2, $11
label105: addu $11, $11, $31
jr $11
nop
ori $3, $0, 0
lw $2, 0($3)
subu $11, $11, $11
subu $3, $11, $2
subu $2, $3, $11
jal label106
ori $11, $0, 16
lui $2, 1161
label106: addu $11, $11, $31
jr $11
nop
jal label107
ori $3, $0, 16
ori $3, $11, 52466
label107: addu $3, $3, $31
jr $3
nop
beq $11, $2, label108
ori $2, $0, 0
lw $3, 8($2)
ori $3, $11, 22723
label108: addu $3, $2, $2
jal label109
ori $2, $0, 16
lui $2, 61515
label109: addu $2, $2, $31
jr $2
nop
ori $11, $0, 0
lw $3, 12($11)
ori $2, $2, 7369
subu $3, $2, $3
lui $11, 5205
jal label110
ori $3, $0, 16
lui $3, 2144
label110: addu $3, $3, $31
jr $3
nop
lui $11, 20425
ori $11, $0, 0
lw $3, 12($11)
j label111
addu $3, $2, $3
subu $2, $11, $3
label111: ori $11, $3, 41380
beq $3, $11, label112
addu $2, $3, $3
ori $3, $3, 31021
label112: ori $2, $0, 0
lw $3, 4($2)
jal label113
ori $11, $0, 16
ori $11, $2, 4924
label113: addu $11, $11, $31
jr $11
nop
ori $3, $0, 0
sw $2, 12($3)
addu $11, $11, $2
ori $11, $0, 0
lw $11, 8($11)
j label114
ori $3, $0, 0
lw $11, 8($3)
ori $3, $2, 45751
label114: lui $2, 48842
j label115
subu $2, $2, $2
ori $2, $0, 0
sw $2, 8($2)
label115: addu $2, $11, $3
beq $11, $2, label116
subu $11, $3, $11
subu $11, $2, $2
label116: ori $2, $0, 0
lw $2, 4($2)
jal label117
ori $3, $0, 16
subu $11, $3, $2
label117: addu $3, $3, $31
jr $3
nop
lui $11, 33416
ori $2, $0, 0
sw $3, 8($2)
ori $11, $3, 3437
subu $2, $3, $3
subu $11, $2, $3
beq $2, $3, label118
ori $3, $3, 58093
subu $2, $11, $2
label118: addu $11, $2, $2
lui $3, 34214
ori $2, $0, 0
lw $11, 0($2)
addu $3, $3, $2
addu $3, $3, $11
lui $11, 17428
j label119
ori $3, $0, 0
lw $2, 12($3)
addu $11, $3, $2
label119: ori $2, $0, 0
sw $11, 8($2)
ori $11, $0, 0
sw $2, 4($11)
ori $3, $11, 37037
ori $3, $0, 0
sw $11, 12($3)
ori $3, $0, 0
lw $3, 12($3)
j label120
subu $2, $2, $11
ori $2, $0, 0
lw $3, 4($2)
label120: lui $3, 55292
addu $3, $3, $3
addu $3, $2, $2
addu $11, $2, $11
jal label121
ori $3, $0, 16
subu $11, $2, $2
label121: addu $3, $3, $31
jr $3
nop
j label122
ori $2, $0, 0
lw $3, 4($2)
ori $11, $0, 0
sw $3, 4($11)
label122: ori $11, $0, 0
sw $2, 8($11)
