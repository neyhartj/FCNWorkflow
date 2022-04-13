#!/bin/bash

# Load the right version of python
module load python_3/3.6.6

# Create the virtual environment
virtualenv virtenv_cuda102

# Activate the environment
source virtenv_cuda102/bin/activate

# Install the right version of torch
pip3 install torch==1.10.2+cu102 torchvision==0.11.3+cu102 torchaudio===0.10.2+cu102 -f https://download.pytorch.org/whl/cu102/torch_stable.html

# Install other packages 
pip install pandas opencv-python plantcv pillow albumentations==0.1.12
