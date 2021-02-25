#!/bin/bash

h1 '_::in_range'
# _::in_range(n, [start=0], end)


_::in_range 5 10 && pass || fail
_::in_range 5 4 10 && pass || fail

_::in_range 15 10 && fail || pass
_::in_range 5 6 10 && fail || pass
