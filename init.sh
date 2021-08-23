#!/bin/bash

if [[ ! -d venv ]] ; then
    python3.6 -m venv venv
    source venv/bin/activate
    pip install --upgrade pip setuptools wheel build cython
else
    source venv/bin/activate
fi

pip install 'https://github.com/jetson-nano-wheels/python3.6-numpy-1.19.4/releases/download/v0.0.2/numpy-1.19.4-cp36-cp36m-linux_aarch64.whl'

deactivate

# Note to self: building blis from source did not work.
