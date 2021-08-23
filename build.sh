#!/bin/bash

./init.sh
source venv/bin/activate

source jetson-nano-wheels/commons/envs.sh

# Override these. Blis build only seems to work (i.e. can be successfully
# imported) when using gcc version 7.
export CC=gcc-7
export CXX=g++-7
export FC=gfortran-7

BLIS_ARCH=cortexa57 \
  PIP_CONSTRAINT=constraints.txt \
  pip wheel -vv -c constraints.txt --no-binary 'blis' 'blis>=0.4.0,<0.8.0' -w dist
