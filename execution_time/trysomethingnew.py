import json
import os 
import sys
sys.path.append('../')
from config import Constants
import re
import logging
import random


def del_code_from_start_end(start,end,code):
    for i in range(start,end+1):
        code[i] = []
    return code

def merge_dictionaries(iter_dict,temp_dict):
    for key in temp_dict.keys():
        if key in iter_dict.keys():
            iter_dict[key] += temp_dict[key]
        else:
            iter_dict[key] = temp_dict[key]
    return iter_dict

def mul_dict(iter_dict,x):
    for key in iter_dict.keys():
        iter_dict[key] *= x
    return iter_dict


def get_for_count(name,info,code,instructions,n):
    type_count = {}
    count = 0
    # 1 time for begin to condition
    start_label = name + "_begin:"
    end_label = name + "_condition:"
    start = info[start_label]
    end = info[end_label]
    count,type_count = get_instr_between_line_nos(start,end,code,instructions,type_count,count,1)
    # n times for1 condition to for1 end -3nop -1j
    start_label = name + "_condition:"
    end_label = name + "_end:"
    start = info[start_label]
    end = info[end_label]
    count,type_count = get_instr_between_line_nos(start,end,code,instructions,type_count,count,n)
    count -= 4 * n
    type_count['nop'] -= 3 * n
    type_count['j'] -= 1 * n
    # 1 time for condition to for_body 1nop
    start_label = name + "_condition:"
    end_label = name + "_body:"
    start = info[start_label]
    end = info[end_label]
    count,type_count = get_instr_between_line_nos(start,end,code,instructions,type_count,count,1)
    count -= 1
    type_count['nop'] -= 1
    # delete code
    start_label = name + "_begin:"
    end_label = name + "_end:"
    start = info[start_label]
    end = info[end_label]
    updated_code = del_code_from_start_end(start,end,code)
    return count, type_count, updated_code


def get_while_count(name,info,code,instructions,n):
    type_count = {}
    count = 0
    # n time while_begin to while_end 
    start_label = name + "_begin:"
    end_label = name + "_end:"
    start = info[start_label]
    end = info[end_label]
    count,type_count = get_instr_between_line_nos(start,end,code,instructions,type_count,count,n)
    count -= 4 * n
    type_count['nop'] -= 3 * n
    type_count['j'] -= 1 * n
    # 1 time 
    end_label = ['j', name + "_end"]
    print(f"end_label {end_label}")
    for i in range(start,end):
        if code[i] == end_label:
            end = i+1
            break
    count,type_count = get_instr_between_line_nos(start,end,code,instructions,type_count,count,1)
    start_label = name + "_begin:"
    end_label = name + "_end:"
    start = info[start_label]
    end = info[end_label]
    updated_code = del_code_from_start_end(start,end,code)
    return count, type_count, updated_code

def if_count(name,info,code,instructions,n):
    type_count = {}
    count = 0
    if n == 0:
        print("taken else branch")
        start_label = name + "_begin:"
        end_label = name + "_true:"
        start = info[start_label]
        end = info[end_label]
        count,type_count = get_instr_between_line_nos(start,end,code,instructions,type_count,count,1)
        start_label = name + "_false:"
        end_label = name + "_end:"
        start = info[start_label]
        end = info[end_label]
        count,type_count = get_instr_between_line_nos(start,end,code,instructions,type_count,count,1)
        count -= 1
        type_count['nop'] -= 1
    else:
        print("taken if branch")
        start_label = name + "_begin:"
        end_label = name + "_false:"
        start = info[start_label]
        end = info[end_label]
        count,type_count = get_instr_between_line_nos(start,end,code,instructions,type_count,count,1)
        count -= 4 
        type_count['nop'] -= 3 
        type_count['j'] -= 1 
    # print(f"Count: {count}, type_cnt: {type_count}")
    start_label = name + "_begin:"
    end_label = name + "_end:"
    start = info[start_label]
    end = info[end_label]
    updated_code = del_code_from_start_end(start,end,code)
    return count, type_count, updated_code

def get_instr_between_line_nos(start,end,original_code,instructions,type_count,count,n=1):
    for i in range(start,end):
        temp = original_code[i][0] if original_code[i] else []
        if temp in instructions:
            count += n
            if temp in type_count.keys():
                type_count[temp] += n
            else:
                type_count[temp] = n
            # print(f"{temp}: {type_count[temp]}")

    # print(f"Count: {count}, type_cnt: {type_count}")
    return count, type_count

# create a logger object
logger = logging.getLogger()
logger.setLevel(logging.DEBUG)

