#!/bin/bash

h1 '_add'

[[ `_add 1 3` == 4 ]] && pass || fail
[[ `_add 2 -5` == -3 ]] && pass || fail
