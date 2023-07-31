.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x31, h0_start
jalr x0, x31, 0
h0_start:
                  li x27, 0x40000100
                  csrw 0x301, x27
kernel_sp:        
                  la x30, kernel_stack_end

trap_vec_init:    
                  la x27, mtvec_handler
                  ori x27, x27, 0
                  csrw 0x305, x27 # MTVEC

mepc_setup:       
                  la x27, init
                  csrw 0x341, x27

init_machine_mode:
                  li x27, 0x1a00
                  csrw 0x300, x27 # MSTATUS
                  li x27, 0x0
                  csrw 0x304, x27 # MIE
                  mret
init:             
                  li x0, 0x0
                  li x1, 0xf4719d6d
                  li x2, 0x80000000
                  li x3, 0x0
                  li x4, 0xf3484c1c
                  li x5, 0xc341591c
                  li x6, 0x80000000
                  li x7, 0xf9b8d2f5
                  li x8, 0xf83b2564
                  li x9, 0x0
                  li x10, 0x859a6b79
                  li x11, 0x80000000
                  li x12, 0x80000000
                  li x13, 0xa
                  li x14, 0xf8dafc46
                  li x15, 0x0
                  li x16, 0x0
                  li x17, 0x60a3ec09
                  li x18, 0x80000000
                  li x19, 0xf096c851
                  li x20, 0x0
                  li x21, 0xf2e8cc77
                  li x22, 0xf1a9b95b
                  li x23, 0x8
                  li x24, 0x7
                  li x25, 0x6
                  li x27, 0x0
                  li x28, 0x57aa1b2a
                  li x29, 0xbe19f7
                  li x31, 0x3c5d3b2
                  la x26, user_stack_end
