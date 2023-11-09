import os
import sys
import pandas as pd

# Dynamically install a package if needed
def install(package):
    import subprocess
    subprocess.check_call([sys.executable, "-m", "pip", "install", package])

# Example of installing a new package
install('matplotlib')

# Read a CSV file from the input directory
input_file_path = os.path.join('/app/input', 'input.csv')
try:
    df = pd.read_csv(input_file_path)
except FileNotFoundError:
    print(f"Could not find the file {input_file_path}")
    sys.exit(1)

# Perform a basic operation, for example, describe the data
summary = df.describe()

# Write the summary to a new CSV file in the output directory
output_file_path = os.path.join('/app/output', 'summary.csv')
summary.to_csv(output_file_path, index=False)

print(f"Summary is written to {output_file_path}")
