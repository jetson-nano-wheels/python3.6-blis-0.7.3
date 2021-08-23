#!/bin/bash

./init.sh
source venv/bin/activate

source jetson-nano-wheels/commons/envs.sh

PIP_CONSTRAINT=constraint.txt \
	      pip wheel -vv --only-binary 'numpy' --no-binary 'blis' 'blis>=0.4.0,<0.8.0' -w dist
