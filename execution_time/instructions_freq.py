import json
import os
import argparse
import psutil

parser = argparse.ArgumentParser()
parser.add_argument("filepath", help="the filepath to process")
args = parser.parse_args()

freq = psutil.cpu_freq().current
print(f"Current CPU frequency: {freq} MHz")


# Execute lscc command
cmd = 'lscc '+args.filepath+' -o dest.s'
os.system(cmd)

# Define a function to read in the MIPS code from a file
def read_mips_code():
    with open('dest.s', 'r') as f:
        mips_code = f.read()
    # print(mips_code)
    return mips_code

# Define a function to count the frequency of each MIPS instruction
def count_mips_frequency(mips_code):
    # Load circuit data from JSON file
    with open('cycle.json', 'r') as f:
        cycle_data = json.load(f)

    frequency_dict = {}
    total_cycles = 0
    for_limit = -1
    for_loop = False
    for_body = False
    ins_count = -1
    while_loop = False
    while_limit = -1
    label = ''

    
    for line in mips_code.split('\n'):
        if line.strip():
            instruction = line.split()[0]
            
            if (instruction.startswith('for')):
                if (instruction.endswith('condition:')): 
                    for_loop = True
                    for_limit = -1
                if (instruction.endswith('body:')):
                    ins_count = 0
                    for_body = True

            if (for_loop and for_limit == -1):
                if (instruction == 'li'):
                    for_limit = line.split()[-1]            
                
            if (for_body and instruction.endswith('afterthought:') == False):
                ins_count += 1

            if (for_body and instruction.endswith('afterthought:')): 
                ins_count -= 1
                for_limit = int(for_limit)
                total_ins = ins_count*for_limit
                total_cycles += total_ins - ins_count # Remove extra for body count from total
                
                ins_count = -1
                for_limit = -1
                for_loop = False
                for_body = False

            
            
            if (instruction.startswith('while')):
                if (instruction.endswith('condition:')): 
                    while_loop = True
                    while_limit = -1
                    ins_count = -1

            if (while_loop and while_limit == -1):
                if (instruction == 'li'):
                    while_limit = line.split()[-1]
                    # print ("While loop limit = ", while_limit)

            if (while_loop and instruction == 'bne'):
                label = line.split()[-1]
                # print (label)

            if (while_loop and instruction == label):
                ins_count = 0

            if (while_loop and label != '' and instruction.endswith('end:') == False):
                # print (line)
                ins_count += 1

            if (while_loop and instruction.endswith('end:')):
                ins_count -= 5
                # print (ins_count)
                while_limit = int(while_limit)
                # print("Total ins for while = ", ins_count)
                total_ins = ins_count*while_limit
                total_cycles += total_ins - ins_count
                ins_count = -1
                while_limit = -1
                while_loop = False
                label = ''

            if instruction in frequency_dict:
                frequency_dict[instruction] += 1
            else:
                frequency_dict[instruction] = 1

            if instruction in cycle_data:
                if (total_cycles == 0): total_cycles += 5
                else: total_cycles += 1

    return frequency_dict, total_cycles


# Read in the MIPS code from the file
mips_code = read_mips_code()


# Count the frequency of each MIPS instruction  and total power consumed
frequency_dict, total_cycles = count_mips_frequency(mips_code)
# Print out the frequency of each MIPS instruction
# for instruction, frequency in frequency_dict.items():
#     print(instruction + ': ' + str(frequency))
    
print()
print("Total Cycles: ", total_cycles)


#EXECUTION TIME----------------------------------------
clock_speed = 1/freq
clock_speed = round(clock_speed, 4)
print(clock_speed)
execution_time = total_cycles*clock_speed

print("Execution time is %.4f microsecond" % execution_time)


