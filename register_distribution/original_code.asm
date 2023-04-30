
# MIPS assembly generated using lscc 

.data 



.text 

.globl main 
.align 4 
main: 
addiu $sp $sp -272 
sw $fp 268($sp) 
sw $31 264($sp) 
move $fp $sp 
sw $4 272($fp) 
sw $5 276($fp) 
sw $6 280($fp) 
sw $7 284($fp) 
addiu $8 $fp 8 
sw $8 132($fp) 
fnc_main_code: 
li $8 10 
sw $8 160($fp) 
nop 
addiu $8 $fp 256 
sw $8 120($fp) 
nop 
lw $3 120($fp) 
nop 
lw $8 160($fp) 
nop 
move $10 $8 
sw $10 0($3) 
nop 
li $8 12 
sw $8 172($fp) 
nop 
addiu $8 $fp 252 
sw $8 116($fp) 
nop 
lw $3 116($fp) 
nop 
lw $8 172($fp) 
nop 
move $10 $8 
sw $10 0($3) 
nop 
li $8 14 
sw $8 176($fp) 
nop 
addiu $8 $fp 260 
sw $8 124($fp) 
nop 
lw $3 124($fp) 
nop 
lw $8 176($fp) 
nop 
move $10 $8 
sw $10 0($3) 
nop 
move $8 $0 
sw $8 180($fp) 
nop 
addiu $8 $fp 236 
sw $8 76($fp) 
nop 
lw $3 76($fp) 
nop 
lw $8 180($fp) 
nop 
move $10 $8 
sw $10 0($3) 
nop 
li $8 1 
sw $8 184($fp) 
nop 
addiu $8 $fp 240 
sw $8 88($fp) 
nop 
lw $3 88($fp) 
nop 
lw $8 184($fp) 
nop 
move $10 $8 
sw $10 0($3) 
nop 
for1_begin: 
addiu $8 $fp 244 
sw $8 100($fp) 
nop 
move $8 $0 
sw $8 188($fp) 
nop 
lw $3 100($fp) 
nop 
lw $8 188($fp) 
nop 
move $10 $8 
sw $10 0($3) 
nop 
for1_condition: 
li $24 1 
lw $8 244($fp) 
nop 
lw $9 256($fp) 
nop 
move $10 $8 
move $11 $9 
slt $25 $10 $11 
bne $25 $0 $L1 
nop 
li $24 0 
$L1: 
sw $24 204($fp) 
nop 
lw $8 204($fp) 
nop 
move $10 $8 
bne $10 $0 $L2 
nop 
j for1_end 
nop 
$L2: 
for1_body: 
addiu $8 $fp 232 
sw $8 68($fp) 
nop 
lw $8 232($fp) 
nop 
lw $10 236($fp) 
nop 
move $12 $8 
move $14 $10 
addu $8 $12 $14 
sw $8 48($fp) 
nop 
lw $3 68($fp) 
nop 
lw $8 48($fp) 
nop 
move $10 $8 
sw $10 0($3) 
nop 
for2_begin: 
addiu $8 $fp 248 
sw $8 108($fp) 
nop 
move $8 $0 
sw $8 192($fp) 
nop 
lw $3 108($fp) 
nop 
lw $8 192($fp) 
nop 
move $10 $8 
sw $10 0($3) 
nop 
for2_condition: 
li $24 1 
lw $8 248($fp) 
nop 
lw $9 252($fp) 
nop 
move $10 $8 
move $11 $9 
slt $25 $10 $11 
bne $25 $0 $L3 
nop 
li $24 0 
$L3: 
sw $24 208($fp) 
nop 
lw $8 208($fp) 
nop 
move $10 $8 
bne $10 $0 $L4 
nop 
j for2_end 
nop 
$L4: 
for2_body: 
addiu $8 $fp 236 
sw $8 80($fp) 
nop 
lw $8 236($fp) 
nop 
lw $10 240($fp) 
nop 
move $12 $8 
move $14 $10 
addu $8 $12 $14 
sw $8 52($fp) 
nop 
lw $3 80($fp) 
nop 
lw $8 52($fp) 
nop 
move $10 $8 
sw $10 0($3) 
nop 
addiu $8 $fp 240 
sw $8 92($fp) 
nop 
lw $8 232($fp) 
nop 
lw $10 236($fp) 
nop 
move $12 $8 
move $14 $10 
addu $8 $12 $14 
sw $8 56($fp) 
nop 
lw $3 92($fp) 
nop 
lw $8 56($fp) 
nop 
move $10 $8 
sw $10 0($3) 
nop 
while1_begin: 
while1_condition: 
li $8 1 
sw $8 196($fp) 
nop 
li $24 1 
lw $8 260($fp) 
nop 
lw $9 196($fp) 
nop 
move $10 $8 
move $11 $9 
slt $25 $11 $10 
bne $25 $0 $L5 
nop 
li $24 0 
$L5: 
sw $24 140($fp) 
nop 
lw $8 140($fp) 
nop 
move $10 $8 
bne $10 $0 $L6 
nop 
j while1_end 
nop 
$L6: 
lw $8 260($fp) 
nop 
move $10 $8 
sw $10 220($fp) 
nop 
lw $8 260($fp) 
nop 
addiu $10 $8 -1 
sw $10 148($fp) 
nop 
addiu $8 $fp 260 
sw $8 128($fp) 
nop 
lw $3 128($fp) 
nop 
lw $8 148($fp) 
nop 
move $10 $8 
sw $10 0($3) 
nop 
j while1_begin 
nop 
while1_end: 
if1_begin: 
li $24 1 
lw $8 236($fp) 
nop 
lw $9 240($fp) 
nop 
move $10 $8 
move $11 $9 
slt $25 $11 $10 
bne $25 $0 $L7 
nop 
li $24 0 
$L7: 
sw $24 144($fp) 
nop 
lw $8 144($fp) 
nop 
move $10 $8 
bne $10 $0 $L8 
nop 
j if1_false 
nop 
$L8: 
if1_true: 
addiu $8 $fp 236 
sw $8 84($fp) 
nop 
lw $8 236($fp) 
nop 
lw $10 240($fp) 
nop 
move $12 $8 
move $14 $10 
addu $8 $12 $14 
sw $8 60($fp) 
nop 
lw $3 84($fp) 
nop 
lw $8 60($fp) 
nop 
move $10 $8 
sw $10 0($3) 
nop 
j if1_end 
nop 
if1_false: 
addiu $8 $fp 240 
sw $8 96($fp) 
nop 
lw $8 240($fp) 
nop 
lw $10 236($fp) 
nop 
move $12 $8 
move $14 $10 
addu $8 $12 $14 
sw $8 64($fp) 
nop 
lw $3 96($fp) 
nop 
lw $8 64($fp) 
nop 
move $10 $8 
sw $10 0($3) 
nop 
if1_end: 
for2_afterthought: 
lw $8 248($fp) 
nop 
move $10 $8 
sw $10 224($fp) 
nop 
lw $8 248($fp) 
nop 
addiu $10 $8 1 
sw $10 152($fp) 
nop 
addiu $8 $fp 248 
sw $8 112($fp) 
nop 
lw $3 112($fp) 
nop 
lw $8 152($fp) 
nop 
move $10 $8 
sw $10 0($3) 
nop 
j for2_condition 
nop 
for2_end: 
if2_begin: 
li $8 2 
sw $8 200($fp) 
nop 
lw $8 232($fp) 
nop 
lw $10 200($fp) 
nop 
move $12 $8 
move $14 $10 
div $12 $14 
nop 
mfhi $8 
sw $8 212($fp) 
nop 
move $8 $0 
sw $8 164($fp) 
nop 
li $24 1 
lw $8 212($fp) 
nop 
lw $9 164($fp) 
nop 
move $10 $8 
move $11 $9 
beq $10 $11 $L9 
nop 
li $24 0 
$L9: 
sw $24 136($fp) 
nop 
lw $8 136($fp) 
nop 
move $10 $8 
bne $10 $0 $L10 
nop 
j if2_false 
nop 
$L10: 
if2_true: 
addiu $8 $fp 232 
sw $8 72($fp) 
nop 
li $8 2 
sw $8 168($fp) 
nop 
lw $8 232($fp) 
nop 
lw $10 168($fp) 
nop 
move $12 $8 
move $14 $10 
mult $12 $14 
nop 
mflo $8 
sw $8 216($fp) 
nop 
lw $3 72($fp) 
nop 
lw $8 216($fp) 
nop 
move $10 $8 
sw $10 0($3) 
nop 
j if2_end 
nop 
if2_false: 
if2_end: 
for1_afterthought: 
lw $8 244($fp) 
nop 
move $10 $8 
sw $10 228($fp) 
nop 
lw $8 244($fp) 
nop 
addiu $10 $8 1 
sw $10 156($fp) 
nop 
addiu $8 $fp 244 
sw $8 104($fp) 
nop 
lw $3 104($fp) 
nop 
lw $8 156($fp) 
nop 
move $10 $8 
sw $10 0($3) 
nop 
j for1_condition 
nop 
for1_end: 
fnc_main_return: 
move $sp $fp 
lw $31 264($sp) 
lw $fp 268($sp) 
addiu $sp $sp 272 
j $31 
nop 

