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
                  li x14, 0x40000100
                  csrw 0x301, x14
kernel_sp:        
                  la x30, kernel_stack_end

trap_vec_init:    
                  la x14, mtvec_handler
                  ori x14, x14, 1
                  csrw 0x305, x14 # MTVEC

mepc_setup:       
                  la x14, init
                  csrw 0x341, x14

init_machine_mode:
                  li x14, 0x1a00
                  csrw 0x300, x14 # MSTATUS
                  li x14, 0x0
                  csrw 0x304, x14 # MIE
                  mret
init:             
                  li x0, 0x2f7ffbc4
                  li x1, 0x0
                  li x2, 0xf5028cdc
                  li x3, 0x8
                  li x4, 0xa
                  li x5, 0x0
                  li x6, 0xdd5ceb97
                  li x7, 0x80000000
                  li x8, 0x80000000
                  li x9, 0xe
                  li x10, 0x80000000
                  li x11, 0x8
                  li x12, 0xa3050cc9
                  li x13, 0x80000000
                  li x14, 0x7
                  li x15, 0x7
                  li x16, 0x23df2446
                  li x17, 0x9fb89faf
                  li x18, 0x0
                  li x19, 0xffcb32c4
                  li x20, 0xf079f128
                  li x21, 0xb
                  li x22, 0x0
                  li x23, 0x0
                  li x24, 0x80000000
                  li x25, 0x8
                  li x27, 0xfb84f22a
                  li x28, 0xf
                  li x29, 0x80000000
                  li x31, 0x0
                  la x26, user_stack_end
