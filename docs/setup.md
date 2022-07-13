# Setup

## Prerequisite

You will need to [signup on wandb](https://app.wandb.ai/login?signup=true).
Once signed up, keep the following information for later steps:
  * your wandb account name
  * a wandb API key (to be found in the settings page of your wandb account)

## Environment

Clone this repo and cd into it:
```
git clone https://github.com/eolecvk/fastai-img-models.git
cd fastai-img-models
```

Run the setup script; you will be prompted to enter your wandb API key during the installation.
```
chmod +x setup.sh
./setup.sh
```

Activate the conda environment
```
conda activate fastai_venv
```

---


Install conda
```
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
```

---

Remove:

Set bash variables for your wandb account name and for your API key (to be found under https://wandb.ai/settings):
```
ENTITY_NAME={your_wandb_account_name_here}
WANDB_KEY={your_wandb_api_key_here}
```