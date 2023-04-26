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

circuit_power = {
    "ALU": 2,
    "Register File": 3,
    "PC": 1,
    "Left Shift": 1,
    "Sign Extension": 1,
    "Instruction Memory": 2,
    "Data Memory": 3,
    "Adder": 1
}


# Define a function to read in the MIPS code from a file
def read_mips_code():
    with open('dest.s', 'r') as f:
        mips_code = f.read()
    # print(mips_code)
    return mips_code

# Define a function to count the frequency of each MIPS instruction

def count_mips_frequency(mips_code, circuit_data_file):
    # Load circuit data from JSON file
    for_limit = -1  
    for_loop = False
    for_body = False
    ins_count = -1
    while_loop = False
    while_limit = -1
    label = ''
    while_body= False

    with open(circuit_data_file, 'r') as f:
        circuit_data = json.load(f)

    frequency_dict = {}
    temp_dict = {}
    power_consumed = 0
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
               # print (line)
                for_limit = int(for_limit)
                if(instruction.endswith("body:") == False): 
                    if instruction in frequency_dict:
                        frequency_dict[instruction] += for_limit-1
                    else:
                        frequency_dict[instruction] = for_limit-1
                  

            
            if (for_body and instruction.endswith('afterthought:')): 
                #for instruction, frequency in temp_dict.items():
                   # print(instruction + ': ' + str(frequency))
                
                for_limit = -1
                for_loop = False
                for_body = False
            
            if (instruction.startswith('while')):
                if (instruction.endswith('condition:')): 
                    while_loop = True
                    while_limit = -1

            if (while_loop and while_limit == -1):
                if (instruction == 'li'):
                    while_limit = line.split()[-1]
                    # print ("While loop limit = ", while_limit)

            if (while_loop and instruction == 'bne'):
                label = line.split()[-1]
                print(label)

            if (while_loop and instruction == label+":"):
                while_body=True

            if (while_body and instruction.endswith('end:') == False):
                while_limit = int(while_limit)
                if(instruction != label+":"):
                    if instruction in frequency_dict:
                        frequency_dict[instruction] += while_limit-1
                    else:
                        frequency_dict[instruction] = while_limit-1
                

            if (while_body and instruction.endswith('end:')):
                while_limit = -1
                while_body = False
                label = ''
                while_loop = False
                # for instruction, frequency in temp_dict.items():
                #    print(instruction + ': ' + str(frequency))
            

            if instruction in frequency_dict:
                frequency_dict[instruction] += 1
            else:
                frequency_dict[instruction] = 1

            # Calculate power consumed by instruction
            if instruction in circuit_data:
                circuit_counts = circuit_data[instruction]
                for circuit, count in circuit_counts.items():
                    power_consumed += count * circuit_power[circuit]

    return frequency_dict, power_consumed


# Read in the MIPS code from the file
mips_code = read_mips_code()


# Count the frequency of each MIPS instruction  and total power consumed
frequency_dict, power_consumed = count_mips_frequency(mips_code, 'circuit_data_file.json')
# Print out the frequency of each MIPS instruction
for instruction, frequency in frequency_dict.items():
    print(instruction + ': ' + str(frequency))
#print power consumed
print('Total power consumed:', power_consumed)
