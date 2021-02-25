#!/bin/bash

h1 '_::lang::lte'

_::lang::lte 1 3 && pass || fail
_::lang::lte -1 3 && pass || fail
_::lang::lte -1 -1 && pass || fail
_::lang::lte 2 '5' && pass || fail
_::lang::lte '1.233' '1.32' && pass || fail
_::lang::lte 'b' 'g' && pass || fail
_::lang::lte 'g' 'g' && pass || fail
_::lang::lte 'g' 'go' && pass || fail

_::lang::lte 3 1 && fail || pass
_::lang::lte 'bee' 'Bee' && fail || pass
_::lang::lte 'bees' 'bee' && fail || pass
