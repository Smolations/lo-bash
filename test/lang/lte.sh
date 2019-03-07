#!/bin/bash

h1 '_lte'

_lte 1 3 && pass || fail
_lte -1 3 && pass || fail
_lte -1 -1 && pass || fail
_lte 2 '5' && pass || fail
_lte '1.233' '1.32' && pass || fail
_lte 'b' 'g' && pass || fail
_lte 'g' 'g' && pass || fail
_lte 'g' 'go' && pass || fail

_lte 3 1 && fail || pass
_lte 'bee' 'Bee' && fail || pass
_lte 'bees' 'bee' && fail || pass
