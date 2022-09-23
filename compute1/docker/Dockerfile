FROM nvidia/cuda:11.6.0-runtime-ubuntu18.04

RUN apt-get update && apt-get install -y vim wget curl git

RUN wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda.sh
RUN bash ~/miniconda.sh -b -p /miniconda
ENV PATH="/miniconda/bin:$PATH"

# helps speed up install so packages dont have to be retrieved everytime a change is made
RUN pip install jupyter jupyter_contrib_nbextensions tifffile imagecodecs torch torchvision einops scanpy timm scikit-image Pillow pytorch-lightning wandb leidenalg Pillow transformers "diffusers==0.3.0"
RUN jupyter contrib nbextension install --sys-prefix

COPY ./ /deep-spatial-genomics
RUN pip install /deep-spatial-genomics
RUN pip install git+https://github.com/huggingface/diffusers.git@e72f1a8a71ba0d9dab44a09178e7e532690b56f1

CMD /bin/bash
