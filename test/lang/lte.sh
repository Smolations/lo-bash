#!/bin/bash

h1 'lte'

_.lte 1 3 && pass || fail
_.lte -1 3 && pass || fail
_.lte -1 -1 && pass || fail
_.lte 2 '5' && pass || fail
_.lte '1.233' '1.32' && pass || fail
_.lte 'b' 'g' && pass || fail
_.lte 'g' 'g' && pass || fail
_.lte 'g' 'go' && pass || fail

_.lte 3 1 && fail || pass
_.lte 'bee' 'Bee' && fail || pass
_.lte 'bees' 'bee' && fail || pass
