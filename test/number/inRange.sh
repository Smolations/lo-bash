#!/bin/bash

h1 'inRange'
# _.inRange(n, [start=0], end)


_.inRange 5 10 && pass || fail
_.inRange 5 4 10 && pass || fail

_.inRange 15 10 && fail || pass
_.inRange 5 6 10 && fail || pass
