#!/bin/bash

h1 '_::number::in_range'
# _::number::in_range(n, [start=0], end)


_::number::in_range 5 10 && pass || fail
_::number::in_range 5 4 10 && pass || fail

_::number::in_range 15 10 && fail || pass
_::number::in_range 5 6 10 && fail || pass
