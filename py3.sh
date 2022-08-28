#!/bin/bash

KNAME='py3'

source activate base
jupyter kernelspec remove -f ${KNAME}

conda env remove -y -n ${KNAME}
conda env create -f ${KNAME}.yml -n ${KNAME}

# conda update -y --all -n base
conda update -y --all -n ${KNAME}

source activate ${KNAME}
python -m ipykernel install --user --name ${KNAME} --display-name ${KNAME}

conda env list
jupyter kernelspec list --json

# CLEAN PACKAGE
# conda clean -y -a