
# MIPS assembly generated using lscc

.data



.text

    .globl main
    .align 4
main:
    addiu   $sp, $sp, -152
    sw      $fp, 148($sp)
    sw      $31, 144($sp)
    move    $fp, $sp
    sw      $4, 152($fp)
    sw      $5, 156($fp)
    sw      $6, 160($fp)
    sw      $7, 164($fp)
    addiu   $8, $fp, 8
    sw      $8, 88($fp)
  fnc_main_code:
    li      $8, 10
    sw      $8, 96($fp)
    nop
    addiu   $8, $fp, 136
    sw      $8, 84($fp)
    nop
    lw     $3, 84($fp)
    nop
    lw     $8, 96($fp)
    nop
    move    $10, $8
    sw      $10, 0($3)
    nop
    move    $8, $0
    sw      $8, 100($fp)
    nop
    addiu   $8, $fp, 124
    sw      $8, 60($fp)
    nop
    lw     $3, 60($fp)
    nop
    lw     $8, 100($fp)
    nop
    move    $10, $8
    sw      $10, 0($3)
    nop
    li      $8, 1
    sw      $8, 104($fp)
    nop
    addiu   $8, $fp, 128
    sw      $8, 68($fp)
    nop
    lw     $3, 68($fp)
    nop
    lw     $8, 104($fp)
    nop
    move    $10, $8
    sw      $10, 0($3)
    nop
  for1_begin:
    addiu   $8, $fp, 132
    sw      $8, 76($fp)
    nop
    move    $8, $0
    sw      $8, 108($fp)
    nop
    lw     $3, 76($fp)
    nop
    lw     $8, 108($fp)
    nop
    move    $10, $8
    sw      $10, 0($3)
    nop
  for1_condition:
    li      $24, 1
    lw     $8, 132($fp)
    nop
    lw     $9, 136($fp)
    nop
    move    $10, $8
    move    $11, $9
    slt     $25, $10, $11
    bne     $25, $0, $L1
    nop
    li      $24, 0
   $L1:
    sw      $24, 112($fp)
    nop
    lw     $8, 112($fp)
    nop
    move    $10, $8
    bne     $10, $0, $L2
    nop
    j       for1_end
    nop
   $L2:
  for1_body:
    lw     $8, 88($fp)
    nop
    lw     $10, 132($fp)
    nop
    li      $11, 4
    mul     $10, $10, $11
    addu    $14, $8, $10
    sw      $14, 52($fp)
    nop
    lw     $3, 52($fp)
    nop
    lw     $8, 124($fp)
    nop
    move    $10, $8
    sw      $10, 0($3)
    nop
    addiu   $8, $fp, 120
    sw      $8, 56($fp)
    nop
    lw     $3, 56($fp)
    nop
    lw     $8, 124($fp)
    nop
    move    $10, $8
    sw      $10, 0($3)
    nop
    addiu   $8, $fp, 124
    sw      $8, 64($fp)
    nop
    lw     $3, 64($fp)
    nop
    lw     $8, 128($fp)
    nop
    move    $10, $8
    sw      $10, 0($3)
    nop
    addiu   $8, $fp, 128
    sw      $8, 72($fp)
    nop
    lw     $8, 120($fp)
    nop
    lw     $10, 128($fp)
    nop
    move    $12, $8
    move    $14, $10
    addu    $8, $12, $14
    sw      $8, 48($fp)
    nop
    lw     $3, 72($fp)
    nop
    lw     $8, 48($fp)
    nop
    move    $10, $8
    sw      $10, 0($3)
    nop
  for1_afterthought:
    lw     $8, 132($fp)
    nop
    move    $10, $8
    sw      $10, 116($fp)
    nop
    lw     $8, 132($fp)
    nop
    addiu   $10, $8, 1
    sw      $10, 92($fp)
    nop
    addiu   $8, $fp, 132
    sw      $8, 80($fp)
    nop
    lw     $3, 80($fp)
    nop
    lw     $8, 92($fp)
    nop
    move    $10, $8
    sw      $10, 0($3)
    nop
    j       for1_condition
    nop
  for1_end:
  fnc_main_return:
    move    $sp, $fp
    lw      $31, 144($sp)
    lw      $fp, 148($sp)
    addiu   $sp, $sp, 152
    j       $31
    nop

