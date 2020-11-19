#!/bin/bash
array=( $(find . -type f -name "*.out") )

# loop over it
for i in ${array[@]}
do
    echo $i
done
