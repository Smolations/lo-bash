#!/bin/bash

h1 'lo::lte'

lo::lte 1 3 && pass || fail
lo::lte -1 3 && pass || fail
lo::lte -1 -1 && pass || fail
lo::lte 2 '5' && pass || fail
lo::lte '1.233' '1.32' && pass || fail
lo::lte 'b' 'g' && pass || fail
lo::lte 'g' 'g' && pass || fail
lo::lte 'g' 'go' && pass || fail

lo::lte 3 1 && fail || pass
lo::lte 'bee' 'Bee' && fail || pass
lo::lte 'bees' 'bee' && fail || pass
