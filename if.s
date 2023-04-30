
# MIPS assembly generated using lscc

.data



.text

    .globl main
    .align 4
main:
    addiu   $sp, $sp, -48
    sw      $fp, 44($sp)
    sw      $31, 40($sp)
    move    $fp, $sp
    sw      $4, 48($fp)
    sw      $5, 52($fp)
    sw      $6, 56($fp)
    sw      $7, 60($fp)
  fnc_main_code:
    li      $8, 10
    sw      $8, 16($fp)
    nop
    addiu   $8, $fp, 28
    sw      $8, 8($fp)
    nop
    lw     $3, 8($fp)
    nop
    lw     $8, 16($fp)
    nop
    move    $10, $8
    sw      $10, 0($3)
    nop
    li      $8, 20
    sw      $8, 20($fp)
    nop
    addiu   $8, $fp, 32
    sw      $8, 12($fp)
    nop
    lw     $3, 12($fp)
    nop
    lw     $8, 20($fp)
    nop
    move    $10, $8
    sw      $10, 0($3)
    nop
  if1_begin:
    li      $24, 1
    lw     $8, 28($fp)
    nop
    lw     $9, 32($fp)
    nop
    move    $10, $8
    move    $11, $9
    slt     $25, $10, $11
    bne     $25, $0, $L1
    nop
    li      $24, 0
   $L1:
    sw      $24, 24($fp)
    nop
    lw     $8, 24($fp)
    nop
    move    $10, $8
    bne     $10, $0, $L2
    nop
    j       if1_false
    nop
   $L2:
  if1_true:
    lw     $8, 28($fp)
    nop
    move    $2, $8
    j       fnc_main_return
    nop
    j       if1_end
    nop
  if1_false:
    lw     $8, 32($fp)
    nop
    move    $2, $8
    j       fnc_main_return
    nop
  if1_end:
  fnc_main_return:
    move    $sp, $fp
    lw      $31, 40($sp)
    lw      $fp, 44($sp)
    addiu   $sp, $sp, 48
    j       $31
    nop

