#!/bin/bash

LOCALDIR=`cd "$( dirname $0 )" && pwd`
cd $LOCALDIR

HOST=$(uname)
platform=$(uname -m)
export bin=$LOCALDIR/bin
export LD_LIBRARY_PATH=$bin/$HOST/$platform/lib64
