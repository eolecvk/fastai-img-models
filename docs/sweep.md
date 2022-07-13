# Hyperparameter Sweep with Weight And Biases

## 1. Create a sweep

Edit the sweep configuration file [`sweep.yaml`](../sweep.yaml) as needed.  
One change that is required is setting the value for `entity` so that it matches the name of your wandb account.  
You can check all the possibilities for defining parameters [here](https://docs.wandb.ai/guides/sweeps/configuration).

Then, create sweep run:
```
wandb sweep configs/sweep.yaml
```

## 2. Run the sweep

On a single GPU node: 
```
# you can paste the output of the previous command here
wandb agent <WANDB_ACCOUNT_NAME>/<WANDB_PROJECT_NAME>/<SWEEP_ID>
```

On a multi-GPU node start the wandb agent on every GPU available (in separate terminal sessions)
```
CUDA_VISIBLE_DEVICES=0 wandb agent <WANDB_ACCOUNT_NAME>/<WANDB_PROJECT_NAME>/<SWEEP_ID>
CUDA_VISIBLE_DEVICES=1 wandb agent <WANDB_ACCOUNT_NAME>/<WANDB_PROJECT_NAME>/<SWEEP_ID>
```
Use `nvidia-smi` in a new terminal session to check that GPU are being utilized:

![nvidia-smi](https://user-images.githubusercontent.com/14501798/178612648-b914e9a5-3aee-4cba-b947-53fb2ebf938d.png)

## 3. Sweep logs


Open your browser at `https://wandb.ai/<WANDB_ACCOUNT_NAME>/<WANDB_PROJECT_NAME>/<SWEEP_ID>` to monitor the sweep runs.  
For convenience I added a copy of my results as a `.csv` [here](https://gist.github.com/ee80a6df08591cf51924beb9b2ee3b7c) which I have generaled using [this script](../save_sweep_data.ipynb).

