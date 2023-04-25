# MIPS assembly generated using lscc

.data

    .globl array
    .align 4
  array:
    .space 4



.text

    .globl binarySearch
    .align 4
binarySearch:
    addiu   $sp, $sp, -104
    sw      $fp, 100($sp)
    sw      $31, 96($sp)
    move    $fp, $sp
    sw      $4, 104($fp)
    sw      $5, 108($fp)
    sw      $6, 112($fp)
    sw      $7, 116($fp)
  fnc_binarySearch_code:
  while1_begin:
  while1_condition:
    li      $24, 1
    lw     $8, 108($fp)
    nop
    lw     $9, 112($fp)
    nop
    move    $10, $8
    move    $11, $9
    slt     $25, $11, $10
    beq     $25, $0, $L1
    nop
    li      $24, 0
   $L1:
    sw      $24, 72($fp)
    nop
    lw     $8, 72($fp)
    nop
    move    $10, $8
    bne     $10, $0, $L2
    nop
    j       while1_end
    nop
   $L2:
    lw     $8, 112($fp)
    nop
    lw     $10, 108($fp)
    nop
    move    $12, $8
    move    $14, $10
    subu    $8, $12, $14
    sw      $8, 80($fp)
    nop
    li      $8, 2
    sw      $8, 52($fp)
    nop
    lw     $8, 80($fp)
    nop
    lw     $10, 52($fp)
    nop
    move    $12, $8
    move    $14, $10
    div     $12, $14
    nop
    mflo    $8
    sw      $8, 36($fp)
    nop
    lw     $8, 108($fp)
    nop
    lw     $10, 36($fp)
    nop
    move    $12, $8
    move    $14, $10
    addu    $8, $12, $14
    sw      $8, 8($fp)
    nop
    addiu   $8, $fp, 88
    sw      $8, 32($fp)
    nop
    lw     $3, 32($fp)
    nop
    lw     $8, 8($fp)
    nop
    move    $10, $8
    sw      $10, 0($3)
    nop
  if1_begin:
    lui     $2, %hi(array)
    addiu   $2, $2, %lo(array)
    lw     $8, 0($2)
    nop
    lw     $10, 88($fp)
    nop
    li      $11, 4
    mul     $10, $10, $11
    addu    $14, $8, $10
    sw      $14, 16($fp)
    nop
    lw      $2, 16($fp)
    nop
    addiu   $3, $fp, 40
    lw      $8, 0($2)
    nop
    sw      $8, 0($3)
    li      $24, 1
    lw     $8, 40($fp)
    nop
    lw     $9, 104($fp)
    nop
    move    $10, $8
    move    $11, $9
    beq     $10, $11, $L3
    nop
    li      $24, 0
   $L3:
    sw      $24, 48($fp)
    nop
    lw     $8, 48($fp)
    nop
    move    $10, $8
    bne     $10, $0, $L4
    nop
    j       if1_false
    nop
   $L4:
  if1_true:
    lw     $8, 88($fp)
    nop
    move    $2, $8
    j       fnc_binarySearch_return
    nop
    j       if1_end
    nop
  if1_false:
  if1_end:
  if2_begin:
    lui     $2, %hi(array)
    addiu   $2, $2, %lo(array)
    lw     $8, 0($2)
    nop
    lw     $10, 88($fp)
    nop
    li      $11, 4
    mul     $10, $10, $11
    addu    $14, $8, $10
    sw      $14, 20($fp)
    nop
    lw      $2, 20($fp)
    nop
    addiu   $3, $fp, 44
    lw      $8, 0($2)
    nop
    sw      $8, 0($3)
    li      $24, 1
    lw     $8, 44($fp)
    nop
    lw     $9, 104($fp)
    nop
    move    $10, $8
    move    $11, $9
    slt     $25, $10, $11
    bne     $25, $0, $L5
    nop
    li      $24, 0
   $L5:
    sw      $24, 68($fp)
    nop
    lw     $8, 68($fp)
    nop
    move    $10, $8
    bne     $10, $0, $L6
    nop
    j       if2_false
    nop
   $L6:
  if2_true:
    addiu   $8, $fp, 108
    sw      $8, 28($fp)
    nop
    li      $8, 1
    sw      $8, 56($fp)
    nop
    lw     $8, 88($fp)
    nop
    lw     $10, 56($fp)
    nop
    move    $12, $8
    move    $14, $10
    addu    $8, $12, $14
    sw      $8, 12($fp)
    nop
    lw     $3, 28($fp)
    nop
    lw     $8, 12($fp)
    nop
    move    $10, $8
    sw      $10, 0($3)
    nop
    j       if2_end
    nop
  if2_false:
    addiu   $8, $fp, 112
    sw      $8, 24($fp)
    nop
    li      $8, 1
    sw      $8, 60($fp)
    nop
    lw     $8, 88($fp)
    nop
    lw     $10, 60($fp)
    nop
    move    $12, $8
    move    $14, $10
    subu    $8, $12, $14
    sw      $8, 84($fp)
    nop
    lw     $3, 24($fp)
    nop
    lw     $8, 84($fp)
    nop
    move    $10, $8
    sw      $10, 0($3)
    nop
  if2_end:
    j       while1_begin
    nop
  while1_end:
    li      $8, 1
    sw      $8, 64($fp)
    nop
    lw     $8, 64($fp)
    nop
    subu    $10, $0, $8
    sw      $10, 76($fp)
    nop
    lw     $8, 76($fp)
    nop
    move    $2, $8
    j       fnc_binarySearch_return
    nop
  fnc_binarySearch_return:
    move    $sp, $fp
    lw      $31, 96($sp)
    lw      $fp, 100($sp)
    addiu   $sp, $sp, 104
    j       $31
    nop

    .globl main
    .align 4
