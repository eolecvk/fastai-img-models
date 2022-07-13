# The best vision models for fine-tuning

We reproduce Fast.ai's Jeremy Howard [experiments on fine tuning vision models](https://www.kaggle.com/code/jhoward/the-best-vision-models-for-fine-tuning/notebook) on Lambda Cloud.
 
We will run a hyperparameter sweep using 'Weight and Biases' to fine-tune  [PyTorch Image Models (timm)](https://github.com/rwightman/pytorch-image-models) for image classification on the [Kaggle Planet](https://www.kaggle.com/c/planet-understanding-the-amazon-from-space/data) and [IIT pets](https://www.robots.ox.ac.uk/~vgg/data/pets/) datasets. The original scripts for fine-tuning can be found [here](https://github.com/tcapelle/fastai_timm). 

* [Setup](./docs/setup.md)
* [Hyperparameter sweep using Weight And Biases](./docs/sweep.md)
* [Analysis](./summary_fastai.ipynb)


![poc_wandb_analysis_2](https://user-images.githubusercontent.com/14501798/178616439-f68a1b07-6a06-4e79-9be3-62c731757981.png)


![poc_wandb_analysis_2 png](https://user-images.githubusercontent.com/14501798/178616472-aa7e7a5f-60a6-455b-89eb-26418e9befe3.png)


  
---

**Notes**

* Added arg `log_preds_every_epoch=1` to `WandbCallback` in order to log the model training perf at the end of each epoch.

**Issues**

* wandb does not seem to use GPU in sweeps by default; following command resulted in 0% GPU utilization:
```
wandb agent <WANDB_ACCOUNT_NAME>/<WANDB_PROJECT_NAME>/<SWEEP_ID>`
```

Had to use Distributed Training (even in single GPU setting) with `CUDA_VISIBLE_DEVICES=0` to use GPU:
```
CUDA_VISIBLE_DEVICES=0 wandb agent <WANDB_ACCOUNT_NAME>/<WANDB_PROJECT_NAME>/<SWEEP_ID>
```

