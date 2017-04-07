#!/bin/bash

h1 'sum'

sum=(1 1 1 1 1)
[[ `_.sum ${sum[@]}` == 5 ]] && pass || fail

sum='2 2 2 2'
[[ `_.sum $sum` == 8 ]] && pass || fail

sum=(-1 2 -3 4 -5)
[[ `_.sum ${sum[@]}` == -3 ]] && pass || fail