main:             li         s7, 0x0 #start riscv_int_numeric_corner_stream_14
                  li         t3, 0x0
                  li         s9, 0x0
                  li         s4, 0x0
                  li         s8, 0x1
                  li         s0, 0x1
                  li         a2, 0x0
                  li         s1, 0x65335a4
                  li         t4, 0x0
                  li         a5, 0x0
                  sub         t0, ra, s7
                  add         s11, s0, a2
                  lui         s9, 625675
                  add         a3, s9, t3
                  nop
                  nop
                  addi        t1, s4, -1805
                  addi        tp, t4, -1147
                  nop
                  addi        zero, s5, 1176
                  lui         a4, 816861
                  addi        t4, s11, -119
                  add         t2, t2, a0
                  add         a2, sp, s10
                  sub         tp, s7, s5
                  nop
                  nop
                  addi        t0, tp, 1191
                  addi        s5, t5, 1671
                  lui         s0, 624367
                  lui         a2, 694375
                  addi        a7, t0, -1701
                  lui         s1, 611759
                  addi        t3, a0, -1463 #end riscv_int_numeric_corner_stream_14
                  li         t4, 0x17b5c382 #start riscv_int_numeric_corner_stream_23
                  li         s11, 0x39998479
                  li         s1, 0x0
                  li         sp, 0x1
                  li         s4, 0x1
                  li         t3, 0x1
                  li         a2, 0x73c7cd23
                  li         s8, 0x1
                  li         a6, 0x1
                  li         s9, 0x0
                  add         zero, a0, t6
                  lui         tp, 154282
                  add         a3, gp, s2
                  lui         s4, 806391
                  addi        a0, a5, -1370
                  add         t2, a6, a4
                  addi        s8, a0, 474
                  addi        t2, zero, -213
                  add         s7, a1, a4
                  addi        t3, s2, 235
                  add         s8, s0, t0
                  add         t3, t1, zero
                  nop
                  add         s2, s9, s9
                  add         a2, t4, tp
                  sub         s11, t2, s11
                  addi        gp, s10, -564
                  nop
                  addi        zero, ra, 1944
                  nop
                  addi        a2, s10, -1804
                  add         s4, tp, s6
                  sub         s4, a3, s0
                  sub         sp, a7, s2
                  sub         a7, a2, a3
                  add         gp, t5, s7 #end riscv_int_numeric_corner_stream_23
                  li         t4, 0x1 #start riscv_int_numeric_corner_stream_0
                  li         s1, 0x0
                  li         t3, 0x0
                  li         s11, 0x0
                  li         t2, 0x0
                  li         s9, 0x0
                  li         sp, 0x0
                  li         a1, 0x0
                  li         s7, 0x0
                  li         s0, 0x1
                  nop
                  nop
                  nop
                  addi        tp, a5, 1044
                  addi        t0, zero, 462
                  addi        sp, t4, 694
                  add         a2, gp, t2
                  nop
                  sub         t3, zero, s2
                  nop
                  sub         zero, s0, t3
                  nop
                  nop
                  sub         sp, a4, ra
                  sub         s8, s7, s3
                  nop
                  nop
                  nop
                  addi        s8, t1, 1977 #end riscv_int_numeric_corner_stream_0
                  li         t4, 0x1 #start riscv_int_numeric_corner_stream_10
                  li         t3, 0x0
                  li         s11, 0x0
                  li         s9, 0x0
                  li         s8, 0x0
                  li         gp, 0x0
                  li         a6, 0x0
                  li         t0, 0x0
                  li         s1, 0x0
                  li         ra, 0x0
                  add         sp, a0, s7
                  lui         gp, 350590
                  addi        sp, ra, -1936
                  sub         t0, s11, t3
                  sub         a5, t0, t3
                  lui         s3, 570388
                  add         s9, t2, a0
                  lui         t0, 950294
                  addi        zero, s4, -744
                  addi        s8, a2, -1187
                  nop
                  sub         s2, gp, a0
                  addi        s3, t6, -368
                  add         s7, s0, s4
                  lui         t1, 280202
                  addi        s4, a0, 1821
                  add         s4, s6, s0
                  add         s3, a7, s6
                  add         s4, s4, t6
                  lui         t3, 163057
                  addi        s11, gp, -634
                  sub         s0, a2, gp
                  sub         s9, a3, ra
                  nop
                  nop
                  lui         s11, 115823
                  lui         a1, 968768
                  addi        zero, s11, 1460 #end riscv_int_numeric_corner_stream_10
                  li         t3, 0x1 #start riscv_int_numeric_corner_stream_17
                  li         t0, 0x0
                  li         s11, 0x0
                  li         s9, 0x1
                  li         t2, 0x1
                  li         a1, 0x0
                  li         s3, 0x7229cbc5
                  li         t4, 0x0
                  li         s2, 0x1
                  li         s8, 0x0
                  sub         s5, t4, s11
                  lui         t0, 242252
                  nop
                  add         t4, a7, t4
                  addi        t3, s1, 211
                  addi        a7, s11, -2025
                  sub         s2, a4, a7
                  addi        s3, t4, -1636
                  sub         a6, s1, s6
                  addi        s11, s11, -1124
                  sub         zero, s2, t2
                  sub         s4, t0, s10
                  add         s4, a7, s3
                  addi        s3, a6, 593
                  add         a6, s1, tp #end riscv_int_numeric_corner_stream_17
                  li         t4, 0x1 #start riscv_int_numeric_corner_stream_9
                  li         t3, 0x0
                  li         s11, 0x0
                  li         s9, 0x0
                  li         s8, 0x1
                  li         s3, 0x1
                  li         s5, 0x1
                  li         a7, 0x1
                  li         s0, 0x1
                  li         sp, 0x1
                  nop
                  sub         a4, a7, s1
                  add         s8, a2, s4
                  add         zero, gp, a3
                  nop
                  addi        zero, gp, 543
                  lui         s5, 980010
                  addi        zero, a1, -1078
                  nop
                  lui         tp, 664251
                  sub         t0, a1, a1
                  nop
                  add         a4, ra, a7
                  sub         sp, s9, s3
                  addi        sp, s8, -878 #end riscv_int_numeric_corner_stream_9
                  li         t4, 0x57bc314d #start riscv_int_numeric_corner_stream_22
                  li         s1, 0x0
                  li         s11, 0x0
                  li         t3, 0x1
                  li         a4, 0x0
                  li         a1, 0x0
                  li         s3, 0x1
                  li         gp, 0x0
                  li         t2, 0x421d2749
                  li         s9, 0x0
                  addi        tp, s7, 1715
                  sub         tp, s2, a3
                  nop
                  addi        s2, sp, -1763
                  sub         s7, sp, sp
                  sub         a5, s4, t5
                  lui         s5, 369429
                  lui         tp, 606629
                  sub         t2, a3, s4
                  nop
                  add         zero, a6, a0
                  lui         t1, 53637
                  lui         s11, 414641
                  addi        a0, s2, 1017
                  lui         a5, 705238
                  add         s8, s2, sp
                  addi        zero, a1, -1825
                  addi        gp, a7, -487 #end riscv_int_numeric_corner_stream_22
                  li         s7, 0x0 #start riscv_int_numeric_corner_stream_27
                  li         t4, 0x1678e287
                  li         s9, 0x1
                  li         t1, 0x1
                  li         s11, 0x1
                  li         s8, 0x535fa37
                  li         a1, 0x0
                  li         s1, 0x0
                  li         a3, 0x1
                  li         t3, 0x4a0cd61c
                  nop
                  sub         t4, s3, t6
                  lui         s6, 613441
                  sub         ra, t1, gp
                  addi        s3, ra, 762
                  lui         zero, 877983
                  add         a5, s2, tp
                  add         s3, t1, s10
                  add         a0, a7, ra
                  sub         s7, tp, s6
                  lui         s9, 368022
                  sub         a1, a0, a1
                  nop
                  nop
                  sub         s11, s0, s6
                  lui         a5, 411585
                  addi        a0, t3, 361
                  sub         ra, a0, s2
                  nop
                  add         s7, s4, a0
                  nop #end riscv_int_numeric_corner_stream_27
                  li         t4, 0x0 #start riscv_int_numeric_corner_stream_25
                  li         t3, 0x30fe79a7
                  li         a2, 0x3d6c38a9
                  li         t2, 0x0
                  li         s2, 0x0
                  li         tp, 0x0
                  li         a4, 0x7fddb9ce
                  li         s4, 0x0
                  li         s9, 0x1
                  li         s8, 0x0
                  sub         a0, a1, s6
                  addi        t3, s5, -1738
                  addi        a7, t2, -1794
                  lui         s8, 65828
                  lui         t3, 71061
                  addi        s6, sp, -958
                  lui         s2, 422521
                  nop
                  sub         s6, s1, t2
                  lui         tp, 1047432
                  nop
                  sub         zero, s1, s0
                  sub         s5, s2, a3
                  addi        s3, s6, 1295
                  nop
                  addi        s8, s10, 1315
                  nop
                  nop #end riscv_int_numeric_corner_stream_25
                  li         t4, 0x0 #start riscv_int_numeric_corner_stream_13
                  li         t3, 0x1
                  li         sp, 0x0
                  li         s5, 0x0
                  li         s1, 0x7d153300
                  li         s11, 0x1
                  li         s9, 0x0
                  li         s8, 0x1
                  li         a4, 0x1
                  li         s0, 0xd84c93a
                  lui         sp, 749874
                  sub         t1, s9, zero
                  lui         s3, 9859
                  nop
                  addi        sp, a3, 1805
                  nop
                  sub         s9, t1, s9
                  nop
                  add         t1, s3, t5
                  nop
                  addi        a5, t6, -616
                  addi        zero, sp, -713
                  nop
                  addi        s2, a3, 214
                  addi        s0, s1, -1046
                  nop
                  nop
                  addi        s1, tp, -333
                  addi        zero, s6, -1185
                  addi        t2, s9, 286
                  sub         s3, t0, t5
                  sub         a1, s4, t5
                  lui         zero, 506302
                  sub         s6, a1, a5
                  sub         gp, s2, a3
                  addi        s11, s4, -458 #end riscv_int_numeric_corner_stream_13
                  lui         s8, 837557
                  sra         t3, ra, s5
                  slli        gp, s4, 23
                  nop
                  or          s4, t5, a3
                  slt         t3, a4, s4
                  ori         s11, sp, -1305
                  addi        s2, s11, 111
                  auipc       t1, 422730
                  add         zero, sp, t3
                  srai        zero, t1, 15
                  and         tp, t3, s10
                  and         s9, a6, ra
                  sltu        t0, s11, s10
                  sltu        zero, ra, s5
                  sra         s3, a0, s9
                  slli        a3, t4, 6
                  sra         t0, s10, tp
                  sltu        a6, t1, s4
                  srai        s2, s8, 4
                  addi        s9, a2, -1024
                  andi        t3, s7, 307
                  sub         zero, a0, s6
                  xori        s3, t3, -947
                  xori        a3, ra, 143
                  or          a5, sp, s3
                  auipc       t0, 95366
                  sll         a6, zero, a6
                  xori        zero, t3, 1007
                  sltu        tp, a2, s4
                  slti        tp, a4, 163
                  sra         t2, s4, sp
                  ori         a2, t2, 1483
                  sra         tp, a4, a5
                  xor         t0, s2, a6
                  xor         s9, s6, s0
                  xori        t2, a7, 1749
                  slli        a5, a1, 28
                  slt         zero, s5, s5
                  ori         gp, s6, -415
                  sltu        a7, s10, a1
                  add         a2, s2, t5
                  lui         tp, 355517
                  sltu        zero, a2, tp
                  sll         zero, t5, a1
                  slti        t1, s1, -1488
                  sub         s6, s0, t1
                  sltu        a7, s3, s7
                  xor         a3, s0, s9
                  ori         s11, s10, 1823
                  slli        a1, a4, 23
                  add         a4, s1, s6
                  sll         t0, t3, t5
                  add         a3, s11, s11
                  auipc       zero, 633170
                  srai        t0, t6, 7
                  srli        s0, s3, 22
                  srl         zero, s8, zero
                  sra         zero, s7, s5
                  ori         zero, a0, -1092
                  auipc       s6, 175451
                  slt         s7, s7, a7
                  auipc       t1, 170094
                  xor         a2, a0, t6
                  nop
                  addi        s3, s4, -1597
                  sltu        s11, t1, a0
                  sltu        sp, a1, t0
                  sll         a3, s11, a2
                  sll         a6, s9, s4
                  addi        s7, a0, -506
                  sub         zero, t5, a2
                  ori         a6, s10, -880
                  slli        s7, a7, 30
                  sltu        s11, s11, sp
                  xor         sp, t1, gp
                  or          s5, a5, t1
                  srai        zero, a1, 21
                  sltu        t0, s5, a6
                  srai        a6, s4, 11
                  andi        s4, t4, 1720
                  and         a7, gp, s7
                  sra         s4, t4, a7
                  slli        s1, s0, 21
                  srli        s7, s9, 31
                  sltu        t3, s3, s0
                  nop
                  nop
                  add         s5, s6, t5
                  addi        a4, zero, -2039
                  and         zero, t1, s3
                  srl         s0, s1, t0
                  sltu        a5, t1, t5
                  addi        zero, a3, -127
                  sra         s9, s0, t0
                  xor         a5, s4, a5
                  slti        a6, t6, 1546
                  sll         gp, s0, t0
                  andi        t1, a2, -73
                  nop
                  sra         a5, t6, s3
                  add         s0, a6, a2
                  slli        a5, s3, 9
                  srli        t0, s8, 29
                  or          t0, a0, t6
                  sub         s4, s5, s2
                  nop
                  andi        a2, a6, 597
                  andi        s6, s5, -1220
                  ori         s1, a6, -566
                  add         s4, a5, s0
                  nop
                  nop
                  and         zero, a6, s6
                  sltiu       t1, a2, -1702
                  and         s1, s7, sp
                  addi        a6, s5, 1014
                  sltu        ra, t6, a5
                  andi        t0, a6, -1992
                  srli        zero, a6, 1
                  ori         s6, a6, 303
                  sra         zero, a7, tp
                  lui         a1, 811114
                  add         s11, s3, t0
                  nop
                  ori         s3, s0, -2024
                  slli        s7, zero, 22
                  add         gp, s7, zero
                  sltiu       s6, a6, 1484
                  srli        s9, t4, 31
                  sll         s1, a4, t2
                  srl         ra, s7, zero
                  xor         t0, a2, s1
                  srai        a2, a7, 11
                  nop
                  xor         s11, a7, s6
                  sltu        s2, a2, ra
                  lui         a3, 672109
                  sltu        s0, s5, t5
                  sltu        t2, a3, tp
                  add         s11, t5, a5
                  xori        a2, zero, 1118
                  slti        t1, t5, 464
                  add         s0, t6, a3
                  and         s4, t6, t4
                  ori         s9, a3, -1955
                  srai        s11, s9, 8
                  slt         s2, t3, s7
                  andi        a1, a1, 1138
                  addi        zero, t2, -1549
                  nop
                  slli        sp, a1, 2
                  slli        s8, t2, 30
                  or          zero, s6, s4
                  slti        s4, s6, 214
                  ori         a0, tp, -1931
                  slli        a5, s0, 14
                  add         gp, s3, t1
                  slt         s6, a2, t2
                  nop
                  srli        sp, s7, 15
                  srl         t1, a6, s6
                  or          a4, t3, a6
                  sltiu       zero, t4, 1078
                  sltu        t1, s6, s6
                  and         zero, t3, a6
                  sltiu       s7, tp, -84
                  andi        t1, s0, -1168
                  srl         t2, s4, tp
                  sra         a1, s6, s4
                  andi        t1, a3, 134
                  ori         a2, sp, 453
                  or          a5, a0, a7
                  sub         s5, s3, s9
                  lui         tp, 524917
                  slti        zero, t0, -388
                  slli        zero, s6, 21
                  xor         zero, s9, ra
                  or          t2, s0, t6
                  addi        a6, a2, -99
                  auipc       a3, 979837
                  slli        gp, s7, 27
                  sltu        s7, zero, s2
                  or          zero, a7, a3
                  add         a0, gp, s0
                  ori         t2, t5, 475
                  srli        zero, s3, 11
                  sll         a3, a7, s4
                  lui         a6, 981017
                  nop
                  srli        s4, s10, 28
                  and         s11, a4, gp
                  srli        a6, s8, 18
                  lui         zero, 180142
                  add         sp, a5, s10
                  sltu        ra, s6, s1
                  slli        t2, s3, 1
                  andi        s3, s7, -1691
                  slli        s4, a3, 21
                  nop
                  and         ra, a5, t4
                  slt         a0, a3, ra
                  or          t3, a5, s9
                  ori         a2, s2, -125
                  addi        s8, s9, 560
                  xor         a4, a5, t6
                  srai        s0, s4, 10
                  srli        a5, a0, 9
                  sll         zero, s11, s2
                  sll         s5, s0, a1
                  lui         zero, 52918
                  auipc       s5, 540922
                  srai        tp, s1, 29
                  auipc       s1, 202278
                  xor         a2, a6, s2
                  slt         ra, s2, s9
                  and         s11, s6, ra
                  xor         a0, t6, zero
                  auipc       s1, 372446
                  auipc       t0, 944235
                  and         s0, s11, s4
                  srl         s9, s11, gp
                  nop
                  sra         a2, a1, t4
                  add         gp, t1, t2
                  xori        s1, a1, -1691
                  srli        zero, gp, 0
                  lui         t2, 664764
                  srli        t0, s2, 30
                  sltu        a1, t1, t0
                  srl         a6, a7, sp
                  xor         s4, a0, a7
                  sltu        s5, s1, a5
                  sra         t0, s11, s9
                  add         s6, s7, s11
                  li         t4, 0x0 #start riscv_int_numeric_corner_stream_6
                  li         s1, 0x1
                  li         t1, 0xfd32ad
                  li         t3, 0x1
                  li         s9, 0x1
                  li         a6, 0x1
                  li         s11, 0x0
                  li         a1, 0x7422645
                  li         s3, 0x1
                  li         s8, 0x1
                  add         a4, t4, s3
                  lui         sp, 296853
                  nop
                  lui         t0, 496508
                  nop
                  sub         a6, ra, s0
                  sub         tp, s1, a0
                  lui         t0, 715835
                  add         s8, tp, s7
                  add         t1, s11, s6
                  nop
                  lui         a3, 456949
                  lui         s8, 286751
                  addi        s3, a0, -944
                  add         a6, a7, t4
                  nop
                  lui         t4, 379681 #end riscv_int_numeric_corner_stream_6
                  sltu        a7, s5, s7
                  ori         zero, a2, 1481
                  lui         s8, 437943
                  and         zero, a2, zero
                  andi        gp, t4, 305
                  srli        s6, s4, 31
                  slti        zero, a1, 556
                  sub         gp, s11, t1
                  nop
                  slli        t1, a7, 2
                  xori        ra, t1, -1432
                  nop
                  sltiu       s4, s9, 1585
                  sltiu       s7, s6, 1942
                  and         s9, a6, s0
                  slli        t2, a7, 10
                  ori         s8, s2, 770
                  auipc       a5, 708937
                  slli        zero, s3, 26
                  ori         gp, s3, 1596
                  lui         s6, 1041357
                  lui         s0, 954395
                  slti        a1, a3, 424
                  srl         zero, zero, a7
                  slti        a0, gp, -372
                  add         a7, ra, a1
                  slti        zero, zero, 862
                  slti        s6, a7, 994
                  srai        zero, s0, 17
                  sub         sp, a5, s11
                  ori         zero, s11, -1814
                  nop
                  sll         a0, a4, a7
                  auipc       ra, 129746
                  sll         a5, a2, a2
                  andi        s4, t1, 1827
                  add         a1, zero, t3
                  sltu        a1, t4, s10
                  slli        s3, t0, 14
                  lui         a3, 29052
                  or          s6, s4, t6
                  slli        a2, t2, 15
                  sll         s5, ra, a3
                  add         zero, a0, a1
                  andi        zero, sp, 1060
                  slli        a3, a7, 10
                  slli        s0, a6, 30
                  or          sp, t4, a1
                  andi        a2, a2, -541
                  ori         t1, a1, 377
                  xori        a0, t6, -565
                  auipc       s9, 1014406
                  xori        t4, sp, 2042
                  sll         t1, s10, s1
                  auipc       a5, 526038
                  xori        s1, s7, 1330
                  addi        a5, s0, -507
                  auipc       sp, 134682
                  andi        a7, s2, -1569
                  srli        t4, s11, 23
                  and         zero, s10, a5
                  auipc       a0, 687953
                  sub         sp, t3, s0
                  sra         t3, s4, t3
                  sub         zero, s10, t0
                  srl         zero, a5, s8
                  addi        zero, t1, -178
                  sra         a3, s3, a4
                  srai        t2, s2, 3
                  nop
                  xori        a6, a4, 601
                  sll         a3, a6, t4
                  or          s3, a0, tp
                  addi        a2, zero, -649
                  slli        s5, s2, 10
                  add         s4, s5, s3
                  sltu        zero, a5, t6
                  andi        zero, s8, 632
                  ori         a1, t4, -1222
                  or          s3, t2, t0
                  srai        t3, t6, 28
                  sltiu       s3, ra, 1707
                  slli        a6, s4, 12
                  nop
                  sll         s3, zero, s4
                  and         tp, s5, a1
                  sll         a4, s1, t0
                  ori         zero, s7, -880
                  srai        zero, s0, 30
                  sltu        t3, t6, s4
                  and         gp, s9, t6
                  ori         sp, s5, 713
                  sltu        a0, a6, s8
                  sra         a5, s7, s9
                  slti        s0, zero, 1320
                  and         a5, tp, zero
                  or          s1, s10, a7
                  srl         zero, s11, a4
                  and         a2, gp, tp
                  sra         a0, a2, s6
                  ori         s8, s6, 679
                  xori        zero, tp, -587
                  xor         zero, t1, t4
                  auipc       zero, 993200
                  add         a1, s2, t2
                  srl         s1, t4, a3
                  auipc       a1, 107408
                  sltu        zero, s4, t6
                  srai        sp, t6, 21
                  sll         s11, t1, s3
                  slt         a3, s6, s7
                  sra         t3, a0, t4
                  xori        s9, t1, -1787
                  add         a1, t2, s6
                  andi        a6, tp, 102
                  sltu        ra, a2, s5
                  add         s8, a0, s4
                  or          zero, t1, t1
                  and         s8, a6, s11
                  sltu        sp, s0, t0
                  srl         s6, a4, t3
                  nop
                  auipc       s7, 299080
                  xor         gp, ra, a4
                  auipc       tp, 852676
                  addi        a4, sp, 1487
                  sltu        t1, s0, ra
                  addi        a2, s4, -1324
                  or          a5, s11, a1
                  slti        zero, ra, 1919
                  srai        a0, gp, 31
                  slt         t1, gp, s10
                  slt         s5, s5, s9
                  slli        t1, t3, 24
                  auipc       t3, 806381
                  sltiu       a4, s4, -125
                  slli        a7, s3, 20
                  sub         zero, a4, a0
                  sltiu       a0, t3, 1647
                  sub         zero, t4, s4
                  srli        t3, t2, 30
                  andi        a3, s10, -1318
                  xor         t0, t0, a0
                  addi        a1, ra, 1610
                  xor         t3, s6, ra
                  sltu        t3, ra, t6
                  xori        t0, t6, -1892
                  sll         s0, zero, ra
                  slli        a2, a0, 21
                  sltu        s1, gp, a7
                  srl         t0, s11, s8
                  andi        a3, t6, 578
                  lui         t0, 909759
                  sra         zero, s9, t2
                  nop
                  srl         ra, t6, s3
                  nop
                  sra         s0, t1, s6
                  or          a5, s4, t0
                  slt         gp, a3, a6
                  lui         a2, 862116
                  slli        ra, s7, 17
                  lui         s8, 604135
                  add         a7, s4, t5
                  add         a4, t4, a3
                  sltiu       s8, gp, 276
                  andi        a4, t0, -55
                  sltiu       a4, a6, -872
                  slti        s5, t3, 1256
                  auipc       t4, 685925
                  sra         a1, t3, ra
                  sra         t3, a5, t6
                  sra         zero, t4, a1
                  srai        t0, gp, 31
                  slti        a2, t1, -315
                  xori        s4, t5, -1552
                  sll         s3, s6, a7
                  and         zero, s3, a6
                  xori        a4, ra, 1156
                  lui         s8, 811534
                  sub         s8, t1, t1
                  lui         s1, 436298
                  addi        s5, s1, -1457
                  slti        gp, a5, -1701
                  slt         s4, s11, a6
                  slli        s1, a6, 6
                  or          zero, s2, t3
                  auipc       zero, 540767
                  addi        tp, s10, -1274
                  sltu        t1, gp, s10
                  add         zero, a2, a5
                  srai        gp, s6, 1
                  add         s5, s10, t6
                  and         a2, t5, ra
                  sra         s4, tp, a6
                  or          zero, t4, ra
                  lui         sp, 851186
                  slt         s9, a1, s0
                  ori         a3, s8, -765
                  xor         s6, s10, t4
                  sra         s3, t4, t1
                  sltu        ra, s0, t2
                  or          s0, t5, s2
                  srli        a5, a5, 11
                  addi        zero, a0, 674
                  nop
                  srl         zero, t0, s2
                  sltu        zero, t5, s6
                  lui         t4, 449265
                  and         a6, s1, gp
                  slti        s3, gp, 146
                  ori         a3, t3, -13
                  sll         zero, a5, sp
                  sll         s0, a2, s0
                  xori        sp, tp, 1319
                  lui         tp, 875221
                  slti        a3, s5, 781
                  slt         s7, tp, zero
                  sll         t4, s6, a3
                  srli        t4, s0, 21
                  lui         zero, 111726
                  slt         s1, gp, gp
                  ori         sp, a4, -416
                  sll         s8, s6, s3
                  srai        a7, s5, 23
                  sll         s4, t3, s0
                  auipc       zero, 386786
                  slli        t3, t6, 22
                  nop
                  sltu        zero, a4, gp
                  slt         s5, a1, a3
                  lui         s2, 633465
                  li         a4, 0x1 #start riscv_int_numeric_corner_stream_21
                  li         t4, 0x1
                  li         s3, 0x44c5cd3f
                  li         t3, 0x44905a48
                  li         s11, 0x0
                  li         s9, 0x1
                  li         a1, 0x0
                  li         s8, 0x0
                  li         sp, 0x0
                  li         s0, 0x59ec0e66
                  add         t2, a3, s5
                  addi        a0, a1, 1038
                  lui         a1, 697769
                  lui         a0, 968751
                  lui         s3, 279111
                  lui         a1, 744372
                  add         sp, a6, a1
                  add         t2, s2, t3
                  add         s4, a4, s2
                  addi        sp, t4, -452
                  sub         a1, a0, s7
                  addi        t0, s9, -1379
                  nop
                  add         zero, t3, s8
                  sub         s11, ra, s5
                  sub         t2, t5, s8
                  sub         t4, a4, ra
                  sub         a3, s2, t3
                  add         t1, t2, t0
                  add         a2, ra, t5
                  addi        s7, a1, -1982
                  nop
                  lui         ra, 305988 #end riscv_int_numeric_corner_stream_21
                  srai        gp, zero, 31
                  srl         a2, s1, a7
                  slt         a5, a6, t5
                  ori         s9, s0, -659
                  sub         s5, s2, t6
                  srai        zero, a5, 7
                  xor         gp, t0, t6
                  srai        a2, a3, 8
                  and         s9, a5, s3
                  srl         a4, t5, s10
                  slli        a5, a3, 1
                  add         s1, t0, t2
                  sub         s3, t6, s0
                  sra         t4, s5, s3
                  sll         a7, s3, ra
                  auipc       zero, 54413
                  andi        t1, a6, 1976
                  slli        s1, s9, 20
                  srl         s7, tp, a0
                  sra         t1, s10, s7
                  xor         zero, s10, sp
                  nop
                  lui         s6, 1022272
                  sltiu       zero, s9, -1913
                  ori         zero, t3, 708
                  ori         s4, t1, -138
                  xor         s11, a3, s4
                  or          zero, a4, sp
                  add         s6, t4, s7
                  addi        s9, t4, 586
                  slt         a3, s3, gp
                  sra         t4, s8, s7
                  xori        t0, gp, -1608
                  srl         zero, t5, t0
                  sll         a0, t6, s10
                  sltu        zero, tp, s2
                  sll         a4, s3, zero
                  or          t4, ra, tp
                  srli        ra, tp, 23
                  slli        s5, tp, 12
                  auipc       s5, 68076
                  sltu        s3, s6, s2
                  slt         zero, s4, s0
                  srai        gp, a1, 23
                  or          s4, t5, s4
                  addi        s8, a0, 1381
                  srai        gp, a7, 6
                  srl         gp, s1, s11
                  xor         t1, s3, a7
                  and         t3, ra, s3
                  and         s11, t1, t4
                  li         t4, 0x1 #start riscv_int_numeric_corner_stream_2
                  li         s0, 0x0
                  li         t3, 0x0
                  li         s11, 0x0
                  li         a7, 0x1
                  li         a6, 0x0
                  li         s9, 0x0
                  li         a1, 0x1
                  li         s1, 0x0
                  li         s2, 0x1
                  lui         s7, 494886
                  add         tp, s11, s6
                  add         t0, s7, a4
                  sub         s8, t3, s11
                  nop
                  lui         s8, 2187
                  nop
                  sub         s7, a7, s7
                  sub         s11, a1, s8
                  sub         sp, zero, s0
                  lui         zero, 86146
                  add         t0, s6, ra
                  addi        zero, a6, -223
                  sub         s7, ra, s11
                  sub         a7, s6, sp
                  addi        t2, s3, 281
                  addi        zero, t3, -678
                  addi        a6, s3, -2006
                  lui         t2, 314261
                  addi        ra, s11, -909
                  add         a1, s5, s7
                  addi        s9, zero, -185
                  sub         zero, tp, ra
                  lui         s2, 763710
                  addi        s1, t5, 1247
                  add         zero, s1, s1
                  sub         s3, t4, t1
                  nop
                  addi        s2, s4, 1526
                  addi        s8, s9, 1470 #end riscv_int_numeric_corner_stream_2
                  add         s5, s8, s7
                  nop
                  add         zero, a0, tp
                  sub         s0, ra, s9
                  xor         s11, a1, t4
                  srli        sp, s11, 23
                  slti        t1, sp, 371
                  and         s6, s4, t5
                  slli        a4, t3, 29
                  srai        t3, a4, 31
                  sll         s2, s5, t6
                  xor         s8, s1, a0
                  or          t3, t1, ra
                  xor         gp, t2, s4
                  add         sp, t5, s3
                  auipc       t2, 438632
                  sra         s1, s4, s6
                  ori         t4, sp, 80
                  sra         s9, s8, s10
                  auipc       s3, 703717
                  addi        t1, sp, -1170
                  xor         s11, s11, a2
                  auipc       a4, 655137
                  sltiu       s3, t1, -485
                  andi        s11, a7, 282
                  xori        ra, a5, -113
                  ori         s6, tp, -1021
                  andi        t1, a4, 18
                  and         s5, t1, t5
                  lui         zero, 421068
                  lui         zero, 806115
                  sra         t4, a0, t6
                  and         a0, s10, t6
                  add         a4, s9, t5
                  lui         gp, 180065
                  srl         sp, s1, t6
                  lui         a2, 160172
                  xor         sp, t6, s7
                  srli        t2, t6, 23
                  lui         s7, 829642
                  slti        s7, a3, -1938
                  and         t1, a4, gp
                  ori         t1, s3, 358
                  srai        gp, gp, 23
                  sra         a7, a4, t1
                  sltu        tp, sp, s3
                  srl         s2, t6, s1
                  srli        s3, s3, 18
                  srli        ra, t5, 11
                  srli        s9, s11, 15
                  xor         gp, s2, s11
                  srli        s7, s11, 4
                  addi        s3, s8, -5
                  andi        s4, s6, 381
                  auipc       sp, 810672
                  xor         s5, s10, a7
                  slt         t1, s11, t1
                  xor         s9, a7, a7
                  srl         zero, ra, a7
                  addi        a6, t1, -776
                  auipc       a4, 274882
                  xori        a1, sp, -146
                  slt         s8, tp, ra
                  xor         a3, tp, sp
                  and         t0, a7, s3
                  addi        s4, ra, -1332
                  srai        s1, gp, 30
                  xor         t4, t2, t5
                  slli        s9, a5, 5
                  xor         t1, s3, s6
                  auipc       a4, 86093
                  sra         s9, s5, s0
                  srl         a5, gp, s6
                  auipc       t3, 334904
                  ori         a7, s3, -853
                  add         tp, a2, a5
                  andi        t2, gp, 1261
                  sra         t3, t2, s6
                  sltiu       gp, gp, 1120
                  sub         a0, a0, t6
                  srai        s5, sp, 25
                  slti        s11, s3, 1430
                  sll         a4, a6, t1
                  slt         s5, s9, a2
                  auipc       zero, 253672
                  and         ra, s1, a7
                  slli        a4, a7, 1
                  xor         s5, t6, t0
                  slli        s7, sp, 31
                  andi        zero, s0, -833
                  nop
                  and         tp, s0, t1
                  lui         s4, 502296
                  srli        s7, a3, 2
                  sltiu       zero, a5, -532
                  sra         s8, t3, s10
                  xori        t1, s4, -1054
                  lui         a6, 494604
                  slli        a4, s10, 3
                  auipc       s4, 685571
                  auipc       zero, 203880
                  and         a0, s6, gp
                  lui         a2, 1000978
                  sub         t0, t0, s2
                  slti        s9, t3, 155
                  slti        ra, t4, 741
                  lui         zero, 618907
                  slli        t0, zero, 15
                  sub         a5, s2, s5
                  srli        a1, a5, 23
                  slti        s6, s8, 838
                  slti        a2, a5, -1307
                  sra         s4, zero, sp
                  sltu        s7, a3, tp
                  sra         s5, s5, s10
                  and         zero, s7, tp
                  add         a3, s3, s4
                  srai        s6, zero, 15
                  add         ra, sp, sp
                  slti        s3, sp, -503
                  sll         s3, s5, s7
                  add         a7, s6, gp
                  slti        t0, s3, 1820
                  slt         sp, t6, tp
                  ori         ra, gp, -428
                  lui         s0, 156932
                  srli        a0, s5, 6
                  xor         zero, a5, gp
                  slli        a4, s10, 31
                  andi        t1, a0, -1669
                  xori        t2, a5, -1598
                  slti        s8, zero, 472
                  srli        a3, s4, 9
                  or          s2, s11, t3
                  sub         gp, s0, t5
                  or          s7, t6, s5
                  addi        zero, s1, 1100
                  add         a5, t6, a4
                  and         s9, s3, s4
                  xor         s11, t6, a5
                  xor         zero, a1, t4
                  sub         s7, a6, sp
                  or          s2, s6, t4
                  or          s8, s6, s11
                  xor         zero, t5, a4
                  sub         a0, t4, a4
                  srl         s7, s7, a1
                  sltiu       zero, a1, 1446
                  srl         a4, a0, a0
                  sub         tp, t6, ra
                  sltu        zero, s3, s9
                  andi        t0, t1, -1606
                  addi        s3, t3, 831
                  xori        t2, a3, -1980
                  add         ra, ra, s1
                  addi        zero, s10, -1431
                  andi        a7, s6, 2022
                  srli        tp, a4, 4
                  xor         s8, tp, sp
                  slt         s4, s2, sp
                  sll         a3, s6, ra
                  xori        t4, s3, 3
                  sra         a6, ra, s10
                  srai        s7, ra, 26
                  slti        zero, t6, 13
                  sll         zero, s0, t0
                  sub         s8, ra, t6
                  nop
                  slli        a0, s4, 16
                  sltu        zero, s9, t0
                  lui         s2, 639949
                  slt         tp, s5, a5
                  sll         a4, t6, a3
                  sltu        a5, s2, t0
                  addi        s9, s11, -428
                  sub         tp, s3, s11
                  xor         t0, s3, a3
                  and         zero, a7, tp
                  sltu        s6, a7, gp
                  ori         zero, t0, 172
                  ori         t3, s1, 728
                  addi        s0, a3, 64
                  sll         zero, s4, s11
                  auipc       t2, 910078
                  srli        a5, zero, 26
                  or          a4, t6, t5
                  sra         gp, a6, a6
                  xor         a4, a5, t2
                  sltiu       a6, ra, -1982
                  add         s0, s5, t2
                  add         sp, s11, a6
                  xor         a1, sp, t5
                  sltiu       s7, gp, 247
                  slli        s2, sp, 9
                  andi        s1, t0, -497
                  ori         s1, gp, 883
                  and         a4, s6, a1
                  sltu        sp, ra, t5
                  sltiu       a6, a3, 53
                  sltiu       t4, s4, 1722
                  add         a2, s7, a5
                  addi        s9, gp, -1340
                  srl         s6, s5, t4
                  sub         s7, s1, a4
                  sra         s7, t1, s9
                  sra         gp, s3, t2
                  srai        tp, t6, 9
                  srai        s3, sp, 18
                  addi        s11, a3, -1641
                  or          s9, t1, a5
                  add         t1, ra, s6
                  or          a4, a7, a4
                  auipc       ra, 205722
                  and         t0, ra, tp
                  or          zero, zero, gp
                  srli        s3, a5, 6
                  xori        a4, s11, -1707
                  add         a3, a2, t6
                  sra         t0, s3, s11
                  ori         sp, t6, 832
                  ori         a3, a0, -1916
                  addi        gp, s0, 499
                  sll         a7, a4, a1
                  auipc       zero, 838220
                  add         t0, t0, a0
                  add         a5, s3, a4
                  sub         ra, a0, a4
                  and         zero, ra, t0
                  xor         t4, s2, s8
                  slli        s9, sp, 18
                  sra         s8, s2, s3
                  srli        t4, zero, 15
                  xori        a7, s2, 522
                  and         s9, s1, zero
                  auipc       a5, 555313
                  sra         s6, t1, s3
                  auipc       tp, 602574
                  or          t4, tp, sp
                  sltiu       zero, ra, -1013
                  srai        s2, s2, 24
                  nop
                  addi        a3, a6, -410
                  srl         a1, s11, a1
                  srli        s1, t3, 0
                  slli        a3, s10, 29
                  sra         t1, s5, zero
                  sra         a0, t0, t0
                  sltu        t0, ra, t1
                  sll         a0, s1, a1
                  srl         a7, ra, s0
                  addi        s7, s10, 1728
                  slli        zero, a7, 19
                  sub         t4, s11, s9
                  sltu        a4, tp, t3
                  srl         a7, sp, s11
                  xori        s6, s7, 1499
                  add         s6, t3, a6
                  add         a2, a2, s10
                  srl         t1, t4, s4
                  xor         a0, s3, ra
                  srai        t2, a0, 6
                  auipc       s4, 589085
                  ori         s6, a7, -1794
                  xori        s11, a1, -1155
                  sltu        s6, zero, t6
                  ori         s4, s9, 1851
                  auipc       s2, 307098
                  nop
                  ori         s1, s9, 843
                  lui         zero, 731759
                  xori        tp, t6, 847
                  lui         s11, 840852
                  slt         sp, a1, a2
                  sub         t0, t3, s10
                  sltiu       a0, t0, 873
                  slti        s11, s9, 88
                  sra         gp, s3, tp
                  sra         a6, t5, a6
                  or          s0, s11, a5
                  slti        tp, gp, 1315
                  addi        s0, s5, 616
                  nop
                  addi        t0, a6, 537
                  lui         a4, 315738
                  add         zero, s8, tp
                  srai        s4, zero, 13
                  sub         gp, a7, t4
                  li         t4, 0x0 #start riscv_int_numeric_corner_stream_11
                  li         t3, 0x1
                  li         t2, 0x0
                  li         s9, 0x0
                  li         s11, 0x1
                  li         s8, 0x0
                  li         s4, 0x0
                  li         s1, 0x1
                  li         a3, 0x1
                  li         a6, 0x0
                  add         zero, s2, s7
                  addi        a0, s3, -1082
                  sub         a2, a6, t2
                  add         a3, t1, t0
                  add         a2, a4, t5
                  add         t1, a6, t1
                  lui         t4, 168793
                  sub         s0, s7, s0
                  addi        s7, a6, -1442
                  lui         a7, 815279
                  lui         t4, 181155
                  sub         ra, ra, s3
                  addi        s1, t1, 701
                  sub         zero, t5, t1
                  lui         ra, 359360
                  addi        a5, a0, 1498
                  lui         s4, 991107
                  nop
                  add         s2, gp, s2
                  sub         s9, s3, a7 #end riscv_int_numeric_corner_stream_11
                  slt         a0, a7, s7
                  add         s9, tp, s6
                  slli        s4, s8, 24
                  sub         a6, s3, t3
                  slti        s2, t0, -1904
                  slti        zero, sp, -1635
                  slti        zero, s4, -1762
                  sltu        sp, tp, t5
                  xori        t2, t4, -971
                  nop
                  sra         s9, s10, s7
                  xor         a4, t4, a3
                  slt         a4, a6, a5
                  sub         t3, sp, t1
                  slt         s8, s0, s8
                  and         gp, t5, t5
                  and         a6, zero, s10
                  xori        a5, a4, -70
                  xori        sp, s2, -1329
                  slli        zero, gp, 26
                  srl         sp, t1, a5
                  and         s2, s3, sp
                  xor         zero, sp, a5
                  sll         s8, t4, s8
                  ori         t3, s11, -1245
                  slti        s8, s11, -363
                  xor         s0, ra, s8
                  slti        gp, t1, 605
                  addi        a7, sp, 1211
                  sll         sp, s8, t4
                  srl         t1, t4, a0
                  sltiu       sp, s4, 461
                  srl         s6, s5, t2
                  srai        a2, a0, 5
                  xor         a3, s5, t0
                  lui         tp, 240932
                  xori        t2, s3, 1849
                  sltiu       s0, s3, -1730
                  sltu        a5, a5, s6
                  sltu        a7, s11, t4
                  nop
                  xor         s5, s2, t2
                  auipc       ra, 823288
                  sll         a7, a1, a2
                  slli        zero, s9, 14
                  sub         s9, zero, s5
                  sll         t2, t2, a1
                  slli        t0, s10, 15
                  slt         zero, a7, gp
                  slti        s2, s5, -440
                  sra         s6, t0, t2
                  sll         t0, s11, s10
                  slti        zero, t4, 1341
                  auipc       a5, 975655
                  srl         t1, t0, s5
                  srl         s0, a1, a4
                  nop
                  slli        tp, s2, 26
                  sltu        a6, s11, s0
                  auipc       s6, 228978
                  auipc       s6, 208179
                  xori        t1, ra, 1947
                  slt         t2, ra, a2
                  slti        ra, zero, -1242
                  sltu        t0, ra, s8
                  nop
                  andi        sp, a4, 1515
                  sra         a6, a0, a6
                  add         s11, s9, s0
                  slti        sp, gp, -109
                  sltu        s4, t0, gp
                  xori        a3, s10, 496
                  add         zero, s0, a1
                  or          t3, t1, s2
                  add         t4, s5, s9
                  and         zero, a7, s4
                  sll         t4, ra, zero
                  lui         tp, 14992
                  andi        zero, s9, -1641
                  slli        a2, t1, 0
                  ori         a3, t6, 527
                  xori        s7, t4, -1413
                  addi        s6, s9, -411
                  or          s4, gp, a0
                  sra         t0, s8, a5
                  add         t1, zero, s7
                  ori         s0, a3, 53
                  and         s2, sp, a4
                  nop
                  srl         a0, s7, t4
                  sltiu       a4, zero, 1331
                  sll         s8, t2, s4
                  auipc       gp, 791092
                  slti        t3, a0, 205
                  andi        s3, sp, 1010
                  slli        sp, s6, 19
                  xori        s11, s5, -1184
                  and         s2, s9, gp
                  slti        s8, tp, 372
                  add         a7, s3, a5
                  xori        a7, tp, 35
                  auipc       zero, 835642
                  xor         s8, s0, t3
                  sltu        s6, t2, t6
                  addi        sp, zero, -1828
                  nop
                  slti        t4, a3, -144
                  and         s5, s5, a1
                  sub         a2, t5, s4
                  add         zero, s3, a0
                  slt         zero, a0, t4
                  sltu        t0, s4, s6
                  sra         t2, t5, a4
                  srl         a1, s3, s9
                  sll         t3, s2, s4
                  nop
                  slt         zero, t3, t2
                  auipc       s11, 946260
                  lui         s5, 947402
                  srl         sp, s3, ra
                  xori        a2, s6, 791
                  sra         s5, s8, s2
                  slt         s2, s10, gp
                  slli        ra, a7, 14
                  andi        a5, a5, -439
                  srl         s0, t1, s5
                  add         s0, t3, s3
                  sltiu       a2, ra, 249
                  nop
                  andi        s3, s4, -293
                  addi        t1, s1, 838
                  auipc       a4, 900570
                  sltu        s11, s3, s9
                  auipc       s2, 936530
                  sll         s1, gp, a3
                  xor         s6, t5, a1
                  slt         t0, s0, a6
                  lui         a1, 673754
                  xor         s9, t4, gp
                  slt         s6, sp, t6
                  slti        t2, a2, 1259
                  sll         gp, t6, s0
                  andi        t4, tp, 1357
                  slti        s6, s1, -897
                  sltiu       a2, tp, -1575
                  or          a1, t0, s1
                  andi        s0, a7, 666
                  auipc       s5, 617124
                  sub         a0, a1, zero
                  lui         t4, 993351
                  slti        zero, a1, -1650
                  sub         a6, t5, a4
                  sub         a0, sp, s2
                  or          zero, s5, t5
                  xori        a1, sp, -748
                  slt         gp, s0, a1
                  srai        zero, tp, 18
                  add         zero, a2, s6
                  sra         t4, a0, zero
                  addi        a6, t3, 693
                  slli        a6, s8, 19
                  sltu        s5, s2, a7
                  xori        zero, a1, -1476
                  xori        s6, a6, -420
                  andi        t4, s10, -1206
                  slli        ra, s5, 14
                  nop
                  nop
                  nop
                  xor         a3, s2, t1
                  lui         zero, 29673
                  sltiu       s4, t6, -1989
                  srli        t1, a2, 23
                  auipc       a6, 936967
                  sltiu       t3, gp, -989
                  add         a6, a7, a7
                  sra         tp, sp, s8
                  and         zero, t2, a0
                  xor         a5, t5, s2
                  slti        t2, tp, 1515
                  lui         s7, 982097
                  sltu        s2, a2, s10
                  sub         ra, a7, a3
                  andi        gp, tp, -1832
                  ori         s8, tp, -98
                  sltiu       s4, t5, -612
                  srl         a5, t2, s8
                  srl         s8, a3, t6
                  sltu        s3, s9, s11
                  ori         t3, zero, -1301
                  andi        s1, s4, 385
                  nop
                  sra         s4, t6, s8
                  lui         t2, 227055
                  sltiu       gp, t3, -1235
                  srai        s2, t1, 11
                  nop
                  srai        s2, a4, 31
                  sra         a4, s8, t5
                  slli        a5, s2, 16
                  slli        a4, a3, 27
                  sub         t3, s10, sp
                  sltiu       t2, a0, -740
                  or          s8, s10, s0
                  ori         a3, a4, -1
                  andi        s9, s0, -1193
                  and         a7, s5, s2
                  auipc       s4, 424336
                  sltu        s3, t0, a4
                  srl         a2, s7, t5
                  sra         s8, zero, sp
                  or          tp, s4, s8
                  auipc       zero, 587367
                  slti        zero, s8, -68
                  nop
                  sltu        s4, a1, sp
                  addi        s1, a4, -1593
                  ori         t2, ra, 1771
                  add         sp, s5, a7
                  sub         zero, s7, gp
                  sub         s8, a6, s3
                  sltiu       zero, a3, -408
                  slt         s5, t2, zero
                  sltiu       a7, a5, -651
                  sltu        s9, gp, a5
                  sra         a0, s11, a3
                  andi        s3, a2, -642
                  addi        s9, ra, -2014
                  srli        sp, s8, 15
                  sra         s2, s10, a5
                  xor         gp, s5, t6
                  xor         ra, a4, s1
                  slti        t3, t4, -1166
                  auipc       zero, 19802
                  srl         a0, a4, a6
                  sll         a0, t3, s7
                  nop
                  xori        a6, a1, -1605
                  slti        zero, s3, 1809
                  ori         a5, gp, -1211
                  add         s5, a3, s4
                  slli        t3, s1, 10
                  sll         zero, t6, s2
                  sltiu       s5, ra, 408
                  lui         t0, 218243
                  lui         s3, 391873
                  xor         a6, s2, t0
                  slli        zero, ra, 10
                  ori         a6, sp, -1625
                  srli        zero, a4, 29
                  xor         a5, a5, a0
                  sub         a2, t1, zero
                  and         zero, gp, s4
                  srai        zero, s10, 18
                  andi        tp, a3, 628
                  xori        t3, a5, 385
                  srli        s5, ra, 9
                  srai        a1, s6, 26
                  or          t1, a4, a0
                  add         a1, a5, s9
                  xor         a5, a3, s0
                  slt         a5, s7, zero
                  or          zero, a7, s6
                  andi        s6, gp, 1174
                  srli        a5, t4, 11
                  add         s8, a3, s8
                  sra         a5, a4, a4
                  sltu        s4, a0, s0
                  slti        s4, a4, -1963
                  slt         ra, a0, s8
                  lui         gp, 178955
                  sra         a3, a6, zero
                  and         s1, a0, a0
                  srl         s11, s7, a2
                  xori        t1, t3, -1434
                  srli        a7, zero, 6
                  xor         a5, a0, a0
                  lui         a7, 376748
                  srl         zero, a4, a6
                  andi        a3, s8, 165
                  addi        t1, s0, -363
                  ori         zero, s6, 1677
                  ori         a6, s7, -1610
                  auipc       gp, 138008
                  srai        s9, zero, 11
                  xori        t4, s8, 956
                  srl         zero, s1, s1
                  srai        s8, a0, 14
                  slt         t0, s2, t6
                  slti        zero, s1, 1049
                  or          s2, s1, zero
                  sll         a0, s6, t4
                  sll         a2, s2, a1
                  xor         zero, sp, a0
                  xor         s5, sp, t4
                  slti        s2, s1, -1354
                  andi        tp, a4, 1255
                  srai        s7, s6, 8
                  slti        zero, a5, 298
                  auipc       t0, 430934
                  srl         s11, gp, s8
                  slt         a5, a0, t6
                  sra         tp, a5, t1
                  ori         s4, s3, -2031
                  andi        zero, ra, -31
                  ori         s6, a3, -1749
                  slti        a1, s1, -1000
                  slt         gp, s5, zero
                  sll         sp, a2, a2
                  lui         sp, 934900
                  xori        s3, tp, 998
                  srl         sp, s4, t0
                  slli        s9, s4, 4
                  add         s4, t4, gp
                  and         t2, a5, ra
                  nop
                  xor         a6, t3, sp
                  slli        ra, s2, 7
                  sub         ra, s9, ra
                  slli        t4, t5, 4
                  add         s4, s2, gp
                  ori         a4, a6, -247
                  sltu        a7, t2, s0
                  sltu        s11, ra, a4
                  sltu        zero, s3, s8
                  add         s4, t5, s10
                  sra         t1, t1, s4
                  addi        t0, a2, -1846
                  srai        ra, s6, 7
                  xori        s5, t5, 355
                  slt         gp, t3, a5
                  slli        s1, a5, 31
                  sra         t1, s1, a2
                  lui         s5, 187256
                  srl         a6, s10, tp
                  addi        t3, s6, 1161
                  sltiu       t0, s11, 685
                  add         a6, a3, t1
                  srli        a4, s7, 3
                  sll         t4, gp, s5
                  ori         s3, s0, 1765
                  srl         ra, a5, t2
                  srl         t3, t2, t2
                  or          a5, a3, s8
                  and         a4, t2, zero
                  and         t3, t2, t4
                  srli        s9, s11, 26
                  or          a7, t5, s6
                  ori         a0, s8, 419
                  xori        s4, a1, 1541
                  auipc       s9, 937321
                  xori        a2, a6, 897
                  srl         zero, a5, a3
                  slli        s6, zero, 27
                  sra         s0, ra, a2
                  slti        s0, s4, -426
                  srli        a4, tp, 3
                  andi        t0, a6, 869
                  xori        s8, ra, -1363
                  sltu        gp, a1, s9
                  slti        a2, tp, 230
                  and         s5, t6, s11
                  sub         s6, s5, t0
                  addi        a7, gp, -1395
                  ori         zero, s2, 1363
                  sltiu       s11, s2, 741
                  sll         s6, a1, t6
                  lui         s6, 964198
                  auipc       a3, 378099
                  andi        a0, s1, -556
                  auipc       a4, 557882
                  srl         s0, zero, a6
                  sltu        t4, s10, a3
                  slli        ra, s4, 11
                  andi        zero, s5, 2039
                  nop
                  sll         s7, gp, s3
                  add         tp, a5, a6
                  srai        t1, tp, 7
                  addi        s11, t2, 60
                  xor         tp, a6, t5
                  slt         s1, a2, t4
                  slti        s11, a5, 2003
                  auipc       t2, 1007043
                  add         tp, t4, a5
                  slt         a1, sp, s8
                  slt         t3, a7, a0
                  and         s7, s9, t6
                  or          zero, t1, t5
                  andi        sp, s0, -1643
                  xori        s9, t2, 1618
                  nop
                  auipc       sp, 677400
                  slt         s5, a7, sp
                  slti        s9, tp, 1894
                  addi        zero, a5, -1160
                  sra         t1, tp, s4
                  srl         t3, t6, s11
                  slli        a7, s2, 25
                  sll         gp, a4, s9
                  lui         s3, 243668
                  addi        s6, s0, 274
                  srli        s1, a4, 25
                  srai        a7, s10, 5
                  auipc       tp, 141277
                  sltu        zero, s1, a1
                  sll         a6, a6, t1
                  or          zero, a3, ra
                  or          s6, a4, t5
                  sltiu       gp, a7, 817
                  slt         t2, a5, s4
                  addi        gp, tp, -532
                  srl         s2, s6, t6
                  srli        t3, a5, 17
                  lui         gp, 997863
                  sltu        a6, gp, s8
                  sub         s11, a1, t6
                  xori        s5, a1, -1588
                  andi        a3, s3, -459
                  sltiu       a5, s7, -523
                  slti        a6, t5, -96
                  xor         a7, s3, ra
                  add         s1, t1, t0
                  or          s1, a3, ra
                  nop
                  addi        zero, t4, -635
                  slli        s6, s7, 10
                  slli        s4, s11, 25
                  sra         a3, sp, t3
                  sll         zero, s1, a4
                  ori         a6, a0, 1710
                  srli        zero, s7, 7
                  slli        s9, a2, 5
                  nop
                  sra         s3, a1, sp
                  slli        zero, s4, 22
                  andi        a1, a7, -557
                  sltiu       zero, t1, 906
                  slli        s6, a4, 21
                  or          s1, gp, a4
                  nop
                  sltiu       t0, t6, 1632
                  sltiu       a6, t4, 776
                  auipc       t4, 500598
                  andi        a5, s4, 1679
                  sltiu       s3, t5, 1589
                  addi        s7, t4, 1114
                  andi        a6, a2, 358
                  slli        t0, a4, 24
                  xor         zero, a4, t5
                  slt         s4, s0, s1
                  slti        a7, zero, -1280
                  slti        t0, a4, -1179
                  slti        a7, s3, 218
                  sra         a6, a1, t3
                  sub         s3, t1, s2
                  lui         a5, 733135
                  srl         zero, tp, a0
                  slli        s5, s11, 9
                  sub         s11, t3, a0
                  slt         tp, tp, t6
                  sltu        s11, t0, s8
                  and         s4, zero, a2
                  slli        s4, t2, 22
                  auipc       a2, 775195
                  and         s1, ra, s7
                  or          t4, zero, a5
                  srl         a2, s10, s3
                  nop
                  sltu        t4, tp, a6
                  srli        sp, t5, 22
                  xori        s9, s1, 1490
                  nop
                  sltu        s6, t3, s11
                  slti        sp, t5, 551
                  nop
                  sra         zero, a3, s6
                  slli        a0, s5, 11
                  and         gp, t4, a4
                  nop
                  srl         s0, sp, t1
                  slt         t0, gp, ra
                  nop
                  srli        t3, t1, 20
                  add         s0, t5, s4
                  nop
                  sll         s8, tp, s9
                  add         s1, t3, tp
                  andi        s3, s8, 1875
                  or          t3, a7, s9
                  sra         a5, t6, a5
                  ori         s0, tp, 548
                  add         s4, s8, t1
                  slli        a3, a0, 23
                  slli        t2, t0, 0
                  addi        a6, s11, -18
                  add         s11, s4, t2
                  sltiu       s0, s5, 1518
                  ori         s11, t0, 794
                  lui         s1, 663678
                  add         s7, a0, zero
                  sltu        t2, a4, s3
                  sltiu       t2, t5, -371
                  addi        s2, s0, -1141
                  sll         s4, a5, t0
                  lui         s9, 505398
                  srl         t1, t6, s6
                  sll         ra, a3, t6
                  lui         a6, 289813
                  andi        sp, s0, 5
                  addi        s9, a0, -484
                  slti        tp, a7, 1736
                  sll         ra, t4, s4
                  slt         zero, sp, s7
                  slti        a6, tp, -1988
                  lui         s4, 632171
                  nop
                  srli        t1, s4, 4
                  xori        a2, s3, -1417
                  xor         t0, s1, t1
                  sltu        t4, s11, sp
                  or          s8, zero, zero
                  sltiu       t2, t0, 1775
                  lui         zero, 217309
                  sll         s3, s8, a2
                  or          s4, t6, a6
                  addi        a2, s0, -1023
                  auipc       s7, 939085
                  slli        sp, t3, 7
                  sub         s6, a6, gp
                  slti        tp, s11, -841
                  xor         s11, ra, s8
                  slli        s0, t0, 3
                  andi        s5, s11, 1427
                  srai        s6, s2, 23
                  xor         a1, a6, s10
                  srai        a7, ra, 16
                  srai        s7, s3, 11
                  sltiu       s9, a2, 824
                  slt         a4, t2, t2
                  ori         s0, t3, -842
                  srai        s9, a4, 25
                  or          t4, tp, zero
                  slli        zero, s4, 3
                  sll         t0, s6, s11
                  xor         s1, a6, gp
                  ori         zero, s10, 322
                  xor         s7, a6, s8
                  and         a2, zero, t1
                  sra         zero, s0, t3
                  sra         t1, t2, t5
                  or          zero, a7, t0
                  addi        a5, s1, -19
                  srli        a0, t4, 10
                  ori         ra, t0, -222
                  srai        t0, t6, 2
                  sra         s5, s3, s5
                  xor         a0, s11, s2
                  and         s8, s2, s6
                  slti        zero, t5, -1861
                  xor         zero, a6, t4
                  srl         s3, a2, t3
                  xori        t0, a7, -1537
                  sub         t1, t2, t1
                  ori         s3, s9, -479
                  sltiu       sp, a7, -1596
                  or          a4, gp, s9
                  or          s5, s1, t6
                  sltu        gp, s5, s10
                  addi        s6, s9, -1325
                  sltiu       t4, s11, 2026
                  slti        ra, s5, -1496
                  srai        a1, a1, 11
                  xor         zero, zero, t3
                  nop
                  auipc       s6, 348850
                  sra         s7, t5, a5
                  and         a1, a4, s8
                  slt         a4, a2, t0
                  xori        s4, s8, -1242
                  auipc       s8, 304107
                  slli        a3, a3, 27
                  srl         s2, s5, a4
                  sltu        s9, gp, t0
                  addi        sp, s11, -1488
                  ori         t3, s6, 1481
                  xor         t2, s1, ra
                  auipc       s0, 606114
                  slti        s1, s10, 1508
                  srai        s2, t4, 5
                  li         t4, 0x18bd2ab2 #start riscv_int_numeric_corner_stream_19
                  li         t3, 0x0
                  li         t2, 0x0
                  li         s1, 0x6161a8e5
                  li         s11, 0x1
                  li         s8, 0x0
                  li         s9, 0x4f42f108
                  li         a1, 0x7e0bf7a4
                  li         s3, 0x0
                  li         a7, 0x0
                  nop
                  addi        zero, a3, -1601
                  sub         t0, s1, sp
                  lui         t4, 896151
                  add         s8, s5, a2
                  addi        s2, t2, 1278
                  nop
                  lui         zero, 67180
                  add         zero, tp, gp
                  addi        s0, a3, 547
                  add         ra, t2, t6
                  addi        s2, t6, -1794
                  lui         s2, 279929
                  addi        s2, t3, 762
                  add         sp, s5, a6 #end riscv_int_numeric_corner_stream_19
                  srai        a6, s6, 9
                  slt         a6, a6, a1
                  xor         a3, s8, s1
                  xor         s9, s10, sp
                  sltiu       s8, t5, 553
                  nop
                  sltiu       sp, tp, -565
                  nop
                  sra         sp, t3, a0
                  srai        s1, s2, 9
                  sub         t3, s2, s9
                  addi        s5, t0, 729
                  auipc       s6, 180850
                  ori         zero, ra, 1504
                  andi        t1, a1, -1878
                  xor         sp, s6, a4
                  auipc       s0, 588963
                  sltiu       s1, s5, 1496
                  xori        s0, a1, -1338
                  slti        ra, s11, -1225
                  addi        s6, s8, -1204
                  sub         s2, s0, a5
                  slti        zero, s6, 691
                  or          s0, s4, t5
                  slt         a5, t0, a2
                  slli        s6, s5, 14
                  add         zero, a0, zero
                  sltu        a1, s11, s9
                  xor         t4, t3, a2
                  ori         tp, a2, -208
                  and         s4, t5, a0
                  auipc       gp, 375335
                  slt         s0, sp, zero
                  auipc       gp, 397935
                  srl         s6, s6, a5
                  or          t1, sp, a1
                  sltiu       s9, t1, 1913
                  xor         s4, t5, a5
                  xori        s4, a0, -423
                  xori        a0, a7, 1702
                  sll         a4, a7, a6
                  xori        t3, s7, -227
                  auipc       a3, 113665
                  sll         s1, s11, a7
                  lui         a2, 304514
                  sltiu       s5, gp, 1967
                  auipc       zero, 74969
                  or          zero, s0, s2
                  srli        a0, sp, 23
                  sub         tp, tp, s11
                  sltiu       s9, s6, -1985
                  andi        a5, s9, 1955
                  ori         a0, s10, -459
                  or          a1, t1, a5
                  or          tp, t6, t3
                  or          a4, s4, s2
                  and         a6, tp, a4
                  srl         a3, a0, s0
                  xor         a5, s4, gp
                  sub         a0, tp, s1
                  ori         zero, s6, 2045
                  add         tp, zero, a7
                  srl         zero, t5, a3
                  auipc       t4, 470163
                  or          t0, a1, s5
                  sub         s8, s1, a4
                  sub         zero, ra, ra
                  add         a0, s10, s10
                  nop
                  xori        a0, s9, 1631
                  sra         s9, t0, tp
                  sltiu       zero, a1, -1311
                  addi        s9, s7, 271
                  slli        s8, s11, 17
                  and         s6, tp, a5
                  and         s2, a4, t0
                  lui         ra, 764750
                  srli        a1, a1, 7
                  srai        sp, t4, 7
                  xori        a7, s4, 1049
                  srai        gp, s7, 21
                  add         t0, t2, s8
                  or          zero, s9, s5
                  ori         a0, a3, 912
                  or          s1, a2, t0
                  and         s2, s11, a0
                  sll         t4, t2, s1
                  slt         s7, t4, s10
                  srai        zero, t2, 11
                  slti        gp, s5, 1673
                  nop
                  and         tp, s8, s1
                  nop
                  sltu        s9, t2, t2
                  xor         s9, s2, a5
                  xor         s8, a6, a4
                  sra         s1, s7, t6
                  srl         a0, t6, a3
                  srli        tp, t2, 0
                  sltu        tp, s7, s6
                  ori         t4, a4, 58
                  or          a1, t6, t2
                  srl         s11, a4, s5
                  lui         zero, 292900
                  addi        s9, s3, 663
                  srl         s3, s7, s5
                  xori        zero, s1, -1637
                  sltu        s6, sp, a3
                  and         s9, t6, s5
                  slt         t4, s11, s6
                  add         s11, zero, s11
                  sub         t3, s10, zero
                  xori        sp, s9, -38
                  sltu        a1, ra, s7
                  auipc       t3, 334074
                  srl         s3, s2, a6
                  srl         t0, t4, s0
                  sub         zero, s7, a5
                  nop
                  srli        t1, a3, 14
                  sub         a7, a7, s4
                  slti        gp, s8, 1453
                  xori        a5, a3, -1412
                  or          s6, a7, a0
                  sltu        a0, a3, gp
                  srai        s3, ra, 24
                  xor         t2, a7, s10
                  and         zero, s11, a3
                  and         zero, t6, t2
                  or          a5, a5, a0
                  and         s11, s3, s6
                  or          t4, s0, s6
                  slli        zero, t5, 22
                  and         s9, t4, sp
                  lui         zero, 919986
                  or          zero, s10, s5
                  xor         a7, sp, s10
                  slli        gp, s4, 11
                  sub         tp, a5, s3
                  sll         s1, s10, s6
                  sll         s6, zero, s2
                  sltu        s8, t3, a1
                  or          tp, s10, t4
                  ori         t2, a0, -1524
                  andi        sp, a6, -397
                  add         s6, sp, t6
                  sll         s7, t3, a0
                  addi        s1, a5, -1647
                  srai        a3, s8, 23
                  srl         s1, gp, s9
                  slli        s9, s6, 24
                  and         s6, a3, t5
                  add         a6, t0, t4
                  lui         zero, 819039
                  lui         a3, 167747
                  add         a0, s11, s2
                  auipc       a5, 845343
                  auipc       sp, 43934
                  sra         a1, sp, s10
                  xori        s2, t1, -121
                  nop
                  sll         zero, a7, s10
                  slli        ra, s2, 20
                  ori         s9, t4, -170
                  slti        zero, gp, -994
                  ori         a4, s4, -667
                  srl         a7, s0, ra
                  lui         zero, 532190
                  slt         a1, a3, a4
                  ori         s5, t3, -579
                  xori        t3, s1, -545
                  xor         s2, tp, s6
                  xor         t3, gp, a4
                  srli        zero, t2, 6
                  srl         s4, s3, s8
                  slti        t1, t3, -963
                  lui         a7, 997272
                  addi        a2, ra, 753
                  auipc       s2, 398746
                  and         tp, a4, s4
                  nop
                  slli        s11, s2, 1
                  srai        s8, a3, 17
                  slli        s3, a7, 31
                  slli        sp, a4, 14
                  slt         a6, a5, s5
                  andi        s1, s5, 1467
                  slti        s7, s7, 1334
                  sub         s3, t5, a1
                  and         sp, t3, a5
                  sltu        s5, a0, a5
                  slti        zero, a5, 354
                  ori         zero, a2, -249
                  srai        gp, tp, 3
                  addi        a3, s3, -742
                  srli        t0, a7, 2
                  xor         ra, s8, t0
                  srai        gp, a5, 15
                  srl         zero, a4, s4
                  and         s9, t5, s4
                  sra         a2, s6, a5
                  sltu        s9, a0, s3
                  sra         a0, a2, t0
                  sra         t2, s3, s10
                  slti        tp, t0, 1054
                  xori        a1, a0, -195
                  sra         s7, s10, a6
                  slli        s7, sp, 0
                  srai        tp, a0, 6
                  sltiu       s4, t6, 907
                  lui         a4, 244774
                  sll         t0, gp, tp
                  sll         t4, t1, gp
                  sub         s1, a3, t4
                  sltu        s4, t5, a0
                  sra         zero, zero, s5
                  nop
                  nop
                  add         zero, tp, s8
                  srli        t3, zero, 22
                  srai        s11, sp, 15
                  add         s4, a1, a5
                  slli        a4, s4, 8
                  auipc       t2, 457036
                  srai        s0, a2, 31
                  xor         zero, a5, tp
                  srl         a6, s8, ra
                  auipc       t0, 960426
                  slli        s2, tp, 11
                  slti        t4, s0, -1289
                  andi        ra, s9, 981
                  sltiu       s8, t5, 719
                  auipc       s1, 603161
                  sltiu       tp, s0, 658
                  addi        t1, t3, -1161
                  srli        a4, a1, 19
                  sltu        s3, a1, a1
                  andi        s8, t4, -761
                  addi        zero, sp, -361
                  andi        tp, s5, -2003
                  slti        gp, tp, -1588
                  andi        s5, s9, 895
                  srli        s4, zero, 31
                  nop
                  sra         a0, t4, t5
                  xor         t2, sp, a2
                  andi        s4, a0, 69
                  srli        zero, tp, 11
                  or          zero, s10, s1
                  auipc       a1, 67813
                  slti        t0, t4, 1728
                  or          t2, a5, a1
                  sra         s9, a1, a1
                  andi        t3, s10, -778
                  ori         s11, a4, -627
                  srli        s6, zero, 13
                  srli        a5, a4, 1
                  ori         zero, a2, 391
                  srai        s4, s1, 29
                  or          a3, s9, gp
                  nop
                  sltiu       s3, a0, 1976
                  sltiu       t3, ra, 163
                  sll         a6, s9, t1
                  sltu        zero, a2, s9
                  srai        t2, s4, 6
                  lui         ra, 523140
                  xori        s1, a3, 698
                  addi        a7, sp, -1852
                  slt         t2, s2, a7
                  slli        a5, s6, 23
                  or          zero, s5, a2
                  or          zero, t3, a2
                  sra         s9, t5, s11
                  xori        s8, t4, -1087
                  and         a6, tp, a5
                  xori        t3, s10, 583
                  sltiu       a0, sp, 110
                  sltu        s9, a4, s5
                  or          t0, t2, s6
                  slli        s1, s3, 6
                  slt         gp, s6, a0
                  sub         s1, tp, a0
                  nop
                  li         t4, 0x0 #start riscv_int_numeric_corner_stream_3
                  li         t3, 0x0
                  li         s11, 0x1
                  li         s3, 0x1
                  li         a1, 0x0
                  li         a5, 0x0
                  li         s2, 0x0
                  li         a4, 0x1
                  li         t2, 0x0
                  li         tp, 0x0
                  lui         zero, 102266
                  lui         a7, 981358
                  nop
                  sub         a5, s8, a7
                  add         tp, a1, t5
                  sub         a2, t4, s4
                  addi        s7, tp, 1195
                  sub         s0, t3, s5
                  sub         s11, t2, t6
                  sub         t4, s5, t0
                  lui         a5, 733842
                  sub         zero, gp, s8
                  nop
                  sub         zero, s1, t0
                  sub         s8, s11, t2 #end riscv_int_numeric_corner_stream_3
                  auipc       s0, 237546
                  slli        a2, a7, 9
                  lui         gp, 801169
                  and         a0, ra, a4
                  ori         t0, t5, -1573
                  slt         s1, a4, s10
                  sltiu       s7, a5, 245
                  srl         s9, a1, s2
                  xori        a4, s9, 551
                  add         t3, s6, a2
                  slti        s7, a4, 1980
                  ori         gp, a5, 829
                  addi        sp, s4, 1297
                  sra         a4, sp, a5
                  auipc       a1, 788090
                  ori         a3, s8, 1759
                  nop
                  andi        s11, s4, 1666
                  lui         s3, 824597
                  and         s2, sp, s2
                  or          t0, ra, zero
                  auipc       t3, 383227
                  srai        ra, t0, 0
                  xori        s1, t1, 1128
                  ori         s5, s4, -730
                  auipc       t1, 490680
                  srl         s5, s9, s3
                  srli        zero, s0, 18
                  auipc       a0, 37918
                  or          s5, s7, s2
                  ori         s2, a7, -1246
                  or          s3, sp, s0
                  nop
                  ori         s0, a5, 783
                  auipc       a0, 173062
                  srl         t3, sp, t4
                  andi        t4, s2, 132
                  nop
                  nop
                  ori         gp, t6, 1475
                  auipc       tp, 822969
                  nop
                  sra         a0, a7, a7
                  and         sp, a7, s2
                  slli        s3, s0, 4
                  add         t4, a7, t0
                  xor         s5, a1, a5
                  xor         t3, t4, t0
                  sll         s7, a4, s4
                  srai        t1, zero, 27
                  addi        t4, s7, 1964
                  lui         a6, 77056
                  nop
                  lui         s2, 610896
                  sltiu       s11, zero, -1101
                  xori        a3, s8, 1589
                  or          t2, tp, a7
                  slti        s0, a5, 1984
                  andi        sp, a0, -1527
                  or          zero, a2, s2
                  andi        s1, t0, 1326
                  srl         tp, s3, t1
                  or          s4, s9, t5
                  or          s8, a4, a1
                  xor         s2, a7, a3
                  sra         zero, t4, s0
                  andi        s4, t5, -1421
                  sll         ra, t1, t0
                  lui         a1, 169216
                  xori        zero, a0, -1658
                  xori        t0, a3, -1164
                  auipc       s7, 194354
                  xor         s1, gp, s4
                  sltiu       s4, t5, -1886
                  add         a4, t0, s9
                  slli        zero, t0, 13
                  xor         zero, a2, a4
                  slti        a5, t0, 342
                  sll         s9, a6, t6
                  nop
                  nop
                  sltu        s2, a5, gp
                  slt         t4, s5, s10
                  slt         s0, s0, s0
                  sltu        s0, a2, a3
                  sub         s5, gp, s6
                  slt         a1, s5, tp
                  slt         s2, s0, s4
                  srai        t3, t3, 11
                  addi        zero, s8, -1160
                  sltiu       gp, s2, 121
                  lui         s2, 924625
                  ori         s0, t4, -1436
                  slt         s1, t5, a1
                  andi        t1, s8, 1695
                  srl         s7, a0, s9
                  sll         s6, s1, s5
                  auipc       zero, 737729
                  slt         s2, s2, ra
                  sltiu       a4, tp, -316
                  sub         zero, t5, s10
                  xori        ra, t5, 854
                  sra         t2, a5, sp
                  srl         tp, t6, t6
                  addi        s5, tp, 696
                  sltu        zero, s8, s0
                  addi        a7, sp, -1141
                  xori        a3, s0, 781
                  auipc       zero, 33317
                  ori         sp, a4, -76
                  sltu        s6, s3, a0
                  auipc       zero, 718090
                  slli        a6, a7, 30
                  sll         zero, t4, sp
                  sub         zero, s9, t3
                  nop
                  nop
                  sltiu       a7, s2, 429
                  slt         s1, t6, s4
                  sra         t1, s4, s6
                  or          ra, s1, s4
                  srli        t1, a2, 10
                  slli        s0, zero, 3
                  sltu        a0, s8, s11
                  srli        t2, t3, 22
                  xor         a0, tp, sp
                  nop
                  srli        a2, tp, 26
                  addi        t3, a7, -305
                  auipc       s8, 200581
                  auipc       s0, 238473
                  andi        zero, s4, 1465
                  ori         s7, a6, 2041
                  or          a5, s3, a1
                  sltu        a3, t1, t0
                  sub         t4, s9, t4
                  sltiu       gp, sp, -1344
                  nop
                  sltu        t4, t2, t4
                  slli        a3, t1, 14
                  slti        a5, a7, -944
                  ori         a6, s11, 1662
                  and         a0, s1, t5
                  or          s7, t2, a7
                  srai        s1, s4, 18
                  srai        s5, s2, 23
                  srli        zero, a3, 6
                  nop
                  srai        s7, s5, 13
                  andi        s1, a1, -174
                  sub         s5, a0, a1
                  sltu        zero, t0, s11
                  lui         s7, 739661
                  srai        s11, s6, 28
                  sll         s3, s2, s11
                  sub         zero, s8, zero
                  sub         t2, a6, zero
                  srli        sp, a3, 28
                  ori         zero, s11, 1454
                  slt         a2, s4, tp
                  ori         t0, t4, -666
                  sra         s4, s11, s4
                  sra         s2, s5, s0
                  lui         t4, 239824
                  sltu        a1, a0, s3
                  sub         zero, s1, t5
                  sra         s11, s7, sp
                  lui         gp, 285421
                  srli        s7, a2, 17
                  andi        a5, gp, 602
                  nop
                  addi        a7, t1, -1533
                  sra         a7, t4, s9
                  andi        ra, t4, 382
                  slli        a4, t3, 29
                  sub         a3, a2, a0
                  and         zero, ra, s5
                  and         tp, s4, tp
                  addi        a5, t2, -640
                  sltiu       s9, s6, -565
                  addi        t4, s3, 1426
                  addi        s4, tp, -706
                  slt         zero, t5, s7
                  or          s11, a4, tp
                  xor         a1, t5, a2
                  addi        s8, s6, 1444
                  slli        gp, a7, 24
                  sltu        s5, sp, s7
                  srai        zero, s6, 16
                  nop
                  andi        a7, t6, -1607
                  xor         a2, s2, s9
                  or          t4, t4, s11
                  slti        s4, s7, 1378
                  slt         a4, a4, s10
                  andi        zero, s0, 1011
                  srli        sp, s4, 21
                  xor         s0, s9, a6
                  srai        t0, s11, 30
                  slt         zero, s9, s2
                  lui         zero, 621909
                  xori        s11, t6, -228
                  sltiu       ra, s7, 271
                  ori         s0, t6, -347
                  srai        s6, s5, 28
                  nop
                  or          s5, a7, a1
                  sub         s4, a7, zero
                  andi        t2, s7, -944
                  nop
                  srai        a7, s0, 3
                  or          t2, s6, t5
                  sra         s2, s9, a2
                  sltu        s11, s0, t4
                  sltu        ra, s11, s6
                  slli        t2, a4, 19
                  sll         a5, a7, a3
                  or          s11, s7, s2
                  slti        s3, t0, 1726
                  slli        s8, s6, 13
                  auipc       t1, 1000368
                  add         a2, t4, s9
                  and         sp, t2, t2
                  srai        t2, s5, 21
                  and         s6, a1, a5
                  or          s8, s10, tp
                  slli        zero, s8, 27
                  nop
                  or          s2, a7, s8
                  xor         s0, t1, s2
                  addi        s9, a2, -643
                  lui         s8, 656249
                  add         a5, zero, s9
                  and         s4, a7, a5
                  xori        s8, zero, 442
                  sra         a6, ra, a1
                  srli        s9, a0, 23
                  xor         a0, zero, s4
                  addi        s1, t1, -691
                  xori        t1, s11, -242
                  and         t1, a0, s1
                  andi        s4, a0, 132
                  add         s9, t1, sp
                  and         t1, t5, s5
                  xor         gp, s0, t3
                  srli        zero, a2, 1
                  sra         t2, t1, s0
                  xor         t4, t4, s4
                  slt         s0, s4, s2
                  slti        a5, a1, 1619
                  add         tp, a4, a6
                  sub         s8, s8, t3
                  sltu        sp, t0, sp
                  sra         zero, s11, a6
                  andi        ra, t3, 439
                  auipc       s4, 766721
                  ori         s4, gp, 1712
                  and         a0, t2, s2
                  sub         zero, s4, a2
                  slli        s9, s7, 21
                  xori        s0, s9, 1020
                  or          gp, a1, a5
                  slli        zero, t2, 29
                  addi        s9, gp, -730
                  sll         s11, a5, t4
                  sltu        a6, gp, s9
                  srl         s5, s8, a2
                  addi        ra, s1, 1142
                  slli        t2, a0, 14
                  andi        t2, t1, -27
                  sltiu       gp, ra, 147
                  sub         t1, s2, s10
                  or          s11, s9, s11
                  sltiu       s11, sp, -1527
                  srl         s3, a3, a5
                  slli        gp, s8, 6
                  auipc       s4, 568572
                  ori         s6, s5, 588
                  srai        a7, a5, 24
                  srli        zero, ra, 31
                  slti        gp, t5, -212
                  sltu        a0, zero, a0
                  srl         s8, tp, t0
                  andi        sp, a3, 691
                  sltiu       s5, a1, 1095
                  srli        a2, a7, 2
                  xori        a2, a6, -1872
                  or          ra, s2, t6
                  andi        ra, t1, 332
                  sltu        t1, a3, gp
                  xori        t2, s6, -279
                  add         s11, gp, s11
                  sltiu       gp, t1, 1700
                  and         a7, t0, s10
                  xor         s11, s5, s10
                  srli        t4, t6, 20
                  slt         s7, t5, zero
                  xor         zero, a3, t2
                  sll         a2, s1, t0
                  nop
                  ori         zero, a7, 1255
                  slti        zero, a1, 571
                  sub         s4, s11, t6
                  andi        s8, a1, -164
                  nop
                  andi        t0, a0, -379
                  xori        zero, s0, -1791
                  ori         s11, tp, 316
                  or          s5, sp, a3
                  sltu        a3, s0, t5
                  srai        s5, s0, 22
                  sub         ra, s11, s1
                  sltiu       t0, t1, -228
                  addi        tp, s2, -1896
                  andi        a3, sp, -1756
                  srai        s5, a2, 19
                  addi        zero, s5, 661
                  ori         a6, s2, -1947
                  xor         a5, a7, s11
                  srai        tp, t1, 27
                  slti        zero, t0, -1837
                  add         t3, t0, s11
                  andi        s3, s1, 1957
                  sra         s1, a7, s6
                  and         t2, s3, a2
                  xori        a5, a1, -1619
                  or          zero, t6, s8
                  slti        s7, a6, 1162
                  srl         sp, t1, a5
                  addi        s4, s7, -1526
                  sll         tp, a1, s6
                  slt         s8, s5, a0
                  slt         s1, t1, s3
                  or          t3, t6, s7
                  nop
                  ori         a4, ra, 501
                  srl         a1, a3, s5
                  sub         gp, zero, t1
                  and         zero, a4, a7
                  sll         s4, ra, gp
                  li         a2, 0x21ecd074 #start riscv_int_numeric_corner_stream_20
                  li         s11, 0x0
                  li         t1, 0x0
                  li         t4, 0x0
                  li         t3, 0x1
                  li         a3, 0x0
                  li         a4, 0x0
                  li         s8, 0x0
                  li         a7, 0x0
                  li         s1, 0x1
                  nop
                  nop
                  nop
                  lui         a0, 725732
                  lui         t2, 233721
                  sub         zero, t0, s7
                  sub         s11, ra, s11
                  sub         t0, a4, sp
                  add         gp, t5, a6
                  add         zero, s2, a6
                  addi        s5, s11, 825
                  nop
                  nop
                  sub         s1, t4, a7
                  lui         t0, 1001216
                  addi        t2, gp, 1573
                  sub         s6, s5, zero
                  addi        a3, sp, 1958 #end riscv_int_numeric_corner_stream_20
                  srai        s0, s3, 30
                  nop
                  lui         a3, 11703
                  lui         s6, 1000956
                  andi        a3, a7, 1308
                  sltu        s3, ra, a3
                  sra         t0, s11, gp
                  srai        a7, t3, 16
                  ori         t0, s1, -1923
                  addi        a7, a4, -492
                  srli        a4, tp, 25
                  add         s11, s9, gp
                  sltiu       zero, t2, 823
                  xor         s6, s2, s8
                  lui         zero, 274501
                  auipc       a3, 232976
                  sltiu       a4, s4, -1388
                  add         t4, tp, a2
                  xor         s8, a2, a3
                  sra         t1, s6, s10
                  slti        a5, s7, -498
                  sra         ra, t6, t0
                  slt         a3, s11, t3
                  srli        s8, zero, 9
                  xori        s11, s8, 129
                  sub         s6, s9, a2
                  xor         ra, t0, sp
                  sltiu       s7, t2, 758
                  slt         gp, t3, s10
                  auipc       s3, 1044152
                  sltu        t4, a5, s11
                  srai        s3, a7, 17
                  srli        s9, a2, 30
                  sltu        tp, s0, ra
                  addi        a7, s3, 923
                  auipc       a6, 330615
                  auipc       sp, 1046421
                  add         t0, t4, t6
                  slli        a7, a7, 27
                  auipc       s0, 143267
                  andi        t2, t1, 538
                  slt         a0, s0, zero
                  srai        t4, a5, 25
                  sltu        s3, a5, s9
                  slli        gp, s9, 29
                  addi        zero, gp, -1344
                  slti        a4, zero, -448
                  sltiu       s6, t6, 1561
                  sra         s4, a6, gp
                  lui         a6, 51884
                  or          s11, s9, s9
                  ori         zero, t0, 779
                  nop
                  nop
                  srli        s8, s4, 10
                  srl         a1, s4, s11
                  or          ra, s10, s7
                  addi        t0, s11, 1140
                  nop
                  auipc       a3, 363217
                  sll         s11, a3, s0
                  andi        a6, s1, 1403
                  xor         a2, a4, t3
                  ori         t3, t5, 1090
                  srli        t0, s2, 8
                  sll         tp, s5, t5
                  slti        a3, s3, 266
                  slti        t3, a4, -543
                  srl         a3, sp, t3
                  auipc       t1, 986980
                  xori        s9, s7, -1870
                  sltiu       s7, t1, 752
                  srl         a7, a4, a0
                  srai        tp, s8, 13
                  ori         t3, a3, -1875
                  xori        t0, ra, -404
                  slli        a2, a3, 26
                  addi        a2, s11, 1584
                  and         t0, s2, t2
                  xor         s8, ra, s10
                  slli        s4, a6, 16
                  srli        s1, s8, 15
                  xor         s4, ra, s9
                  slti        t0, ra, -1952
                  sra         t0, s10, s1
                  or          s0, t6, s6
                  slti        sp, s6, 983
                  sll         a1, tp, s6
                  or          s2, t0, t5
                  sub         s1, t6, s2
                  ori         s9, sp, 975
                  sub         s11, s3, a2
                  srl         s2, zero, s8
                  slli        zero, s11, 17
                  addi        s0, t4, 748
                  srai        t2, s0, 2
                  nop
                  auipc       s11, 405874
                  and         t0, a2, s10
                  slli        s6, t5, 21
                  ori         a7, t5, -991
                  sll         a7, a7, t6
                  addi        s2, a3, 632
                  srl         t3, zero, t5
                  or          sp, a3, t3
                  srl         t4, t1, t2
                  slti        s6, sp, -6
                  sll         zero, s7, zero
                  slli        zero, t3, 22
                  sltiu       zero, s3, -269
                  srl         s8, a7, s10
                  srl         s2, s0, s1
                  or          sp, ra, a3
                  addi        gp, a7, -205
                  srli        zero, s9, 22
                  xori        s8, s0, -73
                  sra         s6, s6, a1
                  xor         ra, s8, s5
                  sltu        a3, t6, s4
                  srli        a1, tp, 21
                  add         sp, s6, s7
                  nop
                  slt         s3, a1, a2
                  srli        a5, s0, 31
                  slt         t3, ra, a3
                  lui         a3, 864683
                  auipc       a5, 359558
                  and         zero, s7, zero
                  add         s4, tp, s9
                  sll         s2, t6, t4
                  add         a2, t0, t4
                  xor         s5, t5, s5
                  slti        t1, s0, 1829
                  xor         a0, s5, ra
                  xor         s2, a6, a4
                  sll         zero, zero, tp
                  auipc       sp, 254043
                  lui         s3, 418119
                  xor         t2, s7, a4
                  srli        gp, s8, 4
                  ori         zero, s0, 2035
                  auipc       zero, 993844
                  sub         ra, t1, s5
                  sra         a4, s4, s8
                  lui         gp, 421381
                  slt         s4, gp, t5
                  slli        s5, a5, 23
                  andi        a1, t2, -42
                  lui         a5, 18728
                  slli        s1, t4, 18
                  andi        a6, t3, 1511
                  xor         t0, gp, s0
                  xori        a3, a7, -1153
                  srli        a1, t1, 16
                  and         zero, gp, a6
                  auipc       a5, 881354
                  slli        a5, s3, 7
                  slt         a3, a7, a3
                  sra         t3, t5, gp
                  sltu        t0, a2, a4
                  and         a3, tp, s6
                  xori        zero, t0, -1638
                  sll         s6, a1, a4
                  ori         a2, zero, -1750
                  xor         a0, s3, t3
                  sltiu       a4, a1, 1210
                  srl         a6, t1, s11
                  auipc       tp, 977119
                  nop
                  slt         a6, zero, s7
                  sub         t3, s8, a0
                  sltu        t2, s9, t4
                  or          s3, s5, a1
                  auipc       tp, 254193
                  slti        a3, ra, -2040
                  addi        t4, a4, -1844
                  add         t4, a0, s3
                  xor         gp, s4, s7
                  slt         sp, s0, s6
                  sll         t1, gp, s9
                  andi        s7, a2, -1472
                  auipc       t3, 461772
                  ori         tp, a3, -85
                  srl         s6, s7, s1
                  andi        s0, s5, 561
                  srai        a7, s5, 12
                  slti        a5, s3, 983
                  slt         a2, s6, ra
                  sub         a1, zero, s1
                  or          gp, a6, a2
                  slti        s2, s6, -2014
                  xori        a5, a7, 929
                  xor         t4, s6, s1
                  slti        s0, s7, -1438
                  nop
                  sra         a6, t1, t5
                  xor         zero, s2, gp
                  srl         s5, s8, sp
                  sltu        a6, s10, s7
                  addi        s6, t6, -1331
                  srli        s5, s2, 8
                  xor         zero, s3, s2
                  addi        s2, s0, 634
                  sub         zero, zero, s9
                  srai        t3, tp, 1
                  sra         tp, a6, t5
                  add         a7, tp, gp
                  srli        s6, a3, 9
                  sra         s0, sp, t2
                  xor         t0, s10, s10
                  slli        a7, t3, 8
                  sll         s6, s11, a5
                  srli        s5, s3, 25
                  auipc       t4, 888268
                  sra         t2, s5, a4
                  slli        t1, a2, 1
                  srl         a2, s9, s0
                  slli        s2, tp, 20
                  sltu        t0, ra, t1
                  add         s9, a6, a4
                  xori        s0, tp, -225
                  andi        s5, tp, 1212
                  or          s1, a4, s9
                  andi        zero, a7, 1482
                  slti        s4, sp, 87
                  lui         tp, 98380
                  or          s1, a2, s0
                  or          a3, s11, a5
                  and         s2, s4, s0
                  lui         s7, 266275
                  sra         a6, s10, t2
                  slti        s8, ra, -89
                  srai        a5, s5, 3
                  slt         a7, t6, s1
                  ori         s7, t0, 1778
                  or          t1, tp, t4
                  addi        a1, t0, -1026
                  slt         s0, t0, t4
                  auipc       s0, 310338
                  srai        t1, s10, 27
                  lui         s4, 466613
                  slt         a4, s4, s8
                  lui         s3, 591665
                  sll         s5, s8, a3
                  or          s5, s0, s6
                  ori         s11, a7, 115
                  andi        t1, s9, 2
                  slti        a2, s8, -1694
                  sub         a6, s5, s9
                  or          s5, a6, s8
                  slli        s8, t1, 19
                  srai        t1, t3, 10
                  auipc       a4, 747256
                  lui         t2, 749114
                  or          gp, a1, s4
                  addi        a0, s3, -129
                  add         a5, sp, t4
                  srl         s9, s1, s2
                  xor         a1, zero, a4
                  ori         s8, a1, 279
                  ori         s9, zero, 1997
                  and         s7, a3, t4
                  and         t3, s3, t5
                  andi        zero, s3, 1606
                  xori        s8, s11, 1910
                  slt         a1, t6, s4
                  lui         s1, 810808
                  andi        ra, a7, 1573
                  srl         zero, a2, t3
                  or          s1, a6, tp
                  sll         s0, t1, t2
                  sltiu       s4, a2, 810
                  add         t3, t2, t5
                  nop
                  sub         t0, t0, t1
                  sra         a6, s2, sp
                  and         zero, s4, s8
                  ori         s4, s6, 345
                  lui         t4, 800206
                  addi        s3, t2, 1295
                  nop
                  add         ra, s9, t0
                  addi        zero, t1, 384
                  sltu        t3, s4, t3
                  sltu        gp, gp, s9
                  sub         s3, s4, t3
                  nop
                  slli        zero, a2, 30
                  lui         a5, 722137
                  srai        zero, gp, 3
                  xor         a5, a4, t6
                  and         a3, t1, tp
                  and         a0, a7, s5
                  sltiu       s3, a2, 1181
                  addi        s3, t5, -148
                  and         s9, ra, t4
                  sltu        t4, a6, s1
                  or          s11, t1, s8
                  nop
                  ori         a4, s0, -959
                  sra         s6, t3, s11
                  and         a5, t2, s7
                  addi        a7, t0, 219
                  ori         zero, a1, -233
                  srl         s7, s5, s7
                  and         s9, a0, a1
                  addi        zero, s4, -941
                  sra         zero, t4, s2
                  srl         zero, ra, s1
                  and         a1, tp, a1
                  slli        s11, t2, 24
                  slt         zero, s3, a5
                  ori         zero, s2, 1535
                  sra         s5, t6, zero
                  add         s4, s7, s10
                  sll         s11, s0, s8
                  addi        s2, a3, 1707
                  add         a6, s10, s9
                  slli        ra, s2, 17
                  ori         s1, s0, -1082
                  auipc       s4, 160095
                  addi        s4, zero, 1959
                  lui         a5, 448750
                  xori        s7, t6, -1211
                  andi        a3, a5, 1199
                  add         a3, s7, t2
                  sltiu       s7, t5, -1620
                  ori         s11, s5, 2001
                  sltu        a1, gp, a7
                  slti        s7, s6, 4
                  slt         tp, t0, ra
                  lui         a3, 234818
                  slli        s5, s11, 14
                  slti        t2, a3, -1618
                  add         t2, s4, t4
                  sltu        a7, t2, s3
                  srai        s8, a4, 23
                  sll         zero, s6, s9
                  slti        zero, a4, 1529
                  li         t4, 0x0 #start riscv_int_numeric_corner_stream_8
                  li         t3, 0x1
                  li         a7, 0x40d2ff7f
                  li         sp, 0x0
                  li         t1, 0x0
                  li         s11, 0x0
                  li         a0, 0x7d2aba32
                  li         a2, 0x0
                  li         a3, 0x0
                  li         a6, 0x63e13d56
                  addi        t4, s2, 148
                  sub         gp, s11, s11
                  add         t0, s10, a7
                  addi        tp, s6, 1975
                  addi        a7, a3, 341
                  lui         t2, 780482
                  addi        s4, a2, 890
                  add         zero, sp, t6
                  lui         zero, 219863
                  nop
                  sub         sp, a1, a1
                  nop
                  addi        ra, tp, -1216
                  lui         t3, 495698
                  add         zero, a1, a4
                  nop
                  add         tp, zero, a2
                  sub         a3, a0, s6
                  nop
                  add         a6, t2, s11
                  add         t1, s9, t4 #end riscv_int_numeric_corner_stream_8
                  sll         t1, s2, t4
                  sub         s5, t4, s4
                  and         ra, s10, s2
                  auipc       t0, 195543
                  sltiu       a7, s9, -1046
                  and         t3, t2, s9
                  sra         t2, s5, sp
                  auipc       s3, 146937
                  slli        s9, a0, 23
                  sltu        s1, ra, s8
                  xor         s4, t6, s5
                  and         s4, s7, t0
                  addi        s3, a1, 253
                  and         t0, s6, a7
                  sltiu       t4, t4, 1521
                  sll         s5, s4, tp
                  ori         s7, a0, 1587
                  xor         s7, s4, s5
                  sll         s8, ra, s3
                  srli        s5, t5, 4
                  slli        t0, a7, 29
                  xori        a0, a4, 1333
                  xor         a3, t3, t0
                  xor         s8, s3, a7
                  slti        t4, s5, -572
                  or          a2, zero, a4
                  sra         s0, a7, t1
                  slt         zero, t5, a4
                  addi        sp, s0, -76
                  lui         a2, 322043
                  sub         ra, a0, a6
                  srli        zero, s3, 5
                  auipc       s11, 18864
                  and         gp, t6, t6
                  auipc       s9, 716922
                  xori        s3, a2, 2032
                  nop
                  lui         s3, 974962
                  nop
                  add         s5, s4, s0
                  ori         ra, t2, 462
                  and         a4, s8, t3
                  slli        t4, a6, 15
                  srl         t0, tp, s1
                  add         s6, a4, s11
                  ori         a1, tp, -1887
                  xori        a1, s7, -311
                  srl         t1, s1, ra
                  srli        a4, s9, 2
                  srli        t0, sp, 23
                  xori        t1, s11, 1672
                  sltu        zero, s2, ra
                  srai        a3, t3, 6
                  addi        s8, t0, 1862
                  slli        s6, s7, 13
                  ori         t1, s6, -64
                  addi        s5, a7, 274
                  xor         s5, gp, t1
                  srli        zero, tp, 11
                  auipc       a6, 24163
                  sltu        s8, gp, a4
                  lui         a7, 549099
                  xori        a6, a6, 1473
                  add         t3, ra, a6
                  sll         s7, a7, a3
                  andi        zero, t2, 1526
                  addi        a5, a0, 1392
                  xori        tp, a3, 1543
                  andi        s5, s3, 54
                  sra         s5, a3, t3
                  xori        t1, sp, -1261
                  srai        s2, t5, 21
                  sra         a4, t4, t1
                  sub         s4, t0, a7
                  sub         s5, a7, s11
                  slt         zero, s11, tp
                  srli        zero, s1, 5
                  slti        a7, s3, -1894
                  nop
                  andi        a2, t6, 1886
                  srai        zero, s8, 18
                  ori         a0, t5, 1115
                  or          a6, s6, t3
                  sll         s2, t2, s10
                  and         a5, a5, a6
                  sltu        s2, a5, t5
                  slli        s9, s4, 7
                  sub         a4, t3, a5
                  add         a7, s9, s9
                  auipc       s0, 571420
                  auipc       s7, 990742
                  lui         gp, 550485
                  nop
                  or          a0, a0, s6
                  and         t4, s11, t2
                  slli        t1, s0, 5
                  xori        s1, a7, -567
                  addi        a1, s1, 1734
                  add         tp, t5, s6
                  and         tp, s9, t2
                  sra         gp, a5, s7
                  slli        t3, s7, 0
                  xori        zero, t1, 1996
                  slt         a0, gp, a3
                  andi        t2, tp, -933
                  xor         s8, a0, t0
                  slli        a5, s11, 22
                  srai        a6, a2, 24
                  xori        a2, s0, -539
                  xor         zero, t1, t4
                  or          zero, a0, s10
                  and         t3, t3, s10
                  xori        s9, s3, -1308
                  xori        ra, t1, 909
                  nop
                  andi        gp, s10, 1798
                  slti        s3, s11, 1599
                  sll         s11, sp, t5
                  srl         a1, a7, t4
                  slt         s0, t6, s3
                  sra         a6, t2, a7
                  and         a5, zero, gp
                  addi        t0, t1, 1967
                  sub         zero, s0, s10
                  lui         s2, 691520
                  sub         gp, s2, ra
                  lui         s3, 292876
                  auipc       s0, 601715
                  and         zero, s8, ra
                  lui         zero, 767346
                  sra         s5, s10, a3
                  addi        a0, t6, -1752
                  sltiu       a1, s7, 1040
                  auipc       t1, 737276
                  andi        gp, s6, -623
                  sub         s0, s1, tp
                  nop
                  nop
                  sub         s7, s3, s1
                  srai        t2, tp, 26
                  srl         tp, s4, t5
                  nop
                  sll         t3, a5, t0
                  and         a2, s8, s1
                  slt         sp, s9, s11
                  srli        sp, s5, 0
                  sltiu       a2, ra, 543
                  nop
                  ori         a5, sp, -646
                  srai        zero, a0, 17
                  addi        s2, a1, 18
                  srl         a3, a5, s9
                  andi        a6, t5, -483
                  srli        t1, t5, 2
                  sub         a7, a5, a3
                  slt         zero, s5, s5
                  xor         s11, a3, s1
                  andi        a6, t6, 359
                  ori         s11, s10, -235
                  addi        zero, s6, -347
                  auipc       zero, 644604
                  or          ra, s1, s11
                  addi        t3, a0, 88
                  or          t2, s6, t6
                  srli        t3, t1, 7
                  ori         a0, s7, -844
                  andi        a0, s0, -1028
                  srai        ra, s4, 4
                  andi        zero, sp, 1642
                  sltu        s7, a3, t2
                  lui         s6, 61804
                  sltiu       t4, zero, -91
                  slli        a1, zero, 18
                  add         t4, s1, a4
                  sra         zero, a2, s3
                  add         ra, t3, s8
                  auipc       s9, 598768
                  lui         zero, 819138
                  xor         zero, t3, a6
                  sltiu       s9, s9, 918
                  addi        zero, t0, 1703
                  slt         zero, t4, s7
                  ori         sp, t3, 459
                  or          zero, a1, t2
                  sub         a1, gp, a1
                  auipc       ra, 615178
                  sub         s9, a2, a0
                  srli        s11, s7, 21
                  slt         tp, zero, s9
                  sltu        gp, a6, t0
                  nop
                  srli        zero, a6, 18
                  sra         s0, a6, a3
                  sub         a2, a0, a7
                  lui         s8, 301318
                  srli        s1, s8, 12
                  add         s9, s11, a7
                  ori         s11, t2, -1283
                  addi        gp, s1, 549
                  andi        s6, s10, -434
                  xor         t2, s6, s4
                  and         s11, s4, s4
                  slt         t4, s7, tp
                  addi        s9, a3, -212
                  slti        a2, a3, 1728
                  slti        zero, a5, 1640
                  srl         s0, t2, s10
                  srli        s11, s3, 27
                  andi        a6, ra, -1669
                  srli        s8, a7, 25
                  add         s11, s5, s2
                  ori         a1, s11, -926
                  or          zero, a0, ra
                  addi        ra, s6, 410
                  auipc       t4, 257606
                  nop
                  sltiu       a6, a4, -885
                  or          sp, a1, zero
                  add         t4, s5, s8
                  slti        a6, s7, 685
                  slt         zero, t4, t0
                  srli        s8, a6, 31
                  auipc       s5, 489992
                  nop
                  slli        s9, a0, 25
                  or          s3, a7, ra
                  ori         tp, t4, -2028
                  sltiu       t1, gp, -1429
                  sll         a2, s1, a3
                  and         t2, ra, s5
                  srl         s3, s10, t3
                  sll         tp, t4, s10
                  and         gp, s9, t5
                  srai        a4, s5, 9
                  sltu        a3, a6, s7
                  sra         a4, a7, a4
                  add         gp, s1, t1
                  add         s2, t3, tp
                  sltu        s1, ra, a7
                  sltu        ra, zero, a4
                  slt         zero, s2, tp
                  auipc       t4, 191758
                  auipc       s9, 648462
                  sltu        t4, t2, t6
                  srai        s11, s1, 14
                  xor         s5, a0, s4
                  and         a0, a5, t5
                  slt         zero, s5, zero
                  lui         tp, 403900
                  or          s1, s2, s7
                  addi        s11, a2, 677
                  andi        a6, gp, 206
                  andi        zero, ra, -1952
                  xori        sp, ra, -736
                  sra         s0, s1, gp
                  slt         s8, s3, a6
                  addi        t1, a1, -1901
                  sra         t4, a3, t1
                  srai        s1, s7, 8
                  ori         zero, t1, 185
                  add         s2, s9, s1
                  sll         zero, a6, tp
                  slti        zero, t0, -197
                  xor         a0, a4, gp
                  slli        s4, s7, 10
                  xori        s7, s11, -1530
                  slti        a6, a1, -1305
                  slli        s6, t0, 16
                  ori         s4, t6, 549
                  add         a4, s7, tp
                  add         s4, s8, zero
                  sll         t2, sp, zero
                  sltiu       s5, s0, -226
                  slt         t1, s1, s3
                  nop
                  ori         s6, s11, 75
                  or          a6, t0, t0
                  auipc       t4, 684147
                  and         s4, a4, t0
                  slli        s11, s11, 11
                  sltu        t0, ra, a4
                  nop
                  slti        zero, a4, -320
                  srl         s8, s5, t5
                  auipc       s7, 170825
                  and         a4, s2, t1
                  sub         a1, a7, t2
                  sltu        s3, s7, s4
                  slt         s7, a7, t4
                  sll         a2, a2, a1
                  srai        t2, s5, 16
                  sra         a0, a2, t1
                  sltiu       zero, s0, -1767
                  slti        a2, a6, -1726
                  sltiu       s8, s11, 173
                  slti        zero, t3, 1666
                  slli        a2, t0, 13
                  sra         s8, s3, a2
                  and         t4, a7, a5
                  srl         tp, s10, zero
                  srai        zero, s2, 21
                  and         t0, s10, a6
                  sll         s11, t5, s7
                  sub         s1, a4, a7
                  add         ra, s9, a2
                  srai        t4, a5, 9
                  andi        s5, t0, 1103
                  ori         s0, a0, 673
                  xor         tp, s10, s8
                  xori        ra, t0, 325
                  sra         s9, s6, s7
                  srli        a6, a4, 1
                  sltiu       s3, s9, 2045
                  sll         gp, a6, t1
                  xori        t0, s0, -807
                  and         zero, t5, a1
                  srai        s1, sp, 16
                  srai        t0, a4, 5
                  srai        t1, t3, 4
                  or          s7, a3, s4
                  srli        tp, s1, 31
                  srai        a7, s6, 1
                  sra         sp, a1, zero
                  lui         s9, 99244
                  ori         s3, s8, -1783
                  xor         zero, s10, s3
                  slli        s6, s10, 4
                  addi        zero, s8, -1855
                  or          s3, t2, s6
                  add         t2, s7, a6
                  add         t4, a2, a6
                  ori         a3, s2, -1261
                  srl         a0, zero, s3
                  xori        a2, tp, -224
                  sra         s3, t4, a4
                  addi        a1, a1, -511
                  sub         ra, zero, s11
                  slli        s5, gp, 19
                  lui         s3, 947945
                  sltiu       a0, s8, -1486
                  sltu        a3, s2, s3
                  slt         s5, t3, t0
                  sll         zero, a2, s11
                  xori        s4, s9, -1206
                  sra         s0, s5, s3
                  sltu        s9, a5, s7
                  nop
                  sub         s0, s3, s10
                  sltu        gp, t4, t3
                  slli        sp, s4, 11
                  sltu        s0, s3, a1
                  slt         t3, s3, ra
                  nop
                  xori        t4, t4, -159
                  srl         tp, a1, s5
                  andi        gp, a7, -1698
                  sub         ra, a2, t4
                  sll         zero, t5, s7
                  slt         a0, zero, a0
                  xori        s9, s9, -1073
                  andi        a2, t3, 5
                  slti        ra, s0, 907
                  slt         gp, sp, a4
                  lui         a5, 950149
                  and         s1, s6, t4
                  nop
                  ori         a3, t5, -1895
                  slt         t1, a5, t0
                  or          t0, ra, s3
                  slti        s0, s0, -1594
                  lui         t1, 3055
                  slt         s3, t6, a5
                  srli        a3, s6, 16
                  sll         t3, t0, a7
                  srli        t1, ra, 7
                  slli        sp, s5, 6
                  auipc       t3, 87954
                  nop
                  auipc       s11, 1002620
                  sra         ra, a6, s1
                  andi        zero, t2, 1097
                  and         a4, a1, s0
                  and         sp, s10, sp
                  slti        s8, s11, 376
                  and         s7, s6, tp
                  slt         a2, a4, sp
                  slt         s3, s1, s6
                  sub         a6, s6, sp
                  slli        s4, a0, 8
                  sltu        gp, s11, t3
                  nop
                  srl         t2, t0, a6
                  sltu        s11, a5, t2
                  slti        t0, s8, -1491
                  lui         s9, 735286
                  xori        gp, s7, 1162
                  addi        gp, s0, -2046
                  srli        t3, a3, 25
                  slt         s7, t2, t6
                  andi        s2, s4, 1711
                  srai        zero, a0, 7
                  srai        t0, tp, 4
                  nop
                  ori         ra, t6, 1908
                  ori         s9, s5, 1281
                  lui         a6, 294171
                  lui         a6, 971581
                  sltu        a6, t5, a4
                  slti        s11, a6, -742
                  sltu        s5, s11, s3
                  sll         t4, t4, t5
                  sltu        s0, s3, a0
                  add         t1, s7, t1
                  xor         t4, a4, s0
                  sra         t1, s7, s9
                  and         s2, s1, s11
                  auipc       s11, 552806
                  xori        a3, a4, 699
                  xor         a3, s4, s0
                  lui         zero, 79136
                  add         s0, s10, zero
                  and         t2, a3, a7
                  sltu        ra, s9, t0
                  sra         s3, a0, s10
                  xori        s8, zero, 1440
                  li         t0, 0x0 #start riscv_int_numeric_corner_stream_1
                  li         t4, 0x0
                  li         s8, 0x1
                  li         t3, 0x7cc8f9d2
                  li         tp, 0x1
                  li         a2, 0x0
                  li         s11, 0x1
                  li         s4, 0x1
                  li         s0, 0x1
                  li         s9, 0x1
                  add         a3, t3, a4
                  add         s5, s1, a5
                  add         t2, s2, s3
                  addi        t3, s6, 752
                  lui         zero, 39698
                  sub         gp, a6, gp
                  nop
                  addi        s2, a6, -891
                  nop
                  nop
                  lui         t1, 951377
                  add         sp, s4, sp
                  sub         s6, s6, t6
                  add         s8, a0, a7
                  nop
                  lui         zero, 77486
                  lui         sp, 83428
                  add         tp, s4, s10
                  nop #end riscv_int_numeric_corner_stream_1
                  add         zero, s0, s11
                  sra         s2, a1, a6
                  auipc       ra, 941692
                  xori        s8, t3, -510
                  srl         a0, t3, a2
                  nop
                  lui         zero, 183778
                  xori        t2, t5, 1130
                  sltiu       s7, t5, 81
                  xori        s3, a6, 618
                  andi        t4, ra, 427
                  srli        s1, a6, 4
                  and         t2, tp, s1
                  auipc       t2, 924501
                  sltiu       t0, s11, -1616
                  andi        a7, s1, 78
                  nop
                  sub         s4, s7, s3
                  auipc       s5, 892756
                  slti        t3, sp, 88
                  sub         s5, t1, t0
                  ori         a7, a0, 660
                  sltu        s1, s7, s1
                  sub         s9, t3, s4
                  sll         ra, t4, t4
                  andi        gp, a2, -1936
                  sltiu       t0, s9, 540
                  xor         s11, t5, a4
                  addi        t0, a5, -810
                  slt         s8, t3, sp
                  slti        gp, a2, 1250
                  nop
                  srl         t4, a5, a4
                  sll         s1, zero, tp
                  slti        a0, tp, 1401
                  add         s8, s7, a1
                  or          s6, ra, s6
                  slt         a4, s7, a6
                  andi        a2, gp, 202
                  and         zero, a0, t5
                  sub         t0, s9, t5
                  andi        s4, a4, 212
                  auipc       a4, 667844
                  sub         t0, sp, a4
                  add         a1, a0, s11
                  sll         ra, t2, t5
                  and         t3, s10, t0
                  sltiu       zero, a7, 1684
                  srai        tp, a1, 10
                  srli        a0, ra, 6
                  or          a4, s5, s2
                  lui         zero, 269455
                  ori         s9, gp, 251
                  sll         ra, sp, t1
                  addi        a6, a6, -871
                  slli        a0, s7, 2
                  slti        a1, s8, -684
                  and         s0, t4, a7
                  sll         s2, sp, s11
                  ori         zero, s6, -1731
                  slti        t4, tp, 833
                  slti        s5, t2, -1768
                  add         zero, a1, t0
                  addi        a0, a0, -835
                  and         a6, sp, a0
                  slli        a5, a6, 7
                  lui         s4, 874708
                  sltu        a0, s5, s2
                  srli        a5, gp, 2
                  sub         a4, a4, s3
                  andi        t2, s6, 805
                  slti        s3, tp, -1570
                  slt         a6, a1, s0
                  slli        zero, s9, 18
                  andi        t0, s4, 271
                  addi        gp, s4, 661
                  sltu        a2, a7, t6
                  ori         t0, s6, 672
                  srli        ra, s2, 0
                  add         s0, a6, a6
                  ori         t2, s1, 1284
                  sra         zero, t5, zero
                  nop
                  sra         zero, t4, s4
                  slti        t1, a4, -452
                  srai        a4, s11, 18
                  sltiu       t3, a2, 2014
                  nop
                  srl         zero, a6, tp
                  lui         tp, 96579
                  and         s9, s0, t6
                  lui         s1, 670072
                  lui         a2, 1017050
                  addi        s4, s3, -1029
                  xori        a2, a3, -1961
                  slti        t0, s0, 263
                  xor         a3, t1, a3
                  nop
                  srai        s0, t4, 19
                  slt         t3, s10, sp
                  sub         zero, s8, s4
                  auipc       gp, 231175
                  and         s6, zero, s4
                  sltu        t2, a5, t1
                  sltu        a0, ra, s2
                  srli        zero, s7, 13
                  sub         a0, ra, s11
                  srl         s8, t4, sp
                  or          s4, s6, t4
                  ori         a6, s2, 101
                  sll         s4, t6, a0
                  and         zero, zero, s10
                  auipc       s3, 187468
                  or          t4, s9, s0
                  xor         sp, s6, t6
                  sra         t4, s9, a4
                  or          s11, s9, t6
                  sll         s9, s5, s0
                  slli        a3, s3, 11
                  sll         ra, t4, a2
                  xor         a3, t1, s6
                  srli        s9, s5, 23
                  slt         sp, s7, s2
                  add         s0, s3, t1
                  sra         s1, s3, gp
                  srl         s1, t1, s6
                  nop
                  slti        a2, a2, 84
                  srl         zero, t4, a5
                  addi        s9, a5, 558
                  ori         zero, t6, -2011
                  srai        s0, t2, 20
                  lui         ra, 285006
                  slli        a2, a0, 29
                  sltiu       s7, s8, -1222
                  sltiu       a0, t2, 471
                  add         s4, t4, s3
                  add         a4, a7, a7
                  add         s9, t2, s10
                  srl         sp, s0, a2
                  nop
                  and         a2, s11, s5
                  srai        sp, s1, 4
                  sll         t3, t3, t2
                  or          a6, s8, a5
                  slt         s7, gp, t4
                  srai        sp, t6, 8
                  sra         a2, s9, t5
                  slt         s11, s2, t3
                  sra         s1, t2, gp
                  lui         s8, 412526
                  auipc       a6, 476071
                  ori         ra, s2, 653
                  sll         zero, s0, a2
                  xor         s4, t4, t4
                  sltu        ra, t5, s6
                  add         a6, t5, gp
                  or          s5, s1, s7
                  xor         a3, s6, s8
                  lui         s1, 85362
                  slti        s11, s1, 1606
                  slt         gp, s0, a1
                  sra         zero, s6, t0
                  sltiu       a4, t6, 1611
                  xori        t1, s9, -397
                  sub         s0, sp, a0
                  nop
                  or          a5, t0, t5
                  slli        t0, a0, 21
                  andi        a2, t4, -1572
                  andi        ra, t5, -1510
                  auipc       a0, 120863
                  srl         t3, s7, a4
                  slt         zero, s6, s8
                  srai        ra, t5, 29
                  srl         zero, s4, a6
                  ori         s11, zero, -205
                  ori         s4, s8, 1488
                  sub         a6, t2, a4
                  xor         s5, a5, t5
                  and         t3, t1, a5
                  srai        a0, a7, 13
                  lui         s3, 328364
                  sub         a1, s7, t0
                  sll         t1, t2, t0
                  and         a1, t1, a5
                  addi        a7, s1, 545
                  addi        t2, t2, -1048
                  slt         s0, a3, t5
                  ori         t0, a5, -1049
                  add         s9, a4, a7
                  andi        s11, s10, -1885
                  slt         tp, s6, a5
                  auipc       gp, 540194
                  xori        tp, t2, 934
                  slti        a5, a0, -252
                  nop
                  sub         zero, s0, s6
                  slti        t2, t6, -28
                  slti        a1, zero, -1715
                  sub         s3, a1, t5
                  andi        zero, s6, 1189
                  srli        sp, s0, 22
                  sll         a0, s7, a5
                  slt         a0, a6, s8
                  and         a2, t2, a7
                  or          t1, s4, ra
                  sra         zero, s11, gp
                  slt         a1, sp, s3
                  andi        a6, sp, 1317
                  slt         sp, s2, s6
                  nop
                  sll         s4, s6, s1
                  or          t4, tp, tp
                  srl         a4, a5, s7
                  slti        s8, zero, -1045
                  add         ra, s11, s1
                  sltiu       zero, s9, -874
                  srl         sp, a4, tp
                  xori        s6, s5, -736
                  slli        s5, s6, 30
                  slti        s4, a4, -1789
                  sltu        t0, a7, t5
                  slli        s8, t4, 20
                  slt         a5, a0, s2
                  slt         a6, a2, zero
                  and         a0, s8, a6
                  slti        s7, a7, 1292
                  slli        a3, a1, 26
                  xor         s1, ra, s7
                  addi        zero, gp, 1531
                  sll         s2, a4, tp
                  sltu        t4, gp, ra
                  addi        t2, s3, 1910
                  slli        s0, a7, 10
                  add         sp, a3, t6
                  sltu        zero, t0, tp
                  add         s1, s6, s4
                  ori         a6, s3, 1523
                  addi        zero, s0, -1581
                  or          sp, t0, ra
                  sub         s3, a4, s11
                  srl         zero, s4, a5
                  sltu        zero, s7, s7
                  ori         zero, t1, 1613
                  srl         ra, s1, a2
                  srl         a2, s10, t3
                  slli        a4, s8, 18
                  and         sp, s3, a0
                  srai        t1, t6, 6
                  xor         zero, a1, a6
                  auipc       a2, 82103
                  xori        t1, s8, -2001
                  srl         s11, s9, s1
                  nop
                  li         a7, 0x1a863e70 #start riscv_int_numeric_corner_stream_16
                  li         t4, 0x0
                  li         t3, 0x0
                  li         s0, 0x1
                  li         s11, 0x1
                  li         a6, 0x0
                  li         a4, 0x0
                  li         s8, 0x1
                  li         s9, 0x0
                  li         a1, 0x286b8d75
                  add         s9, t3, a2
                  nop
                  nop
                  lui         zero, 90210
                  addi        t1, s1, 1254
                  addi        zero, a6, -559
                  sub         a1, a6, t2
                  add         t0, sp, s8
                  lui         ra, 271760
                  sub         s5, s10, t0
                  nop
                  addi        t1, s6, 1038
                  add         s11, t5, t2
                  nop
                  sub         gp, s5, t1
                  nop
                  add         s11, tp, t6
                  nop
                  lui         sp, 980582
                  lui         s6, 549141 #end riscv_int_numeric_corner_stream_16
                  or          s8, t4, zero
                  srli        a7, s5, 15
                  srl         zero, tp, gp
                  auipc       t4, 287926
                  sra         s4, tp, t2
                  auipc       s8, 612949
                  slt         s4, a3, s1
                  slli        s3, ra, 16
                  and         s4, s1, s10
                  and         s2, s9, a7
                  xori        s1, a6, -489
                  slli        s4, a0, 13
                  sltiu       a6, gp, -3
                  addi        a1, s5, 1615
                  sll         s0, a7, a2
                  andi        s0, t1, 893
                  sll         s1, s0, s6
                  xor         t0, ra, s11
                  or          a7, sp, a6
                  sub         a4, t3, t4
                  ori         s2, s1, -1681
                  nop
                  addi        tp, a1, 1734
                  srl         s0, t6, a5
                  slt         s9, s8, s6
                  sub         gp, t0, a4
                  slt         a1, t6, s2
                  sltiu       s5, s5, 2039
                  add         zero, t6, sp
                  and         zero, s7, a3
                  sll         t3, a1, a5
                  and         s4, t3, s9
                  or          zero, s9, gp
                  nop
                  sra         a6, s0, a5
                  sltiu       s11, a1, -778
                  or          s4, t6, tp
                  add         sp, s1, t5
                  slti        ra, s10, 707
                  xor         tp, t1, s7
                  lui         s3, 394666
                  add         t1, t4, s0
                  sltiu       s2, a3, 218
                  sub         s1, a0, gp
                  xor         s0, a0, a4
                  sub         s11, a2, a2
                  slli        a6, a1, 30
                  xori        zero, gp, -378
                  sub         s5, tp, a5
                  addi        a1, t1, 96
                  nop
                  add         zero, s2, s7
                  slli        s4, s7, 12
                  sltiu       t2, a2, 818
                  nop
                  srai        s2, a2, 20
                  sub         s4, a1, a0
                  xori        t3, s10, -861
                  andi        a3, a1, -1218
                  srai        zero, zero, 22
                  slti        s11, a6, -704
                  nop
                  addi        zero, s8, 254
                  add         s8, s10, s10
                  sra         a0, t2, tp
                  auipc       t2, 195933
                  slt         zero, tp, s7
                  ori         s4, tp, 87
                  addi        tp, a7, 489
                  add         t3, a7, t3
                  xori        t3, a5, -1896
                  ori         a4, s5, -1801
                  sra         a6, a6, a3
                  andi        zero, a1, -1914
                  xori        s1, s6, -1096
                  nop
                  sub         s2, zero, s3
                  xor         a1, a4, tp
                  sll         t1, gp, t3
                  xor         tp, s6, a5
                  srl         s3, a1, a7
                  xori        t1, s11, 1154
                  sll         a6, t4, s5
                  srl         a0, ra, s10
                  sll         a3, s0, a3
                  andi        zero, a0, -1041
                  ori         s7, s7, 652
                  nop
                  andi        a5, a0, -545
                  lui         s9, 281471
                  slt         a7, s7, s10
                  ori         tp, a6, -1040
                  xor         s11, a4, a6
                  srai        a0, t5, 31
                  auipc       s7, 228494
                  ori         a4, t0, -1555
                  sltu        a7, s8, s3
                  addi        s11, s2, -219
                  srai        t1, gp, 2
                  sll         s9, a6, tp
                  nop
                  lui         a5, 222144
                  sub         a7, a4, zero
                  sltiu       zero, s4, -1913
                  sub         s0, s2, s10
                  sub         s7, s2, s10
                  sltu        s8, gp, sp
                  sltu        zero, s10, t1
                  sra         zero, a1, t3
                  sltu        t0, t3, s3
                  slli        a3, tp, 5
                  srli        zero, t4, 20
                  ori         zero, s6, 865
                  xor         s3, s7, s8
                  ori         gp, s2, -1898
                  srai        gp, a6, 28
                  xor         t3, s10, s10
                  slti        a7, s11, -665
                  add         s0, t3, tp
                  slli        t2, s10, 18
                  sra         a5, s8, t0
                  sltiu       ra, s5, -1815
                  or          s0, a4, t0
                  srai        zero, a4, 12
                  slti        a3, s0, -1314
                  add         a7, s2, s11
                  addi        zero, s2, -552
                  srl         a3, s3, a0
                  sltu        s2, s7, t3
                  sltiu       zero, t3, -222
                  addi        a3, tp, 1505
                  addi        a6, s1, -643
                  slti        zero, t6, 380
                  srl         a3, t0, s7
                  slli        s1, a4, 0
                  auipc       t1, 671291
                  auipc       s5, 325955
                  ori         t1, s4, -1579
                  sltiu       sp, a3, 1007
                  auipc       s0, 124811
                  xor         ra, s8, a7
                  sltu        s2, s9, s8
                  srli        s1, s10, 31
                  and         a1, t0, t0
                  lui         s4, 92603
                  sltiu       s8, a4, 90
                  and         zero, a2, t4
                  sltiu       ra, ra, 687
                  xori        s6, a1, -1373
                  sltiu       s7, t3, 918
                  xor         s8, ra, t2
                  xori        s4, s7, 877
                  add         zero, t3, a6
                  slt         s4, ra, s9
                  srai        zero, a1, 3
                  slti        a3, a3, -1690
                  xori        s0, s11, 66
                  sra         a2, a5, s7
                  sub         ra, t2, zero
                  sltu        s2, t2, s4
                  ori         gp, s8, -1678
                  and         t1, s2, a1
                  xori        a4, a2, 455
                  lui         t1, 85952
                  or          tp, s3, sp
                  sll         s6, ra, t0
                  or          s9, t1, s11
                  and         t2, a6, s9
                  ori         s6, zero, 555
                  lui         zero, 454414
                  sub         sp, s3, t1
                  add         tp, a3, s9
                  addi        a2, s10, 1362
                  sltu        zero, t3, s11
                  srai        t4, zero, 25
                  srai        a1, ra, 16
                  ori         a0, s0, -1140
                  slt         tp, a4, s8
                  srli        zero, t2, 5
                  andi        s11, a0, -1010
                  sub         zero, ra, a4
                  nop
                  add         a2, a7, tp
                  sll         a6, a0, t3
                  srli        a4, s4, 3
                  lui         zero, 335983
                  addi        t4, s0, 1976
                  slt         t0, a4, t5
                  sub         zero, tp, t0
                  andi        s2, t4, -393
                  slti        s0, s5, -1662
                  andi        t3, s3, 214
                  xori        s4, s5, -91
                  sub         a0, t3, s1
                  srl         a4, gp, t1
                  addi        s5, s5, -2000
                  andi        zero, gp, 519
                  slt         s3, s9, a5
                  auipc       tp, 402584
                  sll         a1, s10, a7
                  sltu        s11, t5, t3
                  slti        t3, a2, -2
                  slt         t2, s2, s8
                  sub         a6, s1, a1
                  or          zero, tp, s3
                  add         a6, t6, a4
                  and         gp, t1, s0
                  srl         s3, s8, t6
                  sll         t2, s4, t2
                  srli        t0, sp, 20
                  slt         t3, s8, s9
                  andi        s0, s11, 1378
                  sltu        zero, s6, t1
                  and         s1, s11, gp
                  lui         a0, 639213
                  srai        a4, t2, 15
                  or          a7, a7, s11
                  xor         s1, s7, s6
                  nop
                  auipc       a2, 582679
                  andi        s6, gp, -1572
                  or          t3, a6, t5
                  sll         a0, s1, t6
                  or          a3, s9, s0
                  or          sp, t2, tp
                  srai        s3, a7, 10
                  add         a5, t2, a6
                  srai        s2, a5, 11
                  sll         a4, s11, a4
                  xori        t3, a3, 1729
                  lui         t1, 380306
                  lui         s7, 564887
                  andi        s0, gp, 1485
                  sltiu       s2, gp, -626
                  and         a1, a1, s0
                  addi        s3, sp, -1590
                  srli        zero, ra, 28
                  lui         t0, 1014597
                  srli        a6, tp, 13
                  sltu        a5, a4, s4
                  srl         a2, t2, t1
                  add         zero, s7, a7
                  addi        s1, ra, -1489
                  sub         tp, a0, t2
                  slli        zero, zero, 0
                  slt         a1, t0, t4
                  sll         zero, t6, a2
                  srai        s5, sp, 28
                  auipc       s1, 112993
                  slt         a6, t2, s2
                  andi        a2, ra, 1344
                  sll         a1, a6, t6
                  nop
                  and         t4, s10, gp
                  sra         a2, t2, a6
                  and         s11, t3, s5
                  sll         s7, ra, s9
                  lui         s0, 567472
                  xor         s0, s4, a3
                  slli        a1, t1, 25
                  srli        s8, s9, 19
                  li         a4, 0x0 #start riscv_int_numeric_corner_stream_7
                  li         t4, 0x0
                  li         s1, 0x4ca5adb5
                  li         t3, 0x7affeab8
                  li         t1, 0x0
                  li         s2, 0x0
                  li         s11, 0x1
                  li         s9, 0x0
                  li         s8, 0x0
                  li         a6, 0x1
                  sub         s11, s6, sp
                  lui         s3, 54338
                  sub         t3, s2, sp
                  nop
                  lui         s8, 951629
                  lui         a6, 114250
                  sub         sp, a2, s0
                  lui         s7, 830986
                  nop
                  lui         a4, 321121
                  addi        s7, s6, -1327
                  lui         t1, 835645
                  nop
                  lui         s4, 631083
                  lui         a1, 176104
                  sub         a5, a7, s0 #end riscv_int_numeric_corner_stream_7
                  srai        s7, t0, 24
                  sll         t2, s8, t3
                  xor         t3, a3, s8
                  addi        t3, t3, 607
                  sra         t0, s3, a2
                  sra         t3, s8, s11
                  ori         s7, a2, -640
                  add         s2, tp, tp
                  nop
                  xori        a6, t0, -939
                  xori        t0, s10, -16
                  and         a0, s1, s1
                  srli        s3, s1, 5
                  sltu        t3, s3, s0
                  srl         s6, s11, s2
                  or          t4, t3, s6
                  or          s5, s8, t6
                  xor         tp, a5, t2
                  sltu        s8, t3, s3
                  sra         t2, t4, s8
                  andi        sp, t3, -131
                  slt         tp, s2, s9
                  srl         sp, t1, t3
                  xori        a4, s4, -1655
                  nop
                  lui         s0, 1000147
                  or          tp, t4, a3
                  auipc       a4, 1044745
                  sltu        sp, t5, ra
                  xor         a3, t2, gp
                  srl         t4, a4, t4
                  srai        a4, s8, 20
                  sra         a1, s5, s5
                  add         s3, t5, t5
                  srl         a5, s6, a0
                  and         s1, s8, s2
                  andi        a0, a5, -1579
                  or          a5, t2, sp
                  and         a7, a6, s7
                  andi        a5, t5, -1744
                  sra         t4, s7, s5
                  slti        tp, s9, -1168
                  srl         t4, s0, a4
                  sltiu       a7, s2, -643
                  addi        s0, zero, -1614
                  sltu        t2, zero, a6
                  ori         t0, s4, -1396
                  slti        a4, s10, -154
                  add         gp, a0, s2
                  srl         gp, t2, sp
                  addi        zero, s9, -1994
                  sll         s2, s1, a0
                  auipc       a7, 421841
                  sltiu       s8, t1, -775
                  srl         s11, s9, ra
                  lui         t1, 799275
                  xor         t2, zero, a5
                  and         a7, s10, s4
                  sra         s5, zero, s0
                  lui         s0, 82195
                  nop
                  sll         gp, sp, s11
                  nop
                  srai        a5, s8, 20
                  ori         s11, a2, -1028
                  slli        s8, t0, 17
                  sltu        a5, s10, t2
                  sub         t4, t1, s4
                  xori        s6, t6, 123
                  or          sp, a3, t0
                  add         zero, a6, t1
                  sub         sp, a5, a7
                  sub         a1, gp, t2
                  add         t2, s1, s4
                  sra         s6, t6, t6
                  slli        t2, t6, 7
                  sltiu       a5, s1, -857
                  sub         a5, s10, a7
                  slt         t4, a0, a4
                  slt         s11, t4, t3
                  sub         zero, s2, s6
                  sra         a7, s7, a7
                  and         a1, t5, s4
                  srai        tp, t5, 12
                  slti        s1, s4, 653
                  ori         s2, zero, -1576
                  and         a6, s0, t6
                  sub         s9, s5, a6
                  andi        t1, s9, 727
                  slli        s11, a2, 28
                  slli        zero, t6, 25
                  srai        t3, t5, 6
                  sltiu       a3, a7, 649
                  andi        tp, s9, -624
                  srai        zero, a4, 13
                  srl         s7, a4, s1
                  slli        a7, s7, 7
                  ori         sp, a5, -1185
                  sub         ra, a2, a2
                  slti        a0, t0, -424
                  slli        s5, s5, 26
                  slli        a4, sp, 8
                  ori         s1, a4, -942
                  slti        zero, s3, 310
                  srli        zero, s8, 17
                  auipc       a6, 133240
                  sra         s5, a0, s9
                  slli        s4, s10, 19
                  xor         zero, t2, t3
                  sub         s8, a6, a0
                  add         s2, s1, ra
                  nop
                  slli        zero, sp, 13
                  sltu        s8, s10, s4
                  sltiu       s8, a2, 612
                  slli        gp, s7, 3
                  sra         s2, s3, a5
                  slti        a6, a2, 322
                  srli        s0, s11, 9
                  and         s3, t6, s1
                  srli        s6, t3, 20
                  sll         s11, t5, t3
                  xor         gp, t4, s2
                  sltiu       s9, a0, 918
                  or          t2, tp, s5
                  slt         a4, s5, a5
                  li         t4, 0x0 #start riscv_int_numeric_corner_stream_12
                  li         t3, 0x0
                  li         t2, 0x0
                  li         s11, 0x0
                  li         s3, 0x0
                  li         s9, 0x0
                  li         a7, 0x0
                  li         s7, 0x47c836be
                  li         s8, 0x53e8829d
                  li         s1, 0x1
                  addi        zero, t1, -1880
                  addi        zero, t3, -357
                  nop
                  lui         t2, 604374
                  addi        a1, sp, -597
                  add         t4, a2, a3
                  nop
                  addi        s5, s6, 18
                  add         a2, s7, a2
                  add         zero, a3, tp
                  sub         ra, t1, t4
                  lui         ra, 363852
                  addi        s0, a0, 922
                  addi        t0, s8, 1761
                  lui         sp, 712022
                  add         s2, s8, s3
                  nop
                  nop
                  lui         gp, 959775
                  addi        a5, t4, -439
                  nop
                  addi        a0, a4, 70
                  addi        t4, s7, 1810
                  lui         gp, 859353
                  nop
                  nop
                  addi        s3, a6, -2030
                  lui         a2, 235335 #end riscv_int_numeric_corner_stream_12
                  addi        a2, s11, -777
                  slti        a2, tp, -195
                  lui         t4, 608596
                  slli        s8, a5, 11
                  ori         t1, s8, -188
                  slli        a4, a1, 16
                  addi        t3, sp, 388
                  lui         a4, 689051
                  sltiu       a5, s4, 258
                  slti        s2, s0, -1902
                  or          a0, a0, a3
                  srai        zero, s0, 2
                  sltu        a1, a6, ra
                  srai        t0, t3, 23
                  and         sp, s4, a4
                  auipc       zero, 696778
                  auipc       zero, 605397
                  xor         s7, a3, s5
                  add         s6, s4, sp
                  slti        tp, t3, 1322
                  sra         sp, s9, a3
                  srai        a7, s7, 4
                  auipc       s0, 1046264
                  slti        zero, s11, 1556
                  sltu        s8, a6, sp
                  xor         gp, t3, t5
                  ori         s5, s5, 1427
                  and         t2, s10, tp
                  srli        gp, gp, 8
                  slt         s0, s8, s10
                  addi        s1, s0, 682
                  lui         a4, 688354
                  srl         t0, s10, sp
                  andi        zero, gp, -1793
                  sub         sp, a3, s0
                  srai        s8, s1, 11
                  slt         a7, a6, gp
                  and         s1, a4, a0
                  slti        zero, t1, 1071
                  andi        a6, a0, -1930
                  xori        a6, a1, 1583
                  lui         s2, 566103
                  nop
                  sltiu       s2, t3, 1583
                  srl         t0, t5, ra
                  lui         a6, 694352
                  lui         a7, 21300
                  andi        s2, a4, -158
                  ori         s5, ra, 392
                  sll         t3, a2, gp
                  add         s8, a1, s5
                  sll         s8, gp, tp
                  add         s2, t1, s11
                  srl         zero, s11, a5
                  nop
                  ori         s0, s3, 2024
                  sll         ra, tp, s7
                  slt         s5, s2, tp
                  addi        a3, a0, 1137
                  nop
                  sub         s0, s5, s4
                  slti        zero, t4, -718
                  auipc       a7, 436466
                  sltiu       gp, s4, 1770
                  xori        a5, s6, 249
                  srli        sp, t5, 4
                  sub         t3, a6, t2
                  sltiu       s5, s6, 58
                  sll         gp, ra, s7
                  slt         s0, t6, s5
                  srli        t4, t1, 22
                  srl         s3, t3, a1
                  sra         t4, s4, t1
                  slti        a4, t5, 987
                  andi        t4, zero, -1880
                  sub         s5, t2, a6
                  slti        a1, a4, 1902
                  addi        zero, s0, -1211
                  xor         a3, zero, a2
                  lui         sp, 585750
                  andi        t3, a6, 1940
                  sll         a5, ra, a3
                  or          a4, a7, t3
                  lui         a5, 112651
                  slli        a2, t1, 30
                  addi        s3, s3, 473
                  andi        a4, a0, -1756
                  lui         zero, 800308
                  xor         a4, s1, a2
                  slti        s3, a2, 165
                  slti        a5, a3, -593
                  andi        a0, t6, 1914
                  ori         sp, s11, -1298
                  or          zero, s6, tp
                  sub         a3, s10, t1
                  or          s8, s11, a7
                  and         a4, zero, a2
                  sltiu       a3, gp, -250
                  ori         s6, s7, -1682
                  lui         zero, 384238
                  sub         zero, s9, a1
                  nop
                  sub         t4, ra, s4
                  sub         s4, t5, a5
                  sub         s2, a7, s5
                  sll         s9, s1, s1
                  sltu        gp, t1, s5
                  add         a1, t3, s9
                  slti        sp, a5, 1554
                  or          s11, s10, a6
                  xor         s2, a5, s6
                  auipc       zero, 969625
                  auipc       s11, 923049
                  sltiu       s5, a3, -144
                  sra         s9, a7, s3
                  srl         s2, s10, s2
                  srl         a4, a1, a5
                  slt         s4, s7, s7
                  sltiu       ra, a0, -1982
                  addi        t4, a7, 447
                  srl         a4, s1, s8
                  sub         s2, a7, s0
                  sltu        s3, s6, a5
                  srai        sp, s1, 15
                  srli        a4, s10, 9
                  slti        t2, s2, 1982
                  srli        t2, a2, 11
                  or          s4, s3, a1
                  sub         t0, s7, a3
                  srai        zero, zero, 7
                  add         zero, s4, s3
                  and         zero, a2, t3
                  slli        a2, t4, 22
                  auipc       s6, 592931
                  sltiu       zero, t3, -1774
                  or          s6, t3, gp
                  sub         s7, a7, s1
                  sll         t0, ra, a2
                  nop
                  add         a6, s11, s0
                  lui         gp, 593049
                  xor         a4, t2, a6
                  add         s11, tp, s0
                  or          a5, s7, a7
                  ori         gp, s2, 1056
                  slti        s0, t1, -188
                  and         tp, a1, s11
                  slt         ra, s1, zero
                  sra         t3, t6, a0
                  and         gp, s6, s9
                  srai        gp, s4, 21
                  srl         tp, s3, s8
                  addi        t4, a4, -128
                  srai        s8, t6, 9
                  ori         sp, s3, 110
                  lui         a2, 720570
                  xori        gp, s3, 695
                  slli        ra, t1, 31
                  slti        t1, a5, 1749
                  srl         t2, s10, t5
                  and         s9, t4, t6
                  srli        s5, t2, 0
                  or          t4, s4, s11
                  or          s2, s9, a3
                  and         s11, s5, t4
                  slti        a4, a6, 908
                  sra         a7, t5, s0
                  srai        a1, gp, 24
                  sub         s1, s7, t3
                  andi        zero, gp, -350
                  srli        tp, s11, 17
                  and         a5, s0, s7
                  and         s6, s5, s10
                  ori         tp, tp, 1745
                  sll         s2, a6, s8
                  srli        s5, sp, 20
                  xori        a2, a7, 191
                  nop
                  nop
                  add         a7, s9, s7
                  nop
                  sra         zero, s4, a3
                  auipc       ra, 33352
                  slt         t0, t1, s0
                  sra         t0, t2, s3
                  xori        a1, t3, 1936
                  slt         a7, s8, s11
                  andi        t3, s2, -1491
                  ori         s7, s7, -1933
                  addi        a6, t3, 325
                  srli        t2, a2, 2
                  lui         zero, 258567
                  xor         a1, s5, s11
                  nop
                  xori        a1, t5, -1154
                  andi        t3, tp, 1288
                  srai        sp, s1, 11
                  addi        ra, a3, -700
                  sltiu       zero, s11, -1610
                  xori        t2, zero, 1132
                  srl         zero, t1, t3
                  sll         a7, a1, a3
                  xor         t2, s2, a5
                  xori        t1, a7, 1909
                  sub         sp, s2, s3
                  sub         s4, zero, s1
                  nop
                  sltiu       s5, s1, -1078
                  add         sp, a6, zero
                  slti        s4, a1, -1783
                  srl         a0, a4, zero
                  xori        t2, s5, 1064
                  srli        s2, a0, 28
                  srli        s9, s2, 0
                  sub         s6, s9, a1
                  sll         s7, t0, t6
                  srli        ra, s3, 8
                  sra         a4, s1, t5
                  lui         s11, 519613
                  srl         a5, zero, t1
                  xor         zero, a6, a4
                  andi        a0, s7, -49
                  add         t3, a4, s1
                  xor         s3, gp, a5
                  lui         s6, 579454
                  srli        a1, s7, 29
                  addi        s0, a4, 1415
                  xori        s7, a7, 1014
                  xori        ra, s7, -951
                  sub         zero, s11, a6
                  sll         s7, s4, a4
                  sll         t1, s6, a5
                  slti        t2, s8, 1804
                  addi        zero, t6, -817
                  auipc       s9, 1000172
                  slt         s9, a3, s8
                  slli        a7, sp, 28
                  slli        a3, t1, 23
                  lui         s0, 12092
                  add         s4, s9, s4
                  sub         gp, a6, a0
                  srai        t0, s4, 25
                  or          s8, a3, t2
                  sll         a1, sp, t5
                  lui         t0, 603404
                  slli        s9, tp, 28
                  xor         a4, t5, s0
                  sub         s11, s6, s5
                  nop
                  addi        s4, a1, -473
                  nop
                  slli        s4, a6, 30
                  ori         t2, a7, -1067
                  xor         zero, a4, s3
                  srai        tp, s9, 12
                  srli        s9, s5, 2
                  slt         sp, s2, s9
                  srli        t2, a6, 5
                  srl         a1, s9, a0
                  sltu        zero, s8, a1
                  sltiu       s4, s7, 1736
                  sltu        s8, t2, a7
                  slti        sp, a1, 1600
                  nop
                  add         s0, t6, a3
                  sra         sp, s5, t5
                  slt         s8, t4, a0
                  sltu        s8, s7, s9
                  slti        t2, t4, 288
                  or          s7, s2, s4
                  srli        a0, tp, 16
                  auipc       a5, 152695
                  srai        s2, s5, 3
                  sll         tp, t3, a3
                  sltu        sp, tp, a3
                  slli        s3, sp, 4
                  sll         tp, s3, t0
                  srl         s11, zero, s1
                  addi        t3, t3, -1654
                  add         a3, a1, s10
                  andi        s3, tp, 800
                  sll         a6, a3, t6
                  ori         s2, s2, -656
                  sll         sp, t0, t6
                  slt         t2, t6, a6
                  andi        ra, s4, 1058
                  sub         ra, s5, a7
                  slli        s4, t0, 8
                  nop
                  slt         a7, s10, s6
                  or          s1, t4, a7
                  xor         tp, s9, t5
                  sub         s0, a7, t6
                  sub         sp, a4, ra
                  sltiu       s7, ra, 301
                  nop
                  addi        zero, a2, -562
                  srai        s11, a3, 25
                  ori         t4, a7, -1706
                  slt         sp, a2, s1
                  sra         s2, zero, s11
                  ori         zero, s2, 572
                  slli        s2, a4, 23
                  sub         t0, s1, ra
                  slti        zero, t2, -1252
                  ori         s5, s6, -1585
                  srai        a4, a1, 12
                  andi        t1, s0, -398
                  add         s0, gp, a7
                  srli        a3, s9, 16
                  slli        ra, t2, 21
                  sltu        s9, a5, s7
                  xor         zero, s9, s5
                  sll         zero, sp, s2
                  srl         a3, a3, s5
                  addi        a2, a5, 771
                  slti        tp, t2, -1380
                  slti        a0, a4, -848
                  sltiu       t1, s3, 1207
                  sra         s3, ra, a2
                  ori         s4, gp, -1146
                  srl         t4, a4, t4
                  slt         s5, s3, s9
                  sra         t0, s0, t5
                  add         s6, s11, a6
                  add         s3, t0, t4
                  and         zero, sp, s6
                  addi        s8, gp, -1331
                  and         zero, s3, t6
                  slt         a5, s11, a6
                  srli        zero, s6, 9
                  nop
                  and         ra, a4, s6
                  srli        s11, t0, 20
                  sltiu       a2, zero, 1851
                  sub         s8, a4, s7
                  and         s5, ra, gp
                  xor         t4, a0, zero
                  srl         a2, t6, zero
                  slli        zero, a3, 3
                  sra         s5, s11, a5
                  or          tp, sp, t4
                  xor         tp, t5, t4
                  lui         s4, 867441
                  andi        s1, tp, -443
                  xor         t4, ra, a6
                  addi        zero, s3, -1108
                  nop
                  sltu        gp, s3, a6
                  xori        s1, a3, 244
                  srl         s7, s3, a3
                  nop
                  srl         s2, gp, a1
                  andi        t4, s2, 217
                  or          s4, t5, a2
                  slli        t1, s10, 28
                  andi        zero, t4, -849
                  or          t4, s8, a0
                  slt         t1, t2, sp
                  nop
                  srai        s5, s4, 31
                  sltiu       s6, a4, -454
                  xor         a0, ra, zero
                  and         s3, s7, t1
                  slt         a0, s9, s7
                  andi        s4, s11, 1350
                  addi        s4, a2, -1780
                  xori        a7, s8, -528
                  andi        s2, t5, 445
                  addi        gp, a4, 1854
                  auipc       a5, 209330
                  srl         s7, s7, a6
                  auipc       a0, 871587
                  and         tp, s0, tp
                  ori         zero, a0, 701
                  slli        s2, s3, 16
                  and         s4, s4, s2
                  srai        s7, t2, 22
                  xori        zero, s4, 789
                  nop
                  sltu        s4, a6, t0
                  sll         a7, s6, a1
                  and         s8, t4, a4
                  sub         s0, a5, t1
                  sra         s4, a3, s10
                  sub         s11, s8, s8
                  slti        ra, s4, -833
                  and         s2, s6, s1
                  slt         s7, s1, a2
                  or          a1, s1, t3
                  slti        a0, s7, -1169
                  auipc       t0, 306871
                  srl         a6, s3, t4
                  slt         t4, t6, s11
                  srl         s3, gp, t5
                  xor         a7, s3, a0
                  srli        t1, gp, 3
                  srai        zero, a1, 21
                  ori         zero, s8, 1618
                  and         a0, zero, a2
                  xor         s0, s3, t1
                  or          a1, a7, a1
                  xori        a0, s10, 1637
                  and         t1, a5, s3
                  xor         s1, a3, s9
                  slli        a7, t3, 15
                  srai        a7, a0, 1
                  ori         t1, zero, 781
                  or          a4, s11, a5
                  andi        s11, s3, 1590
                  xor         s5, a3, sp
                  xor         s9, t0, a0
                  sll         sp, a4, tp
                  add         s8, s10, a3
                  sltiu       t3, t6, -718
                  add         zero, ra, s2
                  sra         s7, s2, s2
                  srli        a2, t5, 21
                  and         t2, a6, s4
                  auipc       ra, 1027957
                  slti        a3, s0, 617
                  or          s4, ra, s5
                  lui         gp, 344800
                  xor         zero, s6, s10
                  auipc       a0, 1045755
                  sll         zero, a5, t4
                  addi        sp, s3, 1189
                  sltiu       s3, a3, 317
                  slt         a7, s4, s7
                  and         tp, s1, t0
                  sub         ra, s2, s2
                  srli        zero, zero, 2
                  lui         s11, 383369
                  add         a5, t6, s5
                  xor         a5, gp, a5
                  slti        s1, a7, 1446
                  ori         a7, s0, -1
                  add         zero, t5, t6
                  lui         s7, 96744
                  li         t4, 0x0 #start riscv_int_numeric_corner_stream_15
                  li         a4, 0x8e9e5ab
                  li         t3, 0x1
                  li         s9, 0x0
                  li         s11, 0x1
                  li         s1, 0x1
                  li         a5, 0x3308529c
                  li         a1, 0x0
                  li         s8, 0x0
                  li         s7, 0x1
                  lui         s6, 740686
                  sub         zero, s5, a1
                  addi        a5, a2, -1397
                  add         a2, s11, s3
                  addi        s7, a3, -1181
                  lui         s8, 655737
                  lui         a6, 627817
                  nop
                  nop
                  addi        tp, s8, 1331
                  lui         a5, 996338
                  nop
                  nop
                  nop
                  addi        tp, a1, 980
                  addi        s6, t4, -165
                  sub         t3, a3, sp
                  nop
                  addi        s8, s11, -629
                  nop
                  addi        s7, gp, 135
                  add         t0, s11, s1
                  lui         a1, 871416
                  addi        s7, a2, -720
                  lui         s9, 737029
                  sub         s6, t0, t3
                  lui         t0, 845927
                  lui         s1, 257216
                  lui         a2, 752738 #end riscv_int_numeric_corner_stream_15
                  auipc       t1, 547314
                  add         a3, a1, t4
                  sltiu       s9, s4, -1628
                  or          a2, t5, s8
                  slti        t1, ra, -215
                  lui         zero, 362342
                  sub         t0, a4, sp
                  xori        a7, a5, 1028
                  slli        zero, s3, 30
                  and         s8, zero, s5
                  andi        a1, a7, 1550
                  xor         zero, a2, s2
                  sra         s1, s6, s2
                  or          s11, t5, t3
                  sltiu       tp, s1, 248
                  slli        t0, t2, 7
                  add         zero, s0, t6
                  slti        t1, zero, -180
                  or          s6, s6, tp
                  or          a1, s7, s11
                  auipc       s2, 380658
                  srl         s4, a2, s3
                  nop
                  lui         t1, 643958
                  slti        s0, zero, 485
                  nop
                  nop
                  srai        a1, t0, 15
                  sltiu       s7, s4, 1792
                  auipc       s4, 1024109
                  nop
                  xori        s7, a0, 1459
                  srl         zero, s9, ra
                  srl         zero, s10, a3
                  lui         zero, 171403
                  slti        a3, s10, -138
                  sub         ra, a1, t2
                  sltiu       a4, s0, 520
                  nop
                  or          s1, s2, a7
                  xori        t1, s3, -1974
                  sltiu       t2, gp, -1756
                  srl         zero, s2, s10
                  xori        s5, a5, 360
                  auipc       t1, 822417
                  nop
                  srl         s1, t0, a7
                  slt         t3, s9, s4
                  and         a6, t2, a5
                  add         a5, s2, tp
                  srai        a4, s4, 8
                  srl         tp, s8, a0
                  xori        a5, a7, 1115
                  xor         ra, s2, t3
                  sra         t3, a2, s4
                  ori         s4, t1, -365
                  slti        a1, s10, 2017
                  lui         s2, 700694
                  sub         s11, a5, t1
                  sltiu       s5, t0, -729
                  or          s9, s8, a5
                  sub         s7, sp, a5
                  sra         t0, s10, s9
                  xor         s9, s6, s8
                  sub         s4, a2, a7
                  addi        ra, s0, -304
                  srai        a3, a5, 29
                  sltiu       s7, s6, -279
                  xori        t1, gp, 66
                  and         zero, a2, s4
                  slti        s1, t5, -1076
                  nop
                  xor         t1, t2, ra
                  slti        a0, s5, -502
                  nop
                  auipc       t3, 170152
                  xori        s11, a2, -1231
                  sll         gp, t5, t5
                  nop
                  srli        a2, t6, 31
                  sra         gp, a2, t2
                  slli        a3, s2, 29
                  or          zero, t0, a7
                  srai        a1, s9, 27
                  lui         s2, 706262
                  addi        ra, s7, -813
                  srli        zero, s8, 12
                  or          a7, a6, a0
                  sltiu       a5, t4, 1976
                  slti        t0, t2, -558
                  srli        s6, a1, 31
                  srai        zero, t3, 3
                  lui         sp, 936728
                  and         a6, t4, a0
                  slti        gp, s6, -1737
                  or          s8, sp, t5
                  slli        s2, t1, 14
                  sltu        tp, gp, s10
                  slt         s5, a5, t4
                  or          s0, a1, zero
                  sub         a2, t6, s5
                  srli        a5, t3, 2
                  lui         t2, 760659
                  srl         s11, t6, s4
                  srai        s4, s5, 13
                  andi        s3, s10, 2038
                  nop
                  nop
                  sll         ra, ra, t4
                  sltu        a7, s2, a2
                  slti        s7, a5, 1525
                  slti        t0, s1, -2048
                  andi        t0, a3, -159
                  xori        zero, a5, -1973
                  andi        s11, tp, 1080
                  and         s7, s0, a3
                  slli        zero, a6, 5
                  add         s5, sp, t6
                  and         t1, sp, s3
                  srl         s5, ra, s5
                  slt         s9, t6, t5
                  sll         t4, s0, a3
                  ori         a7, s11, 85
                  srl         ra, a7, s4
                  slli        s4, s8, 19
                  sltiu       t3, s5, 674
                  nop
                  sub         zero, s10, s8
                  add         gp, s4, a2
                  auipc       a1, 475257
                  nop
                  sltiu       t1, a6, -1311
                  add         s4, a6, a2
                  or          s5, a2, s5
                  ori         a7, a4, -216
                  xori        tp, s8, 19
                  sra         zero, s5, a1
                  or          s9, a6, a4
                  and         t0, s0, t3
                  auipc       s5, 267176
                  and         t4, s0, s7
                  or          a2, a2, s10
                  nop
                  sltiu       t3, s4, -1731
                  xor         sp, a6, a6
                  srai        sp, s4, 14
                  xor         t2, a4, s7
                  sltiu       t3, s11, 810
                  sub         a2, s5, a5
                  sltiu       s7, t3, 112
                  xori        zero, t6, -1631
                  xori        s0, s1, 1972
                  addi        zero, a7, 841
                  srli        a6, t5, 6
                  and         t2, t1, t3
                  nop
                  srli        t4, t1, 27
                  nop
                  xori        t3, s5, -1468
                  slti        zero, t2, -1424
                  addi        t4, a7, -1610
                  slt         zero, a1, a2
                  sltiu       s4, a6, -473
                  ori         s9, s5, -637
                  sub         s4, s8, a7
                  sub         a7, s1, s1
                  add         a0, a3, a5
                  sra         s4, t6, s2
                  or          a6, tp, a2
                  slli        s9, a3, 17
                  sra         s2, gp, t3
                  auipc       t4, 722872
                  sltu        s8, s8, s10
                  xori        ra, s4, 1824
                  slti        s4, t5, -1915
                  addi        tp, s1, -1644
                  srl         s2, t1, a7
                  slti        a0, a4, 1564
                  slti        s7, a7, -900
                  addi        s3, s10, 1214
                  xori        ra, s6, 457
                  andi        t4, gp, 1567
                  srli        s3, zero, 11
                  slti        tp, t3, -522
                  sra         s8, t6, t1
                  slti        a2, t4, 1787
                  slli        a3, zero, 19
                  slli        gp, a0, 24
                  slti        s0, t1, -1026
                  auipc       t1, 293318
                  xori        a3, s6, 312
                  sltu        sp, s8, a5
                  sra         s7, s0, s3
                  and         a0, s6, s8
                  slli        a7, s1, 9
                  lui         a0, 795710
                  xor         t4, t4, s0
                  or          ra, t0, a1
                  andi        t3, a7, -1034
                  sra         s1, a3, t4
                  srl         zero, t6, s0
                  srai        s3, s0, 24
                  addi        a2, s4, 1043
                  slli        s0, s5, 12
                  xor         a2, zero, s0
                  andi        t3, zero, -1175
                  sra         s3, a6, tp
                  xor         t3, s5, s4
                  sltu        a2, a0, a7
                  lui         a0, 419963
                  and         a7, s7, t6
                  xor         a1, a1, s4
                  srli        zero, s11, 27
                  sub         gp, t3, a2
                  and         a6, s0, a7
                  slti        t4, t5, 674
                  xori        s7, s8, -1869
                  auipc       a7, 733337
                  xor         zero, a3, t0
                  nop
                  sub         a3, s3, a0
                  sra         zero, s3, gp
                  xori        s11, s7, -1356
                  xor         a7, s10, s8
                  srli        a0, s0, 22
                  srl         gp, s9, t6
                  srl         a4, a3, s0
                  and         a0, s0, a0
                  xor         zero, a6, s9
                  xori        tp, t6, -1683
                  slt         a2, t4, s7
                  auipc       s9, 83432
                  sltu        s0, s2, t4
                  xor         s8, t3, t5
                  and         a4, a2, s6
                  slt         t3, t4, a5
                  xor         a5, s2, a6
                  add         a6, gp, a5
                  sltu        a6, s11, s7
                  addi        t2, a1, -1941
                  or          s3, s6, a1
                  srai        s6, t1, 22
                  sra         a7, s6, s11
                  andi        gp, a0, -1094
                  sltiu       t2, a4, 93
                  srl         s8, s6, t3
                  sub         a1, s2, s11
                  auipc       a1, 376840
                  and         t3, s10, sp
                  andi        t4, t5, -1661
                  xori        t0, zero, 1032
                  srli        s11, t5, 28
                  srl         s9, t4, t0
                  addi        a7, a0, -1702
                  sub         gp, t1, a3
                  auipc       t3, 608001
                  xori        a2, s2, -1987
                  sra         s0, t6, t3
                  sltu        ra, t0, a1
                  slli        a2, a6, 20
                  srai        a2, t2, 24
                  xor         zero, s5, t1
                  sub         zero, s8, t1
                  srl         t0, s7, s6
                  lui         s11, 329926
                  sll         zero, t0, s3
                  slt         s8, s7, a4
                  slti        a2, s11, -1616
                  sll         a4, a3, t5
                  xori        s2, a5, 973
                  slli        ra, s8, 20
                  xor         t3, t4, s0
                  xori        t1, t6, -1879
                  srli        a0, gp, 27
                  nop
                  sltu        a3, s1, t4
                  sll         s9, gp, s1
                  sltiu       t2, a1, -197
                  srl         s2, a0, a4
                  andi        t4, sp, -1542
                  or          t3, t4, a5
                  sra         t3, a6, tp
                  sub         s6, a7, s9
                  nop
                  slti        s3, a2, -141
                  sll         t4, s7, a0
                  and         ra, a7, s6
                  sll         s6, a1, s1
                  sll         a0, s3, s6
                  slt         s8, s1, a3
                  and         s6, s4, tp
                  xor         a5, t0, t1
                  slti        gp, s3, 1755
                  and         s2, s9, a0
                  slti        a3, s1, -1944
                  srl         s0, sp, a0
                  srai        a2, s5, 25
                  xor         s2, s0, a0
                  sll         s1, a0, s8
                  xori        s5, s3, 1452
                  ori         t3, s1, 1997
                  addi        zero, ra, -1906
                  andi        t0, s0, 346
                  ori         a4, t1, 133
                  andi        s0, s11, -1386
                  nop
                  srl         s9, a2, a7
                  nop
                  nop
                  sub         tp, s9, s9
                  nop
                  slli        s11, t5, 0
                  srai        s6, t5, 9
                  nop
                  addi        t0, t1, -1630
                  srl         s9, t3, s7
                  sltu        s1, t6, t2
                  slti        s11, s8, 890
                  addi        zero, s5, 341
                  andi        a7, s1, 1274
                  slti        zero, sp, 1586
                  lui         s4, 374707
                  lui         a0, 462222
                  srli        s5, t1, 1
                  srai        t4, s9, 0
                  slli        a7, s10, 22
                  sltu        a1, s5, s10
                  nop
                  srli        s0, s5, 26
                  addi        s6, a6, -1700
                  add         s2, a2, s9
                  sra         s5, s7, a1
                  srai        s9, s1, 31
                  slli        zero, s7, 16
                  andi        s2, s4, -1270
                  xori        a3, s3, -579
                  xor         s1, t2, t5
                  or          a7, s10, s1
                  slti        s5, s6, -702
                  slt         s11, a3, a5
                  srl         t0, a4, s1
                  nop
                  slt         t4, a4, a6
                  xori        sp, a6, 1038
                  or          t4, s3, s8
                  sltiu       t3, t5, -1987
                  sltu        s3, s11, a1
                  andi        tp, s3, -726
                  slli        a3, s2, 23
                  srai        s9, s6, 23
                  slli        gp, t5, 26
                  sll         gp, s2, sp
                  and         a2, ra, a4
                  add         s1, s6, a5
                  sltiu       t1, s3, 1193
                  ori         zero, t4, 1146
                  sub         zero, tp, sp
                  andi        a7, a3, -875
                  sltiu       zero, s3, -787
                  srai        s2, a3, 17
                  andi        a5, ra, -281
                  slli        t1, s2, 15
                  sll         a1, s4, t5
                  sub         a0, t1, zero
                  slli        s9, t6, 15
                  auipc       a2, 704440
                  xori        a6, s10, 787
                  xor         a6, s2, s4
                  auipc       a3, 649215
                  nop
                  auipc       t0, 685161
                  nop
                  sub         zero, s9, s5
                  sra         a7, s1, s9
                  sra         zero, t4, s4
                  sltu        t1, a7, s7
                  slli        s1, a4, 15
                  sub         s3, s10, s5
                  auipc       s2, 511333
                  srl         a4, s0, s3
                  srl         s9, a6, s0
                  slti        s3, s4, -1999
                  sltiu       a1, t6, -156
                  sub         zero, s6, t3
                  ori         s9, s1, -2029
                  slli        s7, t1, 24
                  andi        gp, s8, 1722
                  xor         s2, s0, gp
                  auipc       s11, 838383
                  and         a2, a3, t2
                  nop
                  add         s9, zero, tp
                  sub         a0, t0, s4
                  xor         zero, s2, sp
                  auipc       s9, 403836
                  xori        zero, t4, 14
                  auipc       s3, 160447
                  lui         a2, 8445
                  srli        s2, ra, 13
                  sltu        s5, s10, a0
                  or          t1, tp, t3
                  or          sp, a1, a1
                  auipc       s0, 587618
                  and         a4, s0, s8
                  andi        a3, t0, 817
                  sltu        a2, s0, ra
                  slli        t1, zero, 21
                  add         a7, s11, t4
                  srai        a2, s9, 14
                  andi        sp, s3, 1649
                  slt         s11, a6, s10
                  srl         t1, t0, s0
                  addi        s4, s6, -854
                  or          gp, sp, t4
                  slti        t1, a7, -1613
                  nop
                  and         s3, s7, s8
                  sltiu       s9, a4, -1528
                  srai        t3, s7, 10
                  sll         s3, t4, gp
                  and         zero, a0, t4
                  srai        a6, t2, 23
                  xori        zero, gp, -561
                  sra         s9, s5, t0
                  and         a0, t6, sp
                  slt         a6, t3, t5
                  xori        sp, zero, -1725
                  sub         s9, a3, t4
                  slti        s6, s10, -1943
                  slli        zero, t5, 3
                  sll         ra, gp, s7
                  srai        tp, a3, 17
                  srli        t4, s7, 4
                  sll         s11, tp, s11
                  slti        s5, a4, -3
                  and         s7, s10, s5
                  srai        t0, s1, 30
                  sltiu       t1, t4, 787
                  andi        t0, s3, 119
                  addi        t1, t3, -1393
                  sll         a7, ra, a4
                  addi        s9, s3, -898
                  or          t0, s8, s4
                  auipc       a3, 363805
                  nop
                  sll         s4, a6, s2
                  or          tp, t4, t2
                  slti        a3, t2, -960
                  xor         s5, t2, t5
                  slti        gp, s6, -1914
                  slli        t3, a2, 12
                  xori        s9, s2, 1760
                  lui         gp, 833744
                  sub         a5, s11, s8
                  srl         ra, t2, s11
                  srl         zero, s1, a2
                  slt         a2, a0, a2
                  andi        a3, a0, 2020
                  sub         s8, s5, sp
                  ori         a2, a4, -210
                  srl         t1, s10, a3
                  slli        a3, s9, 19
                  srl         a3, ra, a5
                  slti        t3, s5, 1423
                  slti        a3, a3, -1627
                  srli        ra, t3, 4
                  srai        s11, a2, 11
                  sltiu       s7, t0, -627
                  ori         a0, a1, 1244
                  slli        sp, s3, 4
                  ori         s7, sp, 470
                  and         t2, s0, s8
                  lui         s1, 684056
                  and         t1, s2, s9
                  or          zero, zero, s8
                  slti        s9, s5, 257
                  addi        ra, a5, 981
                  sll         a0, s6, s6
                  srai        zero, s6, 2
                  xor         a0, s7, t2
                  andi        s3, sp, 475
                  ori         s7, t4, -1926
                  auipc       t4, 587783
                  sub         s11, s7, t5
                  sltu        s2, s11, a7
                  ori         a0, s10, 1970
                  and         sp, s11, t5
                  srai        t4, s3, 0
                  sltiu       s4, a2, 481
                  srli        s7, s6, 26
                  addi        s6, ra, 1496
                  sltu        a0, t0, a7
                  xor         s5, t5, a3
                  sltu        zero, t4, s0
                  addi        s8, t0, -589
                  addi        a2, ra, -1202
                  sub         zero, zero, t0
                  srai        a0, a3, 24
                  ori         s9, ra, -1156
                  nop
                  srli        sp, s6, 0
                  srl         gp, tp, s1
                  and         a7, s10, a1
                  sltu        tp, t2, ra
                  xor         zero, tp, t5
                  sll         a7, a2, s5
                  and         tp, s2, s7
                  slli        s5, t3, 25
                  srai        zero, t1, 10
                  or          a4, s0, a7
                  xor         t1, a5, t4
                  and         s8, tp, s6
                  sra         sp, s7, t3
                  addi        a3, s2, -1396
                  slti        t0, tp, -926
                  srl         zero, a6, t5
                  auipc       zero, 252389
                  slli        a1, s8, 17
                  xori        t0, a0, -549
                  srli        t4, t5, 28
                  and         s6, t1, zero
                  andi        sp, t0, -972
                  slt         s2, a2, tp
                  nop
                  xor         s1, s1, t3
                  sltu        sp, zero, s3
                  sub         ra, zero, a6
                  srl         zero, s2, a1
                  sra         t0, s11, a7
                  sltiu       s11, sp, -1022
                  auipc       s4, 740189
                  ori         tp, s5, -1138
                  slt         zero, s2, s9
                  auipc       s2, 266043
                  or          s2, a3, t6
                  sub         s2, s9, s6
                  addi        sp, s4, 283
                  auipc       s1, 100181
                  srai        s9, tp, 9
                  slti        s3, s5, 180
                  andi        t3, gp, -1788
                  xor         zero, gp, a4
                  lui         zero, 191304
                  srl         a6, gp, s10
                  slti        tp, a4, -593
                  srai        t4, t1, 22
                  xor         a7, t5, s3
                  and         s1, s8, sp
                  or          s9, s6, s7
                  sltu        t0, s0, s0
                  add         s4, s5, s2
                  sltiu       gp, s0, 623
                  auipc       zero, 141867
                  add         s1, s2, a4
                  sltu        s6, s5, s9
                  nop
                  slti        t0, s10, 1360
                  nop
                  sra         a3, s7, gp
                  sra         t1, s8, ra
                  sltu        a5, s6, t1
                  xor         t4, tp, a4
                  nop
                  ori         t1, s9, -392
                  sltiu       zero, s7, -48
                  and         zero, tp, s7
                  add         t3, a6, a1
                  srai        s4, s4, 5
                  andi        tp, t5, 181
                  srli        zero, t1, 22
                  slli        s5, a7, 29
                  srai        s9, gp, 16
                  sub         s2, s10, a7
                  and         a7, s6, a0
                  sub         t4, s2, t0
                  or          s11, a5, s1
                  addi        s1, s5, -1740
                  sra         a3, t4, s2
                  addi        tp, a4, -1806
                  slli        sp, a6, 10
                  sltiu       s3, s2, -1035
                  sltu        a2, t6, t2
                  srli        zero, a7, 7
                  ori         s3, s8, 973
                  sub         s0, s7, s0
                  srai        zero, s5, 2
                  or          zero, sp, t0
                  slt         s4, s4, t5
                  sll         zero, t6, t4
                  add         a1, a6, s1
                  srli        s9, zero, 31
                  ori         a3, t2, -1669
                  slti        s11, s0, -992
                  srai        t0, a5, 10
                  xori        t0, s9, 753
                  addi        t3, t4, 1583
                  slt         s3, a1, t4
                  sra         tp, t0, t6
                  lui         s7, 772629
                  srai        s3, t0, 23
                  slt         t1, a2, a0
                  addi        a6, s4, 48
                  slti        a6, t4, -1926
                  sra         a0, ra, a6
                  and         t4, s4, a2
                  andi        a7, a6, -747
                  xori        a5, zero, -185
                  add         a2, s4, a3
                  sll         zero, s9, t3
                  srl         s0, s1, t4
                  xor         a1, s0, sp
                  slti        a5, s7, 1811
                  andi        a1, ra, -2016
                  sltu        a7, a2, a1
                  addi        s1, t6, -1723
                  srl         s6, t4, a2
                  sub         a0, a3, s1
                  srli        a0, t4, 0
                  and         s3, s0, t5
                  srl         zero, tp, a4
                  srai        t2, sp, 1
                  sll         s3, ra, a5
                  or          a2, zero, t4
                  srai        a2, s8, 2
                  slli        s6, s0, 9
                  add         zero, s3, s4
                  sll         t2, s3, t6
                  xori        s8, s1, 1880
                  sltiu       a1, s6, -54
                  nop
                  srl         s6, t3, a0
                  sll         a0, a4, s5
                  srai        a1, ra, 10
                  slt         a0, s7, s9
                  slli        t4, s4, 29
                  ori         s7, s9, -590
                  xor         gp, s11, s11
                  slt         s6, s8, s0
                  xor         s4, s4, a6
                  or          a4, ra, s9
                  auipc       s7, 489206
                  or          ra, sp, t2
                  sltiu       s1, gp, -307
                  slli        s6, t3, 12
                  and         a0, s2, s10
                  and         zero, ra, tp
                  sltiu       tp, a5, 1426
                  lui         zero, 110437
                  addi        s11, s11, 62
                  andi        a4, s7, 5
                  sub         s3, a3, sp
                  xor         s1, sp, s2
                  srl         sp, gp, tp
                  nop
                  slti        gp, a5, 683
                  add         zero, t2, t2
                  and         zero, t6, t3
                  auipc       a5, 257699
                  sltu        a6, zero, s7
                  nop
                  ori         s4, s5, 1872
                  srl         s3, s7, a0
                  srli        zero, t1, 1
                  slti        a1, s3, -1414
                  srai        s3, gp, 30
                  lui         t3, 949219
                  auipc       a4, 488338
                  sra         zero, tp, a3
                  nop
                  xori        s0, a1, -1032
                  srli        s9, s1, 10
                  slt         ra, s2, a4
                  addi        s0, s8, 1568
                  srai        s2, a0, 10
                  srai        zero, s4, 24
                  slli        s1, t6, 20
                  sltu        a2, tp, a0
                  addi        s0, a7, -239
                  and         zero, s8, a0
                  nop
                  auipc       ra, 235437
                  or          a0, s6, a3
                  sll         t4, a4, s8
                  addi        sp, s10, -544
                  or          zero, t5, tp
                  add         t2, a2, t6
                  or          sp, a1, s1
                  srl         zero, a5, s5
                  xori        a5, s11, -939
                  sll         zero, s5, t5
                  add         s7, t2, s3
                  xori        sp, s10, 674
                  nop
                  sub         zero, t1, t4
                  auipc       t4, 469361
                  auipc       t0, 102770
                  sra         s4, t1, tp
                  sltiu       tp, t6, 33
                  xor         t2, zero, t4
                  lui         a4, 376821
                  slti        t0, s8, 1467
                  and         a4, t6, a4
                  srl         s3, a0, a4
                  or          zero, s2, s7
                  ori         s9, s9, 1326
                  slli        a0, s0, 25
                  auipc       s8, 807081
                  ori         s3, t6, -1912
                  slti        a5, s9, -1971
                  xor         zero, s3, a6
                  sub         ra, a6, t1
                  sltu        a7, t0, t4
                  srl         sp, t4, s0
                  xori        a3, a4, 1778
                  slti        zero, t3, -761
                  sra         t2, t6, t3
                  nop
                  sltiu       s1, s3, -2022
                  srl         s5, t0, s8
                  or          s5, a0, s6
                  nop
                  sltiu       s2, ra, 1854
                  srai        t0, s10, 14
                  sra         sp, a7, t2
                  nop
                  ori         s5, sp, -835
                  add         s11, ra, a0
                  nop
                  sltiu       a0, s2, -626
                  and         tp, a7, a5
                  srli        s11, a2, 18
                  srai        gp, s1, 9
                  nop
                  xori        s8, t1, 1025
                  sub         zero, ra, s5
                  auipc       a6, 1010592
                  lui         a6, 79309
                  andi        t1, t4, 747
                  xori        s11, tp, 165
                  andi        t2, s10, 509
                  addi        s3, a5, 1406
                  sltiu       t1, t3, 118
                  and         gp, a1, s11
                  sltu        a7, a1, s6
                  addi        tp, zero, -1956
                  nop
                  sll         a7, t5, gp
                  xor         s5, s4, s7
                  sltiu       t0, t6, 371
                  sltu        a0, a3, s6
                  sltu        a7, sp, s4
                  srl         gp, a6, s3
                  add         t1, t0, s10
                  sub         t0, gp, sp
                  xori        t2, s2, 1476
                  srli        s6, sp, 5
                  sll         s5, tp, a2
                  slli        zero, s2, 13
                  sltiu       s5, s8, -586
                  srai        s5, a2, 22
                  slli        zero, a6, 15
                  ori         t0, s0, 1151
                  auipc       a3, 784834
                  andi        a7, s2, -1514
                  sll         ra, s9, zero
                  addi        s1, t3, -1467
                  addi        t1, s4, -1090
                  or          s5, a0, t1
                  or          s11, ra, a2
                  slti        s4, t2, -1751
                  or          a5, s7, s3
                  addi        t1, a7, 431
                  add         gp, s7, a0
                  nop
                  addi        s11, t0, 1934
                  addi        sp, t2, -1458
                  ori         t0, gp, 1940
                  sll         t3, s2, zero
                  srai        s3, a6, 12
                  slti        s1, t4, 984
                  lui         zero, 448271
                  and         zero, s6, s4
                  add         tp, a5, s2
                  sltu        s9, a2, s4
                  add         t2, s2, a2
                  srli        s9, s4, 19
                  slt         s5, s6, a4
                  sra         a1, a7, sp
                  sltiu       a3, a2, -1318
                  or          s11, a5, s2
                  or          a3, zero, s9
                  sll         a3, a5, ra
                  xori        gp, s6, 553
                  slli        s2, a6, 8
                  sra         a4, s8, t0
                  sltiu       sp, zero, 947
                  addi        tp, s3, 776
                  add         s1, s2, a2
                  auipc       s0, 237892
                  nop
                  andi        a2, sp, 111
                  srl         a4, t2, a3
                  sra         gp, s5, s3
                  slti        sp, a5, -2006
                  ori         t3, t0, -1530
                  and         a0, s4, t4
                  slt         sp, s2, s5
                  sll         t3, t5, s4
                  sub         s4, t2, s4
                  sra         t4, t0, t3
                  addi        s11, s1, -1057
                  and         a2, s10, t1
                  slli        zero, t2, 16
                  slti        t1, tp, -1803
                  sltiu       a1, s6, 1094
                  sll         zero, s5, s5
                  auipc       a0, 665601
                  sltiu       tp, a3, 1319
                  srai        t3, a1, 15
                  xor         tp, s0, a6
                  sra         t1, s8, t6
                  ori         s8, zero, 991
                  slti        tp, s3, 1213
                  slt         sp, s11, s10
                  nop
                  xori        tp, a3, -473
                  xori        s2, s9, -656
                  srl         a1, t2, s5
                  slti        t4, t1, -6
                  add         t2, s10, s10
                  lui         s4, 224012
                  and         s1, gp, ra
                  and         a6, s7, t6
                  andi        t4, a1, 1721
                  nop
                  sltu        s0, sp, zero
                  sltu        a0, ra, s10
                  or          zero, sp, s8
                  and         s8, t0, a0
                  slli        sp, t5, 21
                  slli        s7, s6, 5
                  nop
                  andi        s1, a2, 1701
                  srai        s2, a7, 16
                  srai        s8, s6, 1
                  slli        s5, sp, 30
                  slli        tp, s9, 11
                  slli        s7, s8, 6
                  srli        a7, s8, 6
                  lui         a7, 260702
                  srai        t3, zero, 25
                  sltu        s4, tp, s1
                  ori         s9, a7, 1933
                  add         sp, s6, s10
                  nop
                  slt         gp, a6, t2
                  srli        s11, sp, 6
                  ori         ra, a0, 157
                  or          t2, s1, tp
                  xori        ra, a0, -681
                  and         sp, t5, s0
                  slti        t4, a7, 906
                  addi        s6, sp, -1769
                  slti        zero, t4, 675
                  and         t2, a3, s9
                  ori         s3, s1, -1374
                  srl         t0, t0, s11
                  sll         zero, t4, a0
                  xor         t0, t6, tp
                  xori        s11, s0, -290
                  srli        zero, a2, 8
                  sltiu       ra, a6, -2041
                  lui         s9, 252533
                  slli        a6, s8, 6
                  srl         a1, sp, a2
                  srai        t4, s0, 16
                  xori        zero, s9, 22
                  slti        a1, a6, 1368
                  andi        zero, s0, -1398
                  slti        a2, t5, 245
                  xori        gp, sp, 1757
                  xori        s11, s4, -107
                  sub         s2, zero, t4
                  add         zero, s9, a1
                  sltu        a1, t1, gp
                  srli        zero, s8, 9
                  sltiu       s11, s11, -1971
                  ori         gp, s9, 1767
                  slli        ra, a3, 3
                  slti        a7, a2, -1958
                  slt         zero, s7, a7
                  and         zero, s5, a1
                  add         s8, s1, gp
                  auipc       t2, 582551
                  slli        zero, t1, 15
                  slt         a2, s6, gp
                  sub         tp, sp, s10
                  nop
                  sltu        s0, sp, t6
                  sll         s3, a0, a1
                  sltu        t1, s7, s5
                  and         a1, zero, s8
                  sltu        a0, a2, t3
                  slti        s11, s1, -733
                  slli        s4, t4, 26
                  sltu        a2, s9, s6
                  sll         s5, t6, a2
                  add         a0, t1, sp
                  andi        s9, a6, 1085
                  and         gp, t2, a0
                  sltu        a4, s5, s1
                  addi        a0, t3, 615
                  sll         a1, t4, s2
                  sltiu       a1, s9, 1751
                  sltu        s11, s5, a4
                  sra         s9, t0, t1
                  auipc       a7, 856709
                  andi        t4, zero, 1778
                  sltiu       t0, a3, 563
                  sub         zero, s7, a7
                  and         a5, t6, s2
                  sltiu       a1, s0, 975
                  or          s7, ra, s10
                  lui         s5, 660552
                  auipc       t3, 257523
                  add         a5, a2, s7
                  slt         s5, a2, a6
                  slt         s5, s8, a6
                  nop
                  and         gp, t6, t0
                  sra         a3, tp, s11
                  slli        s4, zero, 16
                  ori         s4, a2, -243
                  slti        s11, a3, 1230
                  andi        zero, a3, 1942
                  sra         s9, a4, t0
                  add         s7, t3, a4
                  andi        a5, t4, -1410
                  add         t1, s10, a7
                  xori        t1, ra, 767
                  or          s3, zero, a6
                  sltiu       s11, s3, 1447
                  slli        a5, s11, 4
                  ori         zero, s9, 1014
                  andi        t4, a0, -59
                  lui         t0, 201563
                  ori         s0, s7, 85
                  sltu        a5, t5, s6
                  srai        s2, s2, 20
                  srli        a4, t5, 18
                  auipc       zero, 4852
                  addi        a3, s0, 966
                  ori         t0, s3, 431
                  sll         a5, s4, s8
                  sub         s5, a3, a2
                  srai        a7, a2, 0
                  xor         t2, a1, a1
                  auipc       ra, 464283
                  add         a0, a7, a6
                  xor         a3, s10, t0
                  sra         s2, zero, s0
                  srl         s1, s5, s11
                  srai        s3, t1, 15
                  slli        s3, s9, 9
                  slt         a4, sp, s10
                  slli        gp, zero, 22
                  sra         t4, a5, s11
                  andi        s4, t1, -438
                  andi        a2, gp, -1301
                  sra         t1, sp, a6
                  slt         sp, t1, s11
                  sra         a6, s0, a5
                  slli        s6, t4, 26
                  xor         zero, a1, a3
                  sltu        a2, t4, ra
                  sra         tp, zero, s9
                  addi        gp, t6, -1465
                  slt         a4, s1, a6
                  sltu        a4, s8, a7
                  srli        a4, t3, 9
                  nop
                  or          t3, a7, t0
                  and         s2, sp, t2
                  andi        s4, a1, -704
                  and         a3, s0, a4
                  auipc       s1, 302158
                  nop
                  sll         a7, a5, a6
                  sltu        t3, a6, a2
                  auipc       zero, 255675
                  slli        s4, s2, 14
                  slli        a3, a7, 18
                  addi        s0, t3, -762
                  andi        s7, s2, -1891
                  srl         s0, s5, t3
                  or          a0, s6, tp
                  slli        s1, s2, 2
                  srli        s9, a5, 29
                  addi        a3, s6, 309
                  andi        s1, t3, 1563
                  ori         a2, a4, 1237
                  auipc       s7, 834685
                  auipc       s9, 331676
                  sltu        zero, a3, s10
                  nop
                  slt         gp, s11, sp
                  addi        t2, t4, 1108
                  or          s3, a4, s4
                  sltiu       ra, gp, -240
                  nop
                  sltu        s11, s1, s11
                  srli        zero, a3, 20
                  slt         s0, s2, t2
                  srli        a4, s5, 1
                  slli        t3, a0, 20
                  sub         ra, ra, sp
                  srli        t2, s0, 30
                  auipc       s6, 738942
                  xor         a3, s2, a5
                  srai        zero, s8, 18
                  slli        a4, tp, 12
                  slti        zero, a7, 1994
                  ori         gp, t1, -1819
                  or          s2, a7, s5
                  srli        a2, s8, 26
                  and         zero, t2, s10
                  andi        a5, s10, 1616
                  sra         a7, t2, ra
                  lui         s2, 483384
                  sltu        s0, s6, t0
                  sub         s0, t4, a0
                  ori         s1, ra, -1149
                  sltu        s8, s3, ra
                  add         ra, zero, t2
                  slli        a4, a1, 30
                  sltu        s7, t0, a1
                  or          t1, t3, sp
                  or          s7, a5, s6
                  slli        s11, s5, 31
                  lui         t1, 786652
                  slli        a5, t5, 6
                  auipc       s1, 236654
                  sltu        a7, ra, t2
                  add         t2, s6, ra
                  slli        s2, a1, 24
                  srl         s2, a7, s0
                  sll         t2, t4, a6
                  and         a3, t5, t6
                  andi        s7, a5, 1334
                  sub         zero, t4, s3
                  sll         zero, s6, s10
                  slt         s6, a6, s7
                  sra         a0, zero, a4
                  xor         s6, t4, a7
                  nop
                  srl         a1, gp, s4
                  auipc       t2, 597547
                  nop
                  xori        s0, t3, -1665
                  xor         a0, a2, s9
                  sltu        a7, gp, zero
                  and         tp, a5, a1
                  or          a4, s3, s10
                  srli        s5, t3, 6
                  xor         t0, s6, t2
                  auipc       t0, 1020708
                  xor         a6, a4, s8
                  sltu        a6, s2, a4
                  srli        ra, s5, 7
                  sltu        s5, t2, s11
                  xor         a6, s10, a7
                  slti        sp, s4, -589
                  addi        s3, s2, -1788
                  srai        t0, s0, 30
                  add         s6, ra, t0
                  slt         t2, sp, a1
                  sltu        s8, a5, t2
                  andi        tp, tp, 1787
                  sltiu       s7, s3, -296
                  srai        a7, zero, 2
                  sltu        s5, a4, s7
                  sra         s4, s5, t1
                  xor         zero, zero, gp
                  ori         zero, a0, -868
                  sltu        a0, s4, tp
                  srl         zero, s4, ra
                  addi        a3, a1, 1298
                  srai        s3, s0, 26
                  xori        s4, a0, 1121
                  and         s5, sp, s0
                  xor         ra, tp, a3
                  ori         zero, a4, 1015
                  and         zero, a7, a2
                  nop
                  ori         a4, s1, 938
                  add         zero, zero, s4
                  sub         s4, sp, a2
                  sll         t4, sp, a3
                  xori        s11, gp, -157
                  and         t2, t2, s5
                  srai        zero, a1, 27
                  or          s8, s4, s9
                  xori        t1, t6, -1697
                  srl         a2, tp, s8
                  slli        a2, t0, 25
                  sll         s11, s1, t3
                  sltiu       s5, gp, 677
                  nop
                  lui         s5, 345902
                  slti        s7, s7, 1578
                  sltu        a5, a0, a5
                  xor         zero, ra, a3
                  andi        a6, a5, 1679
                  add         ra, s10, a1
                  sub         s4, gp, t3
                  or          s4, s10, s9
                  srl         t4, a2, s2
                  ori         sp, t1, 59
                  sub         t4, t2, s6
                  andi        s6, s1, 1028
                  srli        zero, t1, 2
                  slt         a4, zero, a1
                  slli        s4, s5, 24
                  andi        s5, a3, -1324
                  xori        t0, s8, 1226
                  srl         a0, t4, a0
                  ori         gp, t6, -978
                  xor         s4, s2, a7
                  slti        s6, t2, 1248
                  slt         t0, sp, sp
                  add         ra, s6, t1
                  srai        t0, ra, 20
                  sub         t0, s5, t6
                  lui         a0, 873567
                  ori         a4, sp, 812
                  sltu        ra, s3, a1
                  slti        a3, s3, -889
                  andi        t2, a2, -1719
                  srai        s11, s7, 6
                  lui         gp, 659264
                  sltu        s11, s1, t2
                  slt         a3, a3, zero
                  xori        sp, s6, -1800
                  addi        s1, sp, -535
                  xori        s7, s7, 701
                  sltiu       a4, s9, 1120
                  and         a4, a0, s3
                  sll         a4, s6, s6
                  auipc       gp, 524952
                  andi        zero, s6, 1905
                  ori         ra, s9, 1747
                  sll         zero, t3, zero
                  sub         zero, t6, s10
                  addi        t3, t5, 1138
                  nop
                  slti        t2, a6, -114
                  nop
                  lui         a5, 779478
                  sltiu       ra, a4, 611
                  andi        s8, s1, 809
                  addi        s9, a4, 1305
                  slli        a1, s4, 13
                  slli        t3, ra, 31
                  or          t2, a5, t3
                  ori         a4, s2, 1999
                  addi        t0, s7, 1388
                  srl         zero, s1, s7
                  srli        a2, s6, 3
                  nop
                  and         a6, gp, s2
                  auipc       a5, 812209
                  slli        t2, a5, 5
                  slt         zero, sp, ra
                  or          a7, a0, sp
                  sltu        s2, s9, t2
                  xori        s4, s9, 429
                  xor         t0, t3, t6
                  ori         s3, t4, -838
                  add         t2, a4, a4
                  srli        s11, t3, 20
                  sra         t1, gp, sp
                  sub         a4, t4, t0
                  sltiu       zero, t5, -1336
                  slt         s4, s1, t5
                  andi        s5, s8, -1086
                  xor         a7, t2, a1
                  sltu        a6, tp, tp
                  addi        a5, a7, -797
                  lui         a6, 846315
                  and         zero, t5, a7
                  sll         sp, s10, zero
                  lui         sp, 830050
                  sra         a7, t1, t1
                  sra         zero, a3, s2
                  auipc       t2, 179495
                  sltiu       zero, t5, 1287
                  slti        t3, s1, -2021
                  sub         t3, t3, a1
                  srl         s11, a0, t1
                  sltiu       a5, t0, 147
                  srl         t0, t6, a0
                  or          s4, tp, t2
                  addi        zero, s6, 602
                  sltiu       a2, s7, -1541
                  xor         t2, s2, s7
                  sltu        ra, a6, t6
                  lui         s4, 147658
                  nop
                  ori         a1, s7, -977
                  sra         s0, t2, a2
                  addi        a0, t4, 17
                  xori        zero, s11, 1691
                  or          ra, s8, zero
                  sltu        a2, t3, t3
                  srli        t4, t5, 28
                  nop
                  and         s11, a2, ra
                  addi        tp, s11, -1560
                  xori        zero, s7, -709
                  slt         s11, a4, s5
                  srai        sp, s7, 2
                  and         s3, s8, t2
                  sub         sp, t0, t3
                  slti        t0, tp, -463
                  slt         a2, s0, s10
                  lui         s1, 479041
                  li         t3, 0x1 #start riscv_int_numeric_corner_stream_5
                  li         s11, 0x21202a6d
                  li         a7, 0x0
                  li         a6, 0x0
                  li         t2, 0x0
                  li         a1, 0x0
                  li         s8, 0x4ce8be09
                  li         s9, 0x0
                  li         t4, 0x0
                  li         s0, 0x1
                  sub         zero, s2, t1
                  nop
                  sub         s11, a6, s2
                  sub         s1, s8, t4
                  add         t3, t6, s1
                  sub         s5, gp, a1
                  sub         a6, zero, s11
                  nop
                  add         s6, s10, zero
                  add         s4, tp, a0
                  sub         s11, gp, a5
                  sub         s8, s3, s4
                  lui         s9, 214529
                  nop
                  lui         tp, 297122
                  sub         s0, a7, s5
                  addi        zero, a7, -270
                  nop
                  add         t2, t6, s5
                  lui         zero, 179367
                  nop
                  add         a3, zero, t1
                  lui         s8, 361731
                  addi        t0, s8, 1817
                  nop
                  addi        zero, a6, 197
                  addi        a4, s9, -2032
                  lui         gp, 976887 #end riscv_int_numeric_corner_stream_5
                  srl         s6, t4, t6
                  add         s8, a0, s4
                  sltiu       s3, t3, -1491
                  and         a0, t5, s2
                  slti        s1, s4, -1661
                  auipc       zero, 468320
                  addi        zero, s9, -333
                  ori         sp, gp, 310
                  srli        s7, sp, 27
                  xori        t2, t3, 418
                  lui         a5, 821516
                  lui         s1, 296352
                  auipc       t4, 217858
                  sra         zero, ra, a4
                  slti        ra, a3, -1990
                  slti        zero, s3, -2031
                  slti        s1, t3, 798
                  slt         t3, a4, s3
                  sll         s0, gp, t1
                  sltiu       ra, a1, 9
                  xor         a2, s2, zero
                  auipc       t4, 950566
                  add         a6, gp, sp
                  slt         a6, s0, a6
                  srai        zero, s8, 24
                  and         a5, s0, s2
                  auipc       a4, 1025819
                  xori        zero, s1, -1260
                  srl         s1, s2, t6
                  xor         s1, a1, gp
                  sub         a2, s4, s2
                  slt         zero, s7, t1
                  sra         t4, a4, t3
                  nop
                  sll         ra, ra, a7
                  ori         s4, t1, 1463
                  or          s6, a1, s6
                  sra         zero, t4, s7
                  addi        a4, a6, -2023
                  sll         t4, s6, s9
                  sll         a7, a5, s0
                  addi        a4, s6, -1674
                  sra         a1, s6, a7
                  sra         tp, a7, s0
                  addi        a7, a6, -1728
                  srli        a5, s8, 19
                  srli        s2, a1, 29
                  sub         zero, s2, s0
                  sltiu       s1, t4, -1095
                  nop
                  addi        a2, zero, -240
                  slti        s8, a0, 446
                  slt         a7, a0, t6
                  slt         s1, s6, t2
                  and         s4, s1, s5
                  srai        s9, t4, 10
                  srli        s5, a1, 17
                  ori         s3, s10, 1288
                  addi        a6, a2, 1791
                  sra         t3, a1, s7
                  lui         s1, 84608
                  auipc       zero, 1042716
                  srl         zero, s5, a3
                  sra         s7, t4, s9
                  slt         t4, a3, t6
                  lui         s2, 635122
                  slti        tp, sp, 2036
                  slli        s3, gp, 26
                  andi        zero, ra, 1664
                  sub         s11, zero, s4
                  slti        s2, s2, 504
                  add         gp, ra, a2
                  xori        t4, s4, 946
                  xor         t3, t1, ra
                  add         tp, t2, s7
                  sltiu       t1, t3, -1119
                  ori         zero, s8, -421
                  sub         a0, s3, s1
                  andi        s9, sp, 1285
                  sll         s5, t6, t2
                  auipc       s4, 36315
                  nop
                  sll         ra, a1, ra
                  lui         s8, 171536
                  sll         s2, s1, t3
                  auipc       a7, 16259
                  sub         s2, s4, a7
                  auipc       s8, 159827
                  sra         a1, a1, a0
                  or          gp, ra, tp
                  or          zero, a4, a1
                  lui         a5, 555245
                  xori        t2, s8, 2041
                  andi        s9, s1, 1041
                  srai        a3, zero, 25
                  addi        a0, t4, -699
                  sra         s9, s6, sp
                  srli        s3, sp, 0
                  or          t0, a0, a4
                  lui         s2, 1046776
                  auipc       s6, 762391
                  lui         s9, 312263
                  slt         zero, s1, a6
                  or          s0, t0, t6
                  sltiu       a5, s5, 992
                  sra         s4, zero, s2
                  andi        t1, a6, -1319
                  nop
                  sub         s0, a7, a3
                  lui         t3, 35681
                  xor         tp, s0, s10
                  lui         s4, 400623
                  and         gp, s10, s3
                  auipc       zero, 753721
                  sub         zero, s4, s8
                  sra         a7, t6, a5
                  or          s2, t5, s5
                  nop
                  slt         zero, s11, s7
                  slli        a3, t3, 4
                  or          sp, t4, t4
                  or          s9, s11, a1
                  sltiu       a2, a4, -1990
                  slti        sp, t6, -1594
                  slli        t3, a7, 1
                  ori         s2, a1, 823
                  srai        t0, s0, 23
                  nop
                  sub         a0, zero, s3
                  srli        zero, s10, 9
                  slti        s0, ra, -1200
                  xori        a4, t5, -943
                  slt         a3, s9, t3
                  slli        t2, zero, 9
                  sra         gp, a4, a6
                  sub         t4, a6, gp
                  add         gp, s6, t2
                  sub         a3, s4, s8
                  sll         ra, s0, s1
                  auipc       s7, 731779
                  lui         gp, 983113
                  sub         s1, s10, a0
                  auipc       ra, 251124
                  sra         t1, s10, s9
                  nop
                  andi        t3, ra, 1044
                  auipc       a5, 869492
                  xori        s11, gp, -1439
                  sub         s0, ra, a2
                  and         a0, ra, a4
                  addi        s9, a6, 1999
                  nop
                  srai        s6, gp, 18
                  slti        zero, t6, -1315
                  xor         zero, s10, s7
                  add         ra, s0, tp
                  slli        a2, a4, 22
                  srai        zero, s10, 22
                  sltiu       tp, t3, -2040
                  srl         s2, a1, a1
                  srl         s4, s0, s5
                  sltiu       s6, gp, 1240
                  sub         a7, s6, zero
                  lui         s2, 798667
                  sra         s1, tp, t3
                  srai        a6, s8, 5
                  sra         t0, s7, s0
                  addi        a0, a6, 217
                  sltu        tp, s9, tp
                  lui         a0, 881655
                  add         s0, a4, sp
                  slli        s7, s9, 15
                  slti        s11, s6, -76
                  srli        s4, s11, 31
                  ori         ra, s11, 1368
                  andi        a3, a1, 455
                  srl         t0, s11, t4
                  auipc       s7, 283138
                  srli        zero, s10, 19
                  add         t3, s4, s1
                  or          t4, s4, s10
                  sltu        sp, a3, s6
                  xori        gp, t2, -1738
                  ori         s11, a0, -276
                  nop
                  srai        s9, t5, 22
                  srli        zero, t4, 4
                  sub         s9, a0, t2
                  auipc       a4, 949099
                  sub         gp, tp, gp
                  slt         t1, s9, s7
                  sltu        a2, a6, tp
                  srai        s6, a5, 20
                  sltiu       s11, s7, 560
                  sltu        s9, s10, s5
                  sltu        t2, s1, t3
                  xori        a3, t5, 1666
                  srai        s2, a3, 24
                  and         zero, s10, t0
                  slti        zero, gp, -70
                  sll         s9, ra, zero
                  ori         t4, tp, 1158
                  sra         ra, t5, t6
                  ori         a5, a4, -1442
                  slti        ra, a3, 1828
                  xor         s4, sp, s8
                  ori         a7, ra, 744
                  srl         s1, a4, a4
                  srai        a1, t0, 4
                  sll         s9, s9, gp
                  or          a5, a5, t0
                  add         s8, zero, a4
                  xor         zero, s9, s8
                  sll         a3, a0, t2
                  srli        gp, t2, 23
                  sub         zero, s10, a3
                  and         gp, t0, t2
                  slt         s7, a6, a4
                  slli        t1, a5, 16
                  add         s6, gp, gp
                  slli        zero, tp, 25
                  andi        zero, zero, -8
                  slli        s9, t2, 19
                  sll         s6, s2, s11
                  ori         s1, a1, 119
                  sll         a0, a3, s2
                  add         sp, a5, t3
                  andi        tp, tp, -538
                  addi        t4, a4, 2038
                  slti        tp, s7, -140
                  sltu        gp, t0, t5
                  sll         a1, a1, a7
                  sub         zero, t5, t1
                  xori        t4, s3, 316
                  addi        a7, s1, 879
                  sltiu       t1, t3, 1551
                  auipc       s9, 346367
                  andi        s7, s6, -647
                  ori         a4, s10, -27
                  ori         s0, a2, -16
                  srai        a3, s0, 13
                  or          s1, a0, t4
                  or          a2, s8, a5
                  sub         t1, zero, a4
                  srai        s1, tp, 8
                  slt         a1, t4, a7
                  slt         s2, s5, a7
                  slli        zero, s10, 24
                  or          s2, s11, s1
                  srl         zero, a7, s3
                  add         s8, t1, sp
                  sra         s9, a7, a2
                  sltu        a5, a7, s5
                  addi        a0, t4, 1259
                  sltu        s6, t6, t3
                  xori        s4, gp, 1137
                  sra         s4, s4, t4
                  lui         zero, 465717
                  srl         zero, a2, s11
                  addi        s6, t5, -483
                  slti        a4, tp, 1778
                  slli        a6, a3, 4
                  and         s0, a3, sp
                  and         s2, ra, ra
                  ori         sp, gp, 953
                  lui         s5, 345991
                  slli        s3, s5, 3
                  ori         a2, s6, -1769
                  andi        a7, s6, -376
                  and         s8, tp, s6
                  slli        zero, t6, 1
                  add         a0, a6, a4
                  andi        s5, t0, -1347
                  xor         t2, ra, zero
                  slt         tp, t0, s7
                  andi        t4, s1, -556
                  lui         a0, 288771
                  slti        s2, a5, -1279
                  srl         s9, zero, sp
                  sra         a1, t4, t3
                  srli        a5, a2, 8
                  srli        s1, t6, 0
                  or          a2, a7, tp
                  srli        a0, a0, 5
                  ori         s9, s10, 69
                  and         s1, s8, sp
                  auipc       a4, 999740
                  sll         t1, s6, ra
                  sll         t1, s3, a6
                  lui         s8, 579135
                  or          zero, a4, t2
                  auipc       a2, 718499
                  sub         s9, tp, s5
                  sra         s11, t6, s7
                  or          s6, a6, s9
                  or          s0, t3, s7
                  ori         a0, s2, 1575
                  add         s9, s3, tp
                  srl         t4, t1, a2
                  or          sp, s3, t5
                  slti        s0, s6, 441
                  slli        a0, a0, 18
                  ori         a0, zero, -1048
                  andi        a4, a1, -1317
                  srl         zero, s11, s1
                  andi        a5, s6, 964
                  srl         t0, a7, s9
                  andi        s9, s10, 2024
                  and         a2, s11, s3
                  sll         t4, s5, ra
                  andi        zero, zero, 1673
                  srli        a0, s6, 11
                  srl         s5, ra, t4
                  sra         zero, a1, t3
                  srl         zero, a6, s11
                  sra         zero, tp, a6
                  sra         s11, s5, a1
                  sub         a0, a7, s5
                  srli        s5, s11, 31
                  xor         s11, t2, t1
                  sltu        a3, s9, s5
                  sltu        a6, gp, gp
                  auipc       s6, 704637
                  xor         zero, t4, s6
                  auipc       t3, 1042877
                  sll         zero, a6, s10
                  and         t3, s11, s0
                  sub         a5, t4, t0
                  or          a7, zero, a4
                  sltu        zero, s8, s0
                  ori         a1, gp, -985
                  auipc       s0, 703268
                  addi        gp, t3, -1607
                  sltu        s7, t0, s6
                  slli        tp, s8, 30
                  ori         t3, a0, 1138
                  srai        gp, t5, 25
                  slt         tp, zero, s6
                  sltiu       gp, tp, 1190
                  nop
                  sltiu       s9, a2, -1790
                  sra         tp, a5, t2
                  sra         ra, gp, s11
                  sub         a0, t2, s8
                  and         t3, a4, a0
                  sltiu       s9, a0, 1522
                  slti        zero, s10, 316
                  ori         zero, t1, 1932
                  add         a5, t6, s8
                  add         t4, a7, sp
                  ori         tp, s4, -724
                  sra         t3, s0, a4
                  sltu        zero, t6, a4
                  srl         t1, a6, a0
                  sltu        s9, s1, s4
                  andi        a5, s6, -645
                  nop
                  nop
                  and         a3, t4, a7
                  sltu        s5, ra, ra
                  nop
                  add         zero, s4, zero
                  auipc       zero, 725071
                  sll         s9, t4, a2
                  srai        s0, a5, 21
                  and         a0, s2, a1
                  sltiu       a5, s10, -1101
                  slt         ra, s4, s6
                  slti        t4, s7, -2025
                  sra         a3, s7, t2
                  andi        t1, t6, 560
                  and         s4, t4, s11
                  slli        a1, a2, 1
                  srli        a5, s1, 14
                  sltiu       zero, a2, 1628
                  xor         s0, t4, a5
                  sltiu       s0, s7, 433
                  slti        s4, s2, 122
                  sll         s3, s6, s0
                  andi        zero, s9, 205
                  slt         zero, s7, gp
                  srli        tp, s0, 22
                  sra         ra, sp, s0
                  andi        zero, s10, -1005
                  sra         s2, ra, t1
                  srli        a0, tp, 7
                  auipc       s5, 298921
                  sra         s9, a7, a6
                  auipc       zero, 899442
                  li         t2, 0x1 #start riscv_int_numeric_corner_stream_24
                  li         t4, 0x490d7ca1
                  li         s4, 0x0
                  li         s7, 0x6657d126
                  li         t3, 0x0
                  li         s11, 0x0
                  li         a1, 0x0
                  li         s1, 0x0
                  li         s3, 0x245fb35
                  li         t0, 0x6c7497a1
                  add         t2, a0, s3
                  sub         t0, s5, t5
                  nop
                  nop
                  add         t2, a1, a1
                  addi        zero, a3, 1127
                  lui         t4, 576378
                  lui         t0, 430393
                  addi        s11, sp, 885
                  add         a5, s7, a7
                  nop
                  addi        a6, s10, -1013
                  add         s0, sp, t5
                  nop
                  nop
                  nop #end riscv_int_numeric_corner_stream_24
                  sltu        a0, a2, s4
                  srai        zero, t6, 23
                  srl         s6, a7, s11
                  lui         s8, 188946
                  nop
                  sll         zero, a6, t5
                  nop
                  and         t4, a5, a6
                  slti        s0, a4, -727
                  srl         gp, a2, s5
                  and         a7, a7, t5
                  sub         s8, t1, a6
                  ori         a5, a0, -475
                  nop
                  xori        ra, gp, 1741
                  and         s4, gp, s11
                  nop
                  ori         s7, s4, 757
                  slli        t1, s9, 7
                  xori        a1, a2, -1426
                  lui         a3, 962503
                  sll         a2, a5, t6
                  sra         a2, tp, s0
                  addi        s1, s9, -1724
                  slti        sp, gp, -1298
                  sll         gp, t5, a3
                  sltu        a7, s9, s2
                  lui         s3, 30376
                  srl         a1, sp, a7
                  and         s5, s4, zero
                  slti        t3, a7, -2014
                  slt         s0, a5, t4
                  srli        a0, a3, 25
                  srai        s6, ra, 30
                  lui         s1, 440945
                  sub         s7, s0, s3
                  sltu        a6, t2, a4
                  add         gp, t4, s1
                  nop
                  sll         t1, s10, a5
                  sub         t2, s2, t3
                  slti        s9, s9, -743
                  slli        s3, s9, 1
                  sub         t2, a4, gp
                  srli        sp, s5, 30
                  sltu        zero, t1, s0
                  add         s7, t0, s10
                  andi        a1, a5, 1936
                  srl         s5, s0, s8
                  slt         t1, zero, t5
                  nop
                  and         sp, s4, t0
                  add         t1, ra, t3
                  or          s11, s6, a0
                  sra         a4, ra, a6
                  auipc       a7, 946624
                  auipc       zero, 245612
                  nop
                  slt         zero, s8, a5
                  srli        s11, t0, 0
                  slti        s5, s10, -1303
                  and         zero, s7, a1
                  xori        a7, s10, -904
                  sub         tp, s10, s4
                  andi        a5, s1, 1840
                  nop
                  slli        t1, s1, 28
                  xor         s9, t3, t1
                  sll         a0, a4, s2
                  slti        t2, s4, 1416
                  sll         sp, t1, s11
                  lui         t2, 428114
                  xor         t2, s5, t2
                  xori        sp, s8, 1849
                  ori         sp, a6, -1921
                  sll         s4, a0, s11
                  slti        a1, s11, -1420
                  xor         t0, t5, a7
                  nop
                  sra         a6, s6, a7
                  srli        a2, a7, 20
                  sltu        s5, a7, a2
                  add         zero, zero, t2
                  or          t4, a5, zero
                  sltiu       a5, s6, 1091
                  xor         s4, a0, s1
                  slti        gp, t3, 741
                  sll         a0, a2, s9
                  or          s3, zero, t5
                  xori        zero, ra, 1132
                  srl         zero, ra, sp
                  and         a7, a1, gp
                  sltiu       a7, s1, 36
                  xori        s4, a0, 495
                  slti        ra, s8, 1830
                  auipc       t0, 189444
                  ori         t4, a3, -1653
                  slti        t4, s9, -1211
                  ori         a6, s11, 1190
                  xor         a7, s1, s7
                  andi        a3, a1, 1011
                  and         a6, t5, t0
                  nop
                  slli        tp, ra, 26
                  lui         gp, 575315
                  srli        t2, s4, 21
                  sltiu       sp, a5, 2046
                  add         s11, s0, t0
                  slli        gp, s2, 3
                  lui         s0, 867606
                  add         t2, s0, s1
                  lui         a5, 758307
                  srli        t4, s4, 17
                  nop
                  sll         s9, s11, s0
                  sub         t3, tp, t4
                  or          a4, a3, t6
                  slti        t0, s6, -1652
                  xori        s2, s5, 72
                  sra         s6, s5, s10
                  sltiu       a7, t1, 1898
                  ori         t1, s4, 586
                  xor         zero, sp, s11
                  and         t3, t5, s1
                  srai        s4, ra, 5
                  or          a5, sp, s1
                  or          s2, t1, t3
                  slti        a5, t3, 1287
                  slti        t2, a0, -1420
                  and         a7, t5, tp
                  srli        a5, s5, 21
                  srli        s7, a0, 18
                  ori         s8, ra, -119
                  slli        s4, tp, 15
                  auipc       t2, 918685
                  add         s9, s2, t1
                  addi        a3, a2, -1507
                  sub         a7, gp, s3
                  auipc       zero, 334280
                  nop
                  xor         a6, a4, a4
                  sub         s2, tp, tp
                  nop
                  srl         t0, s4, s4
                  nop
                  sub         s1, s6, t2
                  srli        t4, t2, 21
                  ori         a0, a3, 654
                  ori         a2, sp, -200
                  or          s2, a4, a6
                  ori         zero, s0, -69
                  or          tp, a3, s6
                  sub         s0, t1, t2
                  slli        s9, s6, 20
                  slti        zero, a3, 1620
                  or          s1, a1, s7
                  sll         t3, t1, a6
                  slt         ra, a4, s8
                  srai        zero, s7, 20
                  sltu        tp, a2, zero
                  sub         a0, s6, s0
                  add         a4, a6, s9
                  xor         a5, s4, t3
                  and         gp, s10, t5
                  xor         a7, t1, s6
                  slti        t3, t1, 1937
                  srli        zero, a2, 3
                  sltiu       a4, a1, 82
                  xori        a2, s6, -206
                  nop
                  andi        zero, a6, 1482
                  sll         sp, s6, s3
                  add         s11, s8, s0
                  and         t0, s10, a7
                  xor         a0, a1, s11
                  slti        a6, s10, 1061
                  slti        s0, s11, -1727
                  sltu        a7, a1, a2
                  xori        s5, s4, 1385
                  or          s2, a2, a1
                  sub         s9, t1, t5
                  sltu        a4, t6, zero
                  addi        zero, s8, -1685
                  sltu        a0, s5, t4
                  nop
                  srli        a3, tp, 22
                  slli        a3, gp, 31
                  sltiu       t1, a3, 1784
                  or          s8, t1, s4
                  slt         s8, a3, a0
                  andi        a3, s6, -1500
                  ori         tp, t6, 91
                  xori        s7, s5, -450
                  and         a5, s9, s7
                  sltiu       a2, a5, 1891
                  and         a3, a1, s7
                  srli        s7, t1, 1
                  slli        t0, s10, 22
                  slli        t4, t0, 11
                  add         zero, gp, a6
                  ori         a6, a0, 1894
                  andi        s2, t2, 585
                  sra         s0, t0, ra
                  nop
                  add         s6, a0, a6
                  sra         tp, s9, a5
                  lui         s5, 563012
                  sub         s6, zero, s11
                  auipc       t3, 486558
                  lui         a7, 33852
                  slti        t0, s3, -1721
                  slli        a2, t4, 14
                  sll         s6, t1, t3
                  lui         s1, 973673
                  xor         a4, a3, ra
                  lui         s3, 197196
                  srai        a0, s11, 20
                  add         zero, tp, s1
                  andi        s2, tp, 106
                  auipc       s4, 945777
                  srli        t2, s4, 20
                  nop
                  nop
                  or          t3, gp, s2
                  sll         t4, t6, t3
                  nop
                  srli        s9, a3, 20
                  srai        tp, t3, 12
                  xor         t1, a1, s5
                  srl         a6, a5, a4
                  and         s4, s8, t4
                  ori         s9, t6, 189
                  sra         s9, a5, s9
                  or          t0, sp, a4
                  andi        s11, a3, 1294
                  slti        ra, a4, 52
                  sll         tp, t3, s0
                  ori         t2, s5, -283
                  and         t2, a3, s0
                  auipc       s3, 511268
                  xor         s4, t2, s4
                  nop
                  xori        a0, a7, 1422
                  ori         a0, a0, -337
                  xori        s2, t6, -1976
                  xor         s6, zero, t2
                  and         t2, t5, s6
                  auipc       s6, 1019153
                  addi        zero, s1, 108
                  srl         s6, a1, a7
                  sltu        tp, a6, t3
                  xori        a1, t5, -1542
                  srai        t2, a3, 20
                  add         s3, t5, a2
                  andi        t1, t2, -1116
                  sltiu       a1, a7, -1348
                  xori        s3, a0, -1027
                  sra         t1, a0, a6
                  lui         a1, 121844
                  or          a7, s11, s5
                  slli        s5, t6, 15
                  and         t4, a0, t5
                  and         t2, s4, t1
                  xor         zero, a0, t6
                  andi        t4, a1, 1404
                  add         a5, s5, t1
                  srl         a7, s5, s9
                  and         gp, s1, t0
                  nop
                  or          gp, a5, a7
                  sub         s1, t4, a1
                  sra         s6, s0, s6
                  xor         zero, s9, s2
                  slt         t0, s8, s6
                  ori         s4, tp, 481
                  xor         a1, a0, a6
                  sltu        a6, s0, t3
                  srli        t3, t1, 20
                  and         s2, zero, a3
                  srai        a2, s2, 18
                  ori         a6, a3, 1395
                  lui         a3, 479783
                  slti        s8, s6, -1704
                  andi        tp, t3, -1917
                  sltu        zero, a4, a0
                  sltiu       sp, s8, -456
                  sra         t3, zero, s9
                  xori        s5, s2, -253
                  auipc       a7, 340428
                  nop
                  add         s4, a7, t3
                  or          s0, gp, t4
                  sltiu       a1, t5, -1181
                  nop
                  slli        zero, s3, 1
                  sub         s6, ra, tp
                  sll         s11, t4, a3
                  slt         s3, a4, s9
                  sub         a1, t6, tp
                  auipc       s11, 912821
                  nop
                  srai        a3, s6, 6
                  slli        zero, a2, 3
                  slti        zero, t2, 663
                  sll         zero, sp, t2
                  srl         t0, gp, t1
                  or          zero, s6, s10
                  or          a1, a2, s8
                  slti        s4, a3, -1065
                  srai        zero, tp, 6
                  or          t1, t3, zero
                  srli        s6, s2, 18
                  srai        ra, s5, 20
                  sltu        ra, a5, a1
                  slli        t4, s10, 16
                  andi        ra, t1, -383
                  andi        s2, a0, -1091
                  lui         s0, 531622
                  andi        t0, s4, 1550
                  sra         s4, a5, tp
                  add         a1, t6, tp
                  srl         zero, zero, s11
                  lui         zero, 250826
                  ori         zero, gp, -1643
                  slt         s11, s0, t0
                  andi        zero, s7, 583
                  srli        ra, a2, 11
                  addi        tp, s5, 1021
                  addi        s2, s1, -1006
                  srli        zero, a3, 2
                  sltiu       tp, t1, -295
                  auipc       a4, 914720
                  and         zero, s5, t1
                  add         s1, s10, ra
                  andi        t4, s9, -1906
                  sra         s7, s6, a3
                  slti        s6, t1, -1716
                  slt         t2, s4, a0
                  andi        s11, s2, -169
                  slt         s7, s1, t5
                  slt         s0, tp, s1
                  xori        a3, t4, 586
                  and         s0, gp, t5
                  srai        s3, t3, 6
                  andi        a5, t6, -992
                  or          a5, s0, a4
                  auipc       s0, 659405
                  lui         s8, 558921
                  or          zero, s10, s4
                  slli        zero, t0, 13
                  auipc       t0, 355674
                  sra         s5, s8, s7
                  sra         zero, t4, a7
                  sltu        a4, s4, gp
                  srli        ra, t6, 26
                  sub         s11, s6, a1
                  auipc       a3, 843085
                  slli        zero, sp, 2
                  nop
                  slli        t2, a7, 0
                  sra         s4, t1, sp
                  slt         t4, sp, s7
                  or          a4, t4, s2
                  or          zero, s4, s11
                  sll         a0, s9, s3
                  addi        s0, s8, -925
                  sll         a2, a3, a3
                  lui         t3, 785285
                  sll         s1, t1, s5
                  nop
                  sub         tp, t1, t6
                  or          t2, s4, tp
                  sra         s0, t2, s6
                  add         s5, a7, ra
                  andi        gp, a4, 1800
                  slli        a6, a1, 11
                  add         s7, s7, t0
                  slt         zero, a1, s1
                  auipc       t3, 1040305
                  sltu        a7, s9, s9
                  sll         s8, t5, a4
                  sltu        a3, t4, tp
                  add         t0, a2, tp
                  srl         s2, a6, s11
                  add         a4, a7, t5
                  andi        zero, t3, -282
                  add         zero, a3, t2
                  ori         s5, s0, -828
                  addi        zero, a7, 1154
                  slt         s11, a1, a5
                  xor         s7, s0, a5
                  lui         a0, 500384
                  ori         s11, t0, 236
                  ori         a0, s10, 1797
                  slli        s6, a6, 31
                  addi        s11, s3, 631
                  slti        a5, a5, -503
                  slt         t2, tp, t4
                  xori        a2, t5, 837
                  sub         s8, s6, s2
                  slli        a0, s9, 25
                  xor         zero, s6, s10
                  lui         a7, 548079
                  slli        s7, t3, 21
                  slti        t4, a4, 1525
                  or          gp, t3, t2
                  xor         t4, ra, t2
                  andi        t4, gp, -497
                  sub         a4, sp, s6
                  ori         s8, s7, -1701
                  sltiu       zero, ra, 302
                  lui         t3, 763020
                  srl         a3, a4, s11
                  andi        sp, s4, 961
                  sub         a1, a5, sp
                  lui         a3, 387042
                  or          zero, t5, s8
                  slli        a0, t5, 26
                  srli        a1, a4, 3
                  xor         s9, s2, s1
                  slti        s7, s4, 1065
                  auipc       t3, 721038
                  xor         s1, t0, t6
                  addi        a2, tp, 216
                  and         s1, sp, s2
                  slt         s8, t1, gp
                  sltiu       s7, a1, -595
                  add         a2, a1, a1
                  and         a7, tp, zero
                  and         ra, ra, a3
                  srai        a2, zero, 18
                  xori        s6, s2, 1954
                  or          s0, s5, s7
                  xor         a4, s11, a2
                  sltiu       a2, s1, -1201
                  and         t2, t0, t3
                  xori        tp, t4, -1831
                  lui         s6, 474932
                  sltiu       t1, s4, 816
                  xori        s4, a2, 323
                  slli        a1, s6, 5
                  sub         ra, s8, a1
                  sltu        s5, s6, s11
                  auipc       tp, 140535
                  sltiu       s11, s6, 1702
                  xori        s1, s11, 213
                  sltiu       s4, s2, -1250
                  sltu        s4, s7, t2
                  lui         t3, 499295
                  auipc       t4, 788540
                  or          a1, a4, s2
                  or          a4, a7, s6
                  srai        s4, t2, 19
                  sra         zero, t3, a5
                  sra         gp, sp, s8
                  srl         s7, zero, a0
                  lui         s4, 341361
                  sub         s6, tp, s6
                  or          t4, s8, a7
                  sltiu       a0, a1, 1665
                  sll         sp, t2, a3
                  sltu        a5, s7, t5
                  auipc       zero, 171930
                  sltu        a6, s2, s1
                  auipc       s4, 939178
                  sll         sp, a4, t0
                  sltiu       s8, s4, 1140
                  lui         a0, 926201
                  lui         t2, 135346
                  addi        zero, gp, 1508
                  nop
                  srl         zero, t0, t6
                  sll         tp, s9, t2
                  add         a0, t0, t4
                  sltu        a7, t6, a2
                  lui         s1, 1040654
                  nop
                  or          t4, a1, s0
                  sra         s1, a0, s2
                  slli        zero, sp, 30
                  addi        a3, ra, 1148
                  srli        a3, sp, 6
                  srli        tp, a4, 22
                  li         a2, 0x18f0f01a #start riscv_int_numeric_corner_stream_4
                  li         t4, 0x669324f
                  li         s4, 0x0
                  li         s0, 0x0
                  li         tp, 0x777a993d
                  li         t3, 0x1
                  li         s11, 0x1
                  li         s3, 0x0
                  li         s9, 0x1
                  li         a1, 0x0
                  add         zero, s2, a5
                  lui         sp, 869136
                  lui         gp, 697355
                  addi        s1, s4, 320
                  lui         t4, 901806
                  add         zero, s11, sp
                  add         zero, t3, s1
                  lui         sp, 204996
                  add         a1, t2, s9
                  lui         t0, 331031
                  nop
                  lui         sp, 704860
                  lui         s2, 699567
                  addi        a6, t5, -401
                  nop
                  lui         t0, 82828
                  addi        s8, t2, 586
                  sub         t1, s0, s10
                  add         s9, t3, a4
                  addi        t0, s4, -480
                  add         a5, s11, a3
                  nop
                  lui         a1, 804175
                  addi        tp, t0, -669
                  addi        s4, s0, 897
                  lui         a6, 109589
                  sub         a6, tp, ra
                  sub         s2, s10, t3
                  nop #end riscv_int_numeric_corner_stream_4
                  sltu        zero, s7, s3
                  sra         a7, a7, s5
                  srai        gp, t3, 28
                  srli        s3, a2, 30
                  srai        a5, a1, 30
                  andi        sp, s5, -1511
                  addi        zero, t1, -1402
                  srl         a5, t0, zero
                  xor         sp, s10, s8
                  srli        t2, a4, 20
                  slli        a1, s7, 20
                  xori        s3, tp, 99
                  sra         zero, a6, s11
                  ori         t2, a6, -456
                  sra         a4, a7, a3
                  sra         sp, s4, s1
                  sra         a4, a3, s0
                  lui         a0, 466321
                  auipc       t2, 232257
                  srl         zero, a2, a1
                  and         t4, s6, s0
                  xori        s4, t5, -243
                  sll         s2, t4, a6
                  lui         s1, 427996
                  auipc       a3, 412055
                  sll         s3, sp, ra
                  ori         gp, gp, 1129
                  sltu        s1, s6, t5
                  slti        a7, s4, -52
                  ori         a0, s3, 1920
                  sltu        a5, t2, t3
                  sltu        a6, tp, zero
                  nop
                  slti        a2, tp, -1833
                  sltiu       zero, t4, 1853
                  or          zero, a0, a5
                  addi        a0, s11, 498
                  srai        ra, t2, 3
                  sra         s9, a6, s2
                  xor         a2, a0, t3
                  srli        tp, a6, 11
                  sltu        sp, s10, s3
                  sra         s11, a7, s4
                  ori         s9, s7, -126
                  slt         s4, s9, s4
                  auipc       a6, 181220
                  addi        s11, a6, -1477
                  srli        t2, a3, 15
                  addi        a1, s11, 168
                  sltiu       a2, sp, -926
                  sll         t1, a7, a7
                  and         a4, a4, s7
                  auipc       s7, 202010
                  or          s3, t4, s5
                  or          s3, s10, s10
                  add         zero, t1, t3
                  srli        sp, a3, 18
                  nop
                  srl         s8, a4, t5
                  srli        zero, s7, 22
                  auipc       a0, 534719
                  lui         s8, 798595
                  ori         a4, a6, 281
                  sltu        tp, a4, s7
                  srl         t4, t2, gp
                  slt         a2, a4, s3
                  andi        s2, a1, -651
                  and         s0, s5, s4
                  andi        a7, t4, 1908
                  andi        zero, a4, 1129
                  andi        sp, s2, -1250
                  slti        s11, a3, -2045
                  srai        t3, a7, 19
                  ori         gp, t5, 1836
                  or          s2, s8, gp
                  lui         s11, 40471
                  sub         sp, s9, s7
                  srl         s6, t1, t4
                  srai        s11, a2, 9
                  ori         tp, zero, -1493
                  ori         sp, a6, 1140
                  add         t4, t6, a2
                  and         zero, a2, s7
                  srl         t1, t6, s1
                  xor         zero, sp, s2
                  and         s0, a4, s7
                  srl         s2, sp, t6
                  andi        a2, a2, -1374
                  or          t0, t4, ra
                  or          zero, s0, a4
                  and         s8, s1, t5
                  srai        sp, t1, 20
                  ori         zero, s2, 1531
                  srli        s5, a7, 19
                  auipc       gp, 41120
                  slli        s6, ra, 6
                  or          s11, s10, s9
                  sra         a7, t0, s9
                  sub         s2, t0, a3
                  sub         s1, a7, a0
                  nop
                  nop
                  srli        sp, s0, 27
                  sra         s7, s2, gp
                  sltiu       a6, s1, -254
                  add         t2, s3, tp
                  srli        s11, a0, 27
                  srai        s4, sp, 21
                  nop
                  add         s4, a3, zero
                  sra         a5, s2, s2
                  srli        s6, s6, 7
                  sltu        t4, a3, s1
                  xori        t4, a1, -389
                  sra         a6, s11, ra
                  auipc       s6, 110633
                  slti        s9, sp, 1124
                  srli        gp, t1, 10
                  or          t4, a1, s7
                  auipc       t0, 522444
                  andi        t3, s4, 1330
                  sltu        zero, a1, s1
                  or          s7, s5, a1
                  slti        t2, gp, 1699
                  add         a3, a3, a0
                  auipc       gp, 212216
                  xor         s3, s5, t2
                  xori        a0, s3, 587
                  sub         s7, t2, t2
                  auipc       a3, 103760
                  srl         t1, s5, gp
                  sra         a4, t3, s6
                  sub         ra, s2, sp
                  srli        s5, zero, 19
                  sltiu       t4, s5, -1366
                  sltu        s8, t2, a4
                  slti        t0, tp, -1153
                  auipc       a3, 555877
                  auipc       a3, 966537
                  xori        sp, s4, -569
                  sltiu       t3, t3, 1490
                  srli        s9, a4, 16
                  add         a1, s11, t6
                  nop
                  sltu        s11, zero, zero
                  sltu        a0, a4, s7
                  xori        a6, t5, -1786
                  sra         s2, s6, t2
                  sra         t3, t3, t6
                  sub         s11, s5, s5
                  xori        s3, t2, 1545
                  ori         zero, t5, -1374
                  xor         s9, s10, t4
                  sll         t2, s0, t1
                  xor         s7, a7, s11
                  lui         s6, 116763
                  andi        s3, s2, 845
                  auipc       s6, 830830
                  sra         a1, s11, s1
                  sltu        s8, t0, t4
                  sra         s5, t2, t5
                  slli        s4, sp, 8
                  add         a1, zero, t4
                  lui         zero, 813907
                  add         a6, a3, s5
                  sltiu       a7, zero, 1430
                  xor         a1, s8, a1
                  andi        s8, s11, -1401
                  sra         a2, t0, a5
                  srl         s11, t3, s1
                  add         zero, a4, s1
                  slli        s4, a4, 30
                  sra         t0, s4, s0
                  slt         s6, s10, s3
                  sll         ra, a2, a4
                  addi        zero, s8, 742
                  add         zero, t5, zero
                  xori        s7, a2, -75
                  sltu        s3, a2, t2
                  slti        s9, t5, -1136
                  slli        tp, s11, 16
                  nop
                  addi        s4, s8, 1594
                  sra         ra, t0, a1
                  or          zero, s0, s8
                  srli        s8, s2, 14
                  xor         t4, t5, t5
                  sub         ra, t3, a4
                  sra         zero, s5, a1
                  srli        a5, s8, 28
                  slti        a0, t5, -1015
                  srai        s9, s3, 15
                  sub         zero, a5, t0
                  nop
                  or          t0, t1, s0
                  sltiu       s11, t2, 1781
                  addi        s9, a1, 779
                  addi        a4, a7, 1586
                  or          a4, t6, t4
                  sltu        t3, gp, a7
                  sll         t1, s6, a0
                  srl         s6, a3, ra
                  slt         a3, t5, a2
                  xor         t1, t3, s9
                  sltiu       s0, s3, -1664
                  or          ra, s6, a3
                  and         t1, s5, s7
                  lui         t3, 69488
                  slti        zero, s8, -207
                  sltiu       a5, a7, -1168
                  and         s7, t0, t4
                  slti        a1, s7, -2023
                  srli        a4, s7, 15
                  sltiu       s9, a0, 1804
                  xori        a4, s2, 1319
                  slli        zero, a1, 0
                  srli        a2, t5, 17
                  slt         s2, s4, s11
                  addi        gp, t0, -1259
                  sltu        s5, gp, sp
                  and         t4, a5, a0
                  andi        zero, s8, 1066
                  add         a7, t5, t5
                  add         zero, a6, s9
                  ori         s2, t0, 1944
                  add         s5, s10, t4
                  ori         zero, sp, 1454
                  sra         s2, ra, sp
                  xori        s2, s4, -980
                  or          s4, a1, s0
                  nop
                  ori         zero, ra, 1327
                  and         s9, tp, s8
                  xor         s3, s8, sp
                  sll         s11, s8, a6
                  andi        zero, t6, -1021
                  srl         t4, a7, tp
                  andi        zero, t3, -437
                  srai        t3, a7, 18
                  auipc       zero, 934151
                  sltiu       s7, s6, 1648
                  andi        t0, t0, 2029
                  or          s1, t0, s10
                  sub         a2, t2, zero
                  addi        a5, tp, -944
                  sltu        t0, s9, s5
                  add         a5, tp, zero
                  sra         s3, s1, t0
                  xori        s4, ra, -962
                  slti        zero, t6, -1783
                  sra         s1, ra, sp
                  sltiu       gp, s8, 950
                  sltu        s8, tp, s11
                  ori         s9, t6, 1598
                  srli        a6, a4, 2
                  srl         ra, tp, a7
                  or          a4, t0, gp
                  sll         zero, t1, s7
                  srli        s11, s5, 31
                  xori        s0, t4, -2035
                  slt         t1, tp, s6
                  sub         t2, a4, t2
                  andi        s8, t4, 290
                  sra         a5, gp, s9
                  and         s0, s3, sp
                  sltu        a5, s10, s0
                  srli        s2, a1, 9
                  slt         s2, s5, s10
                  or          t3, s5, t0
                  sra         t1, s2, t5
                  and         s2, a0, zero
                  slli        t4, s3, 11
                  sltiu       a0, a4, 771
                  sltu        a3, s9, a2
                  srli        a2, t4, 19
                  nop
                  slti        t2, s2, -1907
                  sltiu       a0, s5, -1005
                  lui         a2, 445942
                  srai        s3, s0, 9
                  slti        t2, t0, -1171
                  auipc       tp, 953443
                  lui         t1, 498414
                  and         a1, t2, s1
                  xor         s9, s6, t5
                  sltiu       ra, s6, 667
                  srl         s7, t6, s3
                  srai        a1, s7, 22
                  sltiu       t1, a1, 1310
                  and         t0, s8, t0
                  and         gp, s4, gp
                  or          a4, a4, t5
                  lui         s7, 14455
                  slti        s3, a1, 1578
                  slli        a1, t0, 0
                  srai        a7, t0, 5
                  slti        tp, a4, 709
                  andi        t2, s5, -1864
                  srli        t0, t1, 2
                  slt         tp, t1, s9
                  ori         tp, a1, 1689
                  srli        s6, tp, 28
                  ori         a0, t3, -57
                  and         sp, a4, ra
                  andi        s4, s1, -1494
                  xori        s6, s3, -720
                  sra         a3, a6, s7
                  sra         gp, a5, s10
                  xor         zero, t5, s3
                  sltu        s8, ra, zero
                  nop
                  slt         t3, gp, t0
                  ori         s1, t1, -448
                  andi        zero, t0, -652
                  slti        a6, s10, 53
                  or          a4, a0, s1
                  sltiu       s1, t5, -407
                  sub         zero, s6, a6
                  slt         ra, s5, s10
                  lui         s0, 263553
                  auipc       a0, 193284
                  and         s2, t4, s4
                  slt         s7, a7, zero
                  slt         t0, s10, t2
                  sll         a2, tp, s9
                  lui         zero, 97955
                  add         t1, s2, t6
                  addi        a5, gp, 547
                  add         a3, s4, s6
                  srli        s6, s1, 28
                  xor         s11, s2, t0
                  sltu        t2, s3, zero
                  add         s4, t1, a6
                  srli        zero, ra, 11
                  sub         a3, a3, a6
                  srli        a6, s11, 24
                  xor         s4, a0, s11
                  addi        s11, t6, -1006
                  nop
                  ori         s8, s8, -1051
                  sltiu       a0, s9, -1877
                  slti        zero, a7, -26
                  and         zero, tp, t0
                  nop
                  sub         t2, a0, sp
                  slli        gp, a7, 16
                  or          s0, a3, a0
                  srl         s2, a0, a5
                  add         zero, t6, a2
                  and         a1, t0, t5
                  andi        t4, s5, 283
                  and         s3, t0, a2
                  sltu        a6, a1, s7
                  andi        t1, s2, -1043
                  and         s0, a5, a3
                  xori        s0, a3, 258
                  auipc       t0, 661677
                  srl         s6, t4, s10
                  addi        a6, s9, 1741
                  xor         s2, a6, s0
                  srli        sp, s7, 12
                  slli        s2, t0, 14
                  xor         gp, a5, s8
                  xori        s9, s4, -1949
                  srl         ra, t3, s9
                  slt         t0, t3, ra
                  slti        s11, tp, 1475
                  sll         ra, ra, s8
                  ori         s5, a5, -826
                  and         t4, a6, a5
                  auipc       a3, 1008004
                  ori         s8, s8, 729
                  add         a3, s7, s10
                  sll         a2, t5, t4
                  addi        a2, s10, -1131
                  sub         a0, t2, t2
                  sltiu       zero, t4, 1361
                  sltu        s9, s4, a7
                  xori        s8, t0, 118
                  sll         a6, t4, t0
                  slt         a4, a1, s9
                  sll         t3, s4, gp
                  or          t2, a1, s2
                  slli        zero, s4, 3
                  sltiu       a3, tp, 1067
                  sll         a6, s10, t6
                  and         s9, a5, s5
                  sltu        a3, a0, a1
                  sub         t2, s1, a1
                  srl         s11, s6, sp
                  srl         ra, t4, s9
                  ori         s7, a2, 580
                  xor         s8, t2, s8
                  sll         a1, s7, t5
                  sltu        zero, s8, a4
                  slti        s9, tp, -709
                  or          t0, s8, s9
                  sra         a4, sp, s2
                  slt         s4, a0, s7
                  addi        s6, a5, 1897
                  sll         s0, a5, s7
                  lui         a2, 713432
                  sra         zero, s4, s11
                  sub         s2, s6, zero
                  auipc       s6, 495351
                  sra         a1, s6, s0
                  srli        s3, a1, 16
                  lui         a1, 261752
                  slt         s1, s3, a6
                  andi        zero, t4, -1306
                  srl         s1, a3, t6
                  nop
                  andi        a6, tp, 1882
                  auipc       zero, 585315
                  sra         s5, a1, s6
                  xor         zero, tp, ra
                  sll         s8, t5, a0
                  sltiu       s3, s0, -1420
                  xor         a6, a7, t0
                  sltiu       tp, t4, -1706
                  andi        a3, a2, -1701
                  slti        a7, t5, 321
                  lui         s1, 378839
                  srai        s3, s5, 2
                  addi        t1, s3, 69
                  auipc       s0, 738679
                  addi        a2, a4, 1123
                  sub         zero, a3, s4
                  xor         s0, t0, a4
                  lui         a7, 207970
                  nop
                  lui         tp, 440658
                  sll         a2, a6, sp
                  nop
                  andi        sp, s4, -1116
                  sll         a7, t2, s6
                  sltiu       sp, a3, 73
                  xori        a3, ra, 1190
                  slli        s7, t4, 11
                  slli        zero, gp, 11
                  ori         a7, a5, 1482
                  srai        zero, a0, 4
                  sub         s0, s4, a2
                  or          t3, a7, a4
                  nop
                  sra         a4, t5, a3
                  sltiu       ra, sp, -1322
                  slli        a4, t5, 9
                  srli        s11, t0, 29
                  xori        zero, s5, -1422
                  sltu        a4, a5, s4
                  and         ra, a1, gp
                  slti        a6, s11, -303
                  xor         t3, a7, a3
                  sltiu       t1, s9, -779
                  slli        t2, a5, 0
                  xor         a3, s6, tp
                  slti        s4, t0, 1514
                  sltiu       s2, a2, -299
                  and         t2, a7, t1
                  andi        s0, a0, 1776
                  auipc       t1, 353216
                  lui         sp, 725857
                  sltiu       s2, t5, 1218
                  auipc       a4, 328956
                  addi        s0, s9, 1367
                  nop
                  sll         zero, a6, a6
                  sltiu       a0, s9, 517
                  lui         ra, 912881
                  srli        zero, t5, 22
                  slt         a3, a7, a2
                  sltiu       s7, ra, 890
                  slli        a1, t5, 10
                  srl         a2, s0, a1
                  sltu        s9, t0, t6
                  slti        a5, t1, -1199
                  slti        s0, a7, 14
                  lui         t1, 243157
                  sra         t3, s7, a6
                  srl         gp, s1, sp
                  slli        s5, a6, 4
                  srai        gp, s2, 14
                  and         s2, ra, a2
                  nop
                  xor         s2, a1, t1
                  ori         t0, ra, 1664
                  nop
                  slti        s2, s6, -1994
                  andi        s8, a3, 1447
                  slt         zero, s5, ra
                  auipc       s9, 584150
                  srli        a6, s4, 30
                  andi        s7, a4, 1256
                  and         s8, t2, a2
                  srai        t0, s11, 11
                  srai        s8, a1, 22
                  sltu        s6, tp, a0
                  sll         a7, a6, a2
                  srai        t4, a0, 25
                  auipc       s11, 281914
                  sltiu       t3, zero, 1373
                  lui         t4, 563345
                  sra         s6, s7, t4
                  and         a1, t3, s7
                  srli        a1, t3, 27
                  sra         a6, s8, s0
                  sub         a4, a5, s8
                  add         zero, s4, s2
                  slli        s8, t2, 2
                  xor         s7, s7, s7
                  srli        s4, t1, 11
                  slti        t3, s7, 966
                  lui         tp, 307954
                  or          zero, t2, a3
                  slt         t4, s5, t3
                  slli        tp, t2, 16
                  srai        s5, s6, 30
                  sltu        s11, s11, s7
                  or          zero, a7, s5
                  nop
                  srl         tp, s7, gp
                  srai        t3, sp, 8
                  sra         a6, tp, s1
                  slli        s5, a0, 29
                  addi        a7, a1, -226
                  xori        s8, t4, -857
                  sltu        t3, s9, a5
                  and         t1, a5, s10
                  sra         t0, gp, s4
                  slt         a4, t1, s4
                  andi        s0, s5, 1484
                  nop
                  slt         t0, t2, t4
                  sra         zero, t2, a3
                  xor         s5, s0, a7
                  sltiu       t4, s3, 1141
                  and         ra, a1, s0
                  xori        t0, t2, 407
                  add         a4, t1, a0
                  lui         ra, 750446
                  sub         a4, a3, a6
                  srai        zero, s3, 13
                  auipc       a4, 362377
                  li         t4, 0x0 #start riscv_int_numeric_corner_stream_18
                  li         s6, 0x0
                  li         s11, 0xaf8936f
                  li         s8, 0x0
                  li         a1, 0x0
                  li         gp, 0x0
                  li         a5, 0x0
                  li         a4, 0x0
                  li         t3, 0xdd33d2d
                  li         t0, 0x0
                  sub         a5, a0, a2
                  nop
                  lui         zero, 267669
                  sub         a4, a1, t1
                  add         sp, t3, t2
                  sub         t4, a5, a7
                  add         a4, t5, t1
                  sub         s8, a6, s10
                  lui         t3, 474564
                  add         zero, a2, s1
                  nop
                  addi        a1, sp, 844
                  sub         gp, s7, s4
                  nop
                  addi        t1, s0, 1538
                  sub         a7, a1, a1
                  sub         a1, a6, a4 #end riscv_int_numeric_corner_stream_18
                  srl         t3, s6, t6
                  sra         tp, s3, a7
                  sub         s2, s10, s9
                  add         s6, t0, s8
                  andi        s6, s2, -783
                  nop
                  and         zero, ra, a7
                  xor         a5, t5, s1
                  sra         s7, gp, s3
                  sll         t4, t4, t1
                  andi        s1, a6, 1104
                  slti        a7, a6, 1347
                  add         zero, a5, s0
                  add         t3, t2, t5
                  srai        a0, a2, 13
                  sltu        s8, a6, sp
                  slli        s2, ra, 15
                  add         s7, a3, t4
                  srai        tp, t1, 1
                  slti        s3, a2, 187
                  add         sp, zero, s9
                  auipc       a4, 729978
                  ori         zero, a0, -325
                  add         s0, sp, t6
                  sra         t3, s2, a5
                  and         a1, t2, t2
                  slt         a7, t5, t6
                  ori         t4, t0, 236
                  slli        s2, s11, 20
                  sra         zero, t1, a5
                  nop
                  xor         s9, s7, s6
                  sub         a1, gp, t0
                  or          s0, s6, zero
                  add         s8, a2, a0
                  andi        sp, s8, 322
                  sltu        zero, zero, s0
                  sltiu       a0, a2, -2010
                  srli        s8, s11, 22
                  sub         s9, a6, a5
                  auipc       s11, 960749
                  srl         s11, s1, a4
                  slt         a0, s8, t1
                  ori         tp, s10, -1895
                  sub         gp, s9, a1
                  slti        a2, zero, -1446
                  nop
                  add         a0, zero, s5
                  sltiu       a7, t1, 1547
                  or          gp, t1, gp
                  slti        s6, t0, -1892
                  xor         sp, t2, a0
                  auipc       a0, 687620
                  sub         sp, t6, s4
                  xori        s9, t2, 1760
                  srai        s11, t6, 11
                  or          s5, s3, a5
                  srli        a1, a0, 26
                  ori         a4, a4, 869
                  srl         a1, s1, t4
                  sub         s3, a4, a5
                  addi        a0, s9, 1180
                  sltiu       a2, a1, -776
                  slt         s2, s7, t4
                  xori        a5, sp, -660
                  sra         a1, a3, s0
                  or          a1, s4, a4
                  or          a7, a5, a2
                  andi        a4, s1, 403
                  auipc       s8, 821448
                  add         s11, s0, t6
                  sltu        s2, t2, gp
                  and         zero, s8, a5
                  xor         t1, s3, t0
                  nop
                  slti        zero, t6, -79
                  srl         s9, s1, t1
                  sra         t0, s8, s10
                  addi        zero, s8, 916
                  xor         s2, t1, a1
                  auipc       a3, 206314
                  ori         a0, a5, 1866
                  andi        s6, s10, -1681
                  sltiu       s1, s11, -262
                  srl         t2, a3, s11
                  sltu        a4, s3, sp
                  sll         s4, s4, t0
                  sll         s7, t0, sp
                  add         a6, s11, t2
                  andi        t3, t5, 1729
                  sltu        t1, sp, s9
                  sll         a6, gp, t4
                  xor         t4, a6, t3
                  srli        sp, t5, 3
                  auipc       a4, 714162
                  auipc       zero, 677144
                  slli        a6, t5, 21
                  addi        a4, a1, 108
                  slti        ra, t4, 659
                  slli        sp, s5, 29
                  sltiu       a1, s10, -997
                  slti        a2, zero, 1526
                  addi        s3, ra, 1795
                  and         s9, gp, tp
                  srl         tp, a1, s11
                  slti        a5, s2, 296
                  sltu        a7, s4, a4
                  nop
                  srli        a7, a7, 12
                  srl         t3, s1, a1
                  xor         a4, t2, a1
                  sub         gp, t5, a0
                  sltu        t3, a3, a6
                  srai        zero, ra, 2
                  srai        t1, a1, 10
                  sll         a0, s6, gp
                  lui         a2, 7698
                  lui         t1, 6592
                  nop
                  srai        zero, s8, 14
                  ori         zero, s10, 1697
                  sltu        a7, a1, a0
                  sll         gp, zero, s9
                  ori         a7, t0, 1086
                  auipc       a7, 839746
                  nop
                  xori        sp, a0, 1771
                  srai        ra, s2, 26
                  xori        a1, a0, -1465
                  nop
                  auipc       a1, 709247
                  sltiu       a7, a2, -86
                  slli        tp, zero, 21
                  auipc       t1, 310213
                  slt         t0, tp, s4
                  add         zero, a0, t4
                  xor         sp, s6, s8
                  srl         a1, tp, t0
                  xor         zero, gp, a5
                  sltiu       s4, t1, -421
                  sll         a6, a3, s5
                  xori        t1, a6, -938
                  xori        a3, s5, -325
                  lui         s5, 233577
                  srl         zero, s5, sp
                  sra         t2, s0, t3
                  auipc       zero, 484897
                  add         s9, s9, t6
                  sltu        tp, t2, s3
                  srl         t0, t4, t2
                  addi        s0, s4, 1435
                  sra         a0, s9, s0
                  sltu        gp, a2, a1
                  addi        zero, a1, -1576
                  sltiu       zero, s11, 871
                  sub         zero, s6, t4
                  slti        t2, s1, -1027
                  srli        s5, tp, 13
                  auipc       s6, 750839
                  srai        a1, t0, 28
                  lui         s2, 594563
                  sltiu       s5, t0, 1770
                  xor         a0, ra, s0
                  slt         s4, s2, s4
                  slt         a2, a6, t5
                  nop
                  slli        tp, s2, 1
                  add         s4, a0, s7
                  nop
                  xor         t0, tp, s6
                  srl         s8, a2, t1
                  sltiu       sp, t3, 29
                  lui         t3, 1020299
                  auipc       tp, 29899
                  xori        s11, a3, 1355
                  sll         s0, t5, s0
                  sra         s1, gp, sp
                  srai        s7, s9, 1
                  sltiu       t4, t0, 470
                  slti        s0, s1, 25
                  andi        a7, a5, 1781
                  ori         tp, s4, 849
                  ori         s5, tp, -50
                  sra         tp, t5, t2
                  srl         t1, a6, s1
                  xori        t1, a4, -690
                  srli        s11, a5, 0
                  srl         a0, s8, t5
                  add         s1, a5, t4
                  andi        zero, s7, 144
                  lui         zero, 849530
                  slli        s7, ra, 1
                  sra         a7, t5, t6
                  sll         s1, t2, t2
                  auipc       a6, 430756
                  slti        sp, s2, -1995
                  andi        a5, sp, 1038
                  sra         a6, t2, sp
                  nop
                  nop
                  sra         a2, a0, a1
                  sra         gp, a4, s3
                  andi        a1, a3, 1731
                  addi        zero, s2, 1157
                  andi        t0, s2, -1983
                  or          t3, t1, s5
                  add         s8, a4, t5
                  auipc       zero, 472167
                  sll         s6, t3, s3
                  slt         gp, a2, t4
                  addi        a3, a6, -1980
                  xori        sp, a5, -1030
                  slti        s4, s6, -945
                  xor         s2, s1, a6
                  sll         t2, s10, zero
                  and         a6, s10, a1
                  addi        a5, t3, -2025
                  and         s2, a5, t3
                  ori         a5, t2, 1830
                  ori         s1, t2, 959
                  srai        gp, sp, 19
                  sra         tp, a0, sp
                  li         a6, 0x0 #start riscv_int_numeric_corner_stream_26
                  li         s6, 0x5e47382d
                  li         t4, 0x0
                  li         t3, 0x0
                  li         s9, 0x0
                  li         s8, 0x0
                  li         s0, 0x1
                  li         s2, 0x0
                  li         s4, 0x0
                  li         tp, 0x0
                  addi        s6, a3, -201
                  add         a0, s7, sp
                  lui         a6, 340747
                  add         a2, t5, s6
                  nop
                  add         a6, a6, s9
                  lui         zero, 901226
                  sub         s5, gp, s1
                  add         s11, a5, t3
                  sub         sp, tp, t0
                  sub         t1, s0, t0
                  lui         a4, 505688
                  addi        s7, a3, -517
                  sub         a6, s5, tp
                  nop
                  addi        zero, s4, -261
                  add         s4, t5, sp
                  addi        s0, s1, -953
                  addi        a4, s11, 866 #end riscv_int_numeric_corner_stream_26
                  srai        a4, sp, 21
                  srl         zero, t2, s7
                  slt         s2, a0, s8
                  sra         s5, a7, t4
                  add         t3, s1, gp
                  lui         a4, 719795
                  slli        s4, s3, 5
                  or          gp, s5, a0
                  sra         s11, s2, t6
                  lui         zero, 958396
                  andi        sp, t2, -1549
                  sltiu       a1, a7, 539
                  slt         s9, zero, a0
                  or          a7, zero, s1
                  srl         zero, a3, s11
                  srl         ra, a4, t4
                  slti        t4, zero, 2000
                  addi        t3, s7, 175
                  addi        s1, a2, -1806
                  and         zero, t1, s3
                  srai        t3, sp, 2
                  sub         t3, s10, a4
                  xor         a5, tp, s4
                  xor         sp, a1, t2
                  addi        t1, t3, 1145
                  ori         gp, a7, -1292
                  or          t0, a7, t0
                  srli        zero, a1, 22
                  sltiu       s6, s4, 1924
                  sltiu       s5, s5, 621
                  auipc       t0, 216331
                  srl         ra, s10, s8
                  srli        zero, s1, 7
                  srli        t2, a4, 2
                  sll         a0, t0, s0
                  nop
                  sltiu       t1, t5, -988
                  xori        gp, t6, 1306
                  srai        a0, s3, 17
                  slli        zero, gp, 4
                  sra         gp, s9, a5
                  srli        t0, s7, 13
                  xori        t0, s7, -226
                  srli        a6, s5, 25
                  sub         s5, s3, t2
                  slli        a7, a7, 10
                  sltiu       a3, t3, 108
                  ori         t2, sp, -1706
                  ori         a0, a0, 1741
                  add         s9, a5, a5
                  sra         tp, a4, t1
                  auipc       s8, 209204
                  slli        ra, tp, 20
                  srl         s3, s5, t2
                  auipc       s7, 459881
                  and         zero, s2, gp
                  nop
                  lui         a3, 522362
                  or          t2, ra, t6
                  sll         s1, a5, gp
                  andi        a7, t2, -1031
                  or          t3, sp, s5
                  srli        s4, s6, 0
                  and         zero, a5, s7
                  andi        gp, a5, -407
                  sub         a2, s9, s3
                  srai        zero, t4, 12
                  slt         zero, s11, t4
                  ori         tp, t3, 1243
                  sltiu       s5, s8, -53
                  lui         t0, 273421
                  sltu        zero, a7, s2
                  slt         a7, a4, tp
                  slli        sp, t4, 9
                  srl         a1, zero, t4
                  sltu        a2, s4, a4
                  andi        t4, s10, 1852
                  addi        s5, t3, -519
                  addi        s1, s2, 856
                  sltiu       a6, sp, -345
                  sltu        a6, t0, s0
                  xor         a2, s2, s1
                  ori         s4, s6, -532
                  sltiu       t0, zero, -1417
                  sra         a7, a6, s4
                  slti        s11, tp, -358
                  sltu        s9, sp, a4
                  sltiu       sp, s4, -1048
                  add         t1, t6, s3
                  andi        s1, s4, 1214
                  auipc       t1, 266215
                  sltiu       a6, s7, 1295
                  sub         a6, s6, a4
                  srli        zero, s11, 15
                  xor         a5, s11, s0
                  sltu        s6, s9, t0
                  addi        a7, s10, 548
                  lui         a2, 1860
                  auipc       a2, 485316
                  andi        s0, ra, -748
                  slt         zero, a2, a4
                  sub         a5, s3, s3
                  sra         a2, t0, t5
                  ori         tp, a1, -1108
                  lui         a5, 445519
                  nop
                  sltiu       sp, s0, -97
                  sltu        a1, s3, a4
                  sra         zero, s10, s1
                  slti        s8, s4, -630
                  sub         t1, a6, s9
                  xor         zero, s2, a2
                  slt         t2, a4, s5
                  add         a6, s8, s8
                  addi        a2, a6, -471
                  sub         s3, s3, t3
                  xori        s6, s0, 316
                  srli        zero, t5, 17
                  andi        t2, a0, -863
                  sll         a3, gp, a1
                  and         zero, zero, s4
                  xor         zero, gp, s4
                  slti        a4, s4, -1166
                  srl         s1, s10, s1
                  srli        zero, sp, 17
                  auipc       s9, 649454
                  sra         a4, a4, t1
                  sll         a4, a3, a7
                  slti        a2, a7, -389
                  and         zero, t1, a5
                  sub         gp, s2, a0
                  addi        s2, s4, 518
                  auipc       s4, 950598
                  nop
                  sll         s11, a7, gp
                  and         t2, t2, a4
                  slti        a0, t1, -476
                  lui         t3, 728559
                  auipc       s2, 440892
                  srai        a6, s4, 21
                  ori         zero, s10, 225
                  srl         s1, a7, a0
                  add         a4, a2, t4
                  or          zero, zero, s7
                  xori        a0, s1, -1330
                  sra         t3, gp, s11
                  and         s7, ra, a7
                  sltu        s1, t3, gp
                  sll         s9, gp, t1
                  sltu        tp, a0, a2
                  addi        a5, s6, 466
                  slt         t4, s10, sp
                  or          tp, s1, s6
                  andi        s9, s2, -904
                  ori         a0, ra, 1637
                  auipc       t1, 184859
                  sltiu       s5, s3, 870
                  addi        s0, s7, 1431
                  slli        s11, tp, 10
                  addi        a7, s1, 1599
                  xor         a3, s11, t2
                  sltu        zero, a0, s11
                  add         zero, s8, a7
                  sll         t3, t6, t6
                  slli        t0, a6, 21
                  sltiu       zero, s1, 1680
                  sltu        a7, s11, t0
                  and         a0, s1, sp
                  sub         t3, zero, s7
                  or          t2, s4, t5
                  slt         t0, a0, gp
                  sll         tp, s10, a4
                  sltu        a2, s2, t5
                  sra         t2, sp, t4
                  srli        t1, t1, 25
                  xor         s4, a0, a6
                  srl         s7, gp, s5
                  add         a6, s11, t5
                  slli        tp, a1, 7
                  sra         s1, s11, a6
                  auipc       t3, 981011
                  sltiu       a4, t5, -272
                  ori         a4, t5, 511
                  nop
                  xor         a0, t0, s6
                  slli        s11, a5, 30
                  slti        s7, a3, -712
                  sltiu       s3, t4, -686
                  auipc       tp, 553504
                  andi        t3, s8, 1799
                  sltiu       s3, t4, 2027
                  xori        s11, a5, -1501
                  lui         a1, 507422
                  srli        sp, t5, 13
                  add         zero, s11, a7
                  srai        sp, t2, 18
                  and         t3, a2, a7
                  srl         s1, a4, tp
                  or          s4, sp, t2
                  xori        s5, t2, 367
                  srl         s5, s1, t3
                  auipc       a4, 81817
                  srai        t2, a6, 11
                  srai        s7, t6, 10
                  sltu        zero, a6, tp
                  lui         zero, 1047733
                  srai        s2, s11, 17
                  nop
                  slli        a3, s7, 21
                  addi        a0, s11, 1612
                  srl         a0, tp, s6
                  srai        gp, gp, 15
                  sra         a6, t2, s10
                  srli        t1, zero, 31
                  xori        a5, s6, -1135
                  sub         a7, s6, a3
                  nop
                  slti        s9, t4, -1851
                  auipc       zero, 83198
                  andi        t3, t4, -1474
                  and         sp, s0, t2
                  auipc       t3, 151552
                  slli        s5, a0, 6
                  srl         a3, a3, t2
                  ori         a1, ra, 330
                  sra         a5, s7, s4
                  srli        s2, t5, 11
                  andi        tp, s8, 1925
                  add         zero, a1, t5
                  addi        zero, a5, -321
                  sll         a0, t4, gp
                  addi        s7, a0, 843
                  sltiu       t2, t5, 129
                  slt         gp, s11, ra
                  add         t4, a2, s4
                  srli        s7, a4, 12
                  slt         a0, t5, s3
                  slt         s11, s8, s0
                  sub         a5, s9, s3
                  add         s8, zero, s4
                  srli        a0, s5, 31
                  slti        a3, s2, 1954
                  srai        ra, t5, 6
                  slt         s1, s2, s9
                  lui         s7, 707289
                  add         s9, sp, s10
                  slli        t3, a2, 29
                  sra         gp, tp, a2
                  add         a1, s9, t2
                  sll         t0, s9, tp
                  ori         s8, s7, 2016
                  slli        zero, a7, 0
                  nop
                  nop
                  srai        a7, a4, 18
                  srl         t4, t6, zero
                  slti        a7, a0, 798
                  slti        ra, t6, -287
                  xor         gp, s11, s7
                  auipc       zero, 711119
                  slt         a6, s1, s6
                  ori         s4, t5, -1157
                  sub         t4, t4, t0
                  ori         s8, s3, -1079
                  sltu        s6, gp, s8
                  slt         s6, t6, s1
                  sll         a7, gp, s1
                  or          s6, s8, s3
                  srli        t0, t4, 30
                  xori        a7, t5, 1775
                  slli        t2, a4, 11
                  slt         a1, a5, s2
                  add         zero, a3, t2
                  sub         a3, a4, zero
                  srl         s7, s7, s6
                  sll         tp, t5, tp
                  and         zero, t0, t2
                  slli        sp, tp, 8
                  and         ra, t4, sp
                  ori         t0, s0, 2037
                  lui         a7, 576867
                  sltiu       sp, s7, 1893
                  or          zero, s1, t6
                  sra         ra, s10, s1
                  ori         zero, a3, -166
                  srai        s6, sp, 25
                  sltu        zero, gp, a4
                  slli        t0, t0, 9
                  xori        a1, t3, -121
                  xori        t1, t0, -1755
                  sltu        ra, t2, tp
                  xor         s5, a0, s10
                  slti        a3, a1, 2002
                  addi        s6, a1, 602
                  slt         a7, t1, s9
                  srl         zero, a5, ra
                  slli        s8, gp, 9
                  srl         zero, a6, s4
                  sltiu       gp, ra, 111
                  xori        s2, t3, 624
                  sltiu       a1, a5, -1236
                  or          s6, t4, sp
                  ori         s5, t2, 916
                  lui         a0, 1033866
                  nop
                  srl         s8, s0, s5
                  auipc       s7, 230035
                  slli        tp, a6, 12
                  add         s11, a7, gp
                  slt         a0, t4, s6
                  sltu        s2, a0, s10
                  slti        s11, gp, -11
                  sltiu       sp, s8, -707
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
mmode_intr_vector_1:
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
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_2:
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
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_3:
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
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_4:
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
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_5:
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
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_6:
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
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_7:
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
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_8:
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
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_9:
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
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_10:
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
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_11:
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
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_12:
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
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_13:
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
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_14:
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
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_15:
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
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

