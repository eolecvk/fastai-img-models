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
export PATH="/home/username/miniconda3/bin:$PATH"
```

Close terminal and open new terminal:
```
conda update -n base conda
```

Install and login to wandb
```
conda install -c conda-forge wandb
wandb login
```

Set bash variables for your wandb account name and for your API key (to be found under https://wandb.ai/settings):
```
ENTITY_NAME={your_wandb_account_name_here}
WANDB_KEY={your_wandb_api_key_here}
```

Install fastai
```
conda install -c fastchan fastai
```

Install torch image models **(missing some models, use pip install timm instead)**
```
conda install -c conda-forge timm
```

Install pyTorch with cuda support
```
conda install pytorch torchvision torchaudio cudatoolkit=11.3 -c pytorch
```

Update all packages
```
conda update --all
```

Clone this repo
```
git clone https://github.com/eolecvk/fastai-img-models.git
```

