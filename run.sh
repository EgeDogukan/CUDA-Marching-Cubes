#!/bin/bash
#SBATCH --job-name=Test-Project2            
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1    
#SBATCH --partition=short        
#SBATCH --qos=users        
#SBATCH --account=users    
#SBATCH --gres=gpu:2    
#SBATCH --time=2:0:0        
#SBATCH --output=tests/testALL-1-%j.out
#SBATCH --mem=70000    
#SBATCH --mail-type=END
#SBATCH --mail-user=eseven20@ku.edu.tr     
module load cuda/10.0
module load gcc/7.3.0

nvcc -o mcubes main.cu

echo "PART 1-1 **********************************"
./mcubes -n 256 -f 1 -b 1 -t 1
./mcubes -n 256 -f 1 -b 1 -t 4
./mcubes -n 256 -f 1 -b 1 -t 16
./mcubes -n 256 -f 1 -b 1 -t 32
./mcubes -n 256 -f 1 -b 1 -t 64
./mcubes -n 256 -f 1 -b 1 -t 128
./mcubes -n 256 -f 1 -b 1 -t 256
./mcubes -n 256 -f 1 -b 1 -t 512
./mcubes -n 256 -f 1 -b 1 -t 1024


echo "PART 1-2 **********************************"
./mcubes -n 64 -f 64 -b 1 -t 1
./mcubes -n 64 -f 64 -b 1 -t 4
./mcubes -n 64 -f 64 -b 1 -t 16
./mcubes -n 64 -f 64 -b 1 -t 32
./mcubes -n 64 -f 64 -b 1 -t 64
./mcubes -n 64 -f 64 -b 1 -t 128
./mcubes -n 64 -f 64 -b 1 -t 256
./mcubes -n 64 -f 64 -b 1 -t 512
./mcubes -n 64 -f 64 -b 1 -t 1024


echo "PART 1-3 **********************************"
./mcubes -n 8 -f 32768 -b 1 -t 1
./mcubes -n 8 -f 32768 -b 1 -t 4
./mcubes -n 8 -f 32768 -b 1 -t 16
./mcubes -n 8 -f 32768 -b 1 -t 32
./mcubes -n 8 -f 32768 -b 1 -t 64
./mcubes -n 8 -f 32768 -b 1 -t 128
./mcubes -n 8 -f 32768 -b 1 -t 256
./mcubes -n 8 -f 32768 -b 1 -t 512
./mcubes -n 8 -f 32768 -b 1 -t 1024


echo "PART 2-1 **********************************"
./mcubes -n 256 -f 1 -b 1 -t 1024
./mcubes -n 256 -f 1 -b 10 -t 1024
./mcubes -n 256 -f 1 -b 20 -t 1024
./mcubes -n 256 -f 1 -b 40 -t 1024
./mcubes -n 256 -f 1 -b 80 -t 1024
./mcubes -n 256 -f 1 -b 160 -t 1024


echo "PART 2-2 **********************************"
./mcubes -n 8 -f 32768 -b 1 -t 1024
./mcubes -n 8 -f 32768 -b 10 -t 1024
./mcubes -n 8 -f 32768 -b 20 -t 1024
./mcubes -n 8 -f 32768 -b 40 -t 1024
./mcubes -n 8 -f 32768 -b 80 -t 1024
./mcubes -n 8 -f 32768 -b 160 -t 1024
