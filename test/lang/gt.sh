#!/bin/bash

h1 '_::gt'

_::gt 3 1 && pass || fail
_::gt 3 -1 && pass || fail
_::gt '5' 2 && pass || fail
_::gt '1.32' '1.233' && pass || fail
_::gt 'g' 'b' && pass || fail

_::gt 1 3 && fail || pass
_::gt 2 2 && fail || pass
_::gt 'bee' 'bees' && fail || pass
