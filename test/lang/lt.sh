#!/bin/bash

h1 '_::lang::lt'

_::lang::lt 1 3 && pass || fail
_::lang::lt -1 3 && pass || fail
_::lang::lt 2 '5' && pass || fail
_::lang::lt '1.233' '1.32' && pass || fail
_::lang::lt 'b' 'g' && pass || fail

_::lang::lt 3 1 && fail || pass
_::lang::lt 2 2 && fail || pass
_::lang::lt 'bees' 'bee' && fail || pass
