export LSF_DOCKER_VOLUMES="/storage1/fs1/dinglab:/storage1/fs1/dinglab /scratch1/fs1/dinglab:/scratch1/fs1/dinglab /home/estorrs:/home/estorrs"
export PATH="/miniconda/bin:$PATH"

LSF_DOCKER_PORTS='8383:8888' bsub -R 'select[gpuhost,mem>100GB,port8383=1] rusage[mem=100GB] span[hosts=1]' -gpu "num=1:gmodel=TeslaV100_SXM2_32GB:gmem=10GB" -n 20 -M 101GB -q general -G compute-dinglab -oo log.txt -a 'docker(estorrs/stardist:0.0.1)' 'jupyter notebook --port 8888 --no-browser --ip=0.0.0.0'