main:             li         t4, 0x0 #start riscv_int_numeric_corner_stream_6
                  li         s11, 0x0
                  li         s9, 0x1
                  li         s8, 0x1
                  li         a1, 0x0
                  li         a5, 0x7e12df8c
                  li         t3, 0x0
                  li         a3, 0x1
                  li         s5, 0x0
                  li         a2, 0x0
                  add         a6, s2, s2
                  sub         s9, t6, s9
                  add         a2, s4, s0
                  add         s8, t6, s0
                  nop
                  add         a3, a1, s2
                  lui         t1, 497903
                  nop
                  sub         zero, a2, a0
                  addi        s7, a7, 1978
                  lui         a5, 496573
                  sub         s9, s9, s9
                  sub         s6, a1, a6
                  addi        zero, t3, -327
                  add         s7, gp, s11
                  sub         s11, t4, sp #end riscv_int_numeric_corner_stream_6
                  li         s3, 0x1 #start riscv_int_numeric_corner_stream_7
                  li         t4, 0x5701491d
                  li         t3, 0x5e75d86a
                  li         a3, 0x1
                  li         a2, 0x0
                  li         s1, 0x0
                  li         a0, 0x0
                  li         s9, 0x0
                  li         s8, 0x0
                  li         s11, 0x0
                  addi        a4, sp, -1652
                  lui         zero, 194188
                  addi        s7, a7, 1273
                  addi        zero, s0, -850
                  nop
                  addi        t4, s2, -1175
                  lui         tp, 326093
                  nop
                  lui         a4, 382727
                  add         t2, a3, s5
                  addi        a3, s6, -1097
                  sub         s6, gp, s2
                  lui         s9, 332066
                  lui         a3, 914588
                  add         gp, s10, s7
                  add         t3, s4, s2 #end riscv_int_numeric_corner_stream_7
                  li         t4, 0x3b7dae67 #start riscv_int_numeric_corner_stream_15
                  li         t3, 0x2eaad543
                  li         s11, 0x0
                  li         a1, 0x0
                  li         s9, 0x1
                  li         t0, 0x0
                  li         s1, 0x0
                  li         a7, 0x2c7fd5de
                  li         a5, 0x0
                  li         s8, 0x0
                  add         t1, ra, s9
                  addi        s11, tp, -1640
                  addi        s5, a4, 158
                  sub         t1, s9, s1
                  sub         a6, s7, ra
                  lui         s1, 1027211
                  addi        sp, t1, -1904
                  sub         t4, t6, s11
                  add         a4, s1, t4
                  lui         ra, 1040780
                  add         zero, a6, s7
                  add         t2, t1, t3
                  nop
                  sub         t2, t3, sp
                  sub         a0, s5, s8
                  add         zero, s9, t0
                  lui         t4, 885046
                  lui         a4, 570422
                  lui         zero, 216473
                  lui         a0, 182538
                  nop
                  addi        s2, s11, 588
                  nop
                  addi        sp, t3, 776
                  add         s4, t1, s3
                  add         zero, t0, a0
                  sub         ra, t1, sp
                  lui         a5, 843276 #end riscv_int_numeric_corner_stream_15
                  li         s11, 0x0 #start riscv_int_numeric_corner_stream_11
                  li         s4, 0x0
                  li         t4, 0x0
                  li         t3, 0x1
                  li         tp, 0x1
                  li         a2, 0x0
                  li         a3, 0x1ed845fe
                  li         a4, 0x0
                  li         s8, 0x0
                  li         s9, 0x0
                  lui         a2, 51096
                  addi        t4, t1, -385
                  lui         t3, 1014218
                  addi        ra, ra, -2014
                  addi        ra, s11, 773
                  add         a2, a1, t0
                  add         s3, a3, s0
                  add         a2, s10, a7
                  nop
                  lui         a4, 726974
                  add         t1, s11, t2
                  addi        a2, a6, 1398
                  nop
                  lui         tp, 959536
                  addi        s4, s7, 1048
                  sub         a7, t2, a4
                  add         t0, a4, s11
                  nop
                  lui         gp, 704274
                  addi        zero, t5, -1117
                  sub         a3, t5, a0
                  add         s7, sp, s11 #end riscv_int_numeric_corner_stream_11
                  li         a7, 0x146957fd #start riscv_int_numeric_corner_stream_10
                  li         t4, 0x3821b44
                  li         t3, 0x1
                  li         s4, 0x0
                  li         a2, 0x1
                  li         s8, 0x0
                  li         s0, 0x7eea6e2c
                  li         s9, 0x569ddc79
                  li         s11, 0x4cca1242
                  li         a5, 0x1682c64d
                  addi        zero, s0, -1538
                  sub         a3, a7, sp
                  addi        s11, gp, 1358
                  add         s9, a0, ra
                  addi        s3, s3, -342
                  lui         gp, 815386
                  sub         a4, s9, a0
                  add         a5, s2, t0
                  nop
                  sub         a3, a2, t0
                  add         a5, a2, gp
                  sub         t3, t0, a1
                  addi        a3, a4, 258
                  addi        a4, a4, -988
                  sub         t0, s2, s8
                  addi        gp, gp, -2006
                  add         a5, s9, a2
                  add         a2, s2, t5 #end riscv_int_numeric_corner_stream_10
                  li         t4, 0x0 #start riscv_int_numeric_corner_stream_1
                  li         t3, 0x1
                  li         s11, 0x72db6ecd
                  li         s7, 0x0
                  li         s9, 0x0
                  li         s1, 0x0
                  li         a3, 0x1
                  li         a1, 0x1
                  li         a5, 0x1
                  li         s8, 0x0
                  lui         t2, 298334
                  sub         a0, ra, s3
                  sub         sp, s6, a7
                  lui         a1, 315515
                  add         s5, t4, s2
                  lui         s9, 168762
                  add         t2, s10, sp
                  add         a7, s4, a2
                  sub         gp, t1, t4
                  lui         a0, 653890
                  sub         s4, s1, a0
                  nop
                  nop
                  sub         a5, t0, a2
                  add         a0, a3, sp
                  add         s4, a0, s8
                  addi        a6, s1, -987
                  addi        sp, s7, -213
                  addi        sp, t6, 1446
                  nop
                  lui         t1, 507579
                  addi        a4, zero, 734
                  nop
                  lui         s2, 508748
                  nop
                  nop
                  sub         t3, t6, zero
                  nop
                  nop #end riscv_int_numeric_corner_stream_1
                  li         s9, 0x1 #start riscv_int_numeric_corner_stream_4
                  li         t4, 0x0
                  li         s2, 0x0
                  li         t3, 0x1
                  li         s11, 0x0
                  li         s8, 0x1
                  li         a0, 0x1
                  li         t0, 0x0
                  li         s1, 0x0
                  li         a5, 0x7d84d52a
                  sub         gp, s7, ra
                  lui         ra, 617805
                  sub         s5, zero, s4
                  nop
                  sub         s5, a2, ra
                  lui         s1, 767572
                  addi        zero, a4, 1179
                  lui         a4, 282224
                  add         t4, gp, s9
                  nop
                  sub         s5, tp, s2
                  sub         a7, tp, t0
                  nop
                  sub         s9, s7, s8
                  nop
                  addi        zero, zero, -1518
                  lui         a7, 172133
                  addi        a7, s6, -1073
                  add         a4, t0, a7
                  sub         a6, s8, s1
                  sub         a1, s5, a3
                  nop #end riscv_int_numeric_corner_stream_4
                  li         t4, 0x776f6a80 #start riscv_int_numeric_corner_stream_17
                  li         a4, 0x68d159f4
                  li         t2, 0x0
                  li         t3, 0x3e29357b
                  li         s11, 0x2f4d293b
                  li         s0, 0x0
                  li         s8, 0x1
                  li         s1, 0x0
                  li         a1, 0x0
                  li         s9, 0x12133733
                  addi        zero, t2, 1348
                  nop
                  nop
                  lui         s9, 512378
                  sub         s9, t0, s2
                  add         s3, s5, s2
                  nop
                  add         t2, t6, s2
                  nop
                  addi        a6, s10, 859
                  add         s0, a4, zero
                  add         s6, s5, s0
                  add         a2, s3, s9
                  add         tp, a0, a6
                  nop
                  sub         a6, a5, ra
                  sub         zero, s7, s3
                  addi        a0, s6, 231
                  nop
                  addi        a1, t1, 830
                  nop
                  sub         s11, s7, t0
                  add         a6, s5, t5
                  sub         t1, s10, s10 #end riscv_int_numeric_corner_stream_17
                  li         t4, 0x0 #start riscv_int_numeric_corner_stream_5
                  li         t3, 0x732411d
                  li         a2, 0x1
                  li         s11, 0x11ed86ee
                  li         s9, 0x0
                  li         a5, 0x0
                  li         a1, 0x1d6ee090
                  li         s4, 0x0
                  li         s8, 0x0
                  li         t0, 0x1
                  add         s2, s4, ra
                  nop
                  nop
                  lui         s4, 860183
                  nop
                  add         t3, zero, t6
                  add         s6, t4, s4
                  sub         s7, s4, a0
                  addi        t0, s6, 1550
                  lui         t3, 998508
                  lui         t4, 691521
                  sub         t2, s7, s7
                  add         a5, a2, t6
                  add         s11, t0, t6
                  sub         t4, t0, s9
                  lui         s1, 240932
                  lui         a1, 909971
                  nop
                  add         t4, t4, t0
                  sub         a6, s6, a7
                  lui         s8, 1006375 #end riscv_int_numeric_corner_stream_5
                  li         t4, 0x1 #start riscv_int_numeric_corner_stream_20
                  li         t3, 0x1
                  li         a6, 0x0
                  li         tp, 0x1410d3c5
                  li         a4, 0x0
                  li         s8, 0x0
                  li         s1, 0x761b9667
                  li         s9, 0x1
                  li         s5, 0x7e2c4206
                  li         s11, 0x0
                  add         s6, s2, a3
                  nop
                  nop
                  lui         a2, 474795
                  sub         s8, t6, s2
                  sub         a1, t0, t5
                  lui         s4, 382234
                  add         a4, s7, s1
                  addi        t1, tp, 1955
                  addi        zero, s10, 1562
                  nop
                  nop
                  nop
                  add         s6, a6, a0
                  add         t0, t4, s11
                  sub         tp, zero, t5
                  add         a5, s7, s6
                  nop
                  lui         zero, 550601
                  nop
                  addi        a2, a7, -858
                  lui         t1, 465983
                  nop
                  sub         a6, s3, a0
                  sub         t3, a7, t5
                  add         a1, t1, s10
                  addi        a0, zero, 1905
                  nop
                  lui         t3, 977819
                  addi        a1, t1, -1655 #end riscv_int_numeric_corner_stream_20
                  li         s2, 0x428fd12c #start riscv_int_numeric_corner_stream_0
                  li         t4, 0x78d6da9d
                  li         t3, 0x0
                  li         s11, 0x0
                  li         a2, 0x1f445863
                  li         sp, 0x1
                  li         gp, 0xba58a23
                  li         s8, 0x0
                  li         s9, 0x0
                  li         a1, 0x1
                  add         zero, s10, s11
                  sub         s0, sp, t5
                  sub         s7, a1, t5
                  add         a2, a0, s5
                  sub         s11, t1, s1
                  lui         t0, 551234
                  lui         zero, 12213
                  nop
                  addi        a3, a5, -1003
                  lui         s5, 625880
                  sub         a4, a6, s1
                  addi        t4, s11, 535
                  add         tp, a4, a6
                  lui         s3, 26902
                  lui         a7, 833936
                  sub         zero, zero, t2 #end riscv_int_numeric_corner_stream_0
                  li         t4, 0x585fc290 #start riscv_int_numeric_corner_stream_18
                  li         t3, 0x1
                  li         s2, 0x1
                  li         s11, 0x1
                  li         s9, 0x2a0cd910
                  li         s0, 0x6bee701f
                  li         s1, 0x0
                  li         s8, 0x0
                  li         gp, 0x0
                  li         a1, 0x71588c85
                  sub         s1, sp, a7
                  addi        s3, s11, 287
                  nop
                  sub         ra, a5, s7
                  sub         s11, t3, a7
                  nop
                  nop
                  nop
                  lui         s2, 235749
                  nop
                  nop
                  add         zero, a0, a7
                  sub         a6, s6, s9
                  sub         s9, tp, a4
                  add         a6, a1, sp
                  sub         a5, s3, t0
                  nop #end riscv_int_numeric_corner_stream_18
                  addi        s4, tp, -1315
                  slti        s8, sp, 694
                  slli        zero, a2, 15
                  auipc       a7, 560560
                  sra         zero, sp, t1
                  sltu        t4, a1, t6
                  sltu        s2, a7, t4
                  nop
                  slti        tp, t2, 991
                  xori        a6, s8, 1582
                  ori         a2, t2, 690
                  andi        t2, s0, 362
                  slti        s5, s10, 991
                  and         a3, t3, s10
                  sra         s3, t1, s9
                  andi        zero, a6, 1613
                  sub         s3, s10, a4
                  xori        gp, tp, -163
                  nop
                  or          s0, a6, s7
                  auipc       zero, 287645
                  srai        s9, s6, 8
                  nop
                  srai        s0, s10, 15
                  slti        t3, zero, 670
                  slt         a6, s10, s6
                  slti        a3, a3, -1146
                  andi        a2, s5, 714
                  srai        t2, a2, 4
                  add         t3, t4, a0
                  slli        a3, t3, 14
                  ori         s2, a3, 1609
                  srl         t2, s1, s3
                  srl         s6, t5, s1
                  sll         s4, s10, a1
                  srli        t0, s7, 26
                  andi        t2, ra, 1638
                  nop
                  sll         a1, a7, s3
                  xori        zero, tp, -1517
                  sltu        s0, s3, s11
                  slli        a4, a0, 27
                  srl         s3, a7, a6
                  sra         s6, s1, s9
                  andi        zero, t0, 1002
                  addi        a6, s0, 117
                  sub         a5, s11, s3
                  add         a1, s6, s6
                  sltu        ra, gp, a4
                  slt         s11, a7, a1
                  xori        s5, zero, -698
                  nop
                  sll         a7, sp, t2
                  andi        a2, tp, -250
                  addi        a7, t3, 8
                  sra         t3, s4, gp
                  addi        sp, a0, -1653
                  or          s3, s9, s10
                  add         s4, a7, a4
                  ori         zero, t1, 1747
                  auipc       zero, 805063
                  sub         a4, tp, t3
                  xor         a7, ra, s8
                  ori         ra, sp, 1912
                  srai        a1, s2, 20
                  xori        zero, a5, -1685
                  xor         a1, s11, s4
                  slt         a6, t1, s8
                  xori        tp, s1, 790
                  slti        a4, a0, -455
                  or          zero, s9, t5
                  or          a5, gp, s8
                  sll         sp, s3, t2
                  add         a5, tp, ra
                  slli        s2, zero, 8
                  slti        a4, s4, -1574
                  nop
                  andi        gp, s3, -1655
                  slti        s6, ra, -187
                  sub         zero, a6, s2
                  slt         s3, t3, a0
                  and         t3, a0, tp
                  ori         s4, s4, 1680
                  slli        s5, s10, 11
                  slt         s4, ra, t6
                  xori        s7, t1, -1213
                  add         t2, a0, a3
                  sll         a2, s1, t2
                  slli        t0, s3, 10
                  sltu        t0, s2, t3
                  slt         a0, s10, a3
                  sltiu       t0, a3, 513
                  srl         t1, t1, a5
                  add         gp, s6, s1
                  sub         s1, s8, s11
                  sltiu       sp, a5, 445
                  add         ra, s7, a4
                  lui         s7, 368752
                  or          a7, s0, s5
                  sra         a7, s5, s4
                  and         a6, t1, sp
                  addi        s8, gp, 380
                  sltiu       gp, s5, 2009
                  add         a5, t0, s9
                  andi        t0, t0, 1870
                  or          a3, t3, a1
                  slti        tp, t2, 1498
                  sll         t2, zero, s2
                  srl         gp, zero, sp
                  sra         zero, a4, s8
                  sll         gp, s5, t6
                  addi        zero, s8, 769
                  slti        s8, t6, 1618
                  slti        s9, a7, 1386
                  sltu        a2, s11, a1
                  slli        zero, a7, 0
                  ori         zero, t3, -365
                  sll         s9, s5, a3
                  sub         zero, s4, a4
                  auipc       t4, 458127
                  srli        t1, s11, 6
                  lui         a3, 351961
                  add         a6, tp, a3
                  sll         s8, ra, s7
                  sltiu       t0, s6, -1172
                  nop
                  srai        zero, t4, 19
                  slli        zero, a1, 12
                  sll         s7, s6, s3
                  sltiu       s1, tp, 118
                  slli        zero, t4, 26
                  slti        gp, s7, -258
                  sltiu       s7, zero, -196
                  srai        a0, a6, 27
                  srai        s1, t1, 29
                  nop
                  add         s5, s4, s9
                  auipc       zero, 810440
                  andi        tp, s10, 251
                  sll         t2, t2, t4
                  slti        a7, tp, -740
                  nop
                  slti        zero, s5, -1877
                  or          a3, a5, s11
                  andi        t0, a0, -1300
                  sll         s4, sp, t6
                  add         t1, s5, s0
                  nop
                  lui         tp, 923076
                  srai        a6, t4, 28
                  xor         s9, a7, a1
                  sltiu       tp, t2, 1155
                  addi        ra, s6, -463
                  sra         t3, a3, t4
                  srl         a6, s3, sp
                  sra         ra, t3, s6
                  nop
                  xori        t3, s7, -757
                  slli        s6, a0, 11
                  add         s9, t6, a3
                  lui         s2, 324292
                  ori         zero, s11, -1360
                  add         ra, s8, t2
                  andi        t0, a7, -2010
                  sll         a2, s4, t6
                  andi        s4, a6, 1950
                  srl         t0, t5, t0
                  xor         a6, tp, s10
                  lui         a5, 53674
                  auipc       t1, 66411
                  and         s5, a1, s2
                  sltu        a4, s5, s10
                  sltu        a3, t1, a6
                  sll         s2, s3, a7
                  or          a1, t3, s8
                  sltu        s4, zero, t6
                  ori         zero, t5, -944
                  nop
                  slt         ra, a7, t5
                  slt         gp, s9, a6
                  xori        t1, a6, -1017
                  ori         a2, tp, -1343
                  slli        a4, sp, 0
                  auipc       zero, 147888
                  and         s0, a5, t4
                  slt         s0, zero, t6
                  srli        a5, s8, 12
                  or          s7, a3, t3
                  slli        a1, t4, 26
                  srli        s5, s3, 10
                  sra         t2, s3, t0
                  auipc       t2, 807934
                  ori         a0, a7, 350
                  sub         zero, s7, a5
                  addi        s11, s3, -510
                  addi        s4, t4, -1282
                  srl         s11, s7, gp
                  sltu        s2, a2, t4
                  slti        s2, a6, -1642
                  addi        tp, a5, -1724
                  sra         s7, ra, sp
                  addi        t1, t3, 471
                  andi        a1, sp, -1883
                  addi        s4, s6, -925
                  slti        zero, s10, -91
                  sll         s8, a6, a0
                  srl         t3, s11, s4
                  nop
                  addi        zero, a7, -829
                  slti        a5, t5, 449
                  srai        tp, a6, 9
                  andi        a7, s11, 849
                  or          s8, s4, a7
                  add         a6, a1, t5
                  sub         t3, a2, tp
                  xor         s7, s0, s11
                  sltu        sp, a6, sp
                  srli        s1, t6, 30
                  lui         s0, 323873
                  xor         a6, s3, t1
                  and         sp, s11, a3
                  slti        t4, s4, 814
                  xori        s9, s2, 297
                  and         zero, s7, s8
                  li         ra, 0x3e48ba5d #start riscv_int_numeric_corner_stream_3
                  li         t4, 0x1
                  li         s6, 0x0
                  li         t3, 0x0
                  li         s11, 0x1176ddaa
                  li         s9, 0x0
                  li         s1, 0x0
                  li         s3, 0x0
                  li         a7, 0x0
                  li         a1, 0x1
                  sub         s2, a1, a7
                  sub         s7, s1, sp
                  sub         s4, s10, t1
                  sub         ra, a7, tp
                  addi        a2, a0, 304
                  nop
                  addi        a5, s8, 1319
                  lui         s9, 783967
                  nop
                  lui         zero, 283442
                  lui         s3, 183000
                  lui         t3, 177941
                  lui         t3, 213472
                  addi        a1, a5, -731
                  add         a3, gp, s10
                  lui         s3, 107614
                  sub         t2, tp, a5
                  addi        t0, a1, -129
                  addi        s9, t6, -16
                  addi        a4, s1, 1349 #end riscv_int_numeric_corner_stream_3
                  slti        s9, a4, -609
                  srl         a6, t1, a0
                  sll         s3, t0, t5
                  auipc       t4, 209415
                  sub         s7, s7, s3
                  or          a4, s8, a3
                  sll         s1, s4, s1
                  sltu        zero, t6, s6
                  ori         t0, s0, 309
                  sub         s6, a6, a1
                  sll         sp, s10, gp
                  srl         zero, s8, s8
                  sltiu       t4, s4, -1655
                  addi        s5, s7, 1232
                  addi        s9, gp, 85
                  andi        tp, ra, -364
                  andi        t1, t4, 1666
                  sub         zero, gp, tp
                  lui         s3, 346220
                  slli        a0, s3, 0
                  srl         s3, zero, t4
                  slt         tp, t0, s10
                  nop
                  ori         a5, s0, 379
                  lui         a6, 944445
                  slt         s6, s8, gp
                  xori        s5, a6, 1573
                  nop
                  addi        zero, t4, -1025
                  srl         s5, gp, s2
                  xor         s3, gp, a5
                  sll         a5, tp, s11
                  sra         zero, t1, s3
                  add         s3, s7, a6
                  sltiu       s5, ra, 593
                  addi        zero, s0, 7
                  lui         tp, 327206
                  sltu        s3, a4, s3
                  sltiu       a6, a7, 25
                  sub         a0, a6, t5
                  and         s2, s1, s6
                  sltu        a6, sp, t0
                  sltu        zero, tp, a7
                  xor         zero, s2, s2
                  sll         s5, a2, a1
                  and         t1, a1, s0
                  addi        s6, s1, -1363
                  auipc       s11, 23941
                  and         s11, s10, tp
                  xori        s0, s9, -947
                  sltu        zero, zero, ra
                  sra         s1, s3, s8
                  lui         a5, 279132
                  sra         s1, tp, tp
                  auipc       t3, 698185
                  sra         s7, a0, s9
                  sll         t4, a7, a3
                  nop
                  add         a3, ra, s2
                  srl         a1, a5, t6
                  slli        ra, gp, 19
                  srl         zero, s2, s10
                  and         t3, t5, a5
                  li         t4, 0x0 #start riscv_int_numeric_corner_stream_22
                  li         t3, 0x1
                  li         s2, 0x1f71aa0a
                  li         s11, 0x0
                  li         gp, 0x0
                  li         s1, 0x4cb37cbf
                  li         a6, 0x0
                  li         s9, 0x270d8b58
                  li         s8, 0x0
                  li         a7, 0x0
                  addi        s6, t1, -2025
                  nop
                  addi        zero, a2, -1501
                  nop
                  add         t2, sp, a5
                  sub         s3, s5, t4
                  sub         t1, t0, zero
                  addi        a2, a2, 263
                  lui         ra, 240300
                  sub         a1, s4, t1
                  sub         a4, a6, s10
                  lui         a1, 280427
                  nop
                  add         s6, t2, s1
                  add         s6, ra, t5
                  add         s0, s11, a5
                  nop
                  addi        t3, a6, -1080
                  add         tp, tp, t3
                  nop
                  addi        t3, s3, -953
                  lui         gp, 290600
                  sub         zero, a2, s4
                  sub         t1, ra, s6
                  nop
                  addi        s3, s9, 1853 #end riscv_int_numeric_corner_stream_22
                  slt         a0, t6, t1
                  sltiu       s5, s4, -980
                  addi        t1, a2, 317
                  addi        s7, s0, 772
                  andi        s9, gp, 185
                  sltu        t1, s5, s11
                  srli        s8, s6, 6
                  sltiu       a0, gp, -1893
                  slti        a5, zero, 1986
                  slt         s11, s7, s6
                  add         tp, a0, a1
                  sll         s2, s0, t1
                  or          t3, s4, s11
                  xor         zero, sp, s5
                  sll         s4, a4, a7
                  srai        s11, t0, 28
                  slli        a2, tp, 11
                  slt         zero, t6, s1
                  auipc       zero, 8972
                  sra         tp, ra, a0
                  xor         zero, s7, s6
                  xor         s8, s7, t0
                  srai        s5, s8, 21
                  and         zero, s6, s10
                  add         t0, a1, s10
                  lui         sp, 118987
                  srl         zero, gp, s0
                  sltiu       a2, a2, 122
                  lui         a3, 81730
                  auipc       tp, 266590
                  ori         s3, t4, -1073
                  sub         a1, s4, s8
                  slli        tp, s0, 1
                  slt         a5, s10, gp
                  srli        zero, a1, 24
                  srai        s3, zero, 24
                  slt         s11, a3, t5
                  lui         zero, 494504
                  sra         s5, s4, a4
                  sltu        ra, s1, a1
                  sub         t1, s4, t2
                  and         a1, s0, s3
                  xor         s3, a0, t5
                  or          s5, a3, a0
                  sltu        s4, s11, zero
                  xor         t2, t0, t5
                  ori         s4, s11, 885
                  and         s4, s5, sp
                  auipc       a1, 27606
                  ori         zero, sp, 391
                  andi        t3, t6, -615
                  nop
                  slti        ra, s6, 719
                  auipc       a5, 817573
                  slti        zero, ra, 799
                  ori         s9, s0, 1048
                  or          a2, a4, a1
                  slti        s8, s5, -700
                  slt         s4, s11, a7
                  sra         tp, sp, s10
                  addi        a3, a5, 1896
                  sltiu       s9, t4, -598
                  slti        s3, t1, 1
                  sub         s4, t4, a5
                  or          ra, s10, a4
                  ori         a0, a6, 188
                  slt         t2, a6, sp
                  add         a6, s7, s3
                  sll         tp, a6, ra
                  slt         s6, a7, t1
                  sll         s8, sp, a2
                  slti        t2, tp, 1820
                  andi        s7, s5, -977
                  xor         sp, gp, t3
                  ori         t3, s10, -1839
                  nop
                  sll         s11, a7, a1
                  auipc       zero, 1035212
                  nop
                  srl         gp, tp, a2
                  sub         tp, t4, sp
                  slli        sp, t4, 2
                  sltiu       tp, a5, -1510
                  srl         zero, s1, t1
                  auipc       s9, 699225
                  xor         s8, s0, a0
                  lui         a0, 162777
                  srai        s11, s10, 20
                  slti        s9, a5, 2025
                  sltiu       a7, s10, 1350
                  sltu        s4, a7, t5
                  srl         zero, a4, s8
                  lui         zero, 637136
                  xor         s5, a5, s10
                  slti        gp, s4, -1387
                  slt         s3, s4, s7
                  sltiu       t3, a7, -1010
                  slti        s11, a0, -1992
                  sra         t0, t0, s2
                  srai        s9, t3, 10
                  sra         tp, s3, tp
                  sub         ra, a6, t3
                  srai        a5, t3, 7
                  nop
                  srl         t3, t0, zero
                  slli        zero, s4, 29
                  add         a6, s7, s0
                  slt         s0, a1, a1
                  srai        zero, s9, 9
                  sra         zero, t4, t4
                  ori         s7, a6, -625
                  lui         s4, 399712
                  slli        t2, a0, 4
                  sra         sp, s10, t5
                  xor         s7, t0, t2
                  nop
                  nop
                  andi        a5, t0, -729
                  nop
                  sll         s11, a3, ra
                  slti        s5, s4, -889
                  xor         zero, a5, a3
                  addi        t1, gp, 518
                  auipc       a1, 708841
                  srai        t0, t4, 26
                  and         a6, s11, s2
                  sll         s9, a6, s9
                  add         t0, t2, s7
                  or          sp, a0, a6
                  slli        s3, s11, 28
                  sltiu       s9, t0, 1268
                  and         t1, zero, a6
                  slli        s9, a4, 17
                  sltu        a5, a1, t5
                  nop
                  sra         zero, a4, s3
                  srli        s9, a6, 9
                  srli        a0, s1, 18
                  sub         sp, gp, s3
                  srl         s7, zero, a1
                  sll         t0, a2, ra
                  sub         t2, s5, sp
                  srl         zero, zero, a2
                  srli        t0, sp, 27
                  auipc       a4, 1023931
                  slt         a0, t2, s5
                  sltu        s7, ra, s2
                  srai        zero, a2, 16
                  slt         t4, t6, t4
                  ori         a3, s8, 1528
                  sltiu       t2, a1, 690
                  addi        a7, a4, 1308
                  sltu        gp, s8, a5
                  xori        zero, a6, -1544
                  slt         s2, t3, t5
                  ori         a3, a5, 1043
                  add         s11, s10, a4
                  sltu        s8, s2, s8
                  nop
                  slli        a1, s10, 30
                  slt         t4, s6, t3
                  sltu        zero, s4, s2
                  srai        zero, s0, 8
                  sra         a1, s7, s11
                  andi        a2, s8, 845
                  and         s1, a3, t2
                  andi        a7, t2, 651
                  sll         s2, s9, zero
                  sltu        zero, a0, a0
                  sltu        t4, s3, a2
                  xori        zero, s4, 264
                  add         s6, t5, s4
                  srl         s2, t6, a4
                  sub         zero, ra, a4
                  sll         s7, t5, a3
                  sub         s7, t1, s4
                  srli        a4, a2, 14
                  sub         ra, gp, a4
                  srl         a3, a5, s0
                  sub         t0, gp, a6
                  sub         a3, zero, t1
                  addi        zero, t2, 707
                  slli        s7, a2, 21
                  xori        s3, s10, 1215
                  srl         s0, a5, a1
                  or          s3, a0, tp
                  srl         s9, a7, s9
                  xor         s4, t4, gp
                  sltu        s3, tp, t0
                  slt         a4, s4, sp
                  srli        sp, s7, 19
                  sra         t4, t4, a3
                  and         a0, s3, s2
                  sll         zero, s6, a3
                  nop
                  slli        zero, s2, 14
                  srl         zero, t3, s4
                  sub         a1, t0, a2
                  xori        zero, a5, 257
                  srl         a6, ra, zero
                  auipc       zero, 378598
                  srli        gp, a7, 0
                  slt         tp, s10, sp
                  sra         a2, s5, a2
                  ori         s3, s9, -1017
                  auipc       a6, 830297
                  auipc       s7, 282237
                  slti        t3, s11, 1282
                  xori        a6, s10, 1394
                  slti        a2, s10, -513
                  sll         sp, t2, a4
                  srli        a4, a6, 29
                  auipc       gp, 508071
                  lui         s5, 812027
                  slli        t0, t0, 29
                  srai        t4, sp, 31
                  add         a5, a4, a7
                  sub         zero, sp, s4
                  slt         a4, a2, s6
                  or          a7, t3, a5
                  add         zero, gp, a3
                  sltiu       s0, tp, 606
                  sltu        a4, s8, a3
                  lui         t1, 878730
                  sub         s0, t6, zero
                  xor         a5, zero, s6
                  xor         s8, s3, gp
                  sub         a4, s5, zero
                  srai        zero, t2, 26
                  sra         s4, tp, ra
                  sltiu       s5, t4, 1692
                  xori        a2, a4, 1246
                  srai        s4, ra, 29
                  slt         s5, s10, t6
                  sltu        s3, a7, ra
                  andi        zero, s10, -1886
                  srl         s4, a1, t0
                  auipc       s7, 79417
                  nop
                  add         ra, a3, s8
                  nop
                  or          tp, a5, zero
                  xori        s6, a1, -1939
                  sra         a4, a2, t3
                  add         s6, s0, s2
                  srai        t2, tp, 20
                  lui         a1, 413643
                  sub         a2, s9, s8
                  slli        ra, a0, 20
                  slli        s1, t1, 13
                  or          sp, s6, s9
                  ori         a1, s2, 885
                  auipc       sp, 299360
                  xor         a5, a3, a5
                  slli        gp, s9, 7
                  or          s8, s4, a6
                  sub         s3, t6, t5
                  lui         a3, 280660
                  xori        s3, gp, 1699
                  slli        s1, s1, 25
                  slti        gp, ra, -820
                  auipc       s3, 671950
                  srai        sp, s9, 27
                  srli        zero, a1, 3
                  slli        t4, s0, 31
                  xori        t0, s4, 156
                  srli        zero, a1, 17
                  xori        zero, s8, 588
                  sra         t2, a4, a0
                  xori        sp, s6, 666
                  and         sp, s2, t4
                  sltiu       t4, a3, -803
                  andi        a5, t4, -1519
                  xori        tp, a1, 1483
                  srli        s8, t5, 8
                  sll         sp, a1, s5
                  sll         t0, s5, t1
                  slt         a1, a5, s2
                  sra         s8, a2, s6
                  add         a3, a0, a7
                  slt         t0, a3, s4
                  addi        t3, s8, 1279
                  sub         a2, t4, s8
                  xor         t2, t0, a2
                  and         s1, zero, s6
                  srl         a2, s0, a4
                  sltu        sp, s0, a0
                  sltu        t4, tp, a4
                  slt         a6, a7, a7
                  sltiu       t2, zero, 2005
                  sra         gp, a6, s10
                  ori         s4, a4, 928
                  auipc       a7, 169399
                  addi        s5, s7, -890
                  and         a5, zero, t3
                  addi        t2, s2, -1903
                  lui         s8, 668746
                  addi        zero, ra, -1328
                  andi        s9, s11, -925
                  slli        s3, ra, 21
                  xor         s11, a5, sp
                  srli        t4, zero, 25
                  add         a1, s6, s8
                  sub         a2, tp, s0
                  nop
                  andi        a6, s10, -909
                  addi        a1, s3, 949
                  add         a7, a6, s1
                  xori        a7, a1, 1797
                  lui         gp, 155568
                  li         t4, 0x38339777 #start riscv_int_numeric_corner_stream_14
                  li         t3, 0x0
                  li         s9, 0x612efcba
                  li         s8, 0x1
                  li         s0, 0x0
                  li         s11, 0x1
                  li         a3, 0x1
                  li         ra, 0x0
                  li         s5, 0x0
                  li         gp, 0x0
                  add         t1, s10, t6
                  addi        zero, s7, -1189
                  nop
                  nop
                  nop
                  lui         a2, 320367
                  sub         s2, s5, s8
                  add         s8, s6, s5
                  nop
                  addi        zero, tp, 926
                  nop
                  add         a3, t1, t2
                  add         a7, a6, a7
                  addi        s11, s3, 1542
                  addi        s5, t5, -1681 #end riscv_int_numeric_corner_stream_14
                  xori        s9, a6, 682
                  sll         zero, s6, a6
                  sub         s1, s2, s3
                  xor         ra, ra, s0
                  or          a6, ra, s0
                  or          zero, a6, s2
                  srai        s0, a5, 16
                  sltu        s2, tp, s5
                  slt         zero, s7, t0
                  srli        s11, s6, 15
                  andi        s1, t1, -119
                  and         a3, zero, tp
                  xori        s9, t6, 1864
                  slt         s5, s4, s9
                  xor         zero, s6, zero
                  or          a4, t1, gp
                  sll         s2, ra, s7
                  sra         s11, a0, s5
                  add         a4, s0, zero
                  and         a3, t2, s8
                  addi        t1, a1, 282
                  srai        s11, a2, 2
                  slti        s7, a0, -1613
                  xori        zero, t0, -1234
                  srai        a7, sp, 27
                  sra         t3, t5, s8
                  or          a3, a3, s0
                  ori         ra, a6, 62
                  sll         t4, gp, t6
                  sll         zero, t2, a6
                  or          s1, s10, s10
                  slt         s9, s3, a5
                  xor         sp, gp, a4
                  slti        a2, a7, 1738
                  xori        gp, a7, -1267
                  srai        zero, t0, 23
                  addi        t0, t4, 980
                  lui         t0, 353534
                  srl         a4, zero, tp
                  or          t4, t3, a5
                  slt         s0, s6, s1
                  addi        a7, a4, -901
                  ori         s0, a5, -372
                  lui         t2, 589710
                  sub         tp, s1, s6
                  sll         a7, zero, t1
                  srai        t3, a6, 17
                  srli        a4, gp, 23
                  slt         t2, s4, s0
                  slti        zero, a4, 1794
                  lui         s2, 650051
                  sltiu       t2, t2, -2003
                  slti        a1, a6, -391
                  slti        s7, s4, -1883
                  srl         s2, s4, s0
                  lui         s5, 486784
                  srai        zero, s8, 0
                  or          a6, s0, s1
                  addi        s5, a3, 504
                  add         a4, a7, s5
                  slti        a3, s8, 425
                  lui         a0, 51483
                  andi        a7, t1, 1077
                  slli        a0, a1, 21
                  sltu        s5, a4, s10
                  andi        ra, t5, -925
                  sltu        a7, t6, zero
                  sltiu       tp, s2, -387
                  nop
                  sltu        sp, a1, gp
                  slt         s1, a1, s4
                  lui         ra, 694504
                  sub         s6, a6, a7
                  nop
                  sltu        zero, sp, s5
                  slt         a2, s5, ra
                  add         t0, a3, gp
                  slt         zero, s5, t1
                  or          s11, a0, s8
                  or          zero, s2, s2
                  slli        tp, a1, 8
                  andi        sp, s11, -1637
                  and         zero, t0, t6
                  slti        s5, gp, 67
                  srli        s6, t4, 12
                  srai        a5, a0, 14
                  slli        gp, s10, 4
                  sltu        s1, s4, s9
                  andi        tp, s11, 1508
                  sll         t0, t2, t2
                  sra         a7, zero, t2
                  sltu        s3, gp, s6
                  xori        a0, s11, -574
                  srai        s8, t6, 11
                  or          t3, s10, t0
                  add         t4, t1, a5
                  srl         s1, s9, t0
                  srli        s9, t4, 15
                  srli        s5, tp, 14
                  srl         s11, s6, s2
                  slti        a6, s3, 207
                  ori         gp, tp, 1064
                  nop
                  lui         s3, 583485
                  slt         s5, t3, t3
                  addi        s4, a2, -757
                  lui         s5, 721975
                  addi        s1, a4, 1622
                  srli        s3, s10, 30
                  sltu        s0, a1, sp
                  add         s0, a7, a4
                  srli        s5, s1, 4
                  or          zero, zero, s3
                  and         a7, t4, s1
                  ori         s5, s2, -553
                  srai        s5, s11, 11
                  srli        s9, s10, 21
                  sll         t3, tp, tp
                  and         a5, a5, t6
                  sltiu       gp, s3, -812
                  xori        s6, gp, 1265
                  nop
                  sra         s9, t6, t1
                  srli        s6, s4, 9
                  xor         gp, gp, s8
                  srl         a0, s6, t0
                  add         s2, a4, a1
                  sltu        s9, a2, t6
                  nop
                  ori         s9, a2, 1155
                  srli        a3, t4, 28
                  srli        t1, s1, 2
                  sll         s11, t1, s6
                  and         a6, s9, s6
                  slt         s0, t5, tp
                  and         a5, a4, s6
                  or          s7, s0, a4
                  sltu        a4, s3, a3
                  sra         s0, a7, zero
                  srai        t4, zero, 4
                  slti        a7, s3, -179
                  xori        t4, a4, -775
                  slli        zero, a4, 1
                  or          s5, t0, t5
                  sltu        s11, a0, s9
                  sub         s11, s11, gp
                  xori        zero, s4, -993
                  sra         a2, t5, t0
                  sltiu       s5, s0, 1576
                  srl         a6, zero, t4
                  srai        a1, s11, 12
                  ori         a0, a3, 68
                  nop
                  sltiu       s2, a7, 1394
                  addi        t0, a6, -1764
                  srl         t1, s11, zero
                  srl         a3, s5, s11
                  slti        ra, s7, 6
                  slti        t0, s3, -1781
                  sra         tp, a2, gp
                  srai        t4, tp, 8
                  sltiu       s7, t6, -1615
                  addi        a0, t6, 1168
                  xori        a3, s8, 1709
                  or          sp, s3, s2
                  slt         s0, s10, ra
                  add         s1, s1, gp
                  nop
                  lui         tp, 72708
                  slli        s2, ra, 3
                  sltu        a4, t4, t4
                  andi        s9, t1, 67
                  srl         s7, a5, a5
                  or          t1, a5, ra
                  sll         s7, t5, t4
                  auipc       s7, 53898
                  auipc       tp, 506253
                  sll         a7, a1, ra
                  or          a0, t5, gp
                  xori        t2, s5, 1018
                  sltiu       s4, zero, 928
                  and         a7, zero, a3
                  srl         s3, a5, t1
                  lui         zero, 17778
                  auipc       zero, 931703
                  and         zero, t1, s9
                  slli        t3, s0, 13
                  auipc       s0, 141850
                  slti        a1, s4, -1114
                  sltu        a2, s0, s11
                  auipc       sp, 605284
                  addi        s1, s6, 1373
                  xor         a3, t4, s8
                  xori        s7, a1, -779
                  ori         ra, t5, 1225
                  sltiu       sp, s1, 1460
                  sltu        s8, s9, tp
                  addi        sp, t4, 379
                  xor         s5, s7, gp
                  or          s0, a4, s10
                  slt         a0, tp, tp
                  slt         s1, s3, s0
                  srl         gp, t4, s4
                  sra         s4, gp, gp
                  andi        t4, s2, 1670
                  auipc       s9, 872567
                  ori         s4, t0, 1039
                  and         zero, s11, t2
                  add         zero, gp, a7
                  slti        s3, s3, -659
                  sltiu       t2, a0, -2041
                  xor         s1, a0, a5
                  sltu        zero, ra, gp
                  sub         s11, a0, gp
                  slti        a5, s11, 1551
                  sltiu       t0, s6, 216
                  add         s1, a5, s5
                  slt         s11, s3, s10
                  sra         a1, a2, a4
                  add         s3, s1, a4
                  andi        s6, s1, -1674
                  lui         a6, 479673
                  srl         zero, t1, s10
                  xor         t4, s4, a1
                  slt         s8, t1, t2
                  srli        t1, t0, 18
                  add         a4, s7, s2
                  sra         a2, s5, sp
                  sltu        a5, t0, t5
                  and         zero, t0, t5
                  srli        s8, s8, 8
                  auipc       t1, 151361
                  sra         zero, s7, t2
                  xori        s7, t3, 838
                  auipc       a5, 887158
                  xor         s2, s4, s0
                  slli        a5, ra, 24
                  srli        tp, a7, 25
                  sll         s5, a7, s11
                  ori         zero, a1, -90
                  srli        s6, gp, 25
                  and         tp, a1, s11
                  addi        zero, a5, -56
                  srli        a6, s8, 19
                  srai        t1, s8, 16
                  sll         zero, s7, a1
                  srl         t2, s6, t6
                  add         s0, t1, s9
                  sltu        a6, a4, s7
                  addi        a7, a0, -171
                  lui         s1, 989241
                  andi        zero, s0, 1151
                  andi        gp, s8, 1257
                  slt         t2, a1, a0
                  slli        zero, t0, 20
                  srli        s11, s6, 5
                  add         gp, a5, s10
                  xor         t4, gp, zero
                  add         zero, s3, s4
                  lui         s1, 311821
                  addi        zero, t3, 310
                  slli        t2, s5, 27
                  xori        gp, s3, -1446
                  xori        a4, t0, 192
                  slti        a2, s11, 480
                  andi        zero, t4, -1722
                  sltu        t0, t4, t6
                  ori         t1, a5, 70
                  or          ra, a1, s4
                  xor         tp, a3, a2
                  lui         zero, 737043
                  sub         a3, a6, t0
                  sltiu       t2, s6, 1691
                  xori        zero, t6, -1252
                  slli        gp, t2, 14
                  sub         s6, t0, s2
                  auipc       s3, 689686
                  slti        s4, s7, -348
                  slti        a2, a1, -850
                  add         zero, t4, gp
                  andi        s5, tp, -1842
                  nop
                  xori        zero, a0, 1836
                  slli        a6, t6, 2
                  slli        s1, t5, 3
                  srli        t1, a1, 27
                  add         tp, s6, s4
                  slt         s4, a2, s11
                  sltu        a7, s6, zero
                  sltu        zero, s0, a2
                  add         s2, a1, t3
                  slli        s3, s10, 25
                  slli        sp, zero, 9
                  sltu        gp, a3, sp
                  sltiu       s0, s3, 279
                  slti        s5, s5, -504
                  ori         a0, a4, -1883
                  xori        a4, t1, 95
                  xor         s3, a7, s0
                  srai        s11, s2, 2
                  sub         t3, a0, s6
                  addi        a1, s7, -2032
                  slli        zero, t3, 26
                  add         s8, a2, s2
                  slt         t1, s8, s8
                  slti        gp, s0, 1690
                  srl         s11, zero, t4
                  srli        s5, s6, 19
                  nop
                  addi        a3, a5, -1926
                  ori         s1, s5, 495
                  slti        t2, a1, -1520
                  slt         t0, a7, s0
                  lui         s5, 485253
                  addi        tp, sp, 1051
                  srli        s11, s1, 10
                  slt         s7, s3, a2
                  lui         s3, 62397
                  auipc       a4, 476357
                  slti        s4, t1, -1020
                  xori        ra, s5, 465
                  slt         a4, s0, s8
                  ori         s9, s7, -1910
                  slti        a6, t5, -1331
                  sltu        t3, s11, sp
                  nop
                  srai        s5, s9, 0
                  auipc       s7, 589346
                  srai        s8, s7, 23
                  slt         zero, s0, sp
                  addi        ra, a0, 1951
                  add         a0, s4, s3
                  nop
                  add         a2, s8, s3
                  sub         zero, s10, s2
                  xori        t0, s9, -1214
                  add         a4, s1, s1
                  or          gp, a2, a2
                  srli        s4, s4, 11
                  srli        zero, s1, 15
                  add         t0, a7, a4
                  slt         s4, a4, a0
                  sltiu       s0, t0, -840
                  nop
                  xor         a2, t4, a0
                  slti        zero, t3, 1670
                  auipc       s3, 338911
                  xori        a3, t5, 26
                  sll         zero, a3, s1
                  xor         t4, a6, s10
                  and         s6, s5, s11
                  andi        a1, s2, 19
                  srli        s2, a1, 13
                  sltu        zero, s10, ra
                  slt         s3, s4, a4
                  nop
                  sltu        t2, a3, gp
                  add         tp, a4, t1
                  auipc       gp, 990049
                  xori        t1, gp, -286
                  ori         s5, a2, -1282
                  andi        a7, s0, 1049
                  sll         a7, s3, t3
                  sltiu       a7, a4, 1662
                  and         tp, s0, s10
                  andi        t3, gp, 517
                  xor         a0, zero, ra
                  sra         a6, a7, s1
                  sll         s1, a2, t3
                  slli        s0, t4, 7
                  xor         zero, a2, a1
                  slt         a0, t0, zero
                  andi        sp, a7, 1926
                  srl         zero, s10, s5
                  sub         gp, t0, s0
                  srl         t0, s4, s0
                  slti        zero, s7, -1494
                  slt         t1, gp, t4
                  add         zero, s5, s9
                  sll         s1, s7, a3
                  slli        zero, ra, 22
                  sltiu       tp, s9, 1790
                  sltu        s7, s10, t3
                  and         s7, a6, a1
                  srai        s0, zero, 16
                  sub         s6, a4, t3
                  xori        s8, a7, 2010
                  sll         s5, a0, s9
                  slli        zero, s8, 26
                  and         a1, zero, a0
                  srli        a6, t0, 3
                  sll         ra, ra, s5
                  slt         t0, a3, a5
                  auipc       s3, 970575
                  add         t0, t0, t2
                  sltiu       gp, sp, -37
                  srai        a1, a7, 17
                  srl         s8, t6, s8
                  and         s1, s8, zero
                  xor         tp, a6, s7
                  sll         s4, a7, tp
                  sll         ra, s5, s8
                  sltiu       zero, t2, -1624
                  slti        t1, sp, 1657
                  sll         a6, s11, a3
                  xor         t4, s6, s4
                  xori        zero, a5, 1049
                  lui         s4, 687132
                  xori        a7, ra, 517
                  slti        a6, s6, 979
                  nop
                  xor         s1, s1, a2
                  nop
                  xori        t0, s0, -770
                  slli        a1, ra, 2
                  addi        a0, s7, 1473
                  or          t3, t1, t3
                  sltu        t2, a4, a5
                  andi        t1, a1, 428
                  add         s8, a6, a0
                  sll         a2, t3, zero
                  slt         s8, s9, a1
                  ori         sp, a2, 926
                  add         ra, gp, s11
                  auipc       t0, 38674
                  sltiu       s2, a2, -2009
                  nop
                  lui         s7, 65368
                  xori        zero, s2, -72
                  sra         gp, gp, a1
                  auipc       a6, 164692
                  lui         sp, 75460
                  srai        s11, s9, 8
                  sltu        a0, t0, t3
                  srl         a6, ra, s3
                  lui         a4, 95067
                  and         gp, t3, a3
                  sll         s4, t5, s3
                  sll         s11, a1, s0
                  slt         s11, t0, sp
                  and         a2, t2, a1
                  ori         zero, s1, 764
                  srai        s3, t5, 10
                  slt         s7, t6, t4
                  xor         s6, a6, s2
                  sra         s4, s2, t3
                  slti        a2, tp, 638
                  slli        a7, gp, 14
                  xor         s6, s5, zero
                  sub         s2, s2, t3
                  xori        a6, tp, -2
                  srl         s9, s6, s3
                  andi        t2, a6, -1216
                  sltu        s9, s3, a0
                  slli        tp, a2, 29
                  or          a0, s2, t1
                  ori         a0, t2, -125
                  sltiu       ra, tp, -822
                  xor         s8, s11, s4
                  sll         tp, s6, s1
                  and         zero, t4, a3
                  ori         s4, t1, -2017
                  xori        s6, sp, 179
                  addi        a2, s11, 781
                  auipc       t3, 937165
                  add         zero, sp, s3
                  sub         a0, ra, s3
                  slti        s2, a6, 1323
                  slt         s9, a1, ra
                  srli        s5, a0, 18
                  xor         t1, s11, a6
                  slli        s11, tp, 15
                  ori         s1, a6, 92
                  sll         s7, s7, s11
                  slli        zero, a0, 6
                  auipc       a7, 18194
                  sltiu       t4, zero, -1145
                  add         s1, a1, s10
                  add         a5, s3, s10
                  srli        a5, ra, 27
                  xor         s11, s0, s9
                  slt         t1, a6, a0
                  nop
                  slti        a2, a5, 1543
                  nop
                  slli        a4, t4, 26
                  andi        zero, t6, -1611
                  slli        s8, a4, 10
                  nop
                  lui         s2, 880679
                  srli        a1, a4, 4
                  xori        zero, s6, -1807
                  ori         s1, t0, -2042
                  sll         a4, s7, t5
                  auipc       a7, 973376
                  xori        s9, t5, -1152
                  sltu        s1, sp, s6
                  lui         s0, 812199
                  andi        s11, t2, 483
                  or          a1, a3, t5
                  sll         a5, s2, a6
                  sltu        a5, t2, a7
                  slli        t1, t2, 28
                  or          a0, t5, a2
                  srli        sp, t4, 26
                  nop
                  srl         ra, s1, a0
                  xori        s1, a4, 1820
                  sltiu       s1, ra, -1865
                  and         zero, t5, s3
                  ori         sp, a7, -1735
                  sll         tp, s5, t0
                  nop
                  slt         s6, a2, t2
                  xori        s6, s8, -529
                  addi        a6, t6, -1745
                  srli        t0, s4, 9
                  auipc       s0, 999332
                  add         t0, s6, a2
                  xor         gp, a0, t2
                  lui         s3, 661986
                  and         gp, s7, t1
                  slti        s2, a5, -1841
                  srli        zero, s4, 25
                  lui         s8, 660890
                  sll         a3, s10, gp
                  add         ra, s1, t6
                  sltu        zero, s9, s9
                  srl         sp, s4, s2
                  sltu        t1, tp, t3
                  sub         s3, a7, s11
                  and         a7, t6, s3
                  xori        s8, sp, -1830
                  srli        t3, s10, 13
                  nop
                  slt         s0, s4, s4
                  slt         s2, s5, a2
                  xor         ra, t0, t2
                  sra         t0, a1, s2
                  addi        s7, tp, 1946
                  sra         zero, t3, t3
                  sra         a6, s8, t3
                  or          s0, a4, tp
                  and         a7, t0, s9
                  srli        s11, s6, 15
                  sll         a1, s9, a3
                  lui         tp, 933215
                  andi        a3, sp, -1660
                  xor         a7, a6, tp
                  xori        t2, a1, -1939
                  lui         t1, 420316
                  sub         a6, a2, a7
                  slli        s9, s6, 27
                  add         ra, a6, t1
                  sra         s11, t4, a2
                  srli        s3, s0, 4
                  xor         t2, s3, s1
                  sra         zero, t5, t4
                  srl         s8, t0, s5
                  addi        a5, a1, 1299
                  srl         s2, s10, s1
                  ori         sp, t3, -1634
                  sltiu       a0, s0, 835
                  auipc       s1, 431702
                  add         zero, s9, tp
                  srli        a1, a3, 3
                  xori        sp, a7, 13
                  ori         ra, zero, -706
                  sll         s6, s10, s4
                  li         a1, 0x0 #start riscv_int_numeric_corner_stream_2
                  li         s5, 0x7cefd5a7
                  li         t4, 0x0
                  li         t1, 0x0
                  li         t3, 0x0
                  li         a2, 0x0
                  li         a3, 0x1
                  li         s1, 0x2a1a8d07
                  li         s8, 0x66d254bb
                  li         s9, 0x0
                  add         zero, a1, s2
                  addi        a0, t3, -258
                  lui         t2, 962863
                  nop
                  addi        zero, s11, 141
                  addi        s7, a1, -1823
                  addi        t1, s3, 365
                  sub         s3, s8, a7
                  lui         sp, 912213
                  addi        s5, t0, 10
                  add         a4, s11, a1
                  nop
                  addi        s5, ra, 1724
                  addi        s6, zero, 1305
                  sub         zero, a1, sp
                  addi        tp, t0, -1598
                  sub         t0, t3, t1
                  add         s11, a5, a5 #end riscv_int_numeric_corner_stream_2
                  sltiu       s2, s2, 681
                  sra         s7, tp, a1
                  or          zero, s10, s7
                  sltu        s7, zero, gp
                  slt         s8, tp, a6
                  slt         t0, s7, t4
                  xor         s2, a3, a6
                  andi        t3, ra, 449
                  srai        s7, s8, 9
                  sub         s0, t6, a0
                  nop
                  andi        ra, s5, -1577
                  srli        s6, a3, 4
                  addi        tp, ra, 413
                  sltu        a2, a3, s3
                  srli        t2, s9, 23
                  auipc       s1, 542110
                  slli        zero, s2, 11
                  sltiu       a3, sp, -1153
                  xori        s7, t2, -1740
                  xori        s7, a7, -824
                  ori         a5, a1, -1380
                  or          a6, s6, t1
                  sll         zero, a5, s1
                  nop
                  lui         t4, 132539
                  sra         s7, t2, t1
                  andi        a7, a3, -645
                  sra         t3, s1, s7
                  lui         zero, 369603
                  sltu        s5, a2, a1
                  slt         zero, ra, t2
                  sltiu       s6, t6, -1777
                  nop
                  srai        a4, s10, 15
                  lui         a2, 470578
                  sll         sp, s11, s7
                  sltiu       zero, s2, 149
                  addi        s7, s3, -34
                  sll         zero, s1, s7
                  auipc       s5, 604109
                  sltiu       ra, t2, 801
                  sub         t4, s9, s3
                  slli        s3, a6, 12
                  sltu        s4, a5, t3
                  xor         t2, ra, s4
                  srli        s1, s6, 9
                  lui         t1, 516277
                  xor         s6, t2, zero
                  srli        zero, s3, 26
                  and         zero, s10, t6
                  andi        a3, a7, 1060
                  sltu        s8, gp, sp
                  ori         gp, s4, -621
                  sra         a4, sp, sp
                  lui         s7, 639123
                  addi        s6, s9, -230
                  xori        a4, tp, -892
                  sub         s1, ra, a6
                  srl         a7, s3, t5
                  xor         s8, t4, t5
                  and         tp, t1, a3
                  auipc       sp, 178913
                  sltu        a6, a1, t2
                  addi        s11, sp, 495
                  add         t2, t0, s11
                  srai        zero, a1, 30
                  srli        s3, a5, 8
                  or          s4, a2, zero
                  and         t1, zero, s11
                  nop
                  and         t4, a3, t1
                  sra         s6, t4, s3
                  slli        zero, s10, 2
                  srl         s6, t3, s3
                  xori        s11, gp, 135
                  sltiu       s11, a7, -1919
                  sra         ra, t3, ra
                  sub         s8, tp, tp
                  sra         zero, s1, t0
                  sltiu       s9, s4, 632
                  slli        zero, sp, 13
                  xori        a2, tp, 1433
                  srl         ra, s3, s11
                  sltiu       t0, a4, 1934
                  slti        a4, s8, -2008
                  sub         s0, zero, s7
                  slti        gp, t4, -465
                  sra         zero, gp, t4
                  srli        a0, t5, 21
                  slt         gp, sp, s6
                  auipc       t1, 893550
                  srai        gp, a1, 30
                  auipc       tp, 196387
                  ori         ra, sp, 239
                  sra         t4, s8, zero
                  add         s9, zero, t6
                  sll         t2, t4, zero
                  slt         s5, s3, t6
                  slli        t3, gp, 6
                  addi        sp, a0, -1125
                  sra         s11, s1, s0
                  ori         t2, tp, -1308
                  addi        a2, sp, 673
                  sra         zero, s3, sp
                  or          s4, s8, t5
                  srli        a6, sp, 25
                  xori        zero, a4, 931
                  xori        s0, s10, -1925
                  slti        ra, t6, -881
                  xor         s7, t1, s7
                  sra         t2, s6, a2
                  ori         t0, a2, 84
                  srl         sp, s4, t2
                  srli        s1, tp, 20
                  andi        s6, gp, -1276
                  slt         a6, t4, a3
                  slti        t1, t1, -329
                  sra         s1, sp, s1
                  xori        s0, s11, -982
                  or          a0, s9, s0
                  slti        s0, a3, 1718
                  sll         t3, a7, a3
                  slli        s11, sp, 27
                  xori        zero, a6, -1149
                  slt         tp, a0, s0
                  srai        s9, t0, 22
                  slli        a1, s2, 24
                  xor         s5, a5, a3
                  slli        a0, t6, 13
                  or          t2, a5, t0
                  andi        zero, a7, 1389
                  sltu        a7, ra, gp
                  slli        s8, a6, 24
                  lui         zero, 655824
                  slti        s8, s9, -1885
                  srli        t2, a7, 19
                  nop
                  xori        a1, a6, -799
                  or          s0, a6, s2
                  auipc       a0, 96823
                  slli        zero, s2, 21
                  slt         s7, sp, a2
                  srl         s6, s8, t6
                  and         ra, a2, s4
                  xori        a0, s4, 710
                  xori        zero, t0, -454
                  nop
                  slli        a5, t1, 17
                  slt         s0, s2, t4
                  addi        s8, a7, -427
                  sll         sp, a3, a2
                  sltiu       a4, t5, 1003
                  slt         s0, a2, s1
                  srli        zero, a6, 26
                  srli        s8, t0, 19
                  nop
                  sub         s7, s8, a2
                  srl         zero, t4, t2
                  srai        a3, s0, 16
                  slti        zero, t2, 1270
                  slli        a6, s8, 17
                  srli        s2, s10, 29
                  srai        t1, gp, 20
                  sra         zero, s2, a2
                  auipc       a4, 770528
                  andi        s7, t0, -321
                  xor         s3, a4, s6
                  srl         a2, a5, s3
                  sra         tp, s11, t4
                  and         a1, t2, a1
                  xor         s5, s2, t2
                  addi        t3, a3, -160
                  srli        s8, a7, 20
                  andi        s3, t5, 913
                  ori         sp, tp, 1385
                  slt         t1, s5, s5
                  srl         s0, s6, s5
                  ori         t2, s6, -17
                  sra         tp, s1, a0
                  xor         s1, s3, a2
                  sra         t3, s1, a5
                  and         s11, a5, s0
                  xor         s9, t6, a1
                  add         s11, t1, t2
                  srl         s4, s3, t0
                  addi        t3, s1, -361
                  lui         tp, 39690
                  xor         sp, gp, s1
                  addi        t1, t6, -1319
                  and         a1, s4, t5
                  slti        sp, s6, 1353
                  sltu        s4, s4, t0
                  slli        s2, s10, 19
                  addi        s11, zero, -1217
                  addi        gp, s7, 621
                  srli        a6, s8, 6
                  slt         zero, s3, a7
                  srl         t3, gp, a2
                  add         t0, t4, a1
                  slli        zero, s9, 2
                  ori         s7, s8, 300
                  slli        t0, gp, 18
                  srai        a3, a2, 8
                  sra         s4, t4, t3
                  sltiu       ra, sp, -2037
                  add         a5, s8, t2
                  addi        t1, t3, 901
                  sltiu       zero, a6, -2007
                  auipc       a6, 502961
                  sll         s9, t5, t2
                  lui         a4, 191510
                  andi        tp, sp, 706
                  slli        sp, s3, 22
                  sltu        a0, a7, a6
                  slli        s9, s6, 4
                  sltu        s2, a0, s3
                  andi        s11, zero, 1905
                  nop
                  sltu        sp, a2, s6
                  xor         zero, sp, a7
                  andi        s9, s8, -1019
                  ori         s9, a4, -1020
                  slt         t3, ra, a7
                  add         a2, t4, sp
                  sub         s5, t5, s9
                  lui         t2, 724768
                  auipc       a4, 292990
                  sltu        s3, t6, tp
                  lui         s7, 131039
                  slli        gp, a5, 2
                  sra         t0, s3, s6
                  srli        a1, s6, 3
                  sltu        s0, t3, t5
                  slt         tp, a6, s7
                  sltiu       zero, t5, -87
                  sltu        s11, s11, ra
                  ori         ra, a4, 918
                  andi        zero, tp, 1443
                  lui         a2, 895180
                  sltiu       zero, s5, 1245
                  andi        s6, a5, -511
                  slt         a1, s2, t4
                  srli        a6, a4, 17
                  and         s8, s4, t1
                  andi        a2, t1, 429
                  sltiu       zero, t2, 591
                  sll         s6, s4, t1
                  and         t1, tp, a4
                  nop
                  slli        a0, s4, 12
                  sra         s2, sp, s7
                  xor         zero, gp, a5
                  slt         a3, s2, t6
                  ori         zero, t6, 1568
                  andi        t2, a5, -681
                  sra         s11, s9, s2
                  sltu        s9, gp, sp
                  and         a7, s2, sp
                  lui         tp, 273711
                  andi        s7, sp, -1840
                  sub         zero, s1, s1
                  sub         s0, zero, a3
                  sltiu       t0, t3, 526
                  andi        gp, s8, -258
                  sub         s5, ra, s3
                  or          ra, s8, ra
                  andi        s11, s9, 919
                  sra         a6, s2, ra
                  nop
                  lui         a5, 891327
                  slli        a3, zero, 21
                  ori         a3, s11, -1614
                  sltu        s5, s10, a3
                  sra         zero, a5, s5
                  andi        zero, t2, -289
                  sltiu       ra, a2, 683
                  srai        s9, s9, 26
                  sll         zero, t6, s11
                  srli        tp, t6, 6
                  sltu        s0, s1, s3
                  sra         ra, s2, s4
                  xori        t3, sp, 595
                  or          tp, a2, sp
                  sra         s1, ra, tp
                  slli        gp, s4, 8
                  addi        s3, s6, 496
                  auipc       t1, 822946
                  sltiu       s0, a7, -881
                  or          sp, s8, ra
                  xor         zero, t1, t2
                  sra         s5, s3, t3
                  lui         t3, 432023
                  nop
                  xori        s9, s9, -892
                  addi        gp, t1, 91
                  nop
                  srl         a7, a2, t3
                  nop
                  sub         zero, s9, s11
                  slti        t3, t3, -1377
                  addi        s1, t2, 315
                  sltiu       a7, t3, 1640
                  addi        s9, tp, -835
                  add         s4, s7, t1
                  sll         s11, a4, s4
                  lui         s1, 717965
                  addi        s5, a1, -1407
                  auipc       sp, 520830
                  srl         s3, a1, t6
                  auipc       s0, 641075
                  sll         t2, ra, s1
                  sll         s3, t6, s11
                  and         gp, tp, ra
                  auipc       a5, 309681
                  slli        ra, s4, 6
                  auipc       s9, 434552
                  nop
                  lui         t4, 843270
                  nop
                  and         ra, t6, s1
                  xor         s5, tp, t5
                  add         a0, t5, s9
                  slli        a1, s8, 2
                  slt         zero, t5, a3
                  srl         t2, t5, s4
                  sltu        s3, a4, s9
                  xori        t1, s9, -433
                  addi        t0, s6, -2031
                  or          a3, t6, t5
                  xori        s11, s1, -88
                  slti        t0, s0, 755
                  sra         t3, s8, t0
                  slli        s1, sp, 9
                  add         s7, t4, a5
                  slti        s6, a0, -929
                  sltu        a3, s10, s9
                  slli        zero, s7, 10
                  xor         s3, t5, t5
                  auipc       t4, 801634
                  or          sp, s4, t4
                  or          a0, gp, s4
                  srl         ra, t5, a1
                  srai        s7, a3, 14
                  add         tp, gp, s5
                  sra         t2, t6, t0
                  lui         zero, 923988
                  sub         a3, a7, s3
                  slli        s2, t3, 26
                  addi        gp, a3, -1445
                  sra         a5, tp, a0
                  addi        a5, a6, 1160
                  sll         t3, s0, t0
                  xori        zero, s8, -1670
                  sltiu       tp, t4, -25
                  sll         a0, t6, tp
                  srl         a3, a4, tp
                  sub         gp, t4, a1
                  and         t4, s3, t3
                  srl         gp, s3, a7
                  srli        s5, s8, 5
                  ori         s9, ra, -541
                  add         s5, a3, a1
                  sltu        a7, t5, s9
                  slti        a0, a3, 1563
                  sub         t2, s6, s3
                  srai        s3, s6, 22
                  sra         a6, s3, zero
                  sltu        tp, t5, t5
                  srl         s11, t0, zero
                  slti        a3, a5, -1252
                  slli        zero, s4, 15
                  sll         a5, zero, t0
                  xori        s2, s3, 1751
                  nop
                  addi        a4, t3, 77
                  slt         s8, a6, s4
                  srai        s4, s4, 8
                  srl         a5, t4, a3
                  and         a0, t4, gp
                  andi        t2, t1, -21
                  andi        a0, a2, 67
                  xor         t0, s10, s2
                  slli        a4, s3, 16
                  xori        ra, s1, 1698
                  sll         sp, s8, a4
                  ori         s3, tp, -1827
                  ori         s8, t1, 1738
                  xori        s6, a1, 1774
                  andi        a7, s4, 419
                  addi        s2, s7, 197
                  nop
                  sll         a3, zero, t0
                  add         s6, s1, t6
                  srai        s1, t2, 11
                  and         a6, s0, zero
                  andi        s3, s0, -598
                  srli        s7, t0, 19
                  xori        a7, a7, 631
                  xori        a1, zero, -1412
                  sub         a7, t4, t2
                  auipc       a6, 543181
                  srli        s8, t5, 25
                  nop
                  sub         a4, sp, s4
                  add         sp, s5, a4
                  srl         a2, s0, a1
                  srl         s4, a0, s4
                  sltiu       s5, t4, -758
                  lui         a5, 206271
                  ori         zero, s3, 678
                  lui         s1, 226043
                  sra         zero, s1, s2
                  addi        a3, a6, 1335
                  and         gp, s10, s10
                  sll         t1, s3, s10
                  sll         t2, s0, gp
                  xori        s7, a2, -1534
                  srai        s11, s3, 8
                  srl         s8, t4, s5
                  addi        s1, t0, 1561
                  and         s5, s3, a3
                  srli        a5, a7, 1
                  ori         tp, s0, -523
                  slti        s9, t0, 801
                  srl         s11, a4, a6
                  or          a3, ra, a4
                  sub         s0, s0, a2
                  srli        s6, t1, 15
                  srli        s6, s11, 1
                  sra         t3, ra, s7
                  and         gp, a4, t3
                  slli        a6, s2, 16
                  lui         a6, 403193
                  nop
                  srli        s6, tp, 0
                  sltiu       s11, t5, -1863
                  slt         ra, zero, t2
                  ori         s5, s11, 787
                  add         s9, t6, gp
                  andi        s5, s10, 920
                  sub         s2, t5, a6
                  ori         zero, s0, -411
                  add         s7, a6, sp
                  xor         tp, a7, s5
                  andi        gp, s0, -109
                  sra         s0, a1, t5
                  slti        s3, zero, -534
                  sltu        t0, s3, s0
                  sltu        a6, a1, a2
                  and         s11, s4, s0
                  slti        zero, t6, -1313
                  sltu        s8, t3, s3
                  auipc       s11, 599028
                  add         s3, s9, tp
                  lui         zero, 739963
                  lui         a6, 698649
                  sltiu       s5, a3, -933
                  sltu        ra, t6, t4
                  add         ra, t0, t6
                  lui         a3, 74336
                  slti        s1, tp, -479
                  nop
                  or          ra, a0, s3
                  or          t1, tp, s6
                  sll         s8, t4, a6
                  slli        t3, s6, 21
                  slli        a7, t2, 19
                  xori        s1, s7, 134
                  sub         ra, s4, s0
                  srl         zero, a7, s11
                  sll         zero, gp, t6
                  sub         s0, t6, s0
                  srli        zero, s9, 6
                  andi        t0, a2, 1735
                  auipc       zero, 122298
                  slli        a2, s8, 25
                  sra         s9, s0, a1
                  and         t0, t1, s3
                  lui         zero, 892380
                  addi        t3, gp, 185
                  and         s11, ra, t4
                  srl         a1, a0, a1
                  nop
                  auipc       zero, 577053
                  xor         s6, a0, t0
                  srl         t0, s6, ra
                  slt         a7, s9, s2
                  sltiu       s8, zero, -423
                  sltiu       t0, s4, -45
                  nop
                  addi        t0, s0, 113
                  sltu        t0, s0, a5
                  ori         s6, zero, 1143
                  add         gp, s2, a1
                  or          tp, s8, t2
                  sltiu       gp, gp, -110
                  sltiu       a0, tp, -748
                  sltu        a0, s2, ra
                  srli        zero, a6, 6
                  ori         t2, t1, -1676
                  ori         t0, ra, 1352
                  slt         t1, a1, s0
                  sltiu       sp, s1, 1809
                  slti        t1, s9, -204
                  srl         tp, s1, a3
                  sub         a6, a7, a5
                  sll         a2, gp, t0
                  xori        zero, a5, -1880
                  sra         a2, ra, a4
                  sltiu       sp, t2, 118
                  or          a6, s6, a4
                  srai        a7, s2, 19
                  sub         zero, t6, t4
                  sra         t1, t1, ra
                  nop
                  slt         t3, s1, s6
                  lui         zero, 1020666
                  or          s4, s4, s8
                  andi        t1, a2, -635
                  sll         s11, s1, t2
                  lui         s4, 885417
                  addi        a6, a5, 1887
                  xori        a7, s2, -1907
                  srl         zero, s7, s2
                  sltu        zero, zero, a2
                  sltu        zero, s9, t3
                  sltu        ra, t4, sp
                  slti        a2, a5, -1607
                  ori         s1, s1, -52
                  srl         zero, a7, t3
                  srl         a2, a2, a2
                  lui         t1, 292576
                  nop
                  andi        s0, t4, -1685
                  addi        zero, a3, -174
                  sltu        s1, sp, ra
                  lui         s1, 704715
                  addi        s7, ra, 257
                  auipc       s1, 447320
                  xori        s2, t0, -823
                  slli        a6, s6, 18
                  xor         s6, gp, a0
                  slli        t0, s8, 24
                  slli        s11, a5, 23
                  add         t0, t2, t0
                  and         zero, a2, a5
                  srl         t4, s9, t5
                  sra         t0, s5, a1
                  srli        s3, t0, 25
                  nop
                  srai        zero, a7, 27
                  srl         zero, a5, t5
                  auipc       s9, 254614
                  lui         a1, 877671
                  xor         t3, s8, s5
                  xor         s7, s3, a0
                  slli        a7, t6, 29
                  auipc       t3, 324793
                  lui         s8, 679590
                  slti        zero, a1, -1792
                  sub         s5, s2, t0
                  auipc       t0, 1028121
                  addi        t2, t6, 1954
                  sll         s0, ra, a2
                  xori        a5, s5, -1405
                  ori         zero, zero, 1907
                  slti        sp, s7, 1370
                  sltiu       s7, t5, 274
                  auipc       s9, 661510
                  xor         s2, s2, t2
                  slli        zero, sp, 14
                  addi        gp, a1, 1410
                  srli        s8, s1, 2
                  nop
                  xor         zero, a7, a0
                  sltu        t4, a2, s10
                  addi        s9, t0, 1651
                  xori        s11, a6, -545
                  xor         zero, s4, s4
                  sra         s11, t5, gp
                  slli        a6, t4, 22
                  sub         s7, a2, a0
                  addi        zero, s1, -275
                  sltiu       a5, t6, -1436
                  sltu        a0, s7, sp
                  and         a5, a1, zero
                  andi        t0, s10, 396
                  lui         t2, 661456
                  add         a3, s0, s11
                  xor         s2, s9, a4
                  sltu        s8, t4, s4
                  and         t2, t1, a1
                  srli        a7, t0, 24
                  and         zero, a7, s2
                  add         a6, t6, s0
                  xori        s7, s2, -65
                  srai        t3, t1, 16
                  sra         zero, s5, s0
                  lui         s9, 623506
                  srai        s6, s3, 6
                  sltu        s4, a2, s9
                  slli        zero, s1, 6
                  slli        zero, t0, 13
                  xori        s7, s3, 402
                  xor         t3, t3, ra
                  xor         s9, s11, ra
                  slti        s8, s0, -1438
                  srli        sp, a2, 8
                  or          ra, a3, t5
                  add         s2, s7, s2
                  srl         t2, s1, t0
                  ori         zero, a1, 225
                  slli        zero, s5, 11
                  auipc       s4, 774674
                  sra         t1, t6, a5
                  ori         s0, s8, 829
                  ori         s6, ra, 1957
                  sll         zero, a4, tp
                  srli        tp, s9, 10
                  or          t2, zero, s0
                  ori         s2, ra, -320
                  slti        s0, t3, 493
                  srl         s8, a1, s2
                  sll         s9, s10, s8
                  xor         zero, s4, s0
                  andi        a1, a4, 1068
                  add         ra, s0, a0
                  sltu        s9, a3, s10
                  ori         sp, a1, -188
                  slli        sp, a6, 26
                  srl         t4, a3, a2
                  sltu        s2, s5, s11
                  sra         s1, t1, t6
                  xori        a6, a0, 1384
                  srl         t0, a0, s10
                  ori         s8, a2, 1775
                  slt         a5, a6, t4
                  andi        a1, t6, 493
                  slti        a4, ra, 769
                  xori        a4, s8, 1825
                  sra         s1, s9, gp
                  lui         t2, 417721
                  sra         sp, t0, s11
                  srli        t0, a5, 25
                  andi        t1, tp, 1436
                  auipc       s3, 285628
                  or          a0, s4, t6
                  srl         t0, t3, s6
                  srl         s3, s6, a7
                  addi        zero, a7, -1714
                  srai        tp, gp, 26
                  srl         s3, gp, s6
                  ori         a7, t2, 536
                  sll         s7, s9, tp
                  srl         a3, s10, s5
                  addi        s1, a3, -1075
                  auipc       zero, 590079
                  slti        a5, a4, -992
                  auipc       a3, 191087
                  srl         gp, t6, s10
                  add         zero, s5, s0
                  nop
                  slli        a4, zero, 19
                  auipc       s11, 256264
                  andi        t3, s0, 615
                  xori        s3, a7, -1251
                  nop
                  addi        t1, t0, -758
                  sub         t2, gp, s2
                  sra         s1, a5, ra
                  andi        s5, s5, -1061
                  xor         zero, t4, s5
                  srl         zero, s7, t0
                  xor         t2, s6, ra
                  slt         zero, s2, a5
                  xor         t4, ra, gp
                  xor         a3, a7, a2
                  slli        s4, s4, 10
                  sll         zero, a4, s7
                  slti        s11, s10, 1706
                  andi        s2, s9, -1170
                  slli        s2, ra, 0
                  xor         t3, s9, s4
                  sra         a5, a7, gp
                  add         zero, t4, gp
                  slt         a0, s6, t3
                  auipc       s7, 900284
                  ori         s11, s6, -233
                  add         a3, t3, a4
                  srl         s2, sp, ra
                  nop
                  sra         s4, t5, a0
                  sll         sp, s10, s10
                  nop
                  addi        s11, s6, -361
                  sub         a2, s3, s4
                  add         t4, sp, a2
                  auipc       zero, 342710
                  srli        s9, s2, 19
                  nop
                  srai        s9, s10, 18
                  sltiu       zero, s4, -686
                  add         s1, t1, a1
                  sltu        s11, t3, s1
                  sra         s9, s3, a3
                  sra         s4, s5, s7
                  sra         s3, s2, ra
                  slli        t3, t4, 8
                  or          sp, a5, s10
                  andi        a3, s11, 1408
                  xori        gp, t4, -1219
                  sub         s5, t6, s7
                  srai        a7, t0, 17
                  ori         s4, a0, 1817
                  sll         zero, s9, t1
                  sll         t4, s4, s8
                  sra         s11, s7, s5
                  andi        s1, a0, 1425
                  sub         sp, s0, s7
                  xor         s7, t1, t1
                  or          zero, zero, a6
                  auipc       s9, 709222
                  addi        a4, a6, 574
                  sra         a4, t1, s2
                  sra         tp, zero, s5
                  xor         zero, a5, ra
                  slti        s8, t0, -644
                  andi        a0, a0, -664
                  srli        tp, a1, 31
                  xor         s2, a0, t4
                  srl         a3, zero, s4
                  slli        s5, s11, 3
                  andi        zero, a0, 947
                  sub         s11, s7, s6
                  nop
                  and         a2, a7, s7
                  srai        zero, s9, 19
                  slt         tp, zero, s10
                  srai        a1, a6, 2
                  xor         t3, sp, t4
                  auipc       gp, 590971
                  ori         t1, tp, -2
                  andi        a0, s4, -361
                  xor         s11, s1, gp
                  slt         t2, s10, sp
                  addi        s5, s6, -2016
                  sub         a4, s11, ra
                  sltu        s9, ra, t3
                  nop
                  lui         a1, 551980
                  ori         s9, s11, 420
                  lui         zero, 439633
                  and         t3, a4, s1
                  addi        tp, t0, 1973
                  srl         s3, a3, s10
                  ori         s0, s7, 1142
                  or          s6, s11, t6
                  srl         s1, s7, s0
                  sll         s4, s1, s10
                  sltiu       zero, sp, 30
                  lui         s9, 182597
                  nop
                  srai        ra, ra, 18
                  nop
                  addi        tp, t4, 1340
                  and         s7, a5, t6
                  sub         a5, a5, s9
                  auipc       zero, 549581
                  auipc       s1, 576904
                  xori        s3, s9, 1937
                  sltiu       sp, zero, -1157
                  addi        s2, s8, -941
                  andi        t2, gp, -703
                  sub         t2, t0, a3
                  slti        a7, s10, 594
                  nop
                  slli        t1, t5, 11
                  andi        t4, a7, -1398
                  slt         s1, gp, s9
                  srli        tp, s3, 5
                  srli        s9, s1, 14
                  xori        a5, a4, -1366
                  ori         a5, a4, 1161
                  srl         a4, tp, a5
                  sltiu       a2, a0, 424
                  srl         a7, s10, a6
                  nop
                  add         s9, t3, a3
                  sltu        t4, s6, gp
                  sub         a7, s4, s11
                  xori        a5, s1, 1429
                  auipc       a0, 544952
                  ori         t4, s5, 956
                  add         t3, s6, t2
                  ori         a2, s3, -2024
                  lui         gp, 921457
                  auipc       a0, 814073
                  andi        s0, t3, -247
                  and         t4, s9, s0
                  andi        zero, gp, -967
                  sltiu       a7, a3, -1365
                  slti        s8, a2, 1464
                  add         gp, s6, zero
                  lui         zero, 220563
                  addi        s0, zero, 670
                  slti        a2, s1, -633
                  andi        t4, a5, 526
                  add         a7, s11, t1
                  sltu        sp, a6, s9
                  auipc       a3, 295613
                  ori         s7, s8, -161
                  or          a5, a4, a5
                  xori        zero, a2, 235
                  srl         sp, s5, tp
                  sub         a6, a0, a6
                  xori        gp, s3, -276
                  sub         s11, s10, s6
                  andi        gp, a5, -495
                  or          ra, a3, s6
                  slli        gp, t0, 14
                  auipc       zero, 1020440
                  slli        t1, ra, 29
                  add         s6, gp, tp
                  add         s2, a2, t0
                  slt         zero, a1, s3
                  lui         zero, 926130
                  xori        s5, gp, -585
                  sub         s7, gp, s0
                  slti        s6, s0, -880
                  lui         t4, 113950
                  auipc       s11, 1008814
                  sra         s6, s3, ra
                  sra         a1, ra, a4
                  sltiu       s3, a5, -809
                  or          zero, s3, s2
                  srli        s1, s1, 11
                  auipc       tp, 17259
                  lui         s1, 66728
                  nop
                  or          t0, tp, gp
                  srl         ra, s3, a7
                  srai        t1, t1, 22
                  srai        zero, s5, 22
                  slti        s5, s9, -487
                  addi        s5, t1, -1536
                  sub         zero, s8, sp
                  add         a6, t0, s1
                  srl         zero, a7, s7
                  sub         t3, zero, t3
                  sltu        zero, tp, t1
                  slt         zero, a6, a0
                  xori        gp, a5, -775
                  and         a4, s2, s0
                  sll         s8, s5, a7
                  and         a3, s6, s2
                  nop
                  sub         a5, s1, s8
                  sll         t1, tp, s2
                  xori        zero, s11, 1999
                  slli        a5, a3, 22
                  nop
                  sub         a7, t4, gp
                  xor         ra, ra, a1
                  xori        zero, s4, -1948
                  andi        ra, t0, -1421
                  andi        s9, t0, -1182
                  sltiu       a6, sp, 685
                  sub         s11, s10, s7
                  auipc       zero, 995333
                  sltiu       s5, s6, -1090
                  sll         t4, ra, s0
                  sll         s2, a4, s5
                  slt         zero, ra, t5
                  andi        s8, sp, -478
                  sltiu       zero, sp, 909
                  srli        a4, a2, 9
                  nop
                  nop
                  auipc       s2, 707872
                  slli        s2, s10, 29
                  xor         a2, s9, sp
                  sub         s4, ra, s3
                  auipc       s3, 507906
                  slli        zero, t3, 19
                  slli        a4, s11, 28
                  nop
                  sltiu       t1, s9, 517
                  auipc       s2, 718724
                  lui         ra, 646190
                  slli        a6, s5, 30
                  sub         t1, s6, s7
                  sub         t2, a5, a4
                  slli        zero, s2, 22
                  srai        s6, s7, 15
                  sltu        a3, t3, t4
                  or          zero, s0, s0
                  or          s5, zero, t2
                  srl         tp, t3, gp
                  sub         a4, t1, zero
                  sll         t4, a6, s7
                  xor         s3, t0, a3
                  slt         zero, a7, zero
                  xor         t0, sp, t5
                  addi        zero, t3, -2043
                  andi        t3, t1, 1429
                  sltu        a2, a7, a2
                  addi        s3, a1, -1114
                  sra         a6, s6, sp
                  addi        a6, s10, -1719
                  andi        t1, s4, 1895
                  andi        s7, a7, -827
                  nop
                  andi        t4, t4, 521
                  srli        s6, t4, 23
                  srl         a6, a6, a3
                  or          t2, t6, a3
                  sltu        a5, a5, zero
                  nop
                  add         gp, s5, a0
                  sll         zero, a6, s4
                  andi        a6, s6, 1804
                  ori         s11, a5, 120
                  sll         s4, t0, t0
                  srli        a4, t6, 3
                  addi        a1, s3, 1909
                  andi        s9, a2, -407
                  srl         a3, s9, s0
                  slt         gp, a5, s7
                  nop
                  lui         a6, 674581
                  srl         zero, s3, t0
                  slli        a4, a2, 22
                  srai        s9, s5, 3
                  xor         a1, gp, sp
                  sra         zero, ra, s3
                  sll         a2, a5, a4
                  srli        zero, tp, 21
                  andi        s5, s4, 19
                  slti        s7, t5, 1584
                  xor         zero, a6, gp
                  slti        zero, t5, -1402
                  nop
                  srl         s6, t0, ra
                  add         s7, s4, a4
                  srl         gp, a6, a2
                  sub         t1, t0, t2
                  sltu        a7, sp, a1
                  sltu        s8, t1, t5
                  sll         t2, s7, sp
                  addi        t3, a2, -563
                  slt         s5, a3, a3
                  sltiu       t2, s1, 69
                  sltiu       t3, gp, 957
                  add         a6, s9, t0
                  sub         s2, gp, t0
                  and         t1, s3, a6
                  andi        sp, t3, -325
                  lui         s11, 811969
                  slt         t1, s10, gp
                  and         s3, a7, t2
                  lui         zero, 863793
                  xor         a5, s3, t0
                  slti        s4, s9, -1345
                  ori         t4, ra, -1198
                  andi        a0, a3, 1261
                  srl         s4, s7, t3
                  ori         s2, s7, 42
                  slti        t4, s9, -406
                  ori         a1, a7, -780
                  sra         a1, s10, a1
                  and         zero, s0, t4
                  addi        t3, tp, -1365
                  sltiu       s9, a2, -1102
                  srl         a3, a6, s7
                  auipc       s8, 445858
                  slli        s5, s10, 22
                  sra         a2, s2, t1
                  srl         t2, s5, s10
                  slt         t0, a4, s4
                  auipc       s8, 888973
                  addi        a6, s7, -1184
                  sub         t3, s6, s6
                  slti        a2, s10, 1305
                  sll         a5, s10, tp
                  lui         t0, 244090
                  sub         s5, s1, gp
                  sll         zero, sp, sp
                  sub         zero, t6, a0
                  and         s7, a5, a3
                  auipc       s11, 500372
                  srli        zero, t0, 3
                  sra         s1, s5, t6
                  ori         a3, t6, -13
                  lui         sp, 68667
                  sub         s4, sp, zero
                  or          s8, s1, t5
                  sra         a3, gp, t2
                  slli        a2, a6, 22
                  xor         s2, s9, s10
                  sub         s9, t3, s9
                  and         zero, a1, t6
                  srli        t4, s0, 22
                  addi        s8, a4, 1879
                  srli        sp, a6, 23
                  ori         t1, tp, 1861
                  nop
                  andi        s11, t3, -454
                  xori        s0, t6, -62
                  xori        zero, sp, 1470
                  auipc       t0, 923637
                  lui         a0, 635599
                  slt         a7, s0, s5
                  sub         a0, gp, t2
                  srl         a7, s0, a1
                  sltiu       s7, a6, 424
                  lui         t3, 121447
                  add         zero, t5, s3
                  or          a2, a4, tp
                  srli        s8, t4, 15
                  sll         zero, gp, s5
                  slt         sp, s7, zero
                  add         a0, s3, t6
                  sub         s9, s8, t5
                  sltiu       a6, s7, 553
                  srai        s3, t2, 9
                  andi        sp, a6, -35
                  and         t2, sp, sp
                  srl         a1, s2, a4
                  auipc       zero, 566538
                  andi        zero, a1, -1211
                  slli        t2, tp, 26
                  srli        s11, a2, 8
                  sll         s11, a7, s7
                  slli        s2, ra, 4
                  sll         t0, ra, a0
                  slt         a3, sp, a5
                  srai        a7, s8, 29
                  andi        s3, t1, -1638
                  srli        zero, t1, 0
                  addi        a6, a6, -1459
                  sub         sp, s9, a0
                  slti        s2, s10, -946
                  nop
                  andi        t4, s7, -1097
                  ori         s5, a5, -1287
                  lui         s6, 327763
                  and         zero, t6, s6
                  xori        a4, gp, 1064
                  srli        tp, t3, 7
                  sll         ra, t3, t3
                  lui         s3, 910497
                  srai        a1, t0, 29
                  auipc       s11, 728094
                  andi        ra, s1, -1927
                  srli        gp, gp, 29
                  add         s9, s8, s7
                  auipc       sp, 174386
                  srli        s11, t2, 13
                  sltu        zero, gp, a3
                  sltiu       s11, t4, -171
                  srl         zero, gp, t3
                  sltu        s6, s5, t3
                  srl         s0, a0, t4
                  andi        gp, gp, -522
                  xor         tp, s0, t4
                  ori         s0, s3, 1251
                  nop
                  sltiu       t1, s4, -841
                  sub         a5, s8, s2
                  nop
                  xori        a4, t1, 420
                  sll         a1, s5, t1
                  add         a3, t5, s9
                  sub         ra, s11, s4
                  andi        a3, t2, 1732
                  slti        tp, ra, 989
                  ori         a1, t0, -1590
                  auipc       t2, 65368
                  sub         t2, s6, t1
                  addi        s5, t0, 749
                  slti        a4, t1, 25
                  slt         a4, t6, a7
                  sub         s5, s0, a6
                  andi        gp, s10, -510
                  sltiu       zero, s11, 1484
                  sll         s8, s6, s7
                  sltiu       a6, gp, -1330
                  srli        a0, t2, 23
                  slt         s8, zero, a1
                  sra         t2, t4, s0
                  and         s5, a6, s4
                  andi        a5, s4, 829
                  andi        s1, t3, 628
                  srl         t2, a7, s8
                  sub         s1, zero, s9
                  addi        s7, a7, 2009
                  nop
                  or          t1, s10, t5
                  xor         s9, a5, s1
                  slli        gp, a2, 3
                  and         a0, a0, a7
                  sra         a7, s2, tp
                  ori         a2, a3, -124
                  sltu        s11, s7, a5
                  auipc       s2, 563608
                  srli        tp, s3, 1
                  srli        a1, t0, 9
                  xor         s7, s3, gp
                  andi        s3, a5, 573
                  andi        s7, s7, 1459
                  addi        s1, s11, -161
                  sll         a0, s0, s10
                  sra         t3, a4, s11
                  srai        t1, a6, 0
                  slt         zero, s4, gp
                  nop
                  andi        a4, a4, 726
                  xori        zero, s6, -713
                  xor         s2, a2, s6
                  slli        a4, s10, 5
                  srli        s7, ra, 15
                  addi        s6, t2, -671
                  lui         s3, 741901
                  sltu        sp, ra, s9
                  srl         zero, zero, s1
                  lui         t0, 1010633
                  lui         a6, 496783
                  sra         zero, t0, a5
                  srl         s8, t6, s10
                  lui         s5, 841809
                  or          s11, tp, t2
                  srli        s5, t3, 27
                  slt         t1, t1, s6
                  lui         ra, 446407
                  slli        s9, s7, 25
                  and         a2, a3, sp
                  addi        a1, t3, 865
                  xor         gp, s9, a2
                  ori         t0, a2, -571
                  lui         s5, 979290
                  slti        s6, a4, 347
                  xor         s4, s5, s6
                  sltu        s2, s4, s9
                  and         zero, s7, a0
                  sltu        s1, t2, t5
                  auipc       s3, 630133
                  slti        sp, ra, 155
                  addi        zero, t2, 859
                  sltu        ra, s6, s8
                  addi        s6, zero, 1823
                  sub         a0, tp, gp
                  srl         a5, s7, a4
                  sll         a2, s1, t3
                  add         sp, t5, s7
                  sltu        ra, s7, s6
                  xori        t2, s8, 2012
                  nop
                  sltu        s3, t6, s10
                  sltu        a4, s10, a0
                  andi        s8, a6, -1693
                  sltiu       s7, ra, -1737
                  srl         t4, s8, t1
                  nop
                  sra         s11, sp, s4
                  addi        ra, s0, -914
                  andi        s2, a7, -1546
                  srli        tp, s1, 29
                  add         gp, s0, a4
                  slti        t0, s6, 1851
                  srai        zero, s1, 5
                  slli        s1, s5, 27
                  ori         s0, s5, -1462
                  lui         s8, 92740
                  srli        s3, a6, 7
                  and         t1, s0, s3
                  addi        a0, a7, 1372
                  andi        t0, s7, 1619
                  xori        a3, s0, 98
                  lui         a0, 238096
                  sra         s1, s11, zero
                  addi        a5, a1, -1292
                  and         a6, a0, t0
                  or          sp, ra, tp
                  andi        a6, tp, -548
                  slti        t4, s7, 1520
                  nop
                  xor         ra, t6, s5
                  slt         zero, gp, s0
                  slti        s7, t1, -630
                  addi        a3, t5, 771
                  andi        sp, s11, -347
                  srl         s4, s3, sp
                  slt         a3, a5, a4
                  xor         s6, a2, s5
                  auipc       a7, 524433
                  xori        zero, t3, -1278
                  lui         s1, 1033844
                  lui         s1, 40111
                  srli        a3, s8, 22
                  xori        zero, a5, -736
                  ori         a3, a5, 146
                  srl         t4, s7, s4
                  and         s4, s2, s5
                  or          s1, a5, s2
                  slt         a5, a4, zero
                  lui         gp, 467789
                  auipc       tp, 32256
                  sll         zero, a0, a3
                  andi        a5, s9, -2014
                  add         t3, s4, s9
                  slti        s3, t6, -408
                  and         s4, s11, t6
                  sll         tp, t2, zero
                  sub         gp, s11, a1
                  andi        a0, ra, -1280
                  lui         zero, 479424
                  slli        s9, s11, 27
                  srli        a7, s2, 17
                  srl         s11, ra, a7
                  sll         gp, s0, s8
                  slli        s9, s10, 19
                  and         s3, t5, t1
                  sll         a0, s6, s8
                  srli        t3, t3, 10
                  slli        a2, s3, 27
                  nop
                  slti        s2, s5, -317
                  sra         a2, t3, t5
                  or          s1, a5, t4
                  slti        s6, a6, 924
                  sub         a4, a7, a0
                  sltiu       a5, s11, -88
                  addi        s9, t2, 925
                  nop
                  and         gp, a7, s5
                  ori         s3, gp, -1840
                  lui         s11, 105117
                  slti        s7, s5, 349
                  lui         t3, 70194
                  lui         s11, 562467
                  andi        a1, a1, -742
                  and         s2, a7, a7
                  sra         tp, zero, a5
                  srai        a6, s8, 20
                  lui         s7, 526182
                  auipc       t4, 874741
                  ori         a3, s9, 591
                  srai        s4, s8, 11
                  addi        a6, gp, -598
                  addi        s11, zero, 336
                  add         s2, s6, t4
                  or          s8, sp, ra
                  slli        s9, a0, 15
                  srai        zero, s7, 15
                  sub         sp, a0, a1
                  slli        s8, a6, 24
                  srl         t0, a4, s10
                  xori        ra, zero, -914
                  sltiu       sp, t2, 1971
                  auipc       s6, 156520
                  sltu        s9, s8, t1
                  auipc       a3, 238850
                  andi        t4, s11, -1109
                  slti        a4, s11, 1186
                  auipc       a1, 651694
                  and         t2, s2, s5
                  slti        zero, gp, -620
                  srai        zero, s2, 26
                  sltu        s6, s3, t2
                  sub         a2, s5, s11
                  srli        t0, s6, 13
                  add         t4, s2, a3
                  srl         tp, s6, gp
                  sltiu       a3, a7, -1262
                  xori        zero, a3, 263
                  lui         t1, 199152
                  lui         s0, 587359
                  lui         a0, 325728
                  slli        tp, sp, 23
                  sra         a0, ra, t5
                  add         a3, a2, t2
                  xori        s1, ra, -157
                  slli        s5, s9, 27
                  slli        s11, a0, 29
                  sltiu       zero, s1, 472
                  or          a1, s5, t2
                  sltiu       t3, s7, -412
                  srai        gp, s10, 6
                  slti        t1, t1, 2
                  srli        s0, a4, 29
                  xori        a4, s7, 825
                  xor         s0, gp, t2
                  slli        a2, a2, 12
                  nop
                  auipc       a0, 470279
                  sltiu       zero, t4, -1475
                  sra         s1, t4, s6
                  ori         a7, t6, -616
                  srli        s6, a6, 0
                  auipc       s11, 765998
                  auipc       s9, 717509
                  andi        t4, t1, -840
                  srli        s3, t3, 1
                  slt         s4, t6, a5
                  add         s3, a2, a2
                  xor         s1, t2, sp
                  and         sp, zero, s0
                  or          a6, a6, s6
                  lui         sp, 381240
                  add         t3, s6, t5
                  sra         a3, a1, sp
                  sra         t1, a1, a5
                  auipc       a3, 253606
                  slli        a4, a2, 3
                  srai        zero, t3, 17
                  addi        a2, s5, 324
                  sltiu       s4, s2, -1302
                  andi        zero, s5, -31
                  add         s6, zero, ra
                  slt         t2, s7, s6
                  slt         t4, s2, s9
                  andi        zero, s4, 2023
                  sra         t2, t5, ra
                  addi        s5, s0, 1909
                  srai        s7, a0, 5
                  sltiu       gp, a0, 774
                  sub         zero, a5, s6
                  ori         a2, s1, -889
                  lui         a4, 993185
                  nop
                  andi        a0, gp, -1151
                  xor         t2, s2, s11
                  sub         s4, s7, s2
                  addi        ra, t3, 477
                  or          zero, s5, t5
                  ori         a1, sp, 113
                  xor         s7, s2, s9
                  srai        zero, zero, 27
                  auipc       s7, 327100
                  sra         a5, s10, s4
                  sltu        t0, s0, ra
                  sltu        a7, t3, a7
                  slt         s0, a0, a6
                  slt         s2, sp, t5
                  slli        tp, zero, 4
                  sll         a5, ra, t2
                  li         t4, 0x1 #start riscv_int_numeric_corner_stream_13
                  li         s8, 0x19fdc9cb
                  li         t3, 0x1
                  li         sp, 0x0
                  li         s9, 0x0
                  li         a3, 0x0
                  li         s11, 0x57b332c1
                  li         s3, 0x1
                  li         a6, 0x0
                  li         s4, 0x0
                  addi        sp, t5, -1170
                  nop
                  sub         s7, tp, s1
                  addi        ra, a1, 452
                  sub         s9, a2, a5
                  sub         a0, a2, s3
                  nop
                  addi        a0, a2, 1224
                  addi        s2, t6, 1462
                  sub         s11, a6, a5
                  add         t0, s5, tp
                  sub         s1, s6, a7
                  add         zero, a2, s6
                  nop
                  sub         a3, a5, s9
                  sub         a3, a3, t3
                  sub         sp, t4, t1
                  add         a3, s8, a2 #end riscv_int_numeric_corner_stream_13
                  and         gp, s8, s4
                  sltu        a1, s6, tp
                  xor         s1, t0, s1
                  xori        t2, a0, 398
                  sltu        s4, t5, a1
                  or          a6, a5, a7
                  sra         a4, a0, a4
                  srai        a6, s6, 20
                  srai        s9, gp, 16
                  sltiu       s1, s5, 1324
                  auipc       s5, 579406
                  xori        zero, s3, 665
                  ori         tp, a0, -1617
                  andi        t1, t4, -1393
                  auipc       s5, 842755
                  addi        zero, t5, 1244
                  add         s3, s8, s8
                  sltu        t0, s8, a7
                  sltiu       zero, sp, 477
                  sra         zero, zero, a2
                  add         t4, a1, s1
                  andi        t0, ra, 441
                  and         zero, a5, t4
                  ori         zero, s4, -535
                  sra         zero, zero, t5
                  addi        s9, s0, 1427
                  addi        a2, t2, 1343
                  add         t3, a5, a5
                  sll         a6, t5, s11
                  srai        t1, s1, 17
                  sll         s2, t3, s10
                  auipc       zero, 444556
                  srai        s3, s9, 25
                  sll         s11, t1, t6
                  sll         s8, s8, gp
                  andi        s7, s5, -1788
                  xori        a0, a1, -139
                  slti        zero, s9, 614
                  or          a3, a6, s7
                  xori        a7, a3, 1590
                  auipc       t4, 947260
                  sub         t2, t2, a7
                  xor         t1, s10, s0
                  slt         zero, s1, a4
                  slt         sp, s1, a6
                  andi        a4, sp, -1336
                  or          s2, s11, a4
                  slli        zero, s4, 13
                  lui         s5, 505902
                  nop
                  xori        s9, s4, 929
                  or          sp, a6, t5
                  sub         t4, s11, t5
                  auipc       a7, 459842
                  sltu        a2, s10, s2
                  xor         zero, s11, ra
                  or          zero, a6, t0
                  nop
                  addi        a4, s10, -482
                  lui         a1, 885704
                  sub         a1, s11, a3
                  sll         ra, t5, s10
                  ori         a3, s4, -391
                  sll         s0, s3, ra
                  nop
                  xori        s11, gp, 786
                  slti        t2, a7, 882
                  or          s3, t0, s8
                  slt         zero, s6, a1
                  slli        t4, a5, 6
                  sra         s4, a3, t5
                  nop
                  sub         zero, t5, ra
                  srli        s9, a6, 1
                  srl         a6, s5, a7
                  srl         s7, s3, t4
                  sltu        a2, t3, s2
                  srai        a6, s3, 20
                  lui         s4, 471687
                  and         t3, s5, t2
                  nop
                  slti        s7, a5, -1242
                  sltiu       a2, s10, -1984
                  auipc       s9, 140804
                  auipc       s9, 165486
                  sra         t2, s2, zero
                  sub         t4, s8, gp
                  add         tp, s6, t6
                  sra         s11, t5, sp
                  lui         s5, 16077
                  auipc       sp, 756488
                  sltiu       s0, s10, 1182
                  andi        a6, t0, -494
                  add         s2, t0, a7
                  add         t3, s5, s7
                  slti        s3, s4, 1468
                  ori         gp, a0, -1594
                  xor         t0, s3, t3
                  srl         t4, gp, s9
                  sltu        zero, t5, ra
                  sub         s11, t6, s8
                  srai        t3, sp, 27
                  slti        a3, sp, 1235
                  addi        t3, s9, 303
                  xor         zero, s5, s3
                  and         s6, t0, zero
                  slti        t0, t1, 2009
                  xor         zero, a5, sp
                  srli        a0, s1, 4
                  andi        t4, a5, -141
                  and         zero, t0, a2
                  srli        t4, s11, 0
                  addi        tp, t6, -957
                  srl         a3, zero, gp
                  slt         s1, s9, t6
                  sltiu       sp, a5, -42
                  lui         zero, 103388
                  slt         a3, t2, s3
                  srl         tp, t4, ra
                  add         a6, s4, a7
                  nop
                  andi        s2, t3, 920
                  xor         zero, s4, s2
                  srli        zero, s2, 15
                  andi        ra, t1, 1711
                  sra         t0, t3, t3
                  ori         s3, ra, -1748
                  auipc       s1, 471397
                  ori         a6, s0, -9
                  ori         t4, sp, -983
                  sll         a3, tp, a6
                  or          a2, sp, gp
                  sll         t1, t1, a7
                  sll         s1, s5, s2
                  auipc       a4, 159186
                  or          a1, ra, a3
                  andi        sp, a2, 985
                  slli        s8, t5, 1
                  and         s8, s1, a3
                  auipc       t4, 902743
                  and         a5, s11, s1
                  sub         zero, ra, zero
                  sra         zero, s8, s8
                  slti        s8, s10, -612
                  srai        zero, s3, 12
                  sltu        a7, s6, t3
                  slti        s3, a6, 955
                  lui         s4, 330331
                  nop
                  sltu        s5, a1, t0
                  sll         s2, t2, a0
                  andi        s3, t1, 1838
                  slt         s11, s6, a2
                  sra         s1, s2, s2
                  and         s0, a2, s0
                  srli        zero, s2, 21
                  slt         zero, s4, s0
                  addi        t3, a1, 1297
                  sra         t3, s9, a2
                  srl         a4, s1, t3
                  xor         gp, t4, gp
                  addi        t1, s10, 58
                  sltiu       a2, a2, 1641
                  sltu        s8, t4, s5
                  sra         s7, s10, ra
                  auipc       a1, 256848
                  srli        s8, t4, 17
                  sltiu       zero, s10, -1404
                  sltu        s7, t2, t6
                  add         s7, s2, a0
                  sra         a6, gp, s1
                  ori         a6, s2, 1371
                  srli        a7, a3, 3
                  srai        s6, zero, 18
                  srai        s7, t2, 8
                  slti        zero, a6, -1514
                  and         ra, s2, s10
                  xori        s6, tp, 1858
                  sub         a1, t2, t6
                  sra         ra, s11, t2
                  or          gp, s5, s10
                  srl         zero, s9, t3
                  slti        tp, s9, 2019
                  slti        tp, t3, -2
                  addi        a2, a0, -198
                  add         s11, t5, a5
                  slti        t4, t6, -1870
                  add         zero, t4, ra
                  addi        s9, t0, 1112
                  srli        s6, s8, 6
                  sltiu       s2, a3, -688
                  xor         a0, t2, s10
                  add         s9, s0, s3
                  sra         a6, sp, s1
                  sub         s11, s5, t4
                  and         s7, a7, a7
                  sll         a1, a0, s9
                  auipc       a1, 20278
                  or          zero, a6, s11
                  sra         a7, a1, s7
                  nop
                  slt         ra, s0, t1
                  andi        a6, tp, 1382
                  lui         s2, 68782
                  sltu        a0, t2, t6
                  sub         s8, s4, a1
                  nop
                  sra         s0, s3, s6
                  slli        s2, s10, 1
                  sra         s11, s6, a7
                  add         s8, s0, s11
                  slli        a3, t1, 6
                  xor         a2, t6, t2
                  or          a7, t5, sp
                  auipc       gp, 185635
                  xori        zero, t5, -737
                  sll         a4, s11, t1
                  addi        a1, a6, 1017
                  addi        zero, ra, 935
                  sll         s3, a2, gp
                  sltu        zero, s7, ra
                  slt         s9, t0, t1
                  or          zero, gp, a4
                  slt         s6, t3, ra
                  sltiu       a0, a1, -1861
                  add         a1, a0, s3
                  sltu        t1, a2, s3
                  andi        a7, t1, -277
                  sltiu       s7, gp, -1138
                  sra         a5, t1, s10
                  nop
                  ori         t0, gp, 930
                  slt         tp, s8, a3
                  srl         s3, a1, s8
                  andi        a7, a4, 994
                  xori        a4, t3, 1673
                  slli        s3, t3, 10
                  add         s6, a4, a2
                  slti        s4, a6, -1304
                  sub         tp, t1, s6
                  sub         s11, s2, t4
                  andi        s2, zero, -136
                  sra         tp, a3, t3
                  slti        s2, t4, -779
                  srai        s11, a1, 29
                  xori        a2, s7, -524
                  sll         a6, s7, s7
                  andi        a7, s5, 1703
                  ori         a5, s0, -793
                  sub         a6, a4, ra
                  slti        zero, s9, 417
                  srli        s11, a4, 22
                  sltiu       a5, s2, 928
                  and         s6, t6, a2
                  lui         s9, 427299
                  slt         s3, s1, tp
                  slli        s11, tp, 7
                  auipc       s5, 599728
                  srai        s5, gp, 12
                  and         a5, a3, a6
                  sll         t0, t4, t1
                  andi        a1, a4, -157
                  sltu        a2, t4, tp
                  lui         a6, 257394
                  slt         a6, t1, s1
                  srl         a7, a1, s0
                  ori         s7, a6, 1841
                  sub         a0, t2, zero
                  add         tp, t6, a3
                  xori        ra, s10, -1646
                  slti        s2, t3, -1777
                  xori        s7, gp, 888
                  addi        t3, t4, 94
                  auipc       zero, 463307
                  nop
                  slt         s11, s0, s10
                  or          zero, a6, s2
                  ori         s4, t1, 1238
                  nop
                  sra         s1, s11, s5
                  srl         s5, s0, t1
                  srl         t2, t4, t1
                  xori        s4, s7, -1373
                  xor         gp, gp, a4
                  and         a4, zero, a2
                  ori         s9, s7, 1762
                  sltiu       t1, s11, -126
                  add         t3, zero, s5
                  xori        zero, a6, -1195
                  xor         a5, s5, a4
                  srai        s4, a7, 21
                  xor         s4, a0, tp
                  add         zero, a2, a2
                  slli        a5, s5, 12
                  slt         a1, s1, t2
                  slti        a5, a1, 1666
                  auipc       zero, 65691
                  add         s11, s8, s7
                  slli        a0, a7, 7
                  sltiu       a6, t4, -2038
                  sll         a1, a7, t4
                  slt         a3, t6, a1
                  addi        a4, a0, 41
                  sra         a2, ra, t3
                  addi        s0, s2, 1618
                  sltu        a3, a1, t1
                  and         a3, a2, t1
                  xor         s7, ra, s5
                  andi        a6, s8, 647
                  sltiu       zero, a0, 89
                  slli        t3, s4, 8
                  auipc       t4, 402608
                  sra         s2, s9, t0
                  ori         a0, a4, -1599
                  sltu        a4, t6, t0
                  slti        s11, t3, -934
                  auipc       a1, 192051
                  auipc       a0, 531904
                  andi        a7, gp, 1654
                  and         s6, sp, s11
                  nop
                  srli        t4, t2, 24
                  sltu        t0, a2, a4
                  slt         a1, a5, t6
                  sll         a7, a2, s2
                  lui         ra, 701007
                  ori         tp, tp, 1155
                  sll         s4, s5, s6
                  add         t0, s11, a7
                  slti        s8, a0, -247
                  or          s11, s6, s4
                  ori         a3, a4, 1271
                  nop
                  xori        a7, a3, -976
                  addi        s6, ra, -1831
                  sltiu       s0, a5, -733
                  nop
                  srl         zero, a3, t3
                  sltiu       s2, s9, -948
                  slt         s11, sp, s0
                  sub         s1, a0, a6
                  sltiu       tp, t3, 432
                  ori         s7, s4, 456
                  srl         a3, t1, a0
                  slli        zero, ra, 25
                  andi        t4, s7, 1549
                  xor         s1, ra, t6
                  add         s6, sp, s5
                  xori        a6, t6, -227
                  slt         s7, t6, a4
                  add         t0, s3, s1
                  sub         a4, s11, s9
                  srl         s11, tp, a5
                  add         s0, ra, s3
                  sll         a0, t5, t1
                  and         s6, a2, s4
                  srl         a4, sp, a5
                  srl         s3, a2, s10
                  ori         s4, t0, -1666
                  sll         zero, a7, s3
                  slli        s2, zero, 0
                  sltiu       zero, s11, -1033
                  sll         s5, tp, a1
                  slli        a5, t6, 28
                  or          gp, s0, s5
                  srai        zero, a7, 29
                  andi        s0, a2, -84
                  sll         zero, s10, a4
                  srai        zero, t2, 16
                  auipc       a4, 1038109
                  xor         a5, a3, a2
                  sra         sp, t6, zero
                  sltiu       s1, t1, 1009
                  sltiu       a4, t4, -1519
                  sub         a4, a2, t4
                  slti        a1, a6, 1672
                  and         zero, a6, ra
                  sltiu       zero, a2, -393
                  sra         zero, ra, s8
                  add         a0, a4, zero
                  sltu        s7, a1, gp
                  add         s0, s10, s2
                  srl         a3, zero, s9
                  sltu        zero, s5, a1
                  nop
                  slti        a4, tp, 785
                  slt         zero, s10, s6
                  srl         s2, a1, t0
                  sll         a6, s6, a0
                  ori         t2, s2, -1859
                  add         t2, t6, a5
                  sub         t3, a5, a5
                  xor         s5, s4, t0
                  xori        s2, s1, 441
                  li         t4, 0x0 #start riscv_int_numeric_corner_stream_9
                  li         t3, 0x1
                  li         s9, 0x0
                  li         s11, 0x0
                  li         s8, 0x0
                  li         t2, 0x7c99ff14
                  li         s0, 0x3816245c
                  li         s4, 0x1
                  li         t1, 0x69dbecba
                  li         a6, 0x3743f105
                  nop
                  sub         s2, t5, s6
                  sub         s2, gp, s10
                  addi        zero, a3, 1785
                  nop
                  nop
                  lui         t4, 349913
                  add         tp, s6, s7
                  add         a7, s6, s10
                  lui         ra, 625763
                  nop
                  add         s2, a1, s0
                  lui         sp, 448115
                  add         s3, a6, ra
                  add         s3, tp, a0
                  sub         zero, s5, s5
                  sub         s1, a0, t3
                  nop
                  add         s2, s6, t2
                  addi        s3, a2, 905
                  addi        t4, zero, 1934
                  nop
                  addi        s3, s4, 988
                  addi        zero, s6, 1244
                  add         zero, s5, a2
                  sub         sp, a0, a4 #end riscv_int_numeric_corner_stream_9
                  slt         zero, tp, s11
                  and         s3, s4, a1
                  srl         s3, a5, t1
                  and         s11, a2, s6
                  slti        a4, s8, 1066
                  andi        a3, s0, 1065
                  slti        t4, s0, -339
                  slli        s2, s9, 7
                  ori         t2, s10, -1151
                  srai        a7, s7, 26
                  addi        a2, s0, -1729
                  lui         s11, 654050
                  sltu        a6, a6, tp
                  auipc       t3, 181965
                  xor         a6, t3, a3
                  xor         tp, a5, s1
                  auipc       a2, 983971
                  ori         s3, a1, -1086
                  nop
                  or          t4, s3, s2
                  xor         ra, sp, gp
                  sub         zero, a3, a6
                  sltiu       s7, a0, -1209
                  auipc       t2, 114112
                  andi        s8, s3, 1450
                  slt         sp, a7, s0
                  slt         a6, ra, s9
                  add         a4, s10, a5
                  and         t1, s2, s5
                  slli        a2, s2, 7
                  srl         a7, tp, s4
                  or          tp, a4, s7
                  or          t3, a1, tp
                  or          zero, s5, gp
                  slti        t2, s9, -909
                  lui         sp, 204667
                  and         s2, t1, s8
                  addi        s1, zero, -108
                  slli        a1, a3, 13
                  sub         a3, t2, t0
                  slli        s0, s7, 14
                  or          t0, a6, a1
                  slt         gp, s10, s3
                  add         a6, a1, tp
                  addi        s7, a6, -148
                  and         a4, a3, a5
                  add         t0, gp, t6
                  sra         ra, s1, a1
                  or          s6, tp, s5
                  sltu        a0, a6, a7
                  sll         t0, s3, a6
                  nop
                  lui         s7, 1047160
                  auipc       zero, 371314
                  andi        zero, t0, 918
                  xor         t0, tp, t2
                  lui         a7, 235169
                  ori         zero, a7, 1136
                  addi        s3, a7, -185
                  xori        a1, t6, 636
                  add         s5, t1, zero
                  sub         t0, s3, t2
                  slt         ra, t5, s0
                  slti        s1, t5, -395
                  lui         a1, 653123
                  srli        s4, s1, 13
                  add         s6, s11, s2
                  nop
                  and         a5, t1, a5
                  nop
                  srl         zero, tp, s3
                  addi        sp, a3, -1875
                  xor         t4, s3, ra
                  srai        s11, s11, 29
                  sra         t1, zero, tp
                  lui         s8, 986872
                  srai        t0, s5, 8
                  addi        t2, t4, -1558
                  slti        zero, t5, 1340
                  addi        a0, a6, 1724
                  srl         zero, s1, s7
                  sltu        s3, s2, t2
                  sll         s2, t1, s2
                  or          a0, s10, gp
                  sll         s0, s1, t6
                  or          s6, s3, a0
                  srl         s5, a4, a5
                  lui         a6, 943176
                  addi        a6, s9, 64
                  andi        ra, s5, 2013
                  xor         s5, a4, s11
                  sltu        a6, s11, t1
                  srl         s0, a7, s10
                  auipc       zero, 743659
                  sub         t2, a5, s2
                  and         gp, a0, t5
                  auipc       s8, 332938
                  sub         a2, tp, t0
                  slli        t0, t5, 0
                  sltu        t3, a5, s9
                  and         ra, t5, s9
                  srli        s8, s3, 25
                  srai        t2, t5, 11
                  srai        a4, a1, 11
                  addi        t4, s5, -1967
                  sra         t4, s8, a7
                  sltiu       tp, t1, 1587
                  ori         ra, s6, 49
                  slt         a5, s1, sp
                  lui         s7, 501943
                  or          gp, s0, s8
                  slti        t2, a5, -1195
                  auipc       t4, 775489
                  addi        t4, a2, -1372
                  slli        a6, a3, 10
                  sltu        a1, gp, s0
                  or          s9, s8, a6
                  nop
                  srai        a5, t3, 18
                  srai        t0, a5, 22
                  slti        gp, a4, -773
                  slti        a7, s6, -1871
                  sltu        a2, t1, gp
                  add         a3, t4, t5
                  ori         s6, t3, -1973
                  slti        tp, s7, 1926
                  srli        s8, a3, 11
                  sltu        t2, t5, t2
                  xori        s1, gp, 507
                  sll         s9, a5, sp
                  srai        s9, s6, 25
                  sub         a5, s2, sp
                  sltu        a5, s1, t2
                  srai        zero, tp, 3
                  sll         a6, a0, t4
                  sll         t0, sp, a1
                  auipc       s11, 261844
                  sub         s8, a0, s8
                  ori         s6, s1, 1156
                  xori        zero, tp, 949
                  andi        t4, t1, -654
                  sll         ra, s4, s3
                  slt         a0, s0, sp
                  and         s1, s8, s8
                  sll         zero, gp, s0
                  slli        t2, t2, 15
                  sra         a1, s3, zero
                  slti        s0, s7, 1554
                  sub         s6, s3, s7
                  auipc       zero, 965454
                  nop
                  lui         a0, 292221
                  sub         a3, a0, a2
                  xor         s5, t3, zero
                  andi        a2, t5, 131
                  xori        s11, s11, 1789
                  lui         zero, 256034
                  andi        a7, a3, 1387
                  lui         tp, 784645
                  nop
                  xor         s9, a3, t1
                  andi        zero, s6, -1636
                  lui         t0, 409816
                  ori         zero, t1, 638
                  slli        s1, t4, 24
                  auipc       sp, 268107
                  nop
                  slti        ra, t6, -1260
                  xori        sp, t1, 971
                  lui         s0, 76306
                  nop
                  slli        zero, s9, 20
                  or          s8, gp, s6
                  lui         s4, 1046644
                  andi        t4, gp, 566
                  sll         t3, s1, s10
                  addi        t3, s0, -1361
                  srai        zero, sp, 5
                  srli        a7, a3, 19
                  sra         zero, s2, sp
                  srai        zero, t0, 29
                  andi        gp, s11, 1799
                  srl         a2, s6, s4
                  xor         zero, s5, ra
                  addi        a5, s7, 522
                  srli        zero, s4, 12
                  or          t2, zero, t4
                  sra         t0, gp, a2
                  xori        sp, t5, -636
                  srai        a2, s8, 3
                  and         s5, s3, s10
                  and         s3, t0, a2
                  lui         a1, 979416
                  and         t0, a7, a7
                  add         zero, a4, s7
                  li         s5, 0x0 #start riscv_int_numeric_corner_stream_16
                  li         t4, 0x0
                  li         s11, 0x0
                  li         s9, 0x3ae34851
                  li         s8, 0x6313ea1c
                  li         s0, 0x0
                  li         a1, 0x0
                  li         t1, 0x67b3a109
                  li         t3, 0x0
                  li         ra, 0x2039d718
                  nop
                  add         s5, t3, a1
                  add         t2, a6, a2
                  sub         tp, t1, t5
                  sub         s2, a7, a7
                  nop
                  sub         ra, tp, s9
                  lui         t0, 1008126
                  nop
                  addi        a3, s7, 1585
                  addi        s8, a7, 652
                  addi        zero, s11, -1417
                  add         t3, s7, a2
                  lui         a4, 324258
                  add         s11, s4, s8
                  lui         a0, 376444
                  lui         ra, 111508
                  addi        a1, a2, 1282
                  add         t2, a2, a3
                  nop
                  addi        zero, t6, 1293
                  addi        a0, t6, 93
                  add         a3, tp, s8 #end riscv_int_numeric_corner_stream_16
                  xor         s9, a1, t2
                  and         t3, a2, s11
                  or          a2, a1, a4
                  addi        a2, t5, -462
                  and         s8, t5, s3
                  sltu        a2, s7, ra
                  and         s8, t5, s6
                  nop
                  xor         s11, s8, a2
                  and         gp, s3, a1
                  andi        t3, a2, 1283
                  lui         a0, 526346
                  auipc       s4, 76846
                  sll         s5, s2, t3
                  sub         zero, t5, s7
                  or          s1, t6, gp
                  xor         s3, s1, zero
                  sll         s7, a4, s9
                  andi        s5, s11, -997
                  addi        sp, a6, -1988
                  sltu        t3, a3, s8
                  xori        s2, s11, 1430
                  addi        gp, a7, -606
                  auipc       s4, 361117
                  xori        ra, s6, -1666
                  xori        s1, t4, -1647
                  andi        s6, a0, -911
                  nop
                  xor         a0, a2, s5
                  srl         s2, s5, s3
                  auipc       s11, 1003249
                  srl         a1, tp, t2
                  sll         zero, s5, a6
                  slti        t0, s2, -843
                  ori         a7, t2, 1604
                  slli        zero, t3, 14
                  slt         s11, s2, s3
                  auipc       a3, 652177
                  srli        sp, t1, 30
                  andi        t2, zero, 352
                  sll         zero, s9, a7
                  andi        s8, t2, 832
                  auipc       a2, 89037
                  and         s4, t6, a7
                  srl         s11, a3, s4
                  addi        zero, a7, -1658
                  addi        s11, sp, 1081
                  sltu        a0, gp, s11
                  xori        gp, s1, 1280
                  srai        t2, s0, 20
                  slt         s5, t4, s5
                  srli        s9, s7, 28
                  ori         sp, a1, -600
                  and         s6, s0, s8
                  xori        a3, a5, -1141
                  and         t3, tp, t1
                  xor         t0, a2, a3
                  xori        t1, sp, 639
                  slt         t3, s7, a0
                  lui         zero, 427289
                  srai        a5, a5, 5
                  add         s0, s11, s2
                  nop
                  srli        t1, a2, 31
                  nop
                  sltu        s9, a6, s10
                  addi        a3, s10, -1995
                  and         zero, a7, s8
                  or          ra, sp, a6
                  ori         zero, a6, -732
                  sll         t3, zero, a0
                  srai        zero, a1, 12
                  or          gp, sp, s6
                  sltu        t0, t6, gp
                  auipc       tp, 635576
                  or          zero, s9, s1
                  ori         s11, s7, 1359
                  slti        a4, s6, 1494
                  xori        sp, t0, -86
                  srli        a6, s1, 28
                  slli        zero, s9, 5
                  and         a1, t4, a4
                  or          s3, t1, t3
                  or          s0, s4, t1
                  lui         s6, 736584
                  add         s1, s9, t6
                  sra         a6, a1, s1
                  lui         a4, 390918
                  srai        s9, s4, 24
                  sub         a5, t2, s4
                  sltiu       zero, s4, -1744
                  auipc       s1, 939127
                  andi        s11, tp, -426
                  srl         a5, t4, s3
                  slti        a2, a3, 37
                  xor         s0, a5, s11
                  sltiu       a4, t3, 1031
                  slt         a7, s5, s10
                  slt         a0, a6, a7
                  sll         zero, a3, t4
                  srl         s11, a6, a6
                  sub         zero, a1, a7
                  and         sp, a2, s7
                  srl         zero, t5, t0
                  ori         zero, s8, 812
                  or          sp, t1, a5
                  slli        s8, s4, 8
                  ori         s6, t5, -1776
                  sll         zero, s6, s6
                  sll         s7, zero, t2
                  srli        a2, a0, 5
                  auipc       a0, 408668
                  sltiu       t4, s11, 1875
                  xor         s11, a6, t1
                  or          s0, a0, s1
                  sll         t3, s0, zero
                  add         s2, t0, a2
                  sltiu       gp, s5, -552
                  sub         a3, gp, t2
                  nop
                  slli        s2, a4, 16
                  auipc       s2, 732315
                  or          a6, a5, s6
                  and         zero, a2, t2
                  nop
                  nop
                  slti        a1, tp, 795
                  andi        tp, s6, -964
                  xori        s2, t3, 1131
                  srl         a5, zero, t5
                  xori        t0, s0, -1447
                  sll         s7, a3, s2
                  sltu        zero, t5, s8
                  nop
                  xori        gp, a5, -509
                  andi        s7, s4, -918
                  and         s11, t4, zero
                  slli        s4, s9, 24
                  slt         a4, s4, a4
                  slt         a5, a5, ra
                  slti        s3, s4, -1090
                  sltiu       s5, s5, 1793
                  slt         zero, ra, zero
                  xor         a6, s6, s1
                  andi        s7, s6, -555
                  sltiu       s9, a7, 1603
                  or          a2, sp, s5
                  ori         a3, a2, -383
                  auipc       s2, 250637
                  slt         t3, s1, s5
                  and         a2, t5, t5
                  sra         a2, t2, a4
                  auipc       gp, 188653
                  andi        a1, s10, -1900
                  sltiu       sp, s8, -1839
                  or          zero, s4, a5
                  slti        a7, a3, -610
                  sll         t2, s3, gp
                  slti        t1, a7, 1096
                  srai        s7, s10, 29
                  ori         a6, s0, 500
                  or          a2, t4, ra
                  slli        t4, a4, 3
                  xori        t1, s5, -113
                  srl         ra, a1, zero
                  xor         gp, zero, t0
                  xor         a7, a1, s9
                  ori         t1, s2, 2029
                  or          zero, a7, sp
                  sub         a1, s11, s0
                  ori         s2, s10, 1485
                  add         t3, t4, s4
                  andi        a6, s5, -1944
                  and         t3, s10, s9
                  addi        s3, a0, 1650
                  xori        s1, a0, 980
                  and         s11, a5, ra
                  sll         s8, tp, a1
                  slli        a7, s8, 12
                  xor         s6, a1, t3
                  srli        zero, t2, 18
                  slt         t2, t5, t0
                  slli        s5, gp, 12
                  sltu        s11, a1, s4
                  slti        t2, s10, -316
                  auipc       s3, 687412
                  sltiu       s5, zero, 163
                  slt         t3, gp, a4
                  sltu        s1, a3, a5
                  nop
                  srl         zero, s0, a5
                  and         a6, t3, s0
                  sra         t1, a6, a7
                  addi        s4, t6, 187
                  addi        zero, t2, 206
                  sll         zero, a1, t1
                  nop
                  slt         a6, a0, a6
                  or          t2, t2, a0
                  auipc       t3, 522725
                  xori        t0, s6, -269
                  sltiu       a1, t4, 1133
                  and         t3, s4, a5
                  lui         t1, 952581
                  slt         t1, s4, s5
                  slti        t2, ra, 731
                  xori        t0, a2, 1582
                  or          a0, ra, a6
                  auipc       t1, 442451
                  srli        sp, s4, 4
                  xori        sp, s3, 552
                  sub         s0, s5, s7
                  add         gp, gp, s5
                  sll         t4, t6, s6
                  sltiu       sp, a6, -1766
                  lui         s2, 322264
                  auipc       t2, 134797
                  sub         s5, a6, s2
                  lui         a1, 934290
                  slti        s9, s11, 322
                  srai        t2, s11, 15
                  sll         a3, s3, sp
                  or          t1, zero, s9
                  nop
                  sll         zero, a4, ra
                  nop
                  ori         a2, a1, -2009
                  lui         s4, 431735
                  and         a6, a3, sp
                  ori         zero, s10, 937
                  srai        s7, s0, 31
                  sub         s11, a3, t6
                  srai        s8, t1, 1
                  srl         t0, s2, zero
                  or          t1, a0, t3
                  lui         ra, 340584
                  add         a5, s1, s8
                  sll         s4, s5, a3
                  ori         tp, t5, 779
                  sltiu       t1, a6, -728
                  add         s6, s9, s9
                  srli        s9, gp, 9
                  sra         sp, s8, t5
                  srai        a5, s11, 6
                  auipc       s4, 318081
                  or          t1, s2, s10
                  sll         ra, s5, s9
                  xor         s2, s2, t3
                  slli        zero, t1, 18
                  and         t2, tp, gp
                  andi        t4, t5, 1150
                  sltiu       t2, t2, 399
                  srai        a3, a7, 6
                  sll         zero, t1, t2
                  sltu        s5, s11, t5
                  sub         s0, s3, s2
                  xor         s8, s6, tp
                  xori        a0, a4, 1908
                  nop
                  sub         t4, t0, a5
                  sltiu       s2, s11, 517
                  srl         zero, a7, t6
                  slti        s1, a6, -1031
                  lui         a7, 523787
                  add         s7, s11, zero
                  auipc       t3, 39300
                  slt         s2, s0, s4
                  addi        t3, a3, 219
                  lui         zero, 35332
                  sltiu       a3, zero, -735
                  sub         zero, ra, a4
                  srli        s11, s9, 31
                  sra         t3, t6, s2
                  xori        t4, t3, 1492
                  sub         s6, s4, ra
                  sub         ra, s10, sp
                  slli        t1, a3, 13
                  andi        s6, a6, -241
                  lui         s11, 657632
                  sltu        t2, a0, a2
                  slli        a0, a0, 11
                  srli        t3, a4, 3
                  slli        s4, gp, 4
                  sub         zero, s9, ra
                  andi        t3, zero, 1923
                  sll         a5, s6, a0
                  srli        zero, t3, 26
                  slt         t4, a4, gp
                  lui         t1, 170330
                  addi        a6, ra, -762
                  nop
                  auipc       a0, 279427
                  auipc       a7, 177917
                  lui         a3, 406586
                  nop
                  sltu        gp, t1, s1
                  slti        t1, s3, -288
                  auipc       s5, 48958
                  auipc       s2, 618422
                  add         s4, a4, s11
                  sra         ra, tp, a1
                  auipc       ra, 957653
                  sltiu       s0, ra, -692
                  sll         ra, s6, zero
                  andi        s2, t0, 926
                  sub         zero, s6, s5
                  xor         t3, s8, s2
                  sltiu       a6, t5, 2047
                  srai        a3, a6, 23
                  lui         a5, 355151
                  sll         s0, s3, a4
                  srli        s6, s8, 26
                  or          a6, t1, t2
                  slt         a2, a7, a4
                  or          s9, gp, t6
                  lui         a1, 412693
                  andi        zero, s3, 804
                  slt         s1, a3, t5
                  and         s5, s1, s0
                  or          zero, a7, ra
                  ori         a5, t3, 627
                  lui         zero, 667303
                  xori        a5, t4, 1192
                  slli        s3, gp, 16
                  add         t4, a5, s6
                  srai        s9, t1, 12
                  slti        s3, a6, 1639
                  srai        a5, s0, 21
                  andi        a7, s10, 1517
                  sltiu       s11, tp, -1447
                  add         t4, zero, t0
                  srl         a4, t1, a7
                  xor         t4, s9, gp
                  nop
                  srai        a4, a2, 8
                  nop
                  sub         s2, s2, tp
                  xori        s11, t2, -367
                  or          s1, s2, t4
                  and         a1, t2, t0
                  srai        sp, zero, 26
                  addi        s11, tp, 594
                  lui         s11, 492663
                  srli        a4, t6, 4
                  lui         t4, 272311
                  lui         zero, 375851
                  xori        t0, a5, -1073
                  sltu        s3, sp, a5
                  auipc       s11, 556278
                  addi        s5, a1, 75
                  and         s11, t4, a1
                  auipc       sp, 1012337
                  add         t1, s9, s7
                  auipc       sp, 233538
                  or          t4, t4, s10
                  srai        s7, t4, 9
                  add         a4, zero, a4
                  sub         s6, t5, a1
                  sltu        a4, s6, s11
                  and         gp, a5, s1
                  srai        a5, zero, 4
                  nop
                  sub         a2, s0, tp
                  andi        a4, s5, 2043
                  slt         zero, a7, s2
                  sll         s6, gp, s6
                  sub         s3, t1, s7
                  lui         a5, 247727
                  slli        t2, t1, 31
                  and         zero, s3, t6
                  sltiu       zero, t5, -1777
                  srli        s6, a3, 18
                  andi        s7, ra, -1247
                  xori        a3, t3, -722
                  ori         a1, t6, -828
                  srl         ra, a1, s6
                  slli        a4, s11, 23
                  slt         s4, a2, s8
                  srai        a4, gp, 11
                  addi        tp, a5, -293
                  xori        ra, a4, 27
                  or          s6, a2, a7
                  sll         tp, a6, a7
                  slli        a6, a1, 13
                  srli        s9, tp, 20
                  xor         a4, ra, s2
                  sll         a7, t2, tp
                  and         t1, s1, t1
                  srli        s4, ra, 27
                  auipc       s7, 658728
                  addi        a2, t1, -191
                  and         s7, a7, s2
                  ori         a6, ra, -1023
                  xor         gp, s9, s11
                  sra         a5, a4, s8
                  xor         s1, a0, t2
                  add         s8, a3, s1
                  slti        s3, s10, -1797
                  sltiu       t2, s8, 856
                  li         t4, 0x0 #start riscv_int_numeric_corner_stream_19
                  li         t3, 0x0
                  li         a3, 0x0
                  li         s11, 0xd27bc03
                  li         tp, 0x0
                  li         s5, 0x5578d341
                  li         t2, 0x1
                  li         s9, 0x0
                  li         a7, 0x0
                  li         s8, 0x0
                  add         s0, a3, a3
                  addi        t3, gp, -867
                  sub         t2, s1, a7
                  addi        a2, s2, 447
                  lui         zero, 500075
                  add         zero, s0, a2
                  lui         a1, 352059
                  addi        t2, s4, 241
                  sub         zero, a1, a2
                  addi        a3, s0, -1030
                  nop
                  lui         a1, 60384
                  lui         t1, 121980
                  add         t4, t4, a4
                  sub         s8, s7, gp
                  sub         t0, tp, t4
                  lui         a7, 205676
                  add         gp, s11, s5
                  addi        a3, a4, 984 #end riscv_int_numeric_corner_stream_19
                  sra         s3, s11, s3
                  and         s5, zero, s7
                  srl         a7, a7, gp
                  slli        zero, t1, 8
                  slti        a5, t6, 12
                  xori        ra, a7, 931
                  ori         s5, a3, 1322
                  sra         s11, ra, ra
                  and         a0, a5, tp
                  xori        a0, s3, 1307
                  addi        a5, gp, 289
                  lui         s3, 981617
                  srli        ra, s10, 6
                  sltiu       s5, s10, -1267
                  slt         zero, gp, a6
                  lui         s5, 191239
                  andi        a3, s7, -979
                  andi        s4, a6, -1802
                  srli        a4, a0, 22
                  ori         s2, t0, 1219
                  srai        a4, s11, 28
                  xor         t1, s7, ra
                  ori         s8, zero, 524
                  andi        zero, t3, -894
                  sltu        s8, t0, a3
                  xor         sp, t4, s4
                  slti        s8, a1, 1076
                  srai        s11, gp, 22
                  add         a7, a6, a2
                  srli        tp, tp, 7
                  slli        s8, s7, 19
                  and         t1, s8, zero
                  auipc       ra, 709200
                  xori        s9, a5, -1521
                  xori        a1, tp, -1259
                  sltiu       a0, s1, 67
                  nop
                  nop
                  and         t0, a4, s9
                  srli        s9, s11, 17
                  ori         a7, tp, 1252
                  sltiu       s7, a5, 402
                  srli        a1, a2, 27
                  lui         a3, 337102
                  xor         ra, s9, t1
                  nop
                  ori         s4, a7, -531
                  xor         t3, s0, a0
                  srli        a0, t4, 16
                  nop
                  add         t4, zero, t1
                  xor         s1, s1, gp
                  andi        t1, s2, -879
                  nop
                  and         zero, a7, t3
                  slt         ra, gp, s1
                  slt         s9, a7, s0
                  slli        a6, gp, 28
                  sltiu       a0, a4, 993
                  sra         s11, s5, a0
                  auipc       a5, 874158
                  slti        a1, s7, -143
                  xor         a5, t5, s3
                  and         s4, s0, s11
                  nop
                  slt         a2, a7, s11
                  ori         s6, a6, -1135
                  srli        sp, t4, 3
                  and         sp, a7, s7
                  addi        s2, t2, 1103
                  slli        a3, t2, 31
                  or          s0, s0, s8
                  or          a4, a4, sp
                  sll         t1, t2, t4
                  slt         s8, t4, a1
                  srai        t2, t1, 9
                  add         zero, s0, a0
                  sltiu       s9, t1, -1066
                  sll         s3, gp, s7
                  srai        s1, tp, 18
                  auipc       a2, 847695
                  addi        s2, s3, -1395
                  andi        a2, a4, 1169
                  add         ra, a3, a0
                  srai        t0, a5, 0
                  xori        s11, s2, -417
                  and         s1, t5, s11
                  sub         s4, zero, t5
                  srli        a3, t5, 1
                  srl         sp, t5, s10
                  and         zero, gp, t5
                  addi        s0, a6, 1512
                  slt         zero, a0, s11
                  sltu        a0, t3, s7
                  sltu        tp, t6, s7
                  xor         t2, s2, s7
                  ori         s0, s4, -1863
                  and         s8, a7, t2
                  slt         zero, sp, s10
                  slti        s7, ra, 924
                  slti        s6, s8, 968
                  lui         a0, 585990
                  srl         zero, a4, s1
                  sltu        ra, a2, s4
                  sltu        s7, ra, s3
                  sub         zero, s4, a7
                  sltu        s7, a4, t2
                  andi        a1, t2, -771
                  ori         a5, a3, 1076
                  srai        t4, s11, 5
                  srli        s5, ra, 26
                  add         s11, a6, a3
                  sltiu       s7, s8, -1651
                  ori         t4, t0, 1105
                  sltiu       t2, a1, -1887
                  sub         t4, s8, s0
                  slli        a0, s6, 7
                  xori        gp, s6, 287
                  srl         a3, s8, t3
                  add         gp, s11, s2
                  nop
                  slt         t0, a2, gp
                  sra         zero, a2, a6
                  sltu        s6, s10, t3
                  and         ra, s6, gp
                  addi        a1, zero, -584
                  sltu        zero, t4, s9
                  sra         t1, s9, sp
                  ori         a7, s5, 1024
                  sltiu       a0, a2, -1608
                  nop
                  srl         t1, a5, a1
                  sltu        s7, s8, gp
                  xor         s8, s2, s3
                  sltiu       a1, s4, 373
                  or          t2, s5, s11
                  srai        s2, zero, 30
                  sltiu       s1, s7, -1818
                  sltu        t3, a0, s4
                  sltu        a7, a7, s3
                  sltu        s6, a3, s1
                  and         ra, sp, s0
                  lui         t0, 510131
                  ori         t4, a3, 1547
                  srl         zero, s3, s7
                  ori         tp, gp, 1926
                  and         a4, t0, s0
                  auipc       t0, 425301
                  sll         a3, a1, s5
                  nop
                  xori        t4, t4, -639
                  or          s9, t1, sp
                  sra         t2, t2, a4
                  srai        s7, s6, 14
                  ori         zero, t4, -1721
                  auipc       s1, 772755
                  srli        zero, ra, 18
                  sub         zero, s11, ra
                  and         s8, ra, a7
                  nop
                  slt         s3, a7, t1
                  add         s2, a5, s10
                  auipc       zero, 194691
                  add         ra, s5, gp
                  sltu        t2, a7, t5
                  xori        s11, t6, -564
                  sub         s7, s5, t6
                  and         s3, t6, s3
                  srli        s9, gp, 9
                  sub         sp, s1, s1
                  srai        s3, a0, 28
                  andi        s2, ra, -345
                  srai        s6, a7, 23
                  andi        s0, a4, 414
                  sub         s11, a3, t1
                  srl         gp, t6, s11
                  auipc       a4, 738947
                  sra         s3, s7, a6
                  sub         s5, s10, a7
                  sltu        zero, t1, a4
                  srli        s6, s7, 1
                  sub         s0, s0, t4
                  auipc       s3, 264122
                  sltiu       s7, s9, 470
                  addi        s3, s4, 256
                  srli        s3, s3, 23
                  slt         t4, t1, s11
                  xori        a0, a2, 69
                  sll         t1, zero, a2
                  sub         s3, ra, s10
                  slli        t2, s7, 4
                  srai        t4, a6, 21
                  slli        ra, t0, 29
                  or          t3, s3, t0
                  auipc       s6, 329597
                  sra         s9, t3, sp
                  sra         a2, t1, a1
                  auipc       s3, 338401
                  addi        s0, t1, -1337
                  addi        t1, t6, 88
                  addi        a2, t2, 68
                  andi        a1, sp, 988
                  nop
                  slt         t2, s11, ra
                  or          zero, s8, a4
                  xor         t3, tp, a1
                  sra         zero, s9, s11
                  srl         s1, zero, s3
                  sra         a2, a5, t1
                  or          tp, s1, t6
                  srl         a6, a3, s11
                  andi        a3, s8, -141
                  nop
                  sra         s2, tp, t3
                  auipc       tp, 519166
                  srli        s3, s2, 12
                  sll         a2, a4, t1
                  addi        a0, a5, 1702
                  sll         s8, s3, a2
                  srl         zero, a0, t5
                  or          t0, gp, a2
                  srli        s2, t3, 1
                  nop
                  auipc       a2, 875928
                  xori        sp, gp, -398
                  srai        s2, a6, 19
                  add         a5, s11, t4
                  srai        s11, s3, 25
                  auipc       zero, 348060
                  andi        a2, s8, 494
                  sll         t4, t4, t0
                  sra         a7, t3, s10
                  nop
                  andi        a7, t3, 1402
                  sll         tp, a7, ra
                  xori        a3, a4, 1573
                  srl         a0, s1, a5
                  andi        a3, a1, -749
                  auipc       a5, 119117
                  sltu        ra, a0, a4
                  or          sp, a1, s3
                  sltiu       s8, s0, 1090
                  xor         a7, t0, a7
                  sra         s11, a0, ra
                  slli        tp, a1, 14
                  add         a3, zero, sp
                  srai        a2, a4, 9
                  xor         s7, a5, s10
                  addi        s0, gp, -902
                  srai        sp, tp, 30
                  or          a7, a2, a5
                  slli        s5, s1, 14
                  sll         s3, s2, t2
                  nop
                  andi        s6, s1, -1244
                  srai        t2, s2, 27
                  slti        t3, tp, -104
                  slli        s0, s10, 29
                  xor         a0, gp, t2
                  lui         s2, 267577
                  auipc       t0, 203779
                  sltu        s11, s3, a0
                  srli        a5, gp, 28
                  slli        t3, s4, 17
                  auipc       t1, 267860
                  andi        s2, t0, -543
                  nop
                  sltu        t0, tp, sp
                  sltu        a7, t5, t1
                  lui         ra, 205393
                  sltu        s3, zero, s10
                  andi        s11, a1, -944
                  slt         s4, s4, a2
                  sub         a3, s9, a0
                  auipc       s0, 287125
                  nop
                  slti        a4, t2, -1395
                  sub         s3, a1, s9
                  ori         s6, s2, 939
                  add         a6, s1, a4
                  sll         gp, a2, gp
                  addi        zero, s2, 1052
                  slt         s9, a0, tp
                  srli        t2, a7, 28
                  xori        t3, zero, -174
                  lui         sp, 812513
                  sub         zero, s0, sp
                  xor         t4, s2, a2
                  sra         zero, t5, s6
                  xor         s5, s5, tp
                  sra         a2, t4, s6
                  slti        s9, a7, -450
                  slli        sp, s2, 0
                  sub         s4, gp, s1
                  auipc       t3, 428766
                  xor         s5, t0, t2
                  nop
                  ori         gp, s5, -1734
                  xor         s0, t2, a4
                  srl         tp, s11, s6
                  slt         a4, a0, tp
                  slt         t1, s3, t5
                  ori         s1, s8, -466
                  sltiu       s1, t4, -222
                  add         sp, a7, t2
                  nop
                  sra         a5, a0, s7
                  auipc       s11, 813737
                  auipc       zero, 877380
                  sra         s2, a7, s11
                  auipc       t1, 682115
                  nop
                  add         s8, t6, t6
                  srl         a4, tp, a4
                  sltu        s3, s3, tp
                  slli        a1, s5, 22
                  nop
                  xori        a2, s5, 446
                  xori        sp, t3, 1721
                  sltu        t1, a4, s0
                  addi        a5, s5, 1578
                  srl         t4, s0, a3
                  lui         sp, 918195
                  ori         a5, s9, 255
                  xori        a6, a5, -1935
                  sltiu       ra, t5, 345
                  slli        tp, s9, 16
                  sll         s8, zero, tp
                  and         s8, t0, s8
                  xori        s9, t1, -1684
                  sra         gp, s7, t5
                  add         zero, s2, s4
                  srli        s11, s5, 21
                  sltu        a0, sp, a3
                  or          a4, t4, a2
                  nop
                  sll         s1, tp, a7
                  slt         sp, a4, t4
                  srai        s3, s9, 25
                  srl         tp, a1, ra
                  nop
                  auipc       t2, 366688
                  addi        s4, s1, -120
                  nop
                  sltu        zero, a0, tp
                  srli        s1, s0, 26
                  srli        zero, t2, 4
                  srai        t3, a7, 5
                  or          a6, a1, s4
                  lui         a1, 30660
                  and         t3, a1, t4
                  slli        s4, a3, 8
                  nop
                  slt         a3, s5, s7
                  sub         t4, s7, s4
                  and         t2, s11, a4
                  ori         t0, s3, -980
                  or          s8, a4, zero
                  xor         a1, s5, s9
                  nop
                  lui         s3, 373078
                  sltiu       zero, t6, -1475
                  slt         s3, s9, tp
                  sub         sp, s8, s2
                  or          ra, a0, gp
                  nop
                  slt         s8, a6, ra
                  sltu        zero, s9, a3
                  srai        a7, s5, 20
                  sub         s4, s1, s5
                  sll         s4, s8, t5
                  sub         zero, a7, t4
                  sll         a7, s9, a5
                  srai        a2, s11, 7
                  slti        tp, a0, 1724
                  add         zero, s1, sp
                  sll         s1, t6, a7
                  xor         t1, s3, s2
                  andi        gp, t3, -113
                  andi        a3, t5, -299
                  sub         s4, sp, a3
                  slti        tp, s1, 893
                  andi        a0, t4, -36
                  or          zero, t1, s0
                  sll         s2, s1, gp
                  slti        zero, s7, 276
                  srl         a4, s4, s2
                  slti        s0, a4, -35
                  xor         tp, t3, t4
                  srli        s6, tp, 24
                  add         a0, t2, sp
                  sltiu       gp, gp, 1657
                  sltu        tp, s3, t3
                  sra         s8, t1, a2
                  lui         s4, 818930
                  or          zero, a3, a1
                  auipc       zero, 635160
                  auipc       tp, 653287
                  ori         s7, a4, 342
                  addi        zero, ra, 1665
                  lui         s4, 362285
                  and         zero, s1, ra
                  srl         s5, a1, s6
                  slli        s4, t2, 18
                  sll         sp, s3, gp
                  srai        s4, s7, 19
                  xori        s0, a2, 1826
                  xor         tp, a2, ra
                  or          s8, s11, t1
                  slli        zero, s0, 10
                  slt         a4, t4, s6
                  add         t0, a0, a0
                  slt         t0, t4, a4
                  lui         s2, 456734
                  addi        s7, a4, -1804
                  xori        tp, s10, 983
                  slti        tp, sp, 1636
                  lui         sp, 533753
                  xor         tp, s3, t5
                  or          s8, a3, a6
                  srl         a2, sp, t5
                  and         s2, zero, s0
                  nop
                  srai        a5, s6, 2
                  xor         s4, t1, t0
                  srli        s4, s7, 10
                  slti        t2, s9, 966
                  slti        a3, s4, 808
                  srli        s8, t0, 6
                  nop
                  add         zero, a5, s4
                  sltu        a1, s2, s2
                  slti        zero, sp, -1834
                  sltu        a6, ra, t0
                  sltu        s0, a1, s1
                  addi        s8, s7, 582
                  sltu        a0, t5, t5
                  auipc       sp, 881873
                  ori         zero, tp, 854
                  sra         zero, gp, t2
                  sltiu       zero, a7, -1007
                  sltiu       a7, s8, -856
                  or          t3, t5, ra
                  andi        t0, sp, 1782
                  andi        a3, t2, 700
                  lui         s5, 683481
                  slli        zero, a7, 27
                  sll         ra, t0, t1
                  auipc       s11, 965925
                  slti        s9, s8, 1153
                  sub         a2, s3, s7
                  sll         t4, t4, t6
                  nop
                  andi        t2, t6, 1656
                  sra         sp, a5, a0
                  auipc       s9, 660960
                  sub         t1, a6, a4
                  andi        s7, a2, 1870
                  sra         zero, s4, t4
                  and         s3, t2, sp
                  sltu        s6, gp, s4
                  lui         gp, 940316
                  sltu        zero, a7, gp
                  srai        tp, s10, 28
                  sltu        a6, tp, s3
                  auipc       s8, 101235
                  slt         s11, sp, s2
                  and         s5, a6, ra
                  and         a7, t1, a0
                  srai        a7, a2, 3
                  sra         a3, t3, t6
                  andi        t2, s10, 24
                  auipc       a3, 1034146
                  nop
                  ori         s5, a4, 656
                  slti        zero, s4, -1238
                  add         t0, a1, t2
                  ori         tp, ra, -1876
                  xori        sp, a2, -1615
                  xori        ra, t5, 1206
                  or          s5, t2, s3
                  add         s9, s10, sp
                  xori        a0, s0, 748
                  ori         zero, a0, -878
                  sltu        zero, a0, tp
                  sltu        t3, a7, s6
                  sltiu       a5, a3, 294
                  ori         a7, a6, 1069
                  srl         s5, a7, t3
                  sra         a1, a1, s3
                  addi        a7, a6, -1644
                  nop
                  slt         a5, t5, tp
                  slti        t1, ra, 1629
                  auipc       a2, 82259
                  and         s11, s5, gp
                  slt         s11, a7, a1
                  sub         zero, s2, s7
                  xori        s3, t5, 871
                  auipc       zero, 553535
                  sub         sp, ra, a7
                  slti        s8, s2, -1882
                  add         a2, a0, a2
                  sll         t3, s10, s1
                  xor         sp, s0, a3
                  slli        s7, a3, 7
                  xori        s0, s3, 702
                  slt         s3, t4, gp
                  ori         s5, s3, 1883
                  nop
                  sltiu       a5, s9, -172
                  andi        t0, s11, -414
                  and         a4, gp, a3
                  srli        s11, gp, 24
                  add         t0, s5, gp
                  add         a6, a0, s11
                  xori        t4, a0, -627
                  xori        t1, a2, 1744
                  auipc       a4, 415051
                  addi        a3, zero, 1902
                  nop
                  xori        zero, s4, 1951
                  lui         s7, 335223
                  sltu        a5, a0, t1
                  andi        t1, s0, -1582
                  add         s6, t6, s4
                  lui         a0, 689860
                  ori         a6, t3, -1609
                  sltiu       zero, s8, -2027
                  ori         zero, t6, 1952
                  sll         a7, tp, s1
                  ori         zero, a6, -1844
                  sra         a7, s5, sp
                  andi        s8, a6, -269
                  xor         a0, a5, s0
                  srli        s7, s2, 16
                  slli        t0, t2, 6
                  srai        s4, ra, 25
                  sltu        a5, t1, sp
                  sub         t0, s1, s4
                  slt         s5, a7, s9
                  srai        s8, t6, 12
                  sll         a0, a3, sp
                  slti        s8, a0, -1073
                  sll         a5, s1, a2
                  lui         s8, 318423
                  andi        s5, s3, -1621
                  lui         s5, 1008062
                  ori         s0, t5, 174
                  add         a3, s3, s6
                  or          t4, s9, s1
                  and         a6, sp, s6
                  srai        zero, tp, 4
                  and         a2, a0, s11
                  slli        a7, a5, 19
                  slt         gp, s5, s0
                  slt         sp, s6, s7
                  ori         s3, s7, -166
                  and         s1, s9, s6
                  andi        zero, t0, 1809
                  sltiu       s7, a6, -280
                  nop
                  xor         s1, a4, zero
                  srl         a2, s8, a5
                  and         t1, s2, a3
                  sltiu       a4, t6, 901
                  andi        zero, s6, -33
                  sra         t3, s0, s9
                  slti        t1, a4, -1356
                  slti        s3, a3, -68
                  add         zero, a1, t5
                  xor         a1, sp, a4
                  xori        s9, zero, 986
                  srli        s11, t4, 0
                  xor         zero, a4, s6
                  or          t1, s11, s8
                  nop
                  or          s0, s11, s3
                  sub         zero, t2, a3
                  addi        t3, s0, -1766
                  addi        a6, t5, -1095
                  auipc       zero, 753252
                  sll         s5, s6, s1
                  xor         tp, a7, s10
                  and         a2, a4, t1
                  slli        zero, t1, 20
                  sll         a7, t1, s2
                  xor         tp, gp, a3
                  lui         s9, 431487
                  or          a4, s11, a5
                  add         a7, gp, s3
                  slti        s2, s4, -1391
                  srai        a1, t6, 2
                  slli        a6, s5, 0
                  sll         s11, sp, a1
                  andi        zero, t3, -480
                  add         a6, t5, s1
                  sra         s2, s7, s8
                  srai        tp, s3, 17
                  and         a4, zero, a3
                  sra         gp, a5, s8
                  sra         ra, s3, zero
                  sll         a4, t0, sp
                  slli        a6, a3, 3
                  srli        s11, s5, 7
                  slli        s7, a7, 0
                  xor         a3, s7, t1
                  or          s3, s10, a1
                  xori        s8, s10, 1208
                  xori        a0, s10, -774
                  srl         zero, gp, a3
                  lui         a4, 501625
                  slti        a3, t1, 1385
                  srai        s7, tp, 18
                  nop
                  srai        a2, t0, 21
                  srli        a3, t0, 11
                  addi        a4, a1, 1137
                  xori        zero, s10, 1125
                  sll         a3, s10, sp
                  andi        sp, s6, 979
                  sra         s11, a7, s6
                  xori        s0, a7, 369
                  srli        gp, tp, 8
                  srli        s0, t1, 19
                  add         a6, s0, a2
                  slti        s5, a5, 1226
                  srl         a5, s10, t1
                  sltu        t4, tp, s8
                  andi        s11, s10, 970
                  sub         sp, ra, a1
                  and         a4, a6, s5
                  and         a2, s0, a6
                  andi        s11, a6, -662
                  slli        s0, s10, 24
                  slt         s1, s9, s0
                  sltiu       s4, ra, 12
                  srl         t4, t4, s4
                  auipc       a7, 1032963
                  add         t0, gp, zero
                  and         s9, s8, s7
                  slt         s9, s0, a2
                  auipc       t4, 266960
                  and         s11, s10, s1
                  srai        a3, s1, 19
                  add         s5, s6, t1
                  srli        a0, t3, 11
                  addi        a2, s2, -1292
                  or          a4, s8, s3
                  slt         s11, a6, zero
                  srli        sp, a7, 13
                  slli        s7, t1, 22
                  sub         ra, s10, t4
                  xori        a3, zero, 1093
                  sub         tp, s2, t3
                  srl         a0, t5, t3
                  slti        s5, s11, -1695
                  nop
                  srl         s0, a7, a1
                  slli        s3, s6, 18
                  or          s1, s0, t6
                  sltu        gp, t1, t2
                  srli        t3, s7, 27
                  srai        a2, t2, 31
                  sra         zero, t4, t5
                  sra         a5, s1, a2
                  nop
                  addi        s0, s6, -127
                  xori        t3, a7, -1373
                  xori        zero, t0, -1402
                  or          s2, t4, a7
                  xor         s8, s9, s7
                  nop
                  add         s8, s1, t0
                  xori        s1, t3, 1957
                  add         s7, t6, t2
                  srl         s5, s1, s8
                  addi        s7, zero, 1451
                  andi        s2, s11, 814
                  sub         s5, ra, sp
                  xor         tp, a6, s1
                  slti        a1, ra, -904
                  slt         t0, tp, ra
                  sll         s6, t2, s6
                  add         a5, a2, a0
                  xor         zero, a2, s1
                  xor         s3, gp, s6
                  addi        s3, t1, 480
                  nop
                  sltu        zero, s2, s10
                  srl         s7, a0, a4
                  slt         a1, s11, s7
                  xori        t4, s7, -1955
                  and         zero, a3, s8
                  sll         a5, a4, t1
                  andi        a1, s5, 1591
                  sltiu       t4, a3, 1195
                  auipc       s8, 432998
                  sltiu       s1, s2, 1839
                  and         s9, t5, s9
                  auipc       a7, 1002628
                  slti        zero, t2, -1189
                  srl         a3, s9, a5
                  xor         zero, t1, s1
                  sltiu       s2, s8, -179
                  lui         gp, 553673
                  or          zero, s11, s8
                  sub         a7, s4, a0
                  slt         t0, a6, s0
                  or          s1, s7, sp
                  slli        s8, s0, 30
                  sltiu       t2, a3, -1257
                  nop
                  and         gp, t1, s8
                  sub         a2, a6, ra
                  sra         t4, t3, a7
                  addi        t2, sp, 1815
                  srai        t2, tp, 27
                  sltiu       a3, s8, 510
                  and         tp, t1, a2
                  add         a2, s11, s5
                  andi        zero, sp, -1860
                  slti        s2, t0, -1259
                  sub         t0, s3, t1
                  slt         a2, s10, t6
                  addi        t0, a1, 306
                  srai        a4, s9, 15
                  lui         s7, 926779
                  xori        zero, s8, -1023
                  auipc       a1, 723343
                  sltu        s1, s6, s9
                  sltu        gp, s7, gp
                  sltu        a0, t3, s1
                  slli        s11, a2, 27
                  srl         t2, zero, a3
                  slti        t0, t3, 1240
                  sra         a4, t5, t3
                  sltu        s1, s2, t2
                  lui         s9, 344884
                  addi        a0, ra, -124
                  srl         s2, s9, t4
                  sltiu       t1, a0, 328
                  auipc       a1, 654313
                  srai        s8, t2, 2
                  sll         gp, s2, s7
                  srli        s11, s5, 15
                  sub         t1, ra, ra
                  sra         a6, a6, s5
                  slli        tp, s2, 24
                  sltu        a1, s3, t6
                  sll         zero, s7, s3
                  sll         s2, t1, ra
                  sltu        t0, ra, t5
                  sub         t0, s11, a5
                  ori         s7, s8, -574
                  xor         tp, sp, s7
                  slli        s1, sp, 10
                  slli        tp, s10, 25
                  srai        zero, s9, 18
                  or          a5, s10, s11
                  lui         sp, 426443
                  slli        zero, s8, 5
                  slli        s3, t1, 0
                  srli        s8, a0, 31
                  sll         a6, s8, s6
                  srl         s7, a0, gp
                  sltiu       s0, s8, 439
                  ori         t4, t6, 1135
                  auipc       a2, 476124
                  slt         zero, s10, t3
                  srai        zero, sp, 5
                  sub         t2, s5, sp
                  sll         a2, s11, t4
                  sltu        a1, t2, a1
                  slli        s9, a4, 5
                  ori         a6, a4, -1360
                  add         a3, a2, s3
                  slti        a2, s9, 1408
                  srai        t0, a4, 22
                  addi        tp, a2, 1342
                  sltu        s9, ra, a7
                  sll         a0, s6, a3
                  srl         t2, sp, a4
                  sltu        a0, a2, a4
                  sra         t4, t2, ra
                  xor         zero, a0, t0
                  srai        s4, t6, 31
                  sll         s1, a4, zero
                  srl         a7, s8, a7
                  lui         s11, 920336
                  slt         s5, s6, s0
                  xor         s6, s9, s7
                  slli        a6, s0, 11
                  nop
                  andi        a6, s10, 19
                  ori         zero, tp, -1108
                  sll         a7, s7, a0
                  srai        zero, sp, 1
                  xori        s0, t6, -1924
                  nop
                  sltiu       s0, s1, 1488
                  srli        s8, t3, 27
                  or          ra, t1, t2
                  sub         s6, ra, t3
                  sra         s3, s11, s6
                  addi        zero, a7, 902
                  sll         a0, s8, ra
                  andi        ra, s9, 1665
                  sll         s1, s9, s1
                  srai        t4, s9, 16
                  andi        s8, s5, -1527
                  or          s7, s8, t5
                  auipc       a2, 1027840
                  lui         zero, 429781
                  addi        a7, s8, -830
                  add         ra, s6, s7
                  xor         a7, ra, gp
                  and         t2, a4, t4
                  srai        a6, t1, 29
                  xor         t2, s5, a4
                  ori         t4, t2, -1683
                  sltu        s6, s9, t2
                  andi        tp, tp, -1260
                  srli        tp, s9, 29
                  sltu        s1, s4, s10
                  slt         s8, s7, s8
                  sltiu       zero, s1, -1730
                  srl         a3, s11, a4
                  lui         s8, 1039374
                  slt         a6, s1, a3
                  sub         s8, s0, a1
                  auipc       s7, 625811
                  sra         a7, s11, s7
                  lui         a5, 92116
                  auipc       tp, 970894
                  srli        a5, s11, 6
                  slti        a3, s3, 1463
                  xori        a6, sp, -1802
                  srli        s4, gp, 1
                  auipc       s11, 562837
                  slt         t3, s1, a5
                  auipc       s5, 174062
                  slt         a6, s5, a4
                  xor         a0, t1, s8
                  and         t0, t6, zero
                  nop
                  xor         s1, ra, t3
                  or          a7, s1, tp
                  slti        t3, s2, -313
                  sltiu       gp, s3, 591
                  nop
                  sltu        sp, s0, s11
                  addi        a4, s8, 1844
                  slt         a1, tp, a6
                  srli        a7, s4, 5
                  srai        t4, t1, 30
                  srl         t0, a2, s5
                  srli        sp, a6, 8
                  lui         s2, 735549
                  srl         t1, s11, s9
                  srai        a3, s11, 24
                  andi        s6, t1, -1822
                  andi        s11, a2, -1431
                  slti        zero, sp, -1408
                  sltu        a0, s8, sp
                  srl         tp, s6, t4
                  sub         s11, t6, gp
                  xor         s2, t2, zero
                  sltu        s1, a7, s4
                  ori         s5, t6, -359
                  ori         zero, s1, 1110
                  srai        zero, s4, 12
                  srai        t0, gp, 28
                  addi        a3, t2, 1098
                  xor         t1, t6, s7
                  sra         gp, s0, s1
                  or          s1, s1, a3
                  sll         s2, s5, t4
                  srli        t2, s8, 18
                  xor         a1, a5, s11
                  ori         s7, sp, -715
                  slli        s5, s6, 13
                  sra         a2, a4, a5
                  xor         zero, ra, a5
                  sra         s11, s6, ra
                  nop
                  addi        s0, zero, 1321
                  or          tp, s1, s9
                  sltu        ra, ra, s6
                  sra         a5, a7, t1
                  addi        s4, gp, 815
                  slt         t3, a2, s4
                  slti        gp, s4, 536
                  andi        sp, s2, 547
                  srai        a6, t5, 5
                  lui         a2, 186339
                  sltiu       t2, t6, 474
                  and         t3, a0, s0
                  srli        zero, s6, 22
                  xor         s0, s2, s11
                  xori        t3, s4, 1707
                  add         s6, t5, sp
                  nop
                  slti        s3, gp, 1809
                  auipc       t1, 223788
                  add         t3, gp, gp
                  andi        zero, t5, 1954
                  or          gp, s2, s2
                  or          a5, s7, t1
                  ori         gp, a4, -2026
                  sltu        ra, t1, gp
                  slt         a3, t0, a1
                  srli        zero, s9, 12
                  sra         a1, a3, s2
                  srl         a5, a5, a2
                  sltiu       zero, s7, -1318
                  slti        a1, ra, 1744
                  or          tp, a0, s1
                  srl         a6, s11, s10
                  xori        a4, s6, -2026
                  or          t3, s0, s0
                  sltu        zero, a7, gp
                  ori         a0, s11, 857
                  ori         t0, t5, 259
                  slli        a4, ra, 3
                  add         s3, s5, s8
                  and         t3, a0, a7
                  addi        zero, s9, 1474
                  addi        s4, s1, -64
                  sub         zero, t0, t4
                  sub         a4, tp, t2
                  sub         s11, s8, a2
                  slt         zero, s10, s11
                  slli        s2, s11, 9
                  add         a2, sp, s5
                  auipc       s2, 343311
                  srli        zero, t1, 25
                  ori         tp, s5, -1385
                  srl         s5, s10, a6
                  auipc       a2, 3152
                  lui         a4, 23456
                  nop
                  addi        a2, s4, -1349
                  sltu        a2, a7, a3
                  sltu        t3, a2, a0
                  xor         s1, a4, s7
                  sltiu       gp, s8, -754
                  slti        s7, t4, 802
                  and         tp, a2, s11
                  srl         a3, t2, t6
                  nop
                  sltiu       zero, t3, 1869
                  sub         t3, a5, s3
                  srli        zero, a7, 12
                  sltu        s7, s6, s3
                  and         t2, a6, s11
                  xori        t2, s4, -1984
                  sltu        a7, a3, a4
                  srai        t3, t1, 22
                  srli        zero, s4, 13
                  sub         ra, a3, s9
                  slli        zero, t2, 29
                  auipc       tp, 573445
                  sub         s5, t6, s4
                  ori         s2, s8, 916
                  nop
                  ori         a0, s11, -974
                  srl         sp, s0, s8
                  sub         s11, a0, s11
                  sll         s3, a2, s4
                  sub         a2, t5, s7
                  or          t3, s6, zero
                  xor         a6, s6, t5
                  sll         a4, a1, sp
                  srl         t0, s8, t1
                  sltiu       t0, a6, -492
                  sltu        s11, a1, s10
                  or          tp, t4, s11
                  srl         s8, a5, s5
                  slti        zero, a4, 1894
                  lui         a0, 645507
                  xor         t0, t3, t0
                  sub         a7, a3, ra
                  ori         zero, s7, 1408
                  xor         a7, ra, sp
                  srli        a5, s3, 19
                  and         s11, t1, tp
                  sub         zero, s1, gp
                  sra         a4, a1, s8
                  sltu        gp, a1, gp
                  sll         zero, s3, t1
                  sll         zero, s5, s2
                  andi        a1, t5, 7
                  sra         s0, s6, a2
                  srli        a1, a3, 1
                  add         zero, s2, gp
                  sltu        s6, zero, t3
                  sltiu       s11, t3, 1479
                  xor         zero, s8, a7
                  add         s0, a1, tp
                  add         gp, ra, a0
                  slt         zero, t2, a3
                  xor         s3, zero, gp
                  sll         s2, s5, sp
                  srl         zero, s0, t1
                  sll         zero, t1, sp
                  ori         gp, ra, -1001
                  sltiu       a4, s5, -1788
                  lui         a3, 707542
                  addi        t4, a5, -342
                  sll         zero, s5, s2
                  and         s11, t1, a3
                  xori        a5, s5, 1990
                  andi        zero, s0, 125
                  sltu        s3, t6, a0
                  sltiu       s7, s2, -1367
                  sra         s8, s10, s11
                  slli        a4, zero, 27
                  sltu        a1, t5, t3
                  nop
                  nop
                  and         a2, s10, a1
                  xor         a1, s3, s0
                  xori        zero, s5, -1618
                  xori        s6, a7, -1581
                  auipc       t3, 500237
                  addi        s1, gp, -1430
                  or          s7, t3, t4
                  xori        s11, s6, 506
                  sra         tp, s7, s4
                  sltu        s2, a7, s5
                  auipc       s2, 356527
                  sub         zero, s5, a4
                  and         a3, a7, s9
                  auipc       t1, 165565
                  sltiu       a1, t3, -1731
                  xori        t1, t6, 337
                  nop
                  nop
                  addi        s2, a7, 178
                  slli        a0, s3, 31
                  sltiu       a2, s9, -1236
                  auipc       a1, 371940
                  ori         s5, a0, 2033
                  add         a0, a3, a4
                  addi        s0, s10, -526
                  xor         t4, s1, a5
                  sub         s1, t1, gp
                  andi        s6, a3, 1891
                  srai        gp, s11, 15
                  sra         a5, t2, a4
                  slti        zero, s8, -1270
                  and         a6, a4, a3
                  sll         sp, t3, a3
                  srl         a0, t5, ra
                  slt         s6, s4, s5
                  sub         s9, sp, s8
                  slt         s0, a4, s8
                  and         s1, s7, t2
                  add         zero, s8, s6
                  addi        s1, gp, 1043
                  xori        zero, s9, 792
                  lui         a3, 545194
                  slt         zero, s1, a0
                  and         sp, gp, s4
                  auipc       s2, 768437
                  slti        a0, zero, -1341
                  lui         s2, 931552
                  srli        s9, t3, 16
                  add         s6, a6, s4
                  xor         s4, s1, sp
                  srli        t4, s0, 0
                  addi        t2, t1, 1087
                  sltiu       s2, zero, 1981
                  or          a7, s10, t3
                  sll         a1, sp, a0
                  or          zero, t0, t1
                  slli        s8, zero, 30
                  add         tp, a5, s6
                  nop
                  nop
                  slli        s4, s7, 2
                  ori         t1, t5, 1066
                  srli        s2, t3, 21
                  srl         a3, gp, a7
                  sub         a0, a7, a6
                  addi        s9, tp, 1490
                  srl         s6, ra, s7
                  lui         t2, 62982
                  slli        s2, t1, 14
                  xori        zero, sp, 552
                  sra         a3, t3, a0
                  addi        s4, a4, -142
                  and         s6, a5, a0
                  or          a5, a2, a3
                  srai        sp, s5, 22
                  auipc       s4, 59468
                  or          t1, ra, s7
                  and         a4, tp, t6
                  auipc       sp, 67485
                  add         a0, a0, a6
                  add         a6, s6, s11
                  xori        s8, s6, -1292
                  srl         a2, t6, ra
                  sll         t3, t3, s0
                  andi        a4, a5, 1485
                  slti        zero, s11, -1350
                  sra         t0, a5, s5
                  sra         gp, t3, s5
                  or          t0, t0, s2
                  srai        a7, zero, 15
                  slli        a1, a6, 27
                  srai        s11, s4, 27
                  srai        zero, a0, 22
                  slti        a7, s2, -636
                  nop
                  srli        a7, s7, 15
                  add         zero, s0, s5
                  ori         a4, zero, -1708
                  nop
                  srl         s1, t3, a4
                  sub         zero, s11, a5
                  xor         zero, t6, gp
                  lui         a0, 496704
                  addi        zero, s9, 1222
                  or          s7, s4, s0
                  sra         s4, a2, s11
                  slti        a0, a4, 563
                  xori        s8, gp, -1846
                  slti        sp, a5, -1608
                  auipc       zero, 501506
                  slt         s5, s11, s11
                  xori        zero, t3, 54
                  auipc       zero, 947212
                  andi        s1, s4, 1479
                  srai        s5, t6, 15
                  slli        s2, ra, 16
                  lui         a7, 830165
                  addi        t0, s2, -23
                  add         s11, a4, a7
                  sll         ra, a6, s2
                  sltiu       s11, s1, 1218
                  sll         s6, s7, t5
                  lui         s5, 31402
                  auipc       s3, 920126
                  xor         gp, zero, a5
                  srl         t3, s1, s6
                  sll         ra, a7, t5
                  srl         gp, s10, s3
                  sub         a1, zero, t4
                  srli        s11, a6, 31
                  auipc       s0, 1048033
                  srl         t2, s4, sp
                  addi        t4, t5, -337
                  slt         a6, sp, a1
                  srai        zero, t3, 11
                  slli        zero, s8, 6
                  sra         a5, s1, s0
                  lui         gp, 944889
                  sltu        t1, s7, s3
                  slt         s2, t0, ra
                  sltiu       a5, zero, -906
                  srl         t3, tp, s7
                  auipc       s8, 614176
                  lui         sp, 98493
                  sra         t3, a1, t3
                  or          gp, s6, t4
                  addi        t3, t2, -1103
                  auipc       zero, 89437
                  xor         a0, a3, a5
                  sra         s11, s10, s11
                  slt         s11, t3, s4
                  srl         s1, s4, s0
                  ori         zero, s10, 471
                  sltu        a2, a0, s3
                  srai        s4, t6, 23
                  srl         a0, ra, sp
                  add         zero, a3, s6
                  slti        a2, s9, -919
                  andi        s1, zero, -259
                  add         s5, a2, s1
                  sra         ra, tp, a5
                  slti        sp, a0, -766
                  slti        a0, t6, -920
                  srai        s8, s9, 11
                  slli        zero, a5, 21
                  sll         t1, s3, s0
                  add         s11, t4, sp
                  auipc       a3, 905707
                  sltu        zero, s1, sp
                  addi        s2, a3, -116
                  srai        s9, s6, 25
                  slt         a4, s7, a3
                  or          a3, s6, a5
                  slti        a6, t1, -1334
                  sll         t4, s11, t4
                  addi        zero, s9, 598
                  xori        s3, s10, -1617
                  slti        t1, t6, -1242
                  slt         s0, s9, t6
                  add         s2, zero, tp
                  addi        ra, s11, 315
                  addi        s3, t5, -826
                  nop
                  andi        t4, a7, 1553
                  slti        s0, s2, -1376
                  ori         gp, s5, -223
                  srai        t3, s10, 31
                  sra         zero, a1, t1
                  andi        s1, t3, 1526
                  srl         a5, ra, a2
                  andi        ra, a6, 1080
                  andi        a5, zero, -1363
                  sra         s7, t3, sp
                  sub         s6, s11, zero
                  auipc       a2, 626466
                  srl         s9, a6, s4
                  nop
                  lui         a1, 543608
                  sltu        zero, gp, s10
                  andi        zero, a6, -496
                  or          zero, a2, s10
                  sll         a3, a1, s2
                  addi        ra, t1, 959
                  auipc       s3, 532920
                  srl         a0, s9, t6
                  sub         s5, s6, s0
                  slti        a6, t1, 1936
                  sub         s2, t5, t2
                  srl         a5, s7, s4
                  sll         a3, s6, a1
                  add         a2, sp, s6
                  auipc       s7, 774978
                  slt         s1, t3, s2
                  sub         s3, t1, s6
                  nop
                  sltiu       s3, a1, 1734
                  slli        t3, zero, 22
                  and         s1, s1, t2
                  sltu        s9, a5, t4
                  nop
                  slti        s8, t3, 120
                  sub         gp, t3, s11
                  or          t1, t0, s1
                  sra         zero, sp, t4
                  ori         t1, t6, -1421
                  ori         zero, tp, -1813
                  slli        a5, a6, 3
                  sub         gp, s6, s4
                  lui         zero, 616861
                  srl         s11, s2, a6
                  andi        zero, a7, 264
                  ori         t1, s7, 1113
                  and         zero, s1, t1
                  srli        t3, a4, 0
                  sll         a5, a6, a1
                  sra         zero, a4, t6
                  sub         ra, s8, t6
                  sll         a6, a5, s5
                  and         t2, a3, s4
                  slti        t4, t1, -569
                  sub         a5, t2, s0
                  sll         t4, s4, s6
                  and         a0, t4, sp
                  xori        s6, a5, -1930
                  and         s11, s0, a6
                  ori         ra, a5, 134
                  and         s6, s11, zero
                  sub         s11, a3, t6
                  ori         a7, s3, 793
                  sltu        t3, a4, t6
                  xor         s7, s4, s3
                  ori         t3, s8, -1457
                  add         gp, s10, a6
                  ori         s2, a2, -1251
                  sub         a3, s2, s3
                  srli        a4, a6, 1
                  auipc       t2, 160928
                  sll         a3, a1, s3
                  slt         s8, a6, s6
                  sra         a0, s1, s0
                  sra         s7, t4, a3
                  lui         s4, 467680
                  sltu        zero, s8, ra
                  lui         s4, 588993
                  srli        s8, t6, 30
                  srl         s9, s6, gp
                  sltiu       t3, t1, 146
                  addi        zero, zero, 1536
                  sub         s11, a4, t0
                  srli        s2, s10, 27
                  slt         t0, a1, s1
                  slt         ra, s2, tp
                  ori         tp, s2, 562
                  srli        s8, s11, 23
                  auipc       zero, 239910
                  and         t2, s0, s7
                  srli        s9, s5, 23
                  xori        t3, a6, 182
                  ori         a1, t1, 710
                  slli        a2, t5, 14
                  and         a6, a2, t3
                  srli        s9, a1, 12
                  slli        zero, tp, 26
                  sltiu       t4, gp, -1120
                  srli        zero, a0, 28
                  lui         s7, 404041
                  srai        t1, gp, 22
                  srai        t0, t4, 28
                  slti        t4, a5, 1886
                  and         t1, a5, ra
                  auipc       a5, 751813
                  slti        s9, t1, 1247
                  sra         t0, a1, a0
                  sltiu       a6, a6, -1667
                  ori         gp, t2, -402
                  srli        t4, a6, 1
                  add         t1, s1, s3
                  addi        sp, t0, 1421
                  srl         a0, s2, a1
                  ori         s7, t6, 1587
                  xori        t2, s10, 1812
                  srl         t4, t3, gp
                  xor         t3, t3, t4
                  nop
                  add         s4, s6, gp
                  and         gp, t3, s7
                  or          tp, s1, t6
                  sra         zero, s9, t1
                  slt         s0, t2, t0
                  srli        s3, s1, 14
                  nop
                  srl         t1, s4, s5
                  sub         s5, a5, t3
                  slti        gp, t4, 873
                  auipc       a4, 395833
                  slti        s4, ra, -1257
                  srai        s11, sp, 7
                  sll         a3, ra, s4
                  ori         s7, t5, -803
                  xor         s0, s6, a1
                  xor         s4, s6, s9
                  srl         s9, t6, zero
                  nop
                  nop
                  auipc       ra, 402372
                  srai        a0, a3, 31
                  slli        a3, t0, 8
                  sltu        a4, tp, a2
                  srai        t0, a2, 23
                  auipc       t3, 569434
                  slli        s11, s8, 11
                  nop
                  nop
                  andi        s8, t4, -711
                  srl         s0, s2, s7
                  sll         t1, a0, a6
                  add         a3, s2, t5
                  addi        s7, ra, 459
                  srl         s0, t5, s11
                  andi        zero, a6, -1865
                  addi        zero, s10, -1754
                  auipc       a4, 831280
                  or          gp, s0, gp
                  srl         s4, s2, ra
                  lui         zero, 1010162
                  srai        a7, ra, 19
                  sltiu       gp, tp, -1596
                  ori         a5, t0, -654
                  slt         t0, s4, s8
                  addi        zero, a7, -1050
                  nop
                  sra         t3, t3, t2
                  slt         s8, t4, s1
                  xor         a2, s5, a2
                  slti        t2, t5, -148
                  and         s7, s6, s10
                  ori         s2, s5, 1199
                  ori         s7, ra, -96
                  or          t0, s8, s2
                  add         s8, s11, s5
                  srai        sp, a7, 5
                  srl         t0, a3, s10
                  srai        a0, t2, 8
                  sub         t1, t2, s1
                  sub         s3, ra, s2
                  slti        gp, a3, -271
                  add         zero, t3, tp
                  or          a3, t5, s3
                  addi        s0, t2, -149
                  auipc       s0, 134927
                  srl         s3, a5, s8
                  xori        t0, a5, 1805
                  or          t2, s2, t1
                  sra         s5, s11, tp
                  sll         s9, a2, s7
                  or          s2, a5, tp
                  sltiu       s9, t6, 1673
                  srai        zero, t5, 6
                  sltu        a1, s11, t2
                  li         t3, 0x0 #start riscv_int_numeric_corner_stream_8
                  li         s9, 0x3f8b231
                  li         s1, 0x0
                  li         a3, 0x1
                  li         t1, 0x0
                  li         a2, 0x0
                  li         t4, 0x1
                  li         s8, 0x722e6a09
                  li         s11, 0x0
                  li         a1, 0x0
                  addi        zero, t5, 1516
                  sub         a3, ra, s11
                  sub         s0, t0, s7
                  add         gp, s11, a7
                  sub         s3, a1, s7
                  addi        zero, t5, -2016
                  sub         gp, s5, t0
                  lui         a3, 676785
                  addi        a0, t3, 528
                  addi        a3, s8, 1989
                  add         tp, a5, a1
                  addi        s8, s4, -227
                  addi        a5, t1, 1612
                  sub         zero, t2, t2
                  nop
                  sub         t3, tp, s4
                  lui         gp, 995014
                  addi        a6, s5, -1155
                  addi        t4, s4, 402
                  sub         t3, s5, a7 #end riscv_int_numeric_corner_stream_8
                  nop
                  lui         zero, 739189
                  addi        a1, s11, -754
                  or          zero, s5, t1
                  slti        s7, t3, -463
                  sltiu       s3, s0, -64
                  sra         zero, t4, t3
                  sll         a0, tp, a5
                  nop
                  sub         ra, a1, gp
                  sub         a2, a4, s11
                  slt         s6, s3, s0
                  srl         t4, zero, sp
                  sltu        a4, s2, a0
                  add         tp, a1, a2
                  auipc       s6, 489541
                  sub         sp, s5, s2
                  srai        ra, t6, 1
                  addi        s7, s3, 1057
                  xori        gp, s11, -407
                  xor         t0, t0, a0
                  xori        zero, s6, -1600
                  sub         t4, t1, a5
                  or          ra, s11, s3
                  and         s5, tp, t0
                  or          a5, t4, s10
                  lui         a6, 964052
                  ori         a0, a1, 365
                  sltiu       t4, sp, 715
                  xor         a5, t3, s5
                  slti        s4, a3, 1863
                  or          a2, s4, a1
                  nop
                  sltiu       s5, t4, 1267
                  xori        t2, zero, 93
                  ori         a7, a2, 279
                  sltiu       s5, t2, -297
                  lui         s2, 218740
                  addi        a6, a2, -1409
                  sll         gp, gp, t4
                  ori         a6, tp, 597
                  sra         a4, zero, t6
                  auipc       s6, 807918
                  sltu        s9, s6, a7
                  slli        a6, s3, 26
                  sltiu       s7, s9, -307
                  srl         a3, a3, a7
                  ori         a6, a4, -542
                  slti        zero, sp, -280
                  sll         zero, a0, s11
                  and         s7, s6, a7
                  xori        sp, gp, -419
                  srli        a6, gp, 21
                  auipc       s11, 219871
                  sll         gp, t0, gp
                  srl         s1, a3, a0
                  addi        tp, s2, 783
                  andi        ra, tp, -875
                  ori         a3, tp, 1358
                  add         t0, a3, a6
                  slli        zero, t1, 4
                  slli        gp, s4, 3
                  slti        a5, t0, -446
                  sltu        a3, s3, s0
                  ori         t1, a5, 1470
                  xori        a4, s10, -587
                  srli        zero, s10, 16
                  sltiu       zero, t4, -362
                  xori        a2, s8, 220
                  or          ra, s1, t1
                  srai        t3, s10, 7
                  slti        s6, ra, 1567
                  addi        zero, s0, -1264
                  sub         a6, s3, s9
                  slli        ra, s10, 1
                  srli        s8, ra, 16
                  lui         a6, 383866
                  srai        s3, t4, 17
                  sra         s3, t6, s5
                  srl         s11, a1, a3
                  srli        s8, s8, 27
                  sub         s3, s6, s0
                  add         s9, s7, t0
                  srl         s7, t0, s3
                  sll         s0, gp, s0
                  sra         sp, s6, a1
                  auipc       a5, 433822
                  sub         zero, s8, s10
                  andi        s9, gp, -817
                  and         t2, zero, s1
                  xori        s1, ra, -92
                  auipc       zero, 81418
                  srl         s1, s0, zero
                  auipc       a7, 906963
                  ori         t1, s5, -1113
                  lui         a5, 545937
                  andi        zero, s9, 1480
                  nop
                  sltu        s2, a1, t4
                  addi        zero, a5, -1804
                  xori        t4, s3, 724
                  slli        zero, s11, 15
                  slli        zero, t4, 11
                  xor         a2, t3, s6
                  auipc       a7, 392785
                  andi        s11, s9, 1747
                  srl         t1, tp, t2
                  xor         sp, s4, a3
                  andi        a7, sp, 1694
                  sub         s6, s9, a2
                  addi        s8, a0, -1532
                  ori         zero, t4, 477
                  sub         s2, sp, s2
                  addi        t4, t4, -1705
                  xori        a7, s3, 1901
                  andi        a3, sp, 1200
                  sub         a2, sp, t1
                  srl         a1, t0, s4
                  sra         a0, s9, s7
                  xori        gp, t0, 350
                  xor         zero, t5, zero
                  sltiu       gp, sp, 1351
                  srli        s11, a4, 29
                  srl         tp, a5, t4
                  sltu        tp, s10, s5
                  slti        a1, s9, -1816
                  sltiu       a5, a4, -108
                  xor         a1, zero, t5
                  ori         zero, t2, 531
                  addi        zero, s0, -1408
                  srl         a3, t5, s11
                  lui         gp, 1048207
                  xori        s4, t6, -796
                  add         s6, a0, a6
                  xor         a4, s8, sp
                  sra         a0, s11, s2
                  srai        s4, s7, 22
                  sra         s6, t6, a4
                  sltiu       s7, a5, -1709
                  or          t0, t0, s10
                  or          s8, ra, s3
                  xor         tp, s9, s10
                  sltiu       t0, t6, 1113
                  or          a5, a2, s2
                  and         t1, s10, zero
                  addi        tp, a4, -1784
                  slti        s9, s8, -205
                  sltu        s9, a0, a1
                  auipc       a2, 760948
                  and         zero, a5, s9
                  sltiu       zero, a3, -149
                  slli        s8, s2, 8
                  ori         t1, s8, 893
                  auipc       s0, 942097
                  ori         s3, s3, 123
                  srli        a1, s4, 0
                  slti        a1, gp, -1820
                  slti        a6, a6, -1174
                  lui         s0, 193872
                  addi        t2, s1, -1237
                  slli        s1, s2, 16
                  sll         s8, zero, s1
                  lui         gp, 607431
                  nop
                  add         a5, s1, s11
                  ori         s1, t2, 1171
                  srl         sp, s4, s7
                  srli        s7, gp, 13
                  srl         a4, t0, a1
                  sll         a6, t3, t5
                  sll         zero, s6, s7
                  auipc       s9, 568769
                  auipc       zero, 14615
                  sra         t3, a5, s6
                  srl         t0, a4, ra
                  xori        a1, s3, 165
                  xor         s9, s5, s4
                  lui         s0, 996884
                  sub         s6, s11, a7
                  slt         zero, s9, gp
                  sltiu       a7, sp, -1047
                  auipc       t4, 558354
                  slt         s4, t0, t4
                  slt         gp, s2, s10
                  sltu        s8, t2, gp
                  ori         zero, t4, 542
                  xor         a5, tp, a1
                  and         zero, a5, sp
                  sra         a0, a3, t3
                  sll         a2, s10, s4
                  sltiu       s1, s4, 633
                  add         gp, s5, t4
                  sltiu       t2, s1, -348
                  srli        a4, t6, 21
                  or          s9, t2, a1
                  sra         t2, t1, t4
                  sltiu       a4, s11, -1681
                  slli        zero, s10, 25
                  nop
                  sra         gp, a1, tp
                  sub         s11, t3, s1
                  srai        t2, s5, 12
                  sub         s7, a6, gp
                  sll         t1, t6, s1
                  xori        s11, a4, 1218
                  nop
                  sra         s11, a0, a7
                  nop
                  slli        t3, ra, 9
                  and         a0, zero, t1
                  add         tp, s5, s5
                  sltiu       a3, s8, 1847
                  slli        s11, t3, 27
                  slt         s7, s0, a2
                  srl         s9, s1, t0
                  or          sp, a1, a6
                  sub         s0, a3, a7
                  sra         s3, s7, s4
                  addi        s8, a2, 124
                  xor         zero, t1, s1
                  sltu        t3, a2, a7
                  andi        s7, a3, -657
                  srli        a4, s11, 24
                  and         s9, gp, a0
                  xor         zero, s2, tp
                  sub         a5, s8, a6
                  sra         s11, t1, s6
                  andi        tp, s7, -924
                  srl         s11, a7, s2
                  auipc       s3, 331960
                  srli        s8, a1, 22
                  xor         s2, tp, s11
                  auipc       s6, 139321
                  sra         zero, s6, a7
                  and         s6, t0, s10
                  srl         t4, s9, t0
                  srli        s9, s7, 9
                  ori         t1, t6, 209
                  sltu        a1, a3, a5
                  xor         a6, a6, a7
                  and         t0, zero, s0
                  slli        a3, s6, 15
                  slti        s0, a3, -578
                  slti        a1, t3, 301
                  sltu        s1, s9, zero
                  sll         s11, s2, s9
                  slli        s4, t3, 24
                  addi        a0, s1, 241
                  slti        zero, s10, -1961
                  nop
                  auipc       ra, 352267
                  sltiu       a5, t1, 727
                  slt         s7, ra, t0
                  srl         tp, gp, s0
                  srl         gp, t0, sp
                  xori        a1, a7, -1997
                  add         a4, s6, t3
                  add         t4, s2, s8
                  sra         s11, t1, s4
                  sltu        t2, a5, a3
                  slli        s1, sp, 4
                  xor         a3, s1, a3
                  sll         sp, t3, t2
                  srli        s11, a1, 27
                  slti        t1, s7, 1208
                  slti        zero, s10, 1929
                  xor         t0, s4, t3
                  sll         zero, a3, t5
                  nop
                  auipc       s6, 196942
                  slt         a3, s0, tp
                  srai        t1, a2, 7
                  slti        s4, s10, -946
                  sub         s9, a1, t4
                  srai        a2, a0, 8
                  srli        ra, sp, 16
                  slt         gp, s8, a2
                  srli        t3, t1, 0
                  srl         zero, a7, a4
                  sra         s9, t1, s5
                  ori         a6, gp, 199
                  slti        s9, t2, 1694
                  srai        t0, t6, 8
                  nop
                  auipc       s6, 1030640
                  srl         a7, t1, s5
                  sub         gp, t2, s0
                  and         gp, t5, gp
                  slli        s0, a2, 7
                  lui         zero, 441086
                  ori         s3, a5, 721
                  or          t3, sp, t0
                  andi        s8, a5, 1544
                  slli        a2, zero, 10
                  andi        s0, tp, 1673
                  srai        a3, s3, 5
                  slli        s2, a2, 12
                  add         s5, s8, ra
                  sll         zero, t5, s9
                  slti        s9, t6, -630
                  or          a2, s1, s8
                  slt         a4, s11, a4
                  sltu        t2, ra, s3
                  and         s7, s11, t2
                  and         tp, s3, t3
                  sltiu       zero, s2, 1121
                  lui         zero, 300756
                  srai        a2, t2, 28
                  andi        sp, a2, 1072
                  sltiu       s8, s11, 20
                  and         s7, a1, a3
                  slt         a1, s10, a3
                  sltiu       a1, s10, -1740
                  slli        a3, t1, 7
                  ori         tp, s4, 1040
                  ori         a0, s3, 602
                  or          a0, tp, a0
                  sra         s1, t5, a6
                  srl         a4, t2, t2
                  add         tp, t5, a5
                  and         s2, s9, s9
                  xor         s8, t0, a2
                  addi        s11, s4, -1418
                  xor         a4, a0, a2
                  sltu        s9, s3, s4
                  and         sp, s8, a7
                  add         s7, a6, a5
                  xor         t2, s6, s5
                  sltu        a4, t6, s11
                  lui         gp, 33894
                  xori        t2, a7, 549
                  srli        s6, s8, 23
                  and         ra, s2, gp
                  ori         t1, t4, -1523
                  li         t4, 0x4727f903 #start riscv_int_numeric_corner_stream_12
                  li         t1, 0x0
                  li         s1, 0x1
                  li         t3, 0x0
                  li         s11, 0x3339d8b6
                  li         a1, 0x164fd054
                  li         gp, 0x1
                  li         a3, 0x1
                  li         s9, 0x1
                  li         s3, 0x0
                  nop
                  sub         t4, t4, s6
                  addi        t4, gp, -114
                  sub         s8, s7, t0
                  sub         gp, s0, t6
                  lui         s8, 878305
                  addi        tp, a3, -1960
                  sub         tp, ra, t0
                  addi        s4, a7, 568
                  addi        zero, ra, -1252
                  lui         a4, 195819
                  nop
                  nop
                  lui         s4, 645702
                  addi        a5, sp, 1085
                  add         a0, t5, t3
                  add         a4, s3, tp
                  addi        s9, s7, -1688
                  nop
                  nop
                  add         s7, t6, t1
                  addi        zero, t1, 1417
                  addi        s5, zero, 129
                  nop
                  sub         a1, s6, a4 #end riscv_int_numeric_corner_stream_12
                  xori        a1, t3, 1439
                  slti        s5, a3, 1743
                  lui         s8, 76043
                  auipc       s9, 144900
                  sltu        t0, a4, a2
                  slli        t2, a5, 19
                  and         s11, t1, s9
                  xor         s11, s1, a6
                  sltiu       a7, a0, 443
                  xor         s8, sp, s5
                  sll         t1, s11, a3
                  ori         a7, s6, 1397
                  sra         a3, s9, t1
                  xori        s8, s0, 840
                  sltiu       zero, s7, -1319
                  sra         s3, a5, t5
                  sltu        s0, s2, t2
                  slt         a3, s0, s9
                  sub         zero, a5, gp
                  andi        t3, a2, -936
                  andi        t0, s8, -1815
                  add         tp, a7, s4
                  srl         s4, a1, t3
                  add         s3, s4, t1
                  srli        tp, ra, 7
                  sltu        zero, a7, t6
                  lui         sp, 319373
                  xor         s7, s2, tp
                  sltiu       s6, t1, 1736
                  srl         a7, s10, a6
                  slli        s4, gp, 16
                  srli        a2, s9, 3
                  xor         s5, s3, t5
                  slli        a6, a2, 25
                  slli        a4, a4, 2
                  sub         s6, t2, a2
                  andi        t0, tp, -275
                  lui         t4, 533028
                  addi        zero, s0, 151
                  slti        a6, a2, 899
                  auipc       a3, 1048435
                  ori         s9, a1, 1655
                  sltiu       a6, ra, 855
                  ori         gp, a4, -1808
                  sll         s9, s8, s0
                  andi        a4, a6, -1334
                  and         a6, s7, t2
                  sub         a0, zero, s5
                  slt         t1, a1, s2
                  sra         s4, s2, s6
                  nop
                  xori        s2, s8, -1123
                  lui         t4, 551594
                  lui         a7, 252390
                  and         gp, a1, t5
                  sltiu       t0, a0, 1207
                  sltu        s4, s4, s7
                  nop
                  srli        ra, a0, 16
                  slli        zero, s6, 11
                  srai        zero, s10, 30
                  andi        tp, tp, 1994
                  or          zero, t4, s6
                  slti        s0, s0, -1776
                  sll         s4, zero, s9
                  lui         s3, 677192
                  slti        a0, a4, 517
                  or          a2, a2, a4
                  auipc       s1, 472231
                  sra         s5, t0, a2
                  and         s1, t6, tp
                  auipc       s2, 844949
                  ori         gp, tp, 595
                  slli        t0, s5, 28
                  li         t4, 0x38807e79 #start riscv_int_numeric_corner_stream_21
                  li         t3, 0x0
                  li         s11, 0x0
                  li         a6, 0x0
                  li         s9, 0x5c054027
                  li         s1, 0x0
                  li         a1, 0x0
                  li         s8, 0x0
                  li         s5, 0x0
                  li         a5, 0x0
                  addi        ra, zero, -734
                  nop
                  sub         a7, s7, s1
                  sub         ra, sp, s1
                  addi        s7, ra, -1050
                  sub         t3, s6, s8
                  add         t4, a6, s2
                  sub         a7, a4, s9
                  lui         a7, 691389
                  sub         s3, t3, s5
                  nop
                  add         t1, a1, a2
                  addi        t0, s7, -1892
                  lui         zero, 507986
                  add         a1, a7, a2
                  nop
                  addi        zero, gp, -1303
                  sub         t0, t1, zero
                  sub         t1, s3, a1 #end riscv_int_numeric_corner_stream_21
                  and         zero, s1, sp
                  srai        zero, s0, 10
                  sltiu       a5, s7, 987
                  andi        a5, ra, -565
                  slti        a6, s9, -455
                  nop
                  or          s5, a3, t4
                  sll         a6, t1, t3
                  add         zero, s7, s6
                  addi        s11, a0, -1707
                  addi        zero, a5, -1370
                  sll         tp, zero, a2
                  or          s11, t0, t5
                  srl         sp, t1, t2
                  andi        zero, s0, -1579
                  nop
                  sltu        t2, a7, s0
                  sll         tp, s4, t6
                  srl         a3, t0, a7
                  xori        zero, s2, -2038
                  srli        s1, s9, 8
                  sub         a3, a4, s3
                  add         s1, t3, a5
                  sub         s3, a7, gp
                  sub         s3, s10, t5
                  slli        a6, a1, 3
                  and         a7, s0, gp
                  slti        s1, s9, -466
                  slt         t0, sp, s11
                  auipc       zero, 157756
                  xori        t1, t3, -551
                  sll         t4, a4, a5
                  slli        s8, t1, 18
                  sll         t0, t6, t6
                  slt         zero, t1, s5
                  sll         t0, t6, s0
                  sub         ra, a5, s8
                  ori         s2, a3, -595
                  sra         t2, gp, s1
                  srai        a5, sp, 17
                  srai        s4, a2, 27
                  srl         s0, gp, s7
                  ori         t2, t2, -1189
                  ori         t4, s9, 1981
                  add         a4, t0, t0
                  or          s1, s9, a6
                  srli        zero, s3, 3
                  sra         s5, s10, s3
                  and         a2, gp, a0
                  sra         s4, t5, s1
                  xori        s9, tp, -1604
                  add         zero, s3, t6
                  sub         s4, s11, a7
                  srl         a3, ra, s10
                  srl         s3, a7, s10
                  auipc       sp, 498842
                  sltiu       s8, zero, -467
                  sltiu       s4, t1, -229
                  nop
                  srai        gp, s0, 13
                  nop
                  ori         gp, a0, -666
                  slli        ra, s8, 2
                  sltiu       s3, ra, -260
                  srl         a6, t6, t5
                  addi        a1, a4, 1547
                  xor         t0, a6, s0
                  andi        t2, zero, -1649
                  add         a1, t4, zero
                  auipc       a4, 64697
                  srai        s11, gp, 6
                  xori        ra, s10, -1070
                  lui         t1, 217933
                  sra         tp, s9, tp
                  add         s0, s4, t1
                  xori        zero, a6, -1103
                  ori         ra, s0, 62
                  auipc       a0, 255253
                  addi        s3, a2, 1552
                  ori         zero, zero, -1409
                  srai        t0, t0, 6
                  lui         s9, 802232
                  sra         s0, s3, s7
                  lui         t2, 922376
                  addi        zero, a0, 1838
                  sltiu       a6, t1, -257
                  xor         tp, s5, tp
                  nop
                  lui         a0, 144002
                  auipc       s0, 59888
                  lui         t1, 354118
                  slt         a7, s2, sp
                  sll         s1, s10, gp
                  slt         a2, t5, t5
                  add         t0, s8, tp
                  lui         s4, 179780
                  lui         zero, 724673
                  sra         a4, s4, t5
                  srl         a0, s4, t5
                  addi        s2, s6, 1165
                  slli        sp, t1, 13
                  lui         a1, 24351
                  xori        s11, t5, -1193
                  auipc       s2, 401093
                  sra         s11, s6, s2
                  add         tp, a2, a2
                  sub         s8, a7, t0
                  and         tp, s9, s8
                  nop
                  sub         a7, a3, a7
                  sltiu       a3, tp, -1675
                  sltiu       t2, s3, -1790
                  srai        a0, s11, 26
                  sltu        a1, gp, a0
                  slti        s8, a2, -1938
                  slt         a5, a7, s2
                  sltiu       a4, a6, -43
                  srli        s4, t2, 26
                  xor         a4, tp, sp
                  lui         ra, 1022068
                  addi        a4, s1, -394
                  sltu        s9, s9, s7
                  sub         gp, s6, t0
                  and         s0, s5, s11
                  slti        s8, t0, -198
                  srl         ra, a7, s10
                  sra         s7, t0, t0
                  and         t0, zero, t2
                  and         s1, a6, zero
                  srl         s5, a0, t3
                  addi        s0, s7, 426
                  srl         s1, t5, gp
                  andi        s1, ra, 1609
                  or          a1, s1, t1
                  sub         a1, t3, t5
                  srai        a5, t2, 16
                  srai        s9, s2, 6
                  srl         s11, t5, t1
                  srli        a1, zero, 25
                  sll         t4, s0, s2
                  addi        s2, s10, 1037
                  srli        s2, t2, 21
                  sra         s7, t0, ra
                  sltu        tp, gp, s11
                  ori         a4, s8, 1630
                  sll         t0, s7, a7
                  slli        s7, ra, 0
                  slt         zero, s3, a5
                  slt         zero, s9, a2
                  sltu        a4, s6, s1
                  slli        t2, a0, 31
                  sltiu       ra, ra, 1603
                  sltu        s2, sp, t6
                  slt         s6, t3, s10
                  auipc       t0, 416482
                  sll         sp, a1, a4
                  sltu        a3, a0, s6
                  auipc       a5, 950834
                  sll         a1, s0, s0
                  srl         s9, t2, s3
                  slli        sp, s10, 4
                  sltu        s7, s7, t4
                  sltu        a6, s9, s5
                  nop
                  nop
                  add         zero, s1, tp
                  sltu        a0, s2, s4
                  xori        t3, sp, 593
                  slli        s9, s0, 15
                  srli        t0, a0, 6
                  nop
                  sltiu       zero, t2, 1562
                  sub         t1, s11, s7
                  slti        t2, a1, -380
                  auipc       ra, 537782
                  and         t2, t5, t5
                  ori         a0, a5, -788
                  slti        s2, s5, -1979
                  slli        s5, s0, 21
                  srai        s9, s9, 25
                  and         zero, s8, s8
                  sub         a0, tp, t4
                  sltiu       a2, s4, -1441
                  sll         s6, a5, s8
                  ori         t2, tp, 1647
                  sltu        t0, t6, s10
                  auipc       t2, 269150
                  sra         zero, a1, t1
                  xori        tp, t5, 976
                  auipc       a2, 244724
                  slti        zero, t1, -494
                  slt         s9, tp, s2
                  ori         a3, a3, 443
                  sub         a0, s0, t6
                  sll         gp, a7, s9
                  xori        s8, t3, -714
                  nop
                  slli        tp, a1, 2
                  slti        s11, s11, 639
                  lui         sp, 875303
                  slti        a4, t0, 370
                  slt         s7, s1, t2
                  slt         a4, t2, t4
                  xor         s2, s1, zero
                  xori        s2, a0, 24
                  slti        t0, t5, -35
                  srai        t4, t5, 16
                  srl         s0, s11, s5
                  srli        s11, t3, 27
                  lui         gp, 1018017
                  sra         t2, s2, s11
                  auipc       s5, 234935
                  nop
                  xori        zero, sp, 767
                  srai        a2, a6, 23
                  slt         a2, t3, s3
                  nop
                  or          t2, s2, t2
                  xor         s7, zero, a7
                  xor         s0, t6, a5
                  srli        t1, s11, 17
                  sltu        zero, s7, t3
                  sltu        zero, s11, t0
                  andi        t0, t1, -342
                  ori         s11, t0, -1476
                  srli        a7, a3, 27
                  xori        tp, s8, -351
                  or          sp, s5, s1
                  sub         a6, t2, a6
                  slti        s11, zero, 1463
                  auipc       s2, 763963
                  addi        s3, t3, -206
                  slti        s4, t5, 988
                  andi        a4, ra, 1512
                  sub         t1, t5, tp
                  andi        sp, a1, -800
                  xor         s11, t6, s7
                  nop
                  addi        t0, a4, -85
                  addi        a3, a0, 414
                  lui         s5, 834571
                  slti        t3, s5, 432
                  slt         a5, s11, a5
                  sltiu       t4, t4, 521
                  sltu        sp, a0, s7
                  xori        zero, t2, 1119
                  nop
                  lui         s7, 875035
                  add         a7, s10, a5
                  or          zero, s2, sp
                  srai        a0, gp, 25
                  andi        t1, s7, 1426
                  sra         a1, a4, s9
                  or          tp, t4, s1
                  slli        t3, tp, 21
                  sltiu       a4, a3, 1338
                  xor         gp, a5, a5
                  slt         a1, a3, t0
                  lui         a7, 528216
                  xor         zero, a0, t1
                  lui         zero, 498569
                  xori        s3, sp, 677
                  srl         t3, a3, a7
                  lui         s0, 450281
                  srli        zero, s2, 20
                  sra         a0, s9, a4
                  addi        a3, gp, -372
                  sll         a0, t1, a2
                  sltiu       gp, a5, -716
                  xori        s7, t3, -1340
                  srai        t1, s9, 1
                  srli        a0, zero, 8
                  sltu        a1, s6, ra
                  xori        zero, t6, -23
                  or          a5, t5, s10
                  lui         s9, 652437
                  sra         ra, s0, tp
                  add         s6, s8, s10
                  or          s8, t6, ra
                  sltiu       a1, t5, -1824
                  andi        a1, a6, -632
                  sub         t0, s8, ra
                  nop
                  slti        a4, s2, 494
                  lui         s1, 323104
                  srl         s3, t6, a6
                  andi        a4, s1, -992
                  auipc       zero, 198657
                  andi        a5, a3, -479
                  auipc       zero, 782028
                  sll         a2, a2, s5
                  srl         a2, t2, s0
                  srli        s7, s11, 17
                  slli        s0, gp, 14
                  xori        s0, ra, 152
                  lui         a2, 599082
                  slli        t0, t6, 24
                  sltiu       s3, t4, 1226
                  slt         a0, a1, s7
                  lui         a3, 842511
                  slti        zero, t6, -938
                  xori        s2, s0, 1755
                  xor         a3, a6, a4
                  ori         tp, a2, -1119
                  xor         ra, s10, t3
                  sll         tp, t4, t3
                  sltiu       s4, t5, -958
                  addi        s7, gp, 1646
                  slli        t2, a0, 12
                  slt         s4, s6, s4
                  srli        a6, s10, 5
                  or          zero, t1, s11
                  nop
                  sltu        t0, t4, t5
                  ori         t0, a3, 860
                  auipc       gp, 448808
                  srl         a5, sp, t0
                  slti        s3, s11, -1895
                  xori        t0, t2, 109
                  auipc       s9, 904608
                  or          zero, t3, s4
                  nop
                  lui         zero, 338937
                  lui         zero, 1787
                  lui         t1, 933082
                  slli        ra, t6, 9
                  slli        s8, s3, 3
                  xori        s0, t5, -783
                  or          s11, gp, t6
                  srl         s5, ra, s1
                  and         a7, zero, s6
                  or          t1, a7, a5
                  srl         sp, t4, s8
                  lui         t1, 539562
                  sra         tp, t3, t1
                  sub         a5, t3, gp
                  sra         gp, t5, s10
                  sll         s11, s2, s6
                  slli        t3, s9, 9
                  ori         a2, t3, -1564
                  lui         s6, 212537
                  sltu        zero, zero, t6
                  slti        a6, t4, -1890
                  xor         t3, zero, t6
                  auipc       s5, 1012006
                  srli        zero, a3, 27
                  nop
                  srai        s9, s11, 15
                  and         t4, s9, a7
                  or          a2, a1, s2
                  slli        a4, s1, 3
                  or          s0, tp, gp
                  and         a4, t6, t4
                  srl         a4, zero, s10
                  nop
                  srl         s0, tp, s6
                  sll         ra, a7, s4
                  srli        s7, t3, 11
                  add         zero, a5, t6
                  nop
                  ori         s5, a0, -2041
                  ori         a0, s11, 732
                  ori         a7, s9, -1802
                  srl         a3, zero, s4
                  slti        a0, t5, -1216
                  xori        s4, s11, -1097
                  ori         s3, a6, 1234
                  sltiu       a2, t5, 1538
                  slt         s3, s7, s2
                  srli        tp, t3, 24
                  xor         a1, t1, a7
                  xori        s5, s11, -1324
                  sltu        zero, s4, t4
                  srl         a3, a6, sp
                  srai        zero, s1, 12
                  andi        t1, t5, 1559
                  xori        t4, s4, -37
                  sra         a6, t5, zero
                  nop
                  slti        zero, ra, -293
                  srai        s0, s11, 28
                  xori        zero, s7, -1883
                  sll         a7, s10, s11
                  lui         a6, 651585
                  slt         a4, s2, a4
                  sra         s9, s1, s3
                  or          t2, t2, t2
                  addi        a0, s11, 1913
                  auipc       s7, 1029187
                  srli        t1, s4, 28
                  or          t1, a4, a1
                  sll         a4, a2, t6
                  xori        a2, a2, -2003
                  srl         s11, sp, a1
                  auipc       a2, 131223
                  or          a1, s0, a1
                  srl         t1, s6, s7
                  slli        zero, sp, 31
                  andi        t3, t0, -875
                  lui         s7, 723946
                  slti        a2, a4, -567
                  or          a3, gp, gp
                  xor         tp, a3, a6
                  xori        a0, gp, -1985
                  and         s4, a4, a2
                  slt         t2, a2, a2
                  xor         s7, s5, s10
                  nop
                  andi        tp, t5, 1345
                  sltiu       a0, t1, -875
                  srli        zero, a7, 7
                  xor         zero, sp, s8
                  sltu        sp, s2, t0
                  xor         s11, s4, s3
                  nop
                  slti        s2, a1, -2028
                  nop
                  srl         a2, tp, s1
                  sub         s4, t2, s2
                  add         zero, s1, s3
                  andi        s5, a5, 1700
                  sra         s4, s0, s1
                  nop
                  sra         tp, s7, a0
                  auipc       s0, 622488
                  auipc       gp, 364890
                  and         tp, sp, a6
                  sltu        a2, a6, s2
                  srl         t3, ra, s7
                  addi        a7, s4, -1762
                  auipc       a3, 597534
                  andi        s9, ra, 565
                  ori         s5, a5, -1337
                  ori         a4, sp, -83
                  sltu        s0, t2, s10
                  sub         zero, ra, s7
                  or          t3, s10, s10
                  add         zero, zero, a2
                  sltu        s4, s2, s10
                  lui         s5, 436204
                  slti        sp, gp, 1076
                  and         a6, a5, a7
                  sub         s5, a2, t4
                  xor         a2, sp, t0
                  or          a0, s7, t6
                  or          a4, s9, s9
                  sub         s6, s3, t3
                  sra         a3, a3, t0
                  andi        s6, s9, 1186
                  slli        ra, t3, 5
                  xori        s7, t2, -1714
                  xor         zero, s2, s10
                  srli        sp, s11, 1
                  slti        s9, a5, -328
                  slt         s0, sp, s9
                  nop
                  sll         s3, a3, s5
                  ori         zero, ra, -414
                  sltu        gp, s6, s4
                  sltu        s0, s3, t2
                  sltiu       zero, t0, -1947
                  srl         a2, a7, a7
                  sltiu       zero, zero, -1997
                  sltu        s4, a4, s3
                  or          s9, t5, a0
                  and         a6, s9, a2
                  ori         s1, a1, 98
                  sra         a7, s3, s6
                  srl         s6, s3, s7
                  and         s0, a7, a3
                  sub         a5, s0, ra
                  andi        s1, s8, 1616
                  lui         a2, 757156
                  slt         zero, t3, tp
                  andi        s0, s11, 252
                  add         zero, t4, a5
                  sltu        zero, a5, t4
                  sltu        s6, tp, s7
                  srai        t3, t6, 12
                  srl         a6, t2, zero
                  or          s11, zero, a3
                  xor         a3, s11, gp
                  srli        s1, a1, 24
                  xor         s11, a7, sp
                  or          s3, s5, a1
                  add         tp, ra, s0
                  auipc       s7, 326222
                  sltiu       s3, a4, 898
                  srli        s11, t6, 21
                  sub         tp, s3, gp
                  andi        s7, s11, 709
                  add         zero, s9, s5
                  or          s8, s10, a1
                  sltu        a0, a4, t1
                  andi        s7, sp, 1634
                  sra         zero, t1, a3
                  slti        a3, t6, 516
                  andi        s0, gp, 19
                  srai        s9, s6, 10
                  lui         tp, 792851
                  sra         s9, t4, a7
                  sra         sp, s5, a5
                  auipc       s7, 608163
                  sra         s0, s11, a1
                  sltiu       s9, t4, -91
                  sub         zero, s7, a1
                  sra         a1, s7, s4
                  or          zero, s8, s8
                  nop
                  slt         a7, s11, t3
                  nop
                  sub         s9, t4, a2
                  slt         a3, s10, s0
                  xor         s5, s6, a5
                  ori         zero, s10, 1291
                  add         s5, t0, s9
                  add         zero, a0, t5
                  sll         a7, a0, s10
                  srai        sp, s0, 0
                  sra         t4, s7, s2
                  andi        t1, a2, -493
                  xori        zero, t1, -1077
                  or          a7, t1, a6
                  and         zero, t4, s8
                  xori        ra, zero, 1911
                  slli        a2, s5, 30
                  srai        zero, gp, 20
                  sltiu       zero, zero, -1392
                  srai        tp, s11, 6
                  nop
                  srl         s7, t6, tp
                  sra         s0, s7, s9
                  srai        a6, s1, 16
                  sub         sp, t2, s1
                  slt         s5, s8, s2
                  auipc       s7, 118752
                  sub         a6, t0, s1
                  srl         s6, t4, tp
                  la x31, test_done
                  jalr x0, x31, 0
