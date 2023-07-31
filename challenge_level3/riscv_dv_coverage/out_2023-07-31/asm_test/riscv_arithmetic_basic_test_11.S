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
                  li x13, 0x40000100
                  csrw 0x301, x13
kernel_sp:        
                  la x30, kernel_stack_end

trap_vec_init:    
                  la x13, mtvec_handler
                  ori x13, x13, 0
                  csrw 0x305, x13 # MTVEC

mepc_setup:       
                  la x13, init
                  csrw 0x341, x13

init_machine_mode:
                  li x13, 0x1c00
                  csrw 0x300, x13 # MSTATUS
                  li x13, 0x0
                  csrw 0x304, x13 # MIE
                  mret
init:             
                  li x0, 0x80000000
                  li x1, 0xf749952a
                  li x2, 0xc839ca67
                  li x3, 0x9
                  li x4, 0xf2d83fac
                  li x5, 0x80000000
                  li x6, 0x2
                  li x7, 0x80000000
                  li x8, 0xfe669cdb
                  li x9, 0x0
                  li x10, 0x80000000
                  li x11, 0x7eced50a
                  li x12, 0x7
                  li x13, 0x49e866e2
                  li x14, 0xf0ce345b
                  li x15, 0x7fa79725
                  li x16, 0x4
                  li x17, 0x1bcf09
                  li x18, 0x80000000
                  li x19, 0x1
                  li x20, 0x0
                  li x21, 0xd5f39e3b
                  li x22, 0x0
                  li x23, 0x8
                  li x24, 0x80000000
                  li x25, 0x8
                  li x26, 0x42cb1a6b
                  li x27, 0xd97b9cbe
                  li x28, 0x0
                  li x31, 0x0
                  la x29, user_stack_end
main:             slti        zero, gp, 824
                  ori         s10, s8, 619
                  xor         t3, a2, s0
                  or          s11, s1, t1
                  sll         s2, s9, s8
                  nop
                  li         s11, 0x0 #start riscv_int_numeric_corner_stream_0
                  li         a4, 0x1
                  li         sp, 0x1
                  li         s9, 0x0
                  li         a1, 0x0
                  li         gp, 0x1
                  li         t3, 0x0
                  li         s3, 0x0
                  li         s1, 0x1
                  li         s7, 0x0
                  add         s9, s5, sp
                  nop
                  sub         a4, t4, s1
                  nop
                  addi        zero, s1, 617
                  addi        s11, s9, 54
                  lui         s3, 77549
                  nop
                  nop
                  nop
                  addi        s3, zero, 1569
                  nop
                  lui         a4, 133991
                  add         s0, a7, ra
                  add         s8, a4, ra
                  addi        gp, s4, 1765
                  add         s11, s10, a5
                  add         a6, t3, t5
                  add         zero, t3, s4 #end riscv_int_numeric_corner_stream_0
                  sltu        sp, s5, a5
                  sll         sp, ra, tp
                  lui         s9, 367578
                  andi        s7, s10, -2025
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
                  csrrw x29, 0x340, x29
                  add x29, x30, zero
                  1: addi x29, x29, -124
                  sw x1, 4(x29)
                  sw x2, 8(x29)
                  sw x3, 12(x29)
                  sw x4, 16(x29)
                  sw x5, 20(x29)
                  sw x6, 24(x29)
                  sw x7, 28(x29)
                  sw x8, 32(x29)
                  sw x9, 36(x29)
                  sw x10, 40(x29)
                  sw x11, 44(x29)
                  sw x12, 48(x29)
                  sw x13, 52(x29)
                  sw x14, 56(x29)
                  sw x15, 60(x29)
                  sw x16, 64(x29)
                  sw x17, 68(x29)
                  sw x18, 72(x29)
                  sw x19, 76(x29)
                  sw x20, 80(x29)
                  sw x21, 84(x29)
                  sw x22, 88(x29)
                  sw x23, 92(x29)
                  sw x24, 96(x29)
                  sw x25, 100(x29)
                  sw x26, 104(x29)
                  sw x27, 108(x29)
                  sw x28, 112(x29)
                  sw x29, 116(x29)
                  sw x30, 120(x29)
                  sw x31, 124(x29)
                  csrr x13, 0x300 # MSTATUS
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 31
                  bne x13, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x13, 0x341 # MEPC
                  csrr x13, 0x342 # MCAUSE
                  li x23, 0xb # ECALL_MMODE
                  beq x13, x23, ecall_handler
                  li x23, 0x2 # ILLEGAL_INSTRUCTION
                  beq x13, x23, illegal_instr_handler
                  csrr x23, 0x343 # MTVAL
                  1: la x31, test_done
                  jalr x1, x31, 0

