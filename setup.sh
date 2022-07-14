#!/bin/bash

# Create and activate new venv
/usr/bin/python3.8 -m venv .venv --prompt fast
source .venv/bin/activate

# Update pip
pip install --upgrade pip

# Install fastai with CUDA support
pip install torch torchvision --extra-index-url https://download.pytorch.org/whl/cu113
pip install fastai

# Install and login to wandb
pip install wandb
wandb login

# Install torch image models
pip install timm