test_done:        
                  li gp, 1
                  ecall
write_tohost:     
                  sw gp, tohost, t5

_exit:            
                  j write_tohost

instr_end:        
                  nop

.section .data
.align 6; .global tohost; tohost: .dword 0;
.align 6; .global fromhost; fromhost: .dword 0;
.section .user_stack,"aw",@progbits;
.align 2
user_stack_start:
.rept 4999
.4byte 0x0
.endr
user_stack_end:
.4byte 0x0
.align 2
kernel_instr_start:
.text
.align 2
mtvec_handler:    
                  csrrw x26, 0x340, x26
                  add x26, x30, zero
                  1: addi x26, x26, -124
                  sw x1, 4(x26)
                  sw x2, 8(x26)
                  sw x3, 12(x26)
                  sw x4, 16(x26)
                  sw x5, 20(x26)
                  sw x6, 24(x26)
                  sw x7, 28(x26)
                  sw x8, 32(x26)
                  sw x9, 36(x26)
                  sw x10, 40(x26)
                  sw x11, 44(x26)
                  sw x12, 48(x26)
                  sw x13, 52(x26)
                  sw x14, 56(x26)
                  sw x15, 60(x26)
                  sw x16, 64(x26)
                  sw x17, 68(x26)
                  sw x18, 72(x26)
                  sw x19, 76(x26)
                  sw x20, 80(x26)
                  sw x21, 84(x26)
                  sw x22, 88(x26)
                  sw x23, 92(x26)
                  sw x24, 96(x26)
                  sw x25, 100(x26)
                  sw x26, 104(x26)
                  sw x27, 108(x26)
                  sw x28, 112(x26)
                  sw x29, 116(x26)
                  sw x30, 120(x26)
                  sw x31, 124(x26)
                  csrr x27, 0x300 # MSTATUS
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 31
                  bne x27, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x27, 0x341 # MEPC
                  csrr x27, 0x342 # MCAUSE
                  li x16, 0xb # ECALL_MMODE
                  beq x27, x16, ecall_handler
                  li x16, 0x2 # ILLEGAL_INSTRUCTION
                  beq x27, x16, illegal_instr_handler
                  csrr x16, 0x343 # MTVAL
                  1: la x31, test_done
                  jalr x1, x31, 0

