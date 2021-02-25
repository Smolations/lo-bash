#!/bin/bash

h1 'lo::sum'

sum=(1 1 1 1 1)
[[ `lo::sum ${sum[@]}` == 5 ]] && pass || fail

sum='2 2 2 2'
[[ `lo::sum $sum` == 8 ]] && pass || fail

sum=(-1 2 -3 4 -5)
[[ `lo::sum ${sum[@]}` == -3 ]] && pass || fail
