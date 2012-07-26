#!/bin/bash

if [ -n "${IPYTHONDIR+x}" ]; then
    ipd=$IPYTHONDIR
else ipd=~/.ipython
fi

if [ $# -eq 1 ]; then
    fn=$1
else fn=$ipd/profile_default/ipython_config.py
fi

if [ -f $fn ]; then
    mv $fn ${fn}.bak
fi

cp `dirname $0`/ipython_config.py $fn
