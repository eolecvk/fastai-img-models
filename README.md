# The best vision models for fine-tuning

We reproduce Fast.ai's Jeremy Howard [experiments on fine tuning vision models](https://www.kaggle.com/code/jhoward/the-best-vision-models-for-fine-tuning/notebook) on Lambda Cloud.
 
We will run a hyperparameter sweep using 'Weight and Biases' to fine-tune  [PyTorch Image Models (timm)](https://github.com/rwightman/pytorch-image-models) for image classification on the [Kaggle Planet](https://www.kaggle.com/c/planet-understanding-the-amazon-from-space/data) and [IIT pets](https://www.robots.ox.ac.uk/~vgg/data/pets/) datasets. The original scripts for fine-tuning can be found [here](https://github.com/tcapelle/fastai_timm). 

* [Setup](./docs/setup.md)
* [Hyperparameter sweep using Weight And Biases](./docs/sweep.md)
* [Analysis](./summary_fastai.ipynb)
  
---

**Issues**

* Some models listed in `fastai_timm/sweep.yaml` are missing from `timm`, specifically all convnext models:
```
timm.list_models('*convnext*')
> []
```
