# The best vision models for fine-tuning

Reproducing Fast.ai's Jeremy Howard [experiments on fine tuning vision models](https://www.kaggle.com/code/jhoward/the-best-vision-models-for-fine-tuning/notebook).

## Setup

These are instructions to run a hyperparameter sweep using 'Weight and Biases' to fine-tune timm models for image classification on specific datasets.

### 1. Prerequisites

You will need to signup on wandb.
Once signed up, keep the following information for later steps:
  * your wandb account name
  * a wandb API key (to be found in the settings page of your wandb account)

### 2. Code and dependencies

Install conda
```
wget https://repo.anaconda.com/miniconda/Miniconda3-py38_4.12.0-Linux-x86_64.sh
bash Miniconda3-py38_4.12.0-Linux-x86_64.sh
export PATH="/home/username/miniconda3/bin:$PATH"
conda update -n base conda
```

Install and login to wandb
```
conda install -c conda-forge wandb
wandb login
```

Install fastai
```
conda install -c fastchan fastai
```

Clone fastai timm fine-tuning repo
```
git clone https://github.com/tcapelle/fastai_timm.git
```

Install torch image models
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

### 3. Running a sweep with wandb

Edit sweep params in`sweep.yaml`.

You can check all the possibilities for defining parameters [here](https://docs.wandb.ai/guides/sweeps/configuration).

Then, create sweep run:
```
wandb sweep sweep.yaml
```

And run the sweep:
```
# you can paste the output of the previous command here
wandb agent <SWEEP_ID>
```

Check sweep; open your browser at
https://wandb.ai/eolecvka/fastai_timm/sweeps/ygh90vj4


### Analysis

Visit the `analysis.ipynb` notebook.


### Issues

* Some models listed in `fastai_timm/sweep.yaml` are missing from `timm`, specifically all convnext models:
```
timm.list_models('*convnext*')
> []
```

* `nvidia-smi` not seeing GPU activity during training