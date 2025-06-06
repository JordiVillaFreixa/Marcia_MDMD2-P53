#!/bin/bash

# ###### Zona de Parámetros de solicitud de recursos a SLURM ############################
#
#SBATCH --job-name=Box              #Nombre del job
#SBATCH -p long                        #Cola a usar, Default=short (Ver colas y límites en /hpcfs/shared/README/partitions.txt)
#SBATCH -N 1                            #Nodos requeridos, Default=1
#SBATCH -n 1                            #Tasks paralelos, recomendado para MPI, Default=1
#SBATCH --cpus-per-task=1               #Cores requeridos por task, recomendado para multi-thread, Default=1
#SBATCH --mem=16000             #Memoria en Mb por CPU, Default=2048
#SBATCH --time=00:10:00                 #Tiempo máximo de corrida, Default=2 horas
#SBATCH --mail-user=m.castillot@uniandes.edu.co
#SBATCH --mail-type=ALL
#SBATCH -o BOX_cpu.o%j                 #Nombre de archivo de salida
#
########################################################################################

# ################## Zona Carga de Módulos ############################################

Qdyn6 eq5.inp > eq5.log
