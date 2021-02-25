#!/bin/bash

h1 '_::math::max'

nums=(5 9 2 24 12 1 19.1 24.01 -4)

[[ "`_::math::max ${nums[@]}`" == '24.01' ]] && pass || fail
