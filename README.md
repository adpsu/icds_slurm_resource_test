# SLURM Script Resource Testing

This repository contains a simple example of a SLURM (Simple Linux Utility for Resource Management) script and a corresponding dummy executable. You can use this setup for testing path configurations and resource allocation in your SLURM script.

## Dummy Executable

### Description

The `sample_executable.sh` script serves as a dummy executable. It simulates a job running on a SLURM cluster and prints the allocated resources before sleeping for a few seconds and completing the job.

### Usage

1. Save the `sample_executable.sh` script to your desired directory.

2. Make the script executable by running the following command in your terminal:

   ```bash
   chmod +x sample_executable.sh
   ```

## SLURM Script

### Description

The `slurm_resource_test.sh` script is a SLURM job submission script designed to run the `sample_executable.sh` dummy executable. It requests specific resources and paths to run the executable successfully.

### Usage

1. Replace the `EXECUTABLE` definition in the `slurm_resource_test.sh` script with the full path to the `sample_executable.sh` script. Modify it as needed.

   ```bash
   # Define the full path to the executable
   EXECUTABLE="/full/path/to/sample_executable.sh"  # Modify this to the correct path if needed
   ```

2. Customize other SLURM parameters such as `--nodes`, `--ntasks-per-node`, `--cpus-per-task`, `--time`, and `--mem` according to your requirements.

3. Submit your SLURM job using the modified `dummy_submit.sh` script:

   ```bash
   sbatch dummy_submit.sh
   ```

   This will run the `sample_executable.sh` script, and the SLURM job will print allocated resources, simulate a job execution, and display a completion message.

Feel free to use this repository as a reference for configuring SLURM scripts and dummy executables for testing resource allocation on your SLURM cluster.

---

You can include this README file in your GitHub repository to provide clear instructions and context for your codes.
