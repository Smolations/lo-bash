#!/bin/bash

h1 'lo::gt'

lo::gt 3 1 && pass || fail
lo::gt 3 -1 && pass || fail
lo::gt '5' 2 && pass || fail
lo::gt '1.32' '1.233' && pass || fail
lo::gt 'g' 'b' && pass || fail

lo::gt 1 3 && fail || pass
lo::gt 2 2 && fail || pass
lo::gt 'bee' 'bees' && fail || pass
