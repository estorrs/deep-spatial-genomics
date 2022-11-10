export LSF_DOCKER_VOLUMES="/storage1/fs1/dinglab:/storage1/fs1/dinglab /scratch1/fs1/dinglab:/scratch1/fs1/dinglab /home/estorrs:/home/estorrs"
export PATH="/miniconda/bin:$PATH"

LSF_DOCKER_PORTS='8383:8888' bsub -R 'select[mem>100GB,port8383=1] rusage[mem=100GB] span[hosts=1]' -n 20 -M 101GB -q dinglab -G compute-dinglab -oo log.txt -a 'docker(estorrs/deep-spatial-genomics:0.0.2)' 'jupyter notebook --port 8888 --no-browser --ip=0.0.0.0'
