#!/bin/bash

# Print the allocated resources
echo "Allocated Resources:"
echo "Nodes: $SLURM_JOB_NUM_NODES"
echo "Tasks per Node: $SLURM_NTASKS_PER_NODE"
echo "CPUs per Task: $SLURM_CPUS_PER_TASK"

# Simulate a job running for a few seconds
sleep 30

echo "Job completed!"

