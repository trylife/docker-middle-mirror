#!/usr/bin/env bash

for ele in `ls .`
do
    path="./"${ele}
    if [ -d ${path} ]; then
        cd ${path} && ./build.sh && cd ..
    fi
done