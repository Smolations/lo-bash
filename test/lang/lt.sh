#!/bin/bash

h1 'lo::lt'

lo::lt 1 3 && pass || fail
lo::lt -1 3 && pass || fail
lo::lt 2 '5' && pass || fail
lo::lt '1.233' '1.32' && pass || fail
lo::lt 'b' 'g' && pass || fail

lo::lt 3 1 && fail || pass
lo::lt 2 2 && fail || pass
lo::lt 'bees' 'bee' && fail || pass
