#!/bin/bash

h1 '_::lang::gt'

_::lang::gt 3 1 && pass || fail
_::lang::gt 3 -1 && pass || fail
_::lang::gt '5' 2 && pass || fail
_::lang::gt '1.32' '1.233' && pass || fail
_::lang::gt 'g' 'b' && pass || fail

_::lang::gt 1 3 && fail || pass
_::lang::gt 2 2 && fail || pass
_::lang::gt 'bee' 'bees' && fail || pass
