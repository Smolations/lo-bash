#!/bin/bash

h1 '_::math::sum'

sum=(1 1 1 1 1)
[[ `_::math::sum ${sum[@]}` == 5 ]] && pass || fail

sum='2 2 2 2'
[[ `_::math::sum $sum` == 8 ]] && pass || fail

sum=(-1 2 -3 4 -5)
[[ `_::math::sum ${sum[@]}` == -3 ]] && pass || fail
