# Hyperparameter Sweep with Weight And Biases

## 1. Create a sweep

Edit the sweep configuration file [`sweep.yaml`](../sweep.yaml) as needed.  
One change that is required is setting the value for `entity` so that it matches the name of your wandb account.  
You can check all the possibilities for defining parameters [here](https://docs.wandb.ai/guides/sweeps/configuration).

Then, create sweep run:
```
wandb sweep sweep.yaml
```

## 2. Run the sweep

Run the sweep:
```
# you can paste the output of the previous command here
wandb agent <SWEEP_ID>
```

## 3. Sweep logs

Open your browser at `https://wandb.ai/<ENTITY_NAME>/fastai_timm/sweeps/<SWEEP_ID>` to monitor the sweep runs.  
For convenience I added a copy of my results as a `.csv` [here](https://gist.github.com/ee80a6df08591cf51924beb9b2ee3b7c) which I have generaled using [this script](../save_sweep_data.ipynb).
