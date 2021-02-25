#!/bin/bash

h1 '_::gte'

_::gte 3 1 && pass || fail "_::gte 3 1"
_::gte 3 -1 && pass || fail "_::gte 3 -1"
_::gte -1 -1 && pass || fail "_::gte -1 -1"
_::gte '5' 2 && pass || fail "_::gte '5' 2"
_::gte '1.32' '1.233' && pass || fail "_::gte '1.32' '1.233'"
_::gte 'g' 'b' && pass || fail "_::gte 'g' 'b'"
_::gte 'g' 'g' && pass || fail "_::gte 'g' 'g'"
_::gte 'go' 'g' && pass || fail "_::gte 'go' 'g'"

_::gte 1 3 && fail "_::gte 1 3" || pass
_::gte 'Bee' 'bee' && fail "_::gte 'Bee' 'bee'" || pass
_::gte 'bee' 'bees' && fail "_::gte 'bee' 'bees'" || pass
