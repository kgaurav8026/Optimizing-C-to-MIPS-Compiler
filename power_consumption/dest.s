
# MIPS assembly generated using lscc

.data



.text

    .globl main
    .align 4
main:
    addiu   $sp, $sp, -184
    sw      $fp, 180($sp)
    sw      $31, 176($sp)
    move    $fp, $sp
    sw      $4, 184($fp)
    sw      $5, 188($fp)
    sw      $6, 192($fp)
    sw      $7, 196($fp)
  fnc_main_code:
    li      $8, 10
    sw      $8, 88($fp)
    nop
    addiu   $8, $fp, 164
    sw      $8, 32($fp)
    nop
    lw     $3, 32($fp)
    nop
    lw     $8, 88($fp)
    nop
    move    $10, $8
    sw      $10, 0($3)
    nop
    li      $8, 20
    sw      $8, 108($fp)
    nop
    addiu   $8, $fp, 168
    sw      $8, 56($fp)
    nop
    lw     $3, 56($fp)
    nop
    lw     $8, 108($fp)
    nop
    move    $10, $8
    sw      $10, 0($3)
    nop
    move    $8, $0
    sw      $8, 112($fp)
    nop
    addiu   $8, $fp, 172
    sw      $8, 64($fp)
    nop
    lw     $3, 64($fp)
    nop
    lw     $8, 112($fp)
    nop
    move    $10, $8
    sw      $10, 0($3)
    nop
  for1_begin:
  for1_condition:
    li      $8, 2
    sw      $8, 116($fp)
    nop
    li      $24, 1
    lw     $8, 172($fp)
    nop
    lw     $9, 116($fp)
    nop
    move    $10, $8
    move    $11, $9
    slt     $25, $11, $10
    beq     $25, $0, $L1
    nop
    li      $24, 0
   $L1:
    sw      $24, 140($fp)
    nop
    lw     $8, 140($fp)
    nop
    move    $10, $8
    bne     $10, $0, $L2
    nop
    j       for1_end
    nop
   $L2:
  for1_body:
    addiu   $8, $fp, 164
    sw      $8, 36($fp)
    nop
    lw     $8, 164($fp)
    nop
    lw     $10, 168($fp)
    nop
    move    $12, $8
    move    $14, $10
    addu    $8, $12, $14
    sw      $8, 8($fp)
    nop
    lw     $3, 36($fp)
    nop
    lw     $8, 8($fp)
    nop
    move    $10, $8
    sw      $10, 0($3)
    nop
  for1_afterthought:
    lw     $8, 172($fp)
    nop
    move    $10, $8
    sw      $10, 152($fp)
    nop
    lw     $8, 172($fp)
    nop
    addiu   $10, $8, 1
    sw      $10, 84($fp)
    nop
    addiu   $8, $fp, 172
    sw      $8, 68($fp)
    nop
    lw     $3, 68($fp)
    nop
    lw     $8, 84($fp)
    nop
    move    $10, $8
    sw      $10, 0($3)
    nop
    j       for1_condition
    nop
  for1_end:
  while1_begin:
  while1_condition:
    li      $8, 3
    sw      $8, 120($fp)
    nop
    li      $24, 1
    lw     $8, 172($fp)
    nop
    lw     $9, 120($fp)
    nop
    move    $10, $8
    move    $11, $9
    slt     $25, $11, $10
    beq     $25, $0, $L3
    nop
    li      $24, 0
   $L3:
    sw      $24, 144($fp)
    nop
    lw     $8, 144($fp)
    nop
    move    $10, $8
    bne     $10, $0, $L4
    nop
    j       while1_end
    nop
   $L4:
    addiu   $8, $fp, 164
    sw      $8, 40($fp)
    nop
    lw     $8, 164($fp)
    nop
    lw     $10, 168($fp)
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
    addiu   $8, $fp, 168
    sw      $8, 60($fp)
    nop
    lw     $8, 168($fp)
    nop
    lw     $10, 172($fp)
    nop
    move    $12, $8
    move    $14, $10
    addu    $8, $12, $14
    sw      $8, 16($fp)
    nop
    lw     $3, 60($fp)
    nop
    lw     $8, 16($fp)
    nop
    move    $10, $8
    sw      $10, 0($3)
    nop
    li      $8, 1
    sw      $8, 124($fp)
    nop
    lw     $8, 172($fp)
    nop
    lw     $10, 124($fp)
    nop
    move    $12, $8
    move    $14, $10
    addu    $8, $12, $14
    sw      $8, 20($fp)
    nop
    addiu   $8, $fp, 172
    sw      $8, 72($fp)
    nop
    lw     $3, 72($fp)
    nop
    lw     $8, 20($fp)
    nop
    move    $10, $8
    sw      $10, 0($3)
    nop
    j       while1_begin
    nop
  while1_end:
  while2_begin:
  while2_condition:
    li      $8, 10
    sw      $8, 128($fp)
    nop
    li      $24, 1
    lw     $8, 172($fp)
    nop
    lw     $9, 128($fp)
    nop
    move    $10, $8
    move    $11, $9
    slt     $25, $11, $10
    beq     $25, $0, $L5
    nop
    li      $24, 0
   $L5:
    sw      $24, 148($fp)
    nop
    lw     $8, 148($fp)
    nop
    move    $10, $8
    bne     $10, $0, $L6
    nop
    j       while2_end
    nop
   $L6:
    li      $8, 1
    sw      $8, 132($fp)
    nop
    lw     $8, 164($fp)
    nop
    lw     $10, 132($fp)
    nop
    move    $12, $8
    move    $14, $10
    subu    $8, $12, $14
    sw      $8, 156($fp)
    nop
    addiu   $8, $fp, 164
    sw      $8, 44($fp)
    nop
    lw     $3, 44($fp)
    nop
    lw     $8, 156($fp)
    nop
    move    $10, $8
    sw      $10, 0($3)
    nop
    li      $8, 1
    sw      $8, 136($fp)
    nop
    lw     $8, 172($fp)
    nop
    lw     $10, 136($fp)
    nop
    move    $12, $8
    move    $14, $10
    addu    $8, $12, $14
    sw      $8, 24($fp)
    nop
    addiu   $8, $fp, 172
    sw      $8, 76($fp)
    nop
    lw     $3, 76($fp)
    nop
    lw     $8, 24($fp)
    nop
    move    $10, $8
    sw      $10, 0($3)
    nop
    j       while2_begin
    nop
  while2_end:
  if1_begin:
    li      $8, 20
    sw      $8, 92($fp)
    nop
    li      $24, 1
    lw     $8, 164($fp)
    nop
    lw     $9, 92($fp)
    nop
    move    $10, $8
    move    $11, $9
    slt     $25, $11, $10
    bne     $25, $0, $L7
    nop
    li      $24, 0
   $L7:
    sw      $24, 80($fp)
    nop
    lw     $8, 80($fp)
    nop
    move    $10, $8
    bne     $10, $0, $L8
    nop
    j       if1_false
    nop
   $L8:
  if1_true:
    addiu   $8, $fp, 164
    sw      $8, 48($fp)
    nop
    li      $8, 2
    sw      $8, 96($fp)
    nop
    lw     $8, 164($fp)
    nop
    lw     $10, 96($fp)
    nop
    move    $12, $8
    move    $14, $10
    addu    $8, $12, $14
    sw      $8, 28($fp)
    nop
    lw     $3, 48($fp)
    nop
    lw     $8, 28($fp)
    nop
    move    $10, $8
    sw      $10, 0($3)
    nop
    j       if1_end
    nop
  if1_false:
    addiu   $8, $fp, 164
    sw      $8, 52($fp)
    nop
    li      $8, 2
    sw      $8, 100($fp)
    nop
    lw     $8, 164($fp)
    nop
    lw     $10, 100($fp)
    nop
    move    $12, $8
    move    $14, $10
    subu    $8, $12, $14
    sw      $8, 160($fp)
    nop
    lw     $3, 52($fp)
    nop
    lw     $8, 160($fp)
    nop
    move    $10, $8
    sw      $10, 0($3)
    nop
  if1_end:
    move    $8, $0
    sw      $8, 104($fp)
    nop
    lw     $8, 104($fp)
    nop
    move    $2, $8
    j       fnc_main_return
    nop
  fnc_main_return:
    move    $sp, $fp
    lw      $31, 176($sp)
    lw      $fp, 180($sp)
    addiu   $sp, $sp, 184
    j       $31
    nop

