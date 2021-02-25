#!/bin/bash

h1 '_::math::add'

[[ `_::math::add 1 3` == 4 ]] && pass || fail
[[ `_::math::add 2 -5` == -3 ]] && pass || fail
