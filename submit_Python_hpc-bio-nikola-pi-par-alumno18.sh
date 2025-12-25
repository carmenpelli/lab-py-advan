#!/bin/bash
#SBATCH -p hpc-bio-nikola-cpu
#SBATCH --chdir=/home/alumno18/lab-py-advan
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH -J pi_numba

module load anaconda/2025.06

export NUMBA_NUM_THREADS=$SLURM_CPUS_PER_TASK

echo "CPUs = $SLURM_CPUS_PER_TASK"
echo "NUMBA_NUM_THREADS = $NUMBA_NUM_THREADS"

ipython pi-par-solution-alumno18.ipynb

module unload anaconda/2025.06

