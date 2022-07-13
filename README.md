# The best vision models for fine-tuning

We reproduce Fast.ai's Jeremy Howard [experiments on fine tuning vision models](https://www.kaggle.com/code/jhoward/the-best-vision-models-for-fine-tuning/notebook) on Lambda Cloud.
 
We will run a hyperparameter sweep using 'Weight and Biases' to fine-tune  [PyTorch Image Models (timm)](https://github.com/rwightman/pytorch-image-models) for image classification on the [Kaggle Planet](https://www.kaggle.com/c/planet-understanding-the-amazon-from-space/data) and [IIT pets](https://www.robots.ox.ac.uk/~vgg/data/pets/) datasets. The original scripts for fine-tuning can be found [here](https://github.com/tcapelle/fastai_timm). 

* [Setup](./docs/setup.md)
* [Hyperparameter sweep using Weight And Biases](./docs/sweep.md)
* [Analysis](./summary_fastai.ipynb)


![poc_wandb_analysis_2](https://user-images.githubusercontent.com/14501798/178616439-f68a1b07-6a06-4e79-9be3-62c731757981.png)


![poc_wandb_analysis_2 png](https://user-images.githubusercontent.com/14501798/178616472-aa7e7a5f-60a6-455b-89eb-26418e9befe3.png)


  
---

**Issues**

* Some models listed in `fastai_timm/sweep.yaml` are missing from `timm`, specifically all convnext models:
```
timm.list_models('*convnext*')
> []
```


* The levit archs (levit_384, levit_256, levit_192, levit_128s) are failing


![failint archsa](https://user-images.githubusercontent.com/14501798/178615216-ea9acc33-ce83-42d1-8c4b-3b9120c32505.png)

