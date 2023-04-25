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
addiu $sp $sp -104 
sw $fp 100($sp) 
sw $31 96($sp) 
move $fp $sp 
sw $4 104($fp) 
sw $5 108($fp) 
sw $6 112($fp) 
sw $7 116($fp) 
fnc_binarySearch_code: 
while1_begin: 
while1_condition: 
li $9 1 
lw $8 108($fp) 
nop 
lw $25 112($fp) 
nop 
move $24 $8 
move $15 $25 
slt $14 $15 $24 
beq $14 $0 $L1 
nop 
li $13 0 
$L1: 
sw $13 72($fp) 
nop 
lw $12 72($fp) 
nop 
move $11 $12 
bne $11 $0 $L2 
nop 
j while1_end 
nop 
$L2: 
lw $10 112($fp) 
nop 
lw $9 108($fp) 
nop 
move $8 $10 
move $25 $9 
subu $24 $8 $25 
sw $24 80($fp) 
nop 
li $15 2 
sw $15 52($fp) 
nop 
lw $14 80($fp) 
nop 
lw $13 52($fp) 
nop 
move $12 $14 
move $11 $13 
div $12 $11 
nop 
mflo $10 
sw $10 36($fp) 
nop 
lw $9 108($fp) 
nop 
lw $8 36($fp) 
nop 
move $25 $9 
move $24 $8 
addu $15 $25 $24 
sw $15 8($fp) 
nop 
addiu $14 $fp 88 
sw $14 32($fp) 
nop 
lw $3 32($fp) 
nop 
lw $13 8($fp) 
nop 
move $12 $13 
sw $12 0($3) 
nop 
if1_begin: 
lui $2 %hi(array) 
addiu $2 $2 %lo(array) 
lw $11 0($2) 
nop 
lw $10 88($fp) 
nop 
li $9 4 
mul $8 $10 $9 
addu $25 $11 $8 
sw $25 16($fp) 
nop 
lw $2 16($fp) 
nop 
addiu $3 $fp 40 
lw $24 0($2) 
nop 
sw $24 0($3) 
li $15 1 
lw $14 40($fp) 
nop 
lw $13 104($fp) 
nop 
move $12 $14 
move $11 $13 
beq $12 $11 $L3 
nop 
li $10 0 
$L3: 
sw $10 48($fp) 
nop 
lw $9 48($fp) 
nop 
move $8 $9 
bne $8 $0 $L4 
nop 
j if1_false 
nop 
$L4: 
if1_true: 
lw $25 88($fp) 
nop 
move $2 $25 
j fnc_binarySearch_return 
nop 
j if1_end 
nop 
if1_false: 
if1_end: 
if2_begin: 
lui $2 %hi(array) 
addiu $2 $2 %lo(array) 
lw $24 0($2) 
nop 
lw $15 88($fp) 
nop 
li $14 4 
mul $13 $15 $14 
addu $12 $24 $13 
sw $12 20($fp) 
nop 
lw $2 20($fp) 
nop 
addiu $3 $fp 44 
lw $11 0($2) 
nop 
sw $11 0($3) 
li $10 1 
lw $9 44($fp) 
nop 
lw $8 104($fp) 
nop 
move $25 $9 
move $24 $8 
slt $15 $25 $24 
bne $15 $0 $L5 
nop 
li $14 0 
$L5: 
sw $14 68($fp) 
nop 
lw $13 68($fp) 
nop 
move $12 $13 
bne $12 $0 $L6 
nop 
j if2_false 
nop 
$L6: 
if2_true: 
addiu $11 $fp 108 
sw $11 28($fp) 
nop 
li $10 1 
sw $10 56($fp) 
nop 
lw $9 88($fp) 
nop 
lw $8 56($fp) 
nop 
move $25 $9 
move $24 $8 
addu $15 $25 $24 
sw $15 12($fp) 
nop 
lw $3 28($fp) 
nop 
lw $14 12($fp) 
nop 
move $13 $14 
sw $13 0($3) 
nop 
j if2_end 
nop 
if2_false: 
addiu $12 $fp 112 
sw $12 24($fp) 
nop 
li $11 1 
sw $11 60($fp) 
nop 
lw $10 88($fp) 
nop 
lw $9 60($fp) 
nop 
move $8 $10 
move $25 $9 
subu $24 $8 $25 
sw $24 84($fp) 
nop 
lw $3 24($fp) 
nop 
lw $15 84($fp) 
nop 
move $14 $15 
sw $14 0($3) 
nop 
if2_end: 
j while1_begin 
nop 
while1_end: 
li $13 1 
sw $13 64($fp) 
nop 
lw $12 64($fp) 
nop 
subu $11 $0 $12 
sw $11 76($fp) 
nop 
lw $10 76($fp) 
nop 
move $2 $10 
j fnc_binarySearch_return 
nop 
fnc_binarySearch_return: 
move $sp $fp 
lw $31 96($sp) 
lw $fp 100($sp) 
addiu $sp $sp 104 
j $31 
nop 

.globl main 
.align 4 
main: 
addiu $sp $sp -80 
sw $fp 76($sp) 
sw $31 72($sp) 
move $fp $sp 
sw $4 80($fp) 
sw $5 84($fp) 
sw $6 88($fp) 
sw $7 92($fp) 
fnc_main_code: 
li $9 4 
sw $9 44($fp) 
nop 
li $8 4 
sw $8 48($fp) 
nop 
lw $25 44($fp) 
nop 
lw $24 48($fp) 
nop 
move $15 $25 
move $14 $24 
div $15 $14 
nop 
mflo $13 
sw $13 20($fp) 
nop 
addiu $12 $fp 56 
sw $12 8($fp) 
nop 
lw $3 8($fp) 
nop 
lw $11 20($fp) 
nop 
move $10 $11 
sw $10 0($3) 
nop 
li $9 4 
sw $9 28($fp) 
nop 
addiu $8 $fp 64 
sw $8 16($fp) 
nop 
lw $3 16($fp) 
nop 
lw $25 28($fp) 
nop 
move $24 $25 
sw $24 0($3) 
nop 
move $15 $0 
sw $15 32($fp) 
nop 
li $14 1 
sw $14 36($fp) 
nop 
lw $13 56($fp) 
nop 
lw $12 36($fp) 
nop 
move $11 $13 
move $10 $12 
subu $9 $11 $10 
sw $9 52($fp) 
nop 
addiu $sp $sp -24 
lw $8 64($fp) 
nop 
move $25 $8 
sw $25 0($sp) 
lw $24 32($fp) 
nop 
move $15 $24 
sw $15 4($sp) 
lw $14 52($fp) 
nop 
move $13 $14 
sw $13 8($sp) 
lw $4 0($sp) 
lw $5 4($sp) 
lw $6 8($sp) 
lw $7 12($sp) 
.option pic0 
jal binarySearch 
nop 
.option pic2 
sw $2 24($fp) 
nop 
addiu $sp $sp 24 
addiu $12 $fp 60 
sw $12 12($fp) 
nop 
lw $3 12($fp) 
nop 
lw $11 24($fp) 
nop 
move $10 $11 
sw $10 0($3) 
nop 
move $9 $0 
sw $9 40($fp) 
nop 
lw $8 40($fp) 
nop 
move $2 $8 
j fnc_main_return 
nop 
fnc_main_return: 
move $sp $fp 
lw $31 72($sp) 
lw $fp 76($sp) 
addiu $sp $sp 80 
j $31 
nop 
