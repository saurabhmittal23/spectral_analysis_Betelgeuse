#!/bin/bash

# Make sure we fail in case of errors
set -e

# Update conda
conda update -n base conda -c conda-forge -y

# Initialize conda
eval "$(conda shell.bash hook)"

# Install mamba
conda install mamba -n base -c conda-forge

# Create environment with threeML
mamba create --name threeML python=3.9 astromodels threeml -c conda-forge -c threeml

# Initialize and activate the environment
conda init bash
source ~/.bashrc
conda activate threeML
