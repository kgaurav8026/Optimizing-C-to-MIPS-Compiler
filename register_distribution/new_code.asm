
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
li $25 10 
sw $25 160($fp) 
nop 
addiu $24 $fp 256 
sw $24 120($fp) 
nop 
lw $3 120($fp) 
nop 
lw $15 160($fp) 
nop 
move $14 $15 
sw $14 0($3) 
nop 
li $13 12 
sw $13 172($fp) 
nop 
addiu $12 $fp 252 
sw $12 116($fp) 
nop 
lw $3 116($fp) 
nop 
lw $11 172($fp) 
nop 
move $10 $11 
sw $10 0($3) 
nop 
li $9 14 
sw $9 176($fp) 
nop 
addiu $8 $fp 260 
sw $8 124($fp) 
nop 
lw $3 124($fp) 
nop 
lw $25 176($fp) 
nop 
move $24 $25 
sw $24 0($3) 
nop 
move $15 $0 
sw $15 180($fp) 
nop 
addiu $14 $fp 236 
sw $14 76($fp) 
nop 
lw $3 76($fp) 
nop 
lw $13 180($fp) 
nop 
move $12 $13 
sw $12 0($3) 
nop 
li $11 1 
sw $11 184($fp) 
nop 
addiu $10 $fp 240 
sw $10 88($fp) 
nop 
lw $3 88($fp) 
nop 
lw $9 184($fp) 
nop 
move $8 $9 
sw $8 0($3) 
nop 
for1_begin: 
addiu $25 $fp 244 
sw $25 100($fp) 
nop 
move $24 $0 
sw $24 188($fp) 
nop 
lw $3 100($fp) 
nop 
lw $15 188($fp) 
nop 
move $14 $15 
sw $14 0($3) 
nop 
for1_condition: 
li $13 1 
lw $12 244($fp) 
nop 
lw $11 256($fp) 
nop 
move $10 $12 
move $9 $11 
slt $8 $10 $9 
bne $8 $0 $L1 
nop 
li $25 0 
$L1: 
sw $25 204($fp) 
nop 
lw $24 204($fp) 
nop 
move $15 $24 
bne $15 $0 $L2 
nop 
j for1_end 
nop 
$L2: 
for1_body: 
addiu $14 $fp 232 
sw $14 68($fp) 
nop 
lw $13 232($fp) 
nop 
lw $12 236($fp) 
nop 
move $11 $13 
move $10 $12 
addu $9 $11 $10 
sw $9 48($fp) 
nop 
lw $3 68($fp) 
nop 
lw $8 48($fp) 
nop 
move $25 $8 
sw $25 0($3) 
nop 
for2_begin: 
addiu $24 $fp 248 
sw $24 108($fp) 
nop 
move $15 $0 
sw $15 192($fp) 
nop 
lw $3 108($fp) 
nop 
lw $14 192($fp) 
nop 
move $13 $14 
sw $13 0($3) 
nop 
for2_condition: 
li $12 1 
lw $11 248($fp) 
nop 
lw $10 252($fp) 
nop 
move $9 $11 
move $8 $10 
slt $25 $9 $8 
bne $25 $0 $L3 
nop 
li $24 0 
$L3: 
sw $24 208($fp) 
nop 
lw $15 208($fp) 
nop 
move $14 $15 
bne $14 $0 $L4 
nop 
j for2_end 
nop 
$L4: 
for2_body: 
addiu $13 $fp 236 
sw $13 80($fp) 
nop 
lw $12 236($fp) 
nop 
lw $11 240($fp) 
nop 
move $10 $12 
move $9 $11 
addu $8 $10 $9 
sw $8 52($fp) 
nop 
lw $3 80($fp) 
nop 
lw $25 52($fp) 
nop 
move $24 $25 
sw $24 0($3) 
nop 
addiu $15 $fp 240 
sw $15 92($fp) 
nop 
lw $14 232($fp) 
nop 
lw $13 236($fp) 
nop 
move $12 $14 
move $11 $13 
addu $10 $12 $11 
sw $10 56($fp) 
nop 
lw $3 92($fp) 
nop 
lw $9 56($fp) 
nop 
move $8 $9 
sw $8 0($3) 
nop 
while1_begin: 
while1_condition: 
li $25 1 
sw $25 196($fp) 
nop 
li $24 1 
lw $15 260($fp) 
nop 
lw $14 196($fp) 
nop 
move $13 $15 
move $12 $14 
slt $11 $12 $13 
bne $11 $0 $L5 
nop 
li $10 0 
$L5: 
sw $10 140($fp) 
nop 
lw $9 140($fp) 
nop 
move $8 $9 
bne $8 $0 $L6 
nop 
j while1_end 
nop 
$L6: 
lw $25 260($fp) 
nop 
move $24 $25 
sw $24 220($fp) 
nop 
lw $15 260($fp) 
nop 
addiu $14 $15 -1 
sw $14 148($fp) 
nop 
addiu $13 $fp 260 
sw $13 128($fp) 
nop 
lw $3 128($fp) 
nop 
lw $12 148($fp) 
nop 
move $11 $12 
sw $11 0($3) 
nop 
j while1_begin 
nop 
while1_end: 
if1_begin: 
li $10 1 
lw $9 236($fp) 
nop 
lw $8 240($fp) 
nop 
move $25 $9 
move $24 $8 
slt $15 $24 $25 
bne $15 $0 $L7 
nop 
li $14 0 
$L7: 
sw $14 144($fp) 
nop 
lw $13 144($fp) 
nop 
move $12 $13 
bne $12 $0 $L8 
nop 
j if1_false 
nop 
$L8: 
if1_true: 
addiu $11 $fp 236 
sw $11 84($fp) 
nop 
lw $10 236($fp) 
nop 
lw $9 240($fp) 
nop 
move $8 $10 
move $25 $9 
addu $24 $8 $25 
sw $24 60($fp) 
nop 
lw $3 84($fp) 
nop 
lw $15 60($fp) 
nop 
move $14 $15 
sw $14 0($3) 
nop 
j if1_end 
nop 
if1_false: 
addiu $13 $fp 240 
sw $13 96($fp) 
nop 
lw $12 240($fp) 
nop 
lw $11 236($fp) 
nop 
move $10 $12 
move $9 $11 
addu $8 $10 $9 
sw $8 64($fp) 
nop 
lw $3 96($fp) 
nop 
lw $25 64($fp) 
nop 
move $24 $25 
sw $24 0($3) 
nop 
if1_end: 
for2_afterthought: 
lw $15 248($fp) 
nop 
move $14 $15 
sw $14 224($fp) 
nop 
lw $13 248($fp) 
nop 
addiu $12 $13 1 
sw $12 152($fp) 
nop 
addiu $11 $fp 248 
sw $11 112($fp) 
nop 
lw $3 112($fp) 
nop 
lw $10 152($fp) 
nop 
move $9 $10 
sw $9 0($3) 
nop 
j for2_condition 
nop 
for2_end: 
if2_begin: 
li $8 2 
sw $8 200($fp) 
nop 
lw $25 232($fp) 
nop 
lw $24 200($fp) 
nop 
move $15 $25 
move $14 $24 
div $15 $14 
nop 
mfhi $13 
sw $13 212($fp) 
nop 
move $12 $0 
sw $12 164($fp) 
nop 
li $11 1 
lw $10 212($fp) 
nop 
lw $9 164($fp) 
nop 
move $8 $10 
move $25 $9 
beq $8 $25 $L9 
nop 
li $24 0 
$L9: 
sw $24 136($fp) 
nop 
lw $15 136($fp) 
nop 
move $14 $15 
bne $14 $0 $L10 
nop 
j if2_false 
nop 
$L10: 
if2_true: 
addiu $13 $fp 232 
sw $13 72($fp) 
nop 
li $12 2 
sw $12 168($fp) 
nop 
lw $11 232($fp) 
nop 
lw $10 168($fp) 
nop 
move $9 $11 
move $8 $10 
mult $9 $8 
nop 
mflo $25 
sw $25 216($fp) 
nop 
lw $3 72($fp) 
nop 
lw $24 216($fp) 
nop 
move $15 $24 
sw $15 0($3) 
nop 
j if2_end 
nop 
if2_false: 
if2_end: 
for1_afterthought: 
lw $14 244($fp) 
nop 
move $13 $14 
sw $13 228($fp) 
nop 
lw $12 244($fp) 
nop 
addiu $11 $12 1 
sw $11 156($fp) 
nop 
addiu $10 $fp 244 
sw $10 104($fp) 
nop 
lw $3 104($fp) 
nop 
lw $9 156($fp) 
nop 
move $8 $9 
sw $8 0($3) 
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

