indexs = ["01", "02", "03", "04", "05", "06", "07", "08", "09", "10", "11"]
for ind in indexs:
        query = '''#!/bin/bash
#SBATCH --job-name=tardis_test
#SBATCH --output=tardistest_{I}.out
#SBATCH --error=tardistest_{I}.err
#SBATCH --partition=batch
#SBATCH --nodes=1
#SBATCH --time=100:0:0

FILENAME=res_{I}.txt
MAT_DIM=5000
export OMP_NUM_THREADS=1
./../build/mkl_test ${{MAT_DIM}} ${{MAT_DIM}} ${{MAT_DIM}} >> ${{FILENAME}}

echo ${{SLURMD_NODENAME}} >> ${{FILENAME}}
'''
        with open("submit_" + ind + ".sjob", "w") as f:
            f.write(query.format( I = ind))
