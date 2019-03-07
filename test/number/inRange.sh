#!/bin/bash

h1 '_inRange'
# _inRange(n, [start=0], end)


_inRange 5 10 && pass || fail
_inRange 5 4 10 && pass || fail

_inRange 15 10 && fail || pass
_inRange 5 6 10 && fail || pass
