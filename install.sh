#!/bin/bash

if [ $# -eq 1 ]; then
    fn=$1
else fn=~/.ipython/profile_default/ipython_config.py
fi

if [ -f $fn ]; then
    mv $fn ${fn}.bak
fi

mv `dirname $0`/ipython_config.py $fn
