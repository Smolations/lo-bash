#!/bin/bash

h1 '_gt'

_gt 3 1 && pass || fail
_gt 3 -1 && pass || fail
_gt '5' 2 && pass || fail
_gt '1.32' '1.233' && pass || fail
_gt 'g' 'b' && pass || fail

_gt 1 3 && fail || pass
_gt 2 2 && fail || pass
_gt 'bee' 'bees' && fail || pass
