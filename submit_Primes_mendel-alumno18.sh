#!/bin/bash
#SBATCH -p hpc-bio-mendel
#SBATCH --chdir=/home/alumno18/lab-py-advan
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1 #lo reescribimos desde la línea de comandos
#SBATCH -J python

module load anaconda/2025.06

echo "Number = $NUMBER"
echo "CPUs   = $SLURM_CPUS_PER_TASK"

ipython primes-par-alumno18.ipynb \
  $NUMBER \
  $SLURM_CPUS_PER_TASK

module unload anaconda/2025.06