.align 4
mtvec_handler:    
                  .option norvc;
                  j mmode_exception_handler
                  j mmode_intr_vector_1
                  j mmode_intr_vector_2
                  j mmode_intr_vector_3
                  j mmode_intr_vector_4
                  j mmode_intr_vector_5
                  j mmode_intr_vector_6
                  j mmode_intr_vector_7
                  j mmode_intr_vector_8
                  j mmode_intr_vector_9
                  j mmode_intr_vector_10
                  j mmode_intr_vector_11
                  j mmode_intr_vector_12
                  j mmode_intr_vector_13
                  j mmode_intr_vector_14
                  j mmode_intr_vector_15

mmode_exception_handler:
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
                  csrr x14, 0x341 # MEPC
                  csrr x14, 0x342 # MCAUSE
                  li x22, 0xb # ECALL_MMODE
                  beq x14, x22, ecall_handler
                  li x22, 0x2 # ILLEGAL_INSTRUCTION
                  beq x14, x22, illegal_instr_handler
                  csrr x22, 0x343 # MTVAL
                  1: la x31, test_done
                  jalr x1, x31, 0

ecall_handler:    
                  la x14, _start
                  sw x0, 0(x14)
                  sw x1, 4(x14)
                  sw x2, 8(x14)
                  sw x3, 12(x14)
                  sw x4, 16(x14)
                  sw x5, 20(x14)
                  sw x6, 24(x14)
                  sw x7, 28(x14)
                  sw x8, 32(x14)
                  sw x9, 36(x14)
                  sw x10, 40(x14)
                  sw x11, 44(x14)
                  sw x12, 48(x14)
                  sw x13, 52(x14)
                  sw x14, 56(x14)
                  sw x15, 60(x14)
                  sw x16, 64(x14)
                  sw x17, 68(x14)
                  sw x18, 72(x14)
                  sw x19, 76(x14)
                  sw x20, 80(x14)
                  sw x21, 84(x14)
                  sw x22, 88(x14)
                  sw x23, 92(x14)
                  sw x24, 96(x14)
                  sw x25, 100(x14)
                  sw x26, 104(x14)
                  sw x27, 108(x14)
                  sw x28, 112(x14)
                  sw x29, 116(x14)
                  sw x30, 120(x14)
                  sw x31, 124(x14)
                  la x31, write_tohost
                  jalr x0, x31, 0

illegal_instr_handler:
                  csrr  x14, 0x341
                  addi  x14, x14, 4
                  csrw  0x341, x14
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
                  csrr  x14, 0x300 # MSTATUS;
                  csrr  x14, 0x304 # MIE;
                  csrr  x14, 0x344 # MIP;
                  csrrc x14, 0x344, x14 # MIP;
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
