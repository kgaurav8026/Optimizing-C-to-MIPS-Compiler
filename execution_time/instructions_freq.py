import json

# Define a function to read in the MIPS code from a file
def read_mips_code():
    with open('../src/dest.s', 'r') as f:
        mips_code = f.read()
    return mips_code

# Define a function to count the frequency of each MIPS instruction


def count_mips_frequency(mips_code):
    # Load circuit data from JSON file
    with open('./cycles.json', 'r') as f:
        cycle_data = json.load(f)

    frequency_dict = {}
    
    for line in mips_code.split('\n'):
        if line.strip():
            instruction = line.split()[0]
            if instruction in frequency_dict:
                frequency_dict[instruction] += 1
            else:
                frequency_dict[instruction] = 1

            # Calculate power consumed by instruction
            # if instruction in cycle_data:
            #     circuit_counts = cycle_data[instruction]
            #     for circuit, count in circuit_counts.items():
            #         power_consumed += count * circuit_power[circuit]

    return frequency_dict


# Read in the MIPS code from the file
mips_code = read_mips_code()


# Count the frequency of each MIPS instruction  and total power consumed
frequency_dict = count_mips_frequency(mips_code)
# Print out the frequency of each MIPS instruction
for instruction, frequency in frequency_dict.items():
    print(instruction + ': ' + str(frequency))
#print power consumed

