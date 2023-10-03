#!/bin/bash
#SBATCH --job-name=WRBLES_16deg
#SBATCH --partition=open
#SBATCH --nodes=4
#SBATCH --ntasks-per-node=24
#SBATCH --cpus-per-task=1
#SBATCH --time=24:00:00
#SBATCH --mem=128G # Request slightly less than the node's maximum memory
#SBATCH -o outputfile
#SBATCH --export=ALL

module load intel/2021.4.0
module load impi/2021.4.0

# Define the full path to the executable
EXECUTABLE="/scratch/amd7293/sample_executable.sh"

# Calculate the total number of tasks (NPROCS)
NPROCS=$((SLURM_JOB_NUM_NODES * SLURM_NTASKS_PER_NODE))

# Calculate the number of tasks per node to achieve 96 NPROCS
TASKS_PER_NODE=$((NPROCS / SLURM_JOB_NUM_NODES))

# Set the number of CPU cores per task for IMPI
export I_MPI_PIN=1
export I_MPI_PIN_DOMAIN=auto:compact

# Run the executable
srun -n $NPROCS -c $SLURM_CPUS_PER_TASK --cpu-bind=cores $EXECUTABLE > wrbles.out

# Echo the allocated resources
echo "Allocated Resources:"
echo "Nodes: $SLURM_JOB_NUM_NODES"
echo "Tasks per Node: $TASKS_PER_NODE"
echo "CPUs per Task: $SLURM_CPUS_PER_TASK"

