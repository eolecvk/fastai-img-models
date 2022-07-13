# Setup

## 1. Weight And Biases account

You will need to [signup on wandb](https://app.wandb.ai/login?signup=true).
Once signed up, keep the following information for later steps:
  * your wandb account name
  * a wandb API key (to be found in the settings page of your wandb account)

## 2. Environment and code 

Install conda
```
wget https://repo.anaconda.com/miniconda/Miniconda3-py38_4.12.0-Linux-x86_64.sh
bash Miniconda3-py38_4.12.0-Linux-x86_64.sh
export PATH="/home/ubuntu/miniconda3/bin:$PATH"
```
Close terminal and open new terminal.

```
conda init bash
```

Update conda to latest stable version
```
conda update -n base -c defaults conda
```

Create a new env
```
conda create -n fastai_venv
conda activate fastai_venv
```

Set bash variables for your wandb account name and for your API key (to be found under https://wandb.ai/settings):
```
ENTITY_NAME={your_wandb_account_name_here}
WANDB_KEY={your_wandb_api_key_here}
```

Install and login to wandb
```
conda install -c conda-forge wandb
wandb login
```

Install fastai
```
conda install -y -c fastchan fastai
```

Install torch image models (install with pip so it includes the complete model list) 
```
conda install -y pip
/anaconda/envs/fastai_venv/bin/pip install timm


/home/ubuntu/miniconda/fastai_venv/bin/pip install timm
```

Install pyTorch with cuda support (try skipping this 2GB redundant...)
```
conda install -y pytorch torchvision torchaudio cudatoolkit=11.3 -c pytorch
```

Updates conda packages to the latest compatible version
```
conda update -y --all
```

Clone this repo
```
git clone https://github.com/eolecvk/fastai-img-models.git
```