# create a formatter
formatter = logging.Formatter('%(asctime)s - %(message)s')
mips_read_write_file_path = os.path.join(Constants.working_dir,'register_distribution',Constants.mips_read_write)
read_write_json = json.loads(open(mips_read_write_file_path).read())
# create a console handler
console_handler = logging.StreamHandler()
console_handler.setLevel(logging.DEBUG)
console_handler.setFormatter(formatter)

# add the console handler to the logger
logger.addHandler(console_handler)

# Define a function to read in the MIPS code from a file
def read_file(file_path):
    with open(file_path, 'r') as f:
        mips_code = f.readlines()
    # print(mips_code)
    return mips_code


mips_read_write_file_path = os.path.join(Constants.working_dir,'register_distribution',Constants.mips_read_write)
mips_code_file_path = os.path.join(Constants.working_dir,Constants.asm_file_name)

read_write_json = json.loads(open(mips_read_write_file_path).read())
#print(read_write_json)

mips_code = read_file(mips_code_file_path)
# print(mips_code)
original_code = {}
instructions = list(read_write_json.keys())
test_line_numbers = []
test_line_numbers_inst = {}
opcodes = list (read_write_json.keys())
for line_number,line in enumerate(mips_code):
    # print(line)
    instruction = line.strip().replace("'","").replace(",","").split(" ")
    # print(instruction,end="  ")
    if '' in instruction   :
        instruction = [i for i in instruction   if i!= '']
    # print(instruction)
    original_code[line_number] =  instruction

branching_dict = {}
stack = []
for instr in original_code:
    # print(f"line {instr} : {original_code[instr]}")
    if len(original_code[instr]) == 1:
        label = original_code[instr][0]
        if "for" in label or "if" in label or "while" in label:
            b_type = label.split("_")[0]
            if 'begin' in label or "end" in label:
                stack.append(label)
            if b_type not in branching_dict.keys():
                branching_dict[b_type] = {}
            branching_dict[b_type][label] = instr

closing_stack = []
updated_code = original_code.copy()
print(branching_dict)
print()
print()
# print(stack)
count = 0
type_count = {}
print(stack[::-1])
final_dict = {}
for label in stack[::-1]:
    print(f"incoming label {label}")
    if "end" in label:
        print(f"adding to stack {label}")
        closing_stack.insert(0,label)
    if "begin" in label:
        # print(closing_stack)
        # print(label)
        # print(label.split("_")[0] + "_end:")
        n = random.randint(1,4)
        x = n
        print(f"For label {label}: randint {n}")
        name = label.split("_")[0]
        info = branching_dict[name]
        if "if" in label:
            # change it
            n = n%2
            n, type_count, updated_code = if_count(name,info,updated_code,instructions,n)
            # changeit
            # call if thing here
        else:
            T = 0
            if "for" in label:
                n, type_count, updated_code = get_for_count(name,info,updated_code,instructions,n)
            elif "while" in label:
                n, type_count, updated_code = get_while_count(name,info,updated_code,instructions,n)
            # print(n)
            # print(type_count)
            iter_dict = {}
            while closing_stack[0] != label.split("_")[0] + "_end:":
                temp,temp_dict = closing_stack.pop(0)
                iter_dict = merge_dictionaries(iter_dict,temp_dict)
                print(f"Popped out {temp}")
                T += temp
                print(f"t={T}")
            if T != 0:
                iter_dict = mul_dict(iter_dict,x)
                type_count = iter_dict
                n = x*T
        print(f"popped: {closing_stack.pop(0)}")
        print(f"Inserting {n} into stack")
        closing_stack.insert(0,(n,type_count))
    print(f"stack: {closing_stack}")


# print(f"updated: {updated_code}")
final_dict = closing_stack[0][1]
ins = 0
for key in updated_code:
    instr = updated_code[key]
    # print(f"inst {instr}")
    if instr and instr[0] in instructions:
        ins += 1
        if instr[0] in final_dict.keys():
            final_dict[instr[0]] += 1
        else:
            final_dict[instr[0]] = 1


mips_power_file_path = os.path.join(Constants.working_dir,'execution_time',Constants.power_consump)
power_json = json.loads(open(mips_power_file_path).read())

print()
print()
print()
print()
print("______________________________________________________________________________")
print("Hey user:")
total_power_consumed = 0
for key in final_dict.keys():
    val = final_dict[key]
    power_per_inst = power_json[key]['Power Consumption']
    total_power_consumed += val * power_per_inst
print(f"Your code runs following instructions")
print(final_dict)
print(f"Total power consumed is {total_power_consumed/1000000}uW")
print("______________________________________________________________________________")

# print(ins)            
# print(f"closing_stack: {closing_stack}")
# total_ins = closing_stack[0][0]  + ins 
# print()
# print()
# print()
# print()
# print("______________________________________________________________________________")
# print("Hey user:")
# print(f"It will take {total_ins/Constants.freq_mips}s to run your code")
# print("______________________________________________________________________________")



