#!/bin/bash

# Make sure we fail in case of errors
set -e

conda install mamba -n base -c conda-forge

mamba create --name threeML python=3.9 astromodels threeml -c conda-forge -c threeml

conda activate threeML