ecall_handler:    
                  la x13, _start
                  sw x0, 0(x13)
                  sw x1, 4(x13)
                  sw x2, 8(x13)
                  sw x3, 12(x13)
                  sw x4, 16(x13)
                  sw x5, 20(x13)
                  sw x6, 24(x13)
                  sw x7, 28(x13)
                  sw x8, 32(x13)
                  sw x9, 36(x13)
                  sw x10, 40(x13)
                  sw x11, 44(x13)
                  sw x12, 48(x13)
                  sw x13, 52(x13)
                  sw x14, 56(x13)
                  sw x15, 60(x13)
                  sw x16, 64(x13)
                  sw x17, 68(x13)
                  sw x18, 72(x13)
                  sw x19, 76(x13)
                  sw x20, 80(x13)
                  sw x21, 84(x13)
                  sw x22, 88(x13)
                  sw x23, 92(x13)
                  sw x24, 96(x13)
                  sw x25, 100(x13)
                  sw x26, 104(x13)
                  sw x27, 108(x13)
                  sw x28, 112(x13)
                  sw x29, 116(x13)
                  sw x30, 120(x13)
                  sw x31, 124(x13)
                  la x31, write_tohost
                  jalr x0, x31, 0

illegal_instr_handler:
                  csrr  x13, 0x341
                  addi  x13, x13, 4
                  csrw  0x341, x13
                  lw x1, 4(x29)
                  lw x2, 8(x29)
                  lw x3, 12(x29)
                  lw x4, 16(x29)
                  lw x5, 20(x29)
                  lw x6, 24(x29)
                  lw x7, 28(x29)
                  lw x8, 32(x29)
                  lw x9, 36(x29)
                  lw x10, 40(x29)
                  lw x11, 44(x29)
                  lw x12, 48(x29)
                  lw x13, 52(x29)
                  lw x14, 56(x29)
                  lw x15, 60(x29)
                  lw x16, 64(x29)
                  lw x17, 68(x29)
                  lw x18, 72(x29)
                  lw x19, 76(x29)
                  lw x20, 80(x29)
                  lw x21, 84(x29)
                  lw x22, 88(x29)
                  lw x23, 92(x29)
                  lw x24, 96(x29)
                  lw x25, 100(x29)
                  lw x26, 104(x29)
                  lw x27, 108(x29)
                  lw x28, 112(x29)
                  lw x29, 116(x29)
                  lw x30, 120(x29)
                  lw x31, 124(x29)
                  addi x29, x29, 124
                  add x30, x29, zero
                  csrrw x29, 0x340, x29
                  mret

pt_fault_handler: 

.align 2
mmode_intr_handler:
                  csrr  x13, 0x300 # MSTATUS;
                  csrr  x13, 0x304 # MIE;
                  csrr  x13, 0x344 # MIP;
                  csrrc x13, 0x344, x13 # MIP;
                  lw x1, 4(x29)
                  lw x2, 8(x29)
                  lw x3, 12(x29)
                  lw x4, 16(x29)
                  lw x5, 20(x29)
                  lw x6, 24(x29)
                  lw x7, 28(x29)
                  lw x8, 32(x29)
                  lw x9, 36(x29)
                  lw x10, 40(x29)
                  lw x11, 44(x29)
                  lw x12, 48(x29)
                  lw x13, 52(x29)
                  lw x14, 56(x29)
                  lw x15, 60(x29)
                  lw x16, 64(x29)
                  lw x17, 68(x29)
                  lw x18, 72(x29)
                  lw x19, 76(x29)
                  lw x20, 80(x29)
                  lw x21, 84(x29)
                  lw x22, 88(x29)
                  lw x23, 92(x29)
                  lw x24, 96(x29)
                  lw x25, 100(x29)
                  lw x26, 104(x29)
                  lw x27, 108(x29)
                  lw x28, 112(x29)
                  lw x29, 116(x29)
                  lw x30, 120(x29)
                  lw x31, 124(x29)
                  addi x29, x29, 124
                  add x30, x29, zero
                  csrrw x29, 0x340, x29
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
