#!/bin/bash

h1 'lo::inRange'
# lo::inRange(n, [start=0], end)


lo::inRange 5 10 && pass || fail
lo::inRange 5 4 10 && pass || fail

lo::inRange 15 10 && fail || pass
lo::inRange 5 6 10 && fail || pass
