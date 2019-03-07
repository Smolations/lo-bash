#!/bin/bash

h1 '_gte'

_gte 3 1 && pass || fail "_gte 3 1"
_gte 3 -1 && pass || fail "_gte 3 -1"
_gte -1 -1 && pass || fail "_gte -1 -1"
_gte '5' 2 && pass || fail "_gte '5' 2"
_gte '1.32' '1.233' && pass || fail "_gte '1.32' '1.233'"
_gte 'g' 'b' && pass || fail "_gte 'g' 'b'"
_gte 'g' 'g' && pass || fail "_gte 'g' 'g'"
_gte 'go' 'g' && pass || fail "_gte 'go' 'g'"

_gte 1 3 && fail "_gte 1 3" || pass
_gte 'Bee' 'bee' && fail "_gte 'Bee' 'bee'" || pass
_gte 'bee' 'bees' && fail "_gte 'bee' 'bees'" || pass