ecall_handler:    
                  la x27, _start
                  sw x0, 0(x27)
                  sw x1, 4(x27)
                  sw x2, 8(x27)
                  sw x3, 12(x27)
                  sw x4, 16(x27)
                  sw x5, 20(x27)
                  sw x6, 24(x27)
                  sw x7, 28(x27)
                  sw x8, 32(x27)
                  sw x9, 36(x27)
                  sw x10, 40(x27)
                  sw x11, 44(x27)
                  sw x12, 48(x27)
                  sw x13, 52(x27)
                  sw x14, 56(x27)
                  sw x15, 60(x27)
                  sw x16, 64(x27)
                  sw x17, 68(x27)
                  sw x18, 72(x27)
                  sw x19, 76(x27)
                  sw x20, 80(x27)
                  sw x21, 84(x27)
                  sw x22, 88(x27)
                  sw x23, 92(x27)
                  sw x24, 96(x27)
                  sw x25, 100(x27)
                  sw x26, 104(x27)
                  sw x27, 108(x27)
                  sw x28, 112(x27)
                  sw x29, 116(x27)
                  sw x30, 120(x27)
                  sw x31, 124(x27)
                  la x31, write_tohost
                  jalr x0, x31, 0

illegal_instr_handler:
                  csrr  x27, 0x341
                  addi  x27, x27, 4
                  csrw  0x341, x27
                  lw x1, 4(x26)
                  lw x2, 8(x26)
                  lw x3, 12(x26)
                  lw x4, 16(x26)
                  lw x5, 20(x26)
                  lw x6, 24(x26)
                  lw x7, 28(x26)
                  lw x8, 32(x26)
                  lw x9, 36(x26)
                  lw x10, 40(x26)
                  lw x11, 44(x26)
                  lw x12, 48(x26)
                  lw x13, 52(x26)
                  lw x14, 56(x26)
                  lw x15, 60(x26)
                  lw x16, 64(x26)
                  lw x17, 68(x26)
                  lw x18, 72(x26)
                  lw x19, 76(x26)
                  lw x20, 80(x26)
                  lw x21, 84(x26)
                  lw x22, 88(x26)
                  lw x23, 92(x26)
                  lw x24, 96(x26)
                  lw x25, 100(x26)
                  lw x26, 104(x26)
                  lw x27, 108(x26)
                  lw x28, 112(x26)
                  lw x29, 116(x26)
                  lw x30, 120(x26)
                  lw x31, 124(x26)
                  addi x26, x26, 124
                  add x30, x26, zero
                  csrrw x26, 0x340, x26
                  mret

