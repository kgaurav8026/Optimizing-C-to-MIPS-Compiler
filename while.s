
# MIPS assembly generated using lscc

.data



.text

    .globl main
    .align 4
main:
    addiu   $sp, $sp, -96
    sw      $fp, 92($sp)
    sw      $31, 88($sp)
    move    $fp, $sp
    sw      $4, 96($fp)
    sw      $5, 100($fp)
    sw      $6, 104($fp)
    sw      $7, 108($fp)
  fnc_main_code:
    move    $8, $0
    sw      $8, 44($fp)
    nop
    addiu   $8, $fp, 80
    sw      $8, 36($fp)
    nop
    lw     $3, 36($fp)
    nop
    lw     $8, 44($fp)
    nop
    move    $10, $8
    sw      $10, 0($3)
    nop
    move    $8, $0
    sw      $8, 48($fp)
    nop
    addiu   $8, $fp, 68
    sw      $8, 16($fp)
    nop
    lw     $3, 16($fp)
    nop
    lw     $8, 48($fp)
    nop
    move    $10, $8
    sw      $10, 0($3)
    nop
    li      $8, 1
    sw      $8, 52($fp)
    nop
    addiu   $8, $fp, 72
    sw      $8, 24($fp)
    nop
    lw     $3, 24($fp)
    nop
    lw     $8, 52($fp)
    nop
    move    $10, $8
    sw      $10, 0($3)
    nop
  while1_begin:
  while1_condition:
    li      $8, 10
    sw      $8, 56($fp)
    nop
    li      $24, 1
    lw     $8, 80($fp)
    nop
    lw     $9, 56($fp)
    nop
    move    $10, $8
    move    $11, $9
    slt     $25, $10, $11
    bne     $25, $0, $L1
    nop
    li      $24, 0
   $L1:
    sw      $24, 64($fp)
    nop
    lw     $8, 64($fp)
    nop
    move    $10, $8
    bne     $10, $0, $L2
    nop
    j       while1_end
    nop
   $L2:
    addiu   $8, $fp, 76
    sw      $8, 32($fp)
    nop
    lw     $8, 68($fp)
    nop
    lw     $10, 72($fp)
    nop
    move    $12, $8
    move    $14, $10
    addu    $8, $12, $14
    sw      $8, 8($fp)
    nop
    lw     $3, 32($fp)
    nop
    lw     $8, 8($fp)
    nop
    move    $10, $8
    sw      $10, 0($3)
    nop
    addiu   $8, $fp, 68
    sw      $8, 20($fp)
    nop
    lw     $3, 20($fp)
    nop
    lw     $8, 72($fp)
    nop
    move    $10, $8
    sw      $10, 0($3)
    nop
    addiu   $8, $fp, 72
    sw      $8, 28($fp)
    nop
    lw     $3, 28($fp)
    nop
    lw     $8, 76($fp)
    nop
    move    $10, $8
    sw      $10, 0($3)
    nop
    addiu   $8, $fp, 80
    sw      $8, 40($fp)
    nop
    li      $8, 1
    sw      $8, 60($fp)
    nop
    lw     $8, 80($fp)
    nop
    lw     $10, 60($fp)
    nop
    move    $12, $8
    move    $14, $10
    addu    $8, $12, $14
    sw      $8, 12($fp)
    nop
    lw     $3, 40($fp)
    nop
    lw     $8, 12($fp)
    nop
    move    $10, $8
    sw      $10, 0($3)
    nop
    j       while1_begin
    nop
  while1_end:
    lw     $8, 76($fp)
    nop
    move    $2, $8
    j       fnc_main_return
    nop
  fnc_main_return:
    move    $sp, $fp
    lw      $31, 88($sp)
    lw      $fp, 92($sp)
    addiu   $sp, $sp, 96
    j       $31
    nop

