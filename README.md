# The best vision models for fine-tuning

We reproduce Fast.ai's Jeremy Howard [experiments on fine tuning vision models](https://www.kaggle.com/code/jhoward/the-best-vision-models-for-fine-tuning/notebook) on Lambda Cloud.
 
We will run a hyperparameter sweep using 'Weight and Biases' to fine-tune  [PyTorch Image Models (timm)](https://github.com/rwightman/pytorch-image-models) for image classification on the [Kaggle Planet](https://www.kaggle.com/c/planet-understanding-the-amazon-from-space/data) and [IIT pets](https://www.robots.ox.ac.uk/~vgg/data/pets/) datasets. The original scripts for fine-tuning can be found [here](https://github.com/tcapelle/fastai_timm). 

* [Setup](./docs/setup.md)
* [Reproducing experiments on models fine tuning](./docs/sweep.md)
* [Cost performance analysis](./summary_fastai.ipynb)


![poc_wandb_analysis_2](https://user-images.githubusercontent.com/14501798/178616439-f68a1b07-6a06-4e79-9be3-62c731757981.png)


![poc_wandb_analysis_2 png](https://user-images.githubusercontent.com/14501798/178616472-aa7e7a5f-60a6-455b-89eb-26418e9befe3.png)


  
---

**Notes**

Metrics:
* To track metrics for each epoch: add `log_preds_every_epoch=1` to `WandbCallback` in order to log the model training perf at the end of each epoch.
* To track best accuracy across runs (instead of final which is default): set the summary value for that metric. By default, summary is set to the last value you logged for each key. This is useful in the table in the UI, where you can sort and filter runs based on their summary metrics — so you could compare runs in a table or bar chart based on their best accuracy, instead of final accuracy. For example, you could set summary like so: wandb.run.summary["best_accuracy"] = best_accuracy

cf Summary metrics section in https://docs.wandb.ai/guides/track/log


Runs:
* For random and bayesian search, the agent runs forever; you can however give the agent a target which when reached causes the agent to stop the runs, or a fixed number of runs to perform cf [wandb doc](https://docs.wandb.ai/guides/sweeps/faq#why-are-my-sweep-agents-running-forever-is-there-a-way-to-set-a-maximum-number-of-runs)




**Issues**

* wandb does not seem to use GPU in sweeps by default; following command resulted in 0% GPU utilization:
```
wandb agent <WANDB_ACCOUNT_NAME>/<WANDB_PROJECT_NAME>/<SWEEP_ID>`
```

Had to use Distributed Training (even in single GPU setting) with `CUDA_VISIBLE_DEVICES=0` to use GPU:
```
CUDA_VISIBLE_DEVICES=0 wandb agent <WANDB_ACCOUNT_NAME>/<WANDB_PROJECT_NAME>/<SWEEP_ID>
```

