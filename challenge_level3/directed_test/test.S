# See LICENSE for license details.

#*****************************************************************************
# add.S
#-----------------------------------------------------------------------------
#
# Test add instruction.
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32M
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------

  TEST_RR_OP( 1,  and, 0x00000001, 0xffffffff, 0x00000001 );   #pass
  TEST_RR_OP( 2,  sub, 0x00000001, 0x00000002, 0x00000001 );   #pass
  TEST_RR_OP( 3,  sll, 0x00000010, 0x00000001, 0x00000004 );   #pass
  #TEST_RR_OP( 4,  or,  0xffff3bff, 0x00343b00,  0xffff00ff ); #bug
  TEST_RR_OP( 5,  slt, 0x00000001, 0xfffffffe,  0xffffffff ); #bug but only after previous
  TEST_RR_OP( 6,  sltu,  0x00000000, 0xffffffff,  0xfffffffe );
  TEST_RR_OP( 7,  sra,  0xffc0011b, 0xc0011b00,  0xe03410c8 );
  TEST_RR_OP( 8,  srl,  0x00000001, 0x00000010,  0x00000004 );
  TEST_RR_OP( 9,  xor,  0xffff3b00, 0x00003b00,  0xffff0000 );

  TEST_RR_SRC1_EQ_DEST( 10, add, 0xffffffff, 0xffffffff, 0x00000000);
  TEST_RR_SRC2_EQ_DEST( 11, add, 0xffffffff, 0xffffffff, 0x00000000);
  TEST_IMM_OP( 12, SLLI, 0X3110000, 0X237F3C11, 16 )
  

  TEST_PASSFAIL

RVTEST_CODE_END

  .data
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