main:
    addiu   $sp, $sp, -80
    sw      $fp, 76($sp)
    sw      $31, 72($sp)
    move    $fp, $sp
    sw      $4, 80($fp)
    sw      $5, 84($fp)
    sw      $6, 88($fp)
    sw      $7, 92($fp)
  fnc_main_code:
    li      $8, 4
    sw      $8, 44($fp)
    nop
    li      $8, 4
    sw      $8, 48($fp)
    nop
    lw     $8, 44($fp)
    nop
    lw     $10, 48($fp)
    nop
    move    $12, $8
    move    $14, $10
    div     $12, $14
    nop
    mflo    $8
    sw      $8, 20($fp)
    nop
    addiu   $8, $fp, 56
    sw      $8, 8($fp)
    nop
    lw     $3, 8($fp)
    nop
    lw     $8, 20($fp)
    nop
    move    $10, $8
    sw      $10, 0($3)
    nop
    li      $8, 4
    sw      $8, 28($fp)
    nop
    addiu   $8, $fp, 64
    sw      $8, 16($fp)
    nop
    lw     $3, 16($fp)
    nop
    lw     $8, 28($fp)
    nop
    move    $10, $8
    sw      $10, 0($3)
    nop
    move    $8, $0
    sw      $8, 32($fp)
    nop
    li      $8, 1
    sw      $8, 36($fp)
    nop
    lw     $8, 56($fp)
    nop
    lw     $10, 36($fp)
    nop
    move    $12, $8
    move    $14, $10
    subu    $8, $12, $14
    sw      $8, 52($fp)
    nop
    addiu   $sp, $sp, -24
    lw     $8, 64($fp)
    nop
    move    $10, $8
    sw      $10, 0($sp)
    lw     $8, 32($fp)
    nop
    move    $10, $8
    sw      $10, 4($sp)
    lw     $8, 52($fp)
    nop
    move    $10, $8
    sw      $10, 8($sp)
    lw      $4, 0($sp)
    lw      $5, 4($sp)
    lw      $6, 8($sp)
    lw      $7, 12($sp)
    .option pic0
    jal     binarySearch
    nop
    .option pic2
    sw      $2, 24($fp)
    nop
    addiu   $sp, $sp, 24
    addiu   $8, $fp, 60
    sw      $8, 12($fp)
    nop
    lw     $3, 12($fp)
    nop
    lw     $8, 24($fp)
    nop
    move    $10, $8
    sw      $10, 0($3)
    nop
    move    $8, $0
    sw      $8, 40($fp)
    nop
    lw     $8, 40($fp)
    nop
    move    $2, $8
    j       fnc_main_return
    nop
  fnc_main_return:
    move    $sp, $fp
    lw      $31, 72($sp)
    lw      $fp, 76($sp)
    addiu   $sp, $sp, 80
    j       $31
    nop