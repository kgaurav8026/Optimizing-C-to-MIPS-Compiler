import json

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
    
    for line in mips_code.split('\n'):
        if line.strip():
            instruction = line.split()[0]
            if instruction in frequency_dict:
                frequency_dict[instruction] += 1
            else:
                frequency_dict[instruction] = 1

            # Calculate power consumed by instruction

            # print(instruction)
            if instruction in cycle_data:
                total_cycles += cycle_data[instruction]
                # total_cycles += cycle_count

    return frequency_dict, total_cycles


# Read in the MIPS code from the file
mips_code = read_mips_code()


# Count the frequency of each MIPS instruction  and total power consumed
frequency_dict, total_cycles = count_mips_frequency(mips_code)
# Print out the frequency of each MIPS instruction
for instruction, frequency in frequency_dict.items():
    print(instruction + ': ' + str(frequency))
#print power consumed
print()
print("Total Cycles: ", total_cycles)

