#!/bin/bash

h1 '_::lt'

_::lt 1 3 && pass || fail
_::lt -1 3 && pass || fail
_::lt 2 '5' && pass || fail
_::lt '1.233' '1.32' && pass || fail
_::lt 'b' 'g' && pass || fail

_::lt 3 1 && fail || pass
_::lt 2 2 && fail || pass
_::lt 'bees' 'bee' && fail || pass
