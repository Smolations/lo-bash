#!/bin/bash

echo ' ---== test: _.sum()'

sum=(1 1 1 1 1)
echo "sum(${sum[@]}) = `_.sum ${sum[@]}`"

sum='2 2 2 2'
echo "sum(${sum}) = `_.sum $sum`"

sum=(-1 2 -3 4 -5)
echo "sum(${sum[@]}) = `_.sum ${sum[@]}`"
