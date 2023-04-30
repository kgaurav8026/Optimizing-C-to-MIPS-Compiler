
# MIPS assembly generated using lscc

.data



.text

    .globl main
    .align 4
main:
    addiu   $sp, $sp, -192
    sw      $fp, 188($sp)
    sw      $31, 184($sp)
    move    $fp, $sp
    sw      $4, 192($fp)
    sw      $5, 196($fp)
    sw      $6, 200($fp)
    sw      $7, 204($fp)
    addiu   $8, $fp, 8
    sw      $8, 116($fp)
  fnc_main_code:
    li      $8, 10
    sw      $8, 128($fp)
    nop
    addiu   $8, $fp, 180
    sw      $8, 112($fp)
    nop
    lw     $3, 112($fp)
    nop
    lw     $8, 128($fp)
    nop
    move    $10, $8
    sw      $10, 0($3)
    nop
    move    $8, $0
    sw      $8, 132($fp)
    nop
    addiu   $8, $fp, 168
    sw      $8, 72($fp)
    nop
    lw     $3, 72($fp)
    nop
    lw     $8, 132($fp)
    nop
    move    $10, $8
    sw      $10, 0($3)
    nop
    li      $8, 1
    sw      $8, 136($fp)
    nop
    addiu   $8, $fp, 172
    sw      $8, 84($fp)
    nop
    lw     $3, 84($fp)
    nop
    lw     $8, 136($fp)
    nop
    move    $10, $8
    sw      $10, 0($3)
    nop
  for1_begin:
    addiu   $8, $fp, 176
    sw      $8, 96($fp)
    nop
    move    $8, $0
    sw      $8, 140($fp)
    nop
    lw     $3, 96($fp)
    nop
    lw     $8, 140($fp)
    nop
    move    $10, $8
    sw      $10, 0($3)
    nop
  for1_condition:
    li      $24, 1
    lw     $8, 176($fp)
    nop
    lw     $9, 180($fp)
    nop
    move    $10, $8
    move    $11, $9
    slt     $25, $10, $11
    bne     $25, $0, $L1
    nop
    li      $24, 0
   $L1:
    sw      $24, 148($fp)
    nop
    lw     $8, 148($fp)
    nop
    move    $10, $8
    bne     $10, $0, $L2
    nop
    j       for1_end
    nop
   $L2:
  for1_body:
    lw     $8, 116($fp)
    nop
    lw     $10, 176($fp)
    nop
    li      $11, 4
    mul     $10, $10, $11
    addu    $14, $8, $10
    sw      $14, 56($fp)
    nop
    lw     $3, 56($fp)
    nop
    lw     $8, 168($fp)
    nop
    move    $10, $8
    sw      $10, 0($3)
    nop
    addiu   $8, $fp, 164
    sw      $8, 64($fp)
    nop
    lw     $3, 64($fp)
    nop
    lw     $8, 168($fp)
    nop
    move    $10, $8
    sw      $10, 0($3)
    nop
    addiu   $8, $fp, 168
    sw      $8, 76($fp)
    nop
    lw     $3, 76($fp)
    nop
    lw     $8, 172($fp)
    nop
    move    $10, $8
    sw      $10, 0($3)
    nop
    addiu   $8, $fp, 172
    sw      $8, 88($fp)
    nop
    lw     $8, 164($fp)
    nop
    lw     $10, 172($fp)
    nop
    move    $12, $8
    move    $14, $10
    addu    $8, $12, $14
    sw      $8, 48($fp)
    nop
    lw     $3, 88($fp)
    nop
    lw     $8, 48($fp)
    nop
    move    $10, $8
    sw      $10, 0($3)
    nop
  for1_afterthought:
    lw     $8, 176($fp)
    nop
    move    $10, $8
    sw      $10, 156($fp)
    nop
    lw     $8, 176($fp)
    nop
    addiu   $10, $8, 1
    sw      $10, 120($fp)
    nop
    addiu   $8, $fp, 176
    sw      $8, 100($fp)
    nop
    lw     $3, 100($fp)
    nop
    lw     $8, 120($fp)
    nop
    move    $10, $8
    sw      $10, 0($3)
    nop
    j       for1_condition
    nop
  for1_end:
  for2_begin:
    addiu   $8, $fp, 176
    sw      $8, 104($fp)
    nop
    move    $8, $0
    sw      $8, 144($fp)
    nop
    lw     $3, 104($fp)
    nop
    lw     $8, 144($fp)
    nop
    move    $10, $8
    sw      $10, 0($3)
    nop
  for2_condition:
    li      $24, 1
    lw     $8, 176($fp)
    nop
    lw     $9, 180($fp)
    nop
    move    $10, $8
    move    $11, $9
    slt     $25, $10, $11
    bne     $25, $0, $L3
    nop
    li      $24, 0
   $L3:
    sw      $24, 152($fp)
    nop
    lw     $8, 152($fp)
    nop
    move    $10, $8
    bne     $10, $0, $L4
    nop
    j       for2_end
    nop
   $L4:
  for2_body:
    lw     $8, 116($fp)
    nop
    lw     $10, 176($fp)
    nop
    li      $11, 4
    mul     $10, $10, $11
    addu    $14, $8, $10
    sw      $14, 60($fp)
    nop
    lw     $3, 60($fp)
    nop
    lw     $8, 168($fp)
    nop
    move    $10, $8
    sw      $10, 0($3)
    nop
    addiu   $8, $fp, 164
    sw      $8, 68($fp)
    nop
    lw     $3, 68($fp)
    nop
    lw     $8, 168($fp)
    nop
    move    $10, $8
    sw      $10, 0($3)
    nop
    addiu   $8, $fp, 168
    sw      $8, 80($fp)
    nop
    lw     $3, 80($fp)
    nop
    lw     $8, 172($fp)
    nop
    move    $10, $8
    sw      $10, 0($3)
    nop
    addiu   $8, $fp, 172
    sw      $8, 92($fp)
    nop
    lw     $8, 164($fp)
    nop
    lw     $10, 172($fp)
    nop
    move    $12, $8
    move    $14, $10
    addu    $8, $12, $14
    sw      $8, 52($fp)
    nop
    lw     $3, 92($fp)
    nop
    lw     $8, 52($fp)
    nop
    move    $10, $8
    sw      $10, 0($3)
    nop
  for2_afterthought:
    lw     $8, 176($fp)
    nop
    move    $10, $8
    sw      $10, 160($fp)
    nop
    lw     $8, 176($fp)
    nop
    addiu   $10, $8, 1
    sw      $10, 124($fp)
    nop
    addiu   $8, $fp, 176
    sw      $8, 108($fp)
    nop
    lw     $3, 108($fp)
    nop
    lw     $8, 124($fp)
    nop
    move    $10, $8
    sw      $10, 0($3)
    nop
    j       for2_condition
    nop
  for2_end:
  fnc_main_return:
    move    $sp, $fp
    lw      $31, 184($sp)
    lw      $fp, 188($sp)
    addiu   $sp, $sp, 192
    j       $31
    nop

