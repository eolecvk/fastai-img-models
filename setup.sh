#!/bin/bash

# Install conda 
wget https://repo.anaconda.com/miniconda/Miniconda3-py38_4.12.0-Linux-x86_64.sh
bash Miniconda3-py38_4.12.0-Linux-x86_64.sh -b -f
eval "$(/home/ubuntu/miniconda3/bin/conda shell.bash hook)"
export PATH="/home/ubuntu/miniconda3/bin:$PATH"
conda init bash

# Create and activate conda venv
conda create -y -n fastai_venv
conda activate fastai_venv

# Install and login to wandb
conda install -c conda-forge wandb
wandb login

# Install fastai
conda install -y -c fastchan fastai

# Install torch image models
# with pip so it includes the complete model list
conda install -y pip
/home/ubuntu/miniconda3/envs/fastai_venv/bin/pip install timm

# Updates conda packages to the latest version
conda update -y --all

# Clone this repo and cd into it
git clone https://github.com/eolecvk/fastai-img-models.git
cd fastai-img-models