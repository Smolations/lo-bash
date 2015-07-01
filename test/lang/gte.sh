#!/bin/bash

h1 'gte'

_.gte 3 1 && pass || fail
_.gte 3 -1 && pass || fail
_.gte -1 -1 && pass || fail
_.gte '5' 2 && pass || fail
_.gte '1.32' '1.233' && pass || fail
_.gte 'g' 'b' && pass || fail
_.gte 'g' 'g' && pass || fail
_.gte 'go' 'g' && pass || fail

_.gte 1 3 && fail || pass
_.gte 'Bee' 'bee' && fail || pass
_.gte 'bee' 'bees' && fail || pass
