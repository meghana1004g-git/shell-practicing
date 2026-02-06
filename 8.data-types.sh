#!/bin/bash

NUM1=100
NUM2=meghana

SUM=$((NUM1+NUM2))

echo "Sum is: $SUM"

#Array
FRUITS=("mango" "banana" "apple")
echo "Fruits are: ${FRUITS[@]}"
echo "First fruit is: ${FRUITS[0]}"
echo "Second fruit is: ${FRUITS[1]}"
echo "Thirdt fruit is: ${FRUITS[2]}"

