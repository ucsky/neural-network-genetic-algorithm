#!/bin/bash -e
thedate=$(date +%Y-%m-%d)
plog="main.py.$thedate.log"
source $HOME/virtualenv/tf_nightly_gpu-1.head-cp35-cp35m-linux_x86_64/bin/activate
CUDA_VISIBLE_DEVICE=0
annotate-output python main.py |& tee $plog

