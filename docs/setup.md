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

Run the setup script to create a conda environment; you will be prompted to enter your wandb API key during the installation.
```
chmod +x setup.sh
./setup.sh
```

Activate venv?
```
```
---

Remove:

Set bash variables for your wandb account name and for your API key (to be found under https://wandb.ai/settings):
```
ENTITY_NAME={your_wandb_account_name_here}
WANDB_KEY={your_wandb_api_key_here}
```