pt_fault_handler: 

.align 2
mmode_intr_handler:
                  csrr  x27, 0x300 # MSTATUS;
                  csrr  x27, 0x304 # MIE;
                  csrr  x27, 0x344 # MIP;
                  csrrc x27, 0x344, x27 # MIP;
                  lw x1, 4(x26)
                  lw x2, 8(x26)
                  lw x3, 12(x26)
                  lw x4, 16(x26)
                  lw x5, 20(x26)
                  lw x6, 24(x26)
                  lw x7, 28(x26)
                  lw x8, 32(x26)
                  lw x9, 36(x26)
                  lw x10, 40(x26)
                  lw x11, 44(x26)
                  lw x12, 48(x26)
                  lw x13, 52(x26)
                  lw x14, 56(x26)
                  lw x15, 60(x26)
                  lw x16, 64(x26)
                  lw x17, 68(x26)
                  lw x18, 72(x26)
                  lw x19, 76(x26)
                  lw x20, 80(x26)
                  lw x21, 84(x26)
                  lw x22, 88(x26)
                  lw x23, 92(x26)
                  lw x24, 96(x26)
                  lw x25, 100(x26)
                  lw x26, 104(x26)
                  lw x27, 108(x26)
                  lw x28, 112(x26)
                  lw x29, 116(x26)
                  lw x30, 120(x26)
                  lw x31, 124(x26)
                  addi x26, x26, 124
                  add x30, x26, zero
                  csrrw x26, 0x340, x26
                  mret;

kernel_instr_end: nop
.align 2
kernel_data_start:
.section .kernel_stack,"aw",@progbits;
.align 2
kernel_stack_start:
.rept 4999
.4byte 0x0
.endr
kernel_stack_end:
.4byte 0x0
