#!/bin/bash

h1 '_lt'

_lt 1 3 && pass || fail
_lt -1 3 && pass || fail
_lt 2 '5' && pass || fail
_lt '1.233' '1.32' && pass || fail
_lt 'b' 'g' && pass || fail

_lt 3 1 && fail || pass
_lt 2 2 && fail || pass
_lt 'bees' 'bee' && fail || pass
