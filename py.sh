#!/bin/bash

source activate base
jupyter kernelspec remove -f python3
conda env remove -y -n py3
conda env create -f py3.yml -n py3
source activate py3
python -m ipykernel install --user --name python3 --display-name 'Python 3'

conda env list
jupyter kernelspec list

# UPDATE ENV
# conda env update -f py3.yml -n py3 --prune