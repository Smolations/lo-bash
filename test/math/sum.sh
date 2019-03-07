#!/bin/bash

h1 '_sum'

sum=(1 1 1 1 1)
[[ `_sum ${sum[@]}` == 5 ]] && pass || fail

sum='2 2 2 2'
[[ `_sum $sum` == 8 ]] && pass || fail

sum=(-1 2 -3 4 -5)
[[ `_sum ${sum[@]}` == -3 ]] && pass || fail
