import json
circuit_power = {
    "ALU": 2,
    "Register File": 3,
}


# Define a function to read in the MIPS code from a file
def read_mips_code(filename):
    with open('/home/kgaurav/c-mips-compiler/bin/yy.s', 'r') as f:
        mips_code = f.read()
    return mips_code

# Define a function to count the frequency of each MIPS instruction


def count_mips_frequency(mips_code, circuit_data_file):
    # Load circuit data from JSON file
    with open(circuit_data_file, 'r') as f:
        circuit_data = json.load(f)

    frequency_dict = {}
    power_consumed = 0
    for line in mips_code.split('\n'):
        if line.strip():
            instruction = line.split()[0]
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
mips_code = read_mips_code('yy.s')


# Count the frequency of each MIPS instruction  and total power consumed
frequency_dict, power_consumed = count_mips_frequency(mips_code, '/home/kgaurav/c-mips-compiler/bin/circuit_data_file.json')
# Print out the frequency of each MIPS instruction
for instruction, frequency in frequency_dict.items():
    print(instruction + ': ' + str(frequency))
#print power consumed
print('Total power consumed:', power_consumed)
