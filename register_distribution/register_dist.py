import json
import os 
import sys
sys.path.append('../')
from config import Constants
import re
import logging


def get_next_reg(reg_list):
    next_reg = reg_list.pop(0)
    reg_list.append(next_reg)
    return next_reg

# create a logger object
logger = logging.getLogger()
logger.setLevel(logging.DEBUG)

# create a formatter
formatter = logging.Formatter('%(asctime)s - %(message)s')

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
instructions = {}
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
    if set(instruction).intersection(set(Constants.temp_registers)) or set(instruction).intersection(set(Constants.saved_registers)):
        test_line_numbers.append(line_number)
        test_line_numbers_inst[line_number] = instruction
    if instruction and instruction[0] in opcodes:
    #     print(f"{instruction} {read_write_json[instruction[0]]}")
        temp = read_write_json[instruction[0]]
        write_reg = {}
        read_reg = {}
        if temp["write"]:
            for add in temp["write"]:
                reg = instruction[add]
                if reg in Constants.saved_registers:
                    write_reg[f"1_sr"] = reg
                elif reg in Constants.temp_registers:
                    write_reg[f"1_tr"] = reg
        if temp["read"]:
            for add in temp["read"]:
                if add == 4:
                    reg = re.search(r'\((.*?)\)', instruction[2]).group(1)
                    if reg in Constants.saved_registers:
                        read_reg["4_sr"] = reg
                    elif reg in Constants.temp_registers:
                        read_reg["4_tr"] = reg
                else:
                    reg = instruction[add]
                    if reg in Constants.saved_registers:
                        read_reg[f"{add}_sr"] = reg
                    elif reg in Constants.temp_registers:
                        read_reg[f"{add}_tr"] = reg
        if write_reg != {} or read_reg != {}:
            # print(f"{line_number} {instruction} wr:{write_reg} rr: {read_reg}")
            instructions[line_number] = {"instruction":instruction,"write_reg":write_reg,"read_reg":read_reg}

# print(list(instructions.keys())[::-1])
# changeit not necessary to print
for line_number in instructions.keys():
    logger.info(f"{line_number} {instructions[line_number]}")

if list(set(test_line_numbers).difference(list(instructions.keys()))) != []:
    logger.error("ERROR ERROR ERROR")
    logger.error(f"please add the opcodes on following line numbers + 1 from mips code: \n{set(test_line_numbers).difference(list(instructions.keys()))}")
    sys.exit(-1)

line_numbers = list(instructions.keys())[::-1]
logger.debug(f"Line Numbers_reversed: {line_numbers} line_numbers: {instructions.keys()}")

# changeit
# remove this
# {'instruction': ['lw', '$8', '88($fp)'], 'write_reg': {'1_tr': '$8'}, 'read_reg': {}}
# {'instruction': ['move', '$2', '$8'], 'write_reg': {}, 'read_reg': {'2_tr': '$8'}}

temp_dict_sr ={}
temp_dict_tr = {}
sr_forest = []
tr_forest = []
logger.info("creating forest")
for line_number in line_numbers:
    instruction = instructions[line_number]
    logger.debug(f"Working on instrcution: {instruction}")
    for pos in instruction['write_reg']:
        print(f"printing reg : {pos}")
        reg = instruction['write_reg'][pos]
        if pos.split("_")[1] == 'tr':
            if reg in temp_dict_tr.keys():
                temp = temp_dict_tr[reg]
                temp['over_write'] = f"{line_number}_{pos.split('_')[0]}"
                print(f"inserting into forest{temp}")
                tr_forest.append(temp)
                del temp_dict_tr[reg]
            else:
                temp = {}
                temp['over_write'] = f"{line_number}_{pos.split('_')[0]}"
                print(f"inserting into forest{temp}")
                tr_forest.append(temp)

        # change it
        # if necessary add for sr
    for pos in instruction['read_reg']:
        reg = instruction['read_reg'][pos]
        temp = f"{line_number}_{pos.split('_')[0]}"
        if pos.split("_")[1] == 'tr':
            if reg in temp_dict_tr.keys():
                temp_dict_tr[reg]['over_read'].append(temp)
            else:
                x = []
                x.append(temp)
                temp_dict_tr[reg] = {'over_read':x}
print("Forest")
logger.debug(tr_forest)
# changeit
# remove
# {'over_read': ['22_1'], 'over_write': '21_1'}

# changeit
# also do the following for sr if necessary

new_instructions = {}
for tree in tr_forest:
    uniform_reg = "empty"
    if 'over_read' in tree.keys():
        for reg in tree['over_read']:
            temp = reg.split("_")
            line_number = int(temp[0])
            pos = int(temp[1])
            uniform_reg = get_next_reg(Constants.temp_registers)
            # tree["reg"] = uniform_reg
            if line_number in new_instructions.keys():
                new_instructions[line_number][pos] = uniform_reg
            else:
                temp = instructions[line_number]['instruction'].copy()
                temp[pos] = uniform_reg
                new_instructions[line_number] = temp
    # changeit
    # remove
    # {'over_read': ['22_1'], 'over_write': '21_1'}
    if 'over_write' in tree.keys():
        # print(f"Tree {tree}")
        reg = tree['over_write']
        # print(f"reg {reg}")
        temp = reg.split("_")
        # print(f"Temp ow: {temp}")
        line_number = int(temp[0])
        pos = int(temp[1])
        if 'over_read' in tree.keys():
            pass
        else:
            uniform_reg = get_next_reg(Constants.temp_registers)
        if line_number in new_instructions.keys():
            new_instructions[line_number][pos] = uniform_reg
        else:
            temp = instructions[line_number]['instruction'].copy()
            temp[pos] = uniform_reg
            new_instructions[line_number] = temp
    

# print("Updates")
# for line_number in new_instructions.keys():
#     print(f"old instruction: {instructions[line_number]['instruction']} \n new instruction: {new_instructions[line_number]}")



print("original_code")
if os.path.isfile("original_code.asm"):
    os.remove("original_code.asm")
if os.path.isfile("new_code.asm"):
    os.remove("new_code.asm")

f = open("original_code.asm","w+")
stri = ""
for line_number in original_code.keys():
    inst = original_code[line_number]
    for el in inst:
        stri += el + " "
    stri += "\n"
f.write(stri)
f.close()

f = open("new_code.asm","w+")
stri = ""
for line_number in original_code.keys():
    if line_number in new_instructions.keys():
        inst = new_instructions[line_number]
    else:
        inst = original_code[line_number]
    for el in inst:
        stri += el + " "
    stri += "\n"
f.write(stri)
f.close()


