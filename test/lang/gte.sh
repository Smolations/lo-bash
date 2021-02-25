#!/bin/bash

h1 '_::lang::gte'

_::lang::gte 3 1 && pass || fail "_::lang::gte 3 1"
_::lang::gte 3 -1 && pass || fail "_::lang::gte 3 -1"
_::lang::gte -1 -1 && pass || fail "_::lang::gte -1 -1"
_::lang::gte '5' 2 && pass || fail "_::lang::gte '5' 2"
_::lang::gte '1.32' '1.233' && pass || fail "_::lang::gte '1.32' '1.233'"
_::lang::gte 'g' 'b' && pass || fail "_::lang::gte 'g' 'b'"
_::lang::gte 'g' 'g' && pass || fail "_::lang::gte 'g' 'g'"
_::lang::gte 'go' 'g' && pass || fail "_::lang::gte 'go' 'g'"

_::lang::gte 1 3 && fail "_::lang::gte 1 3" || pass
_::lang::gte 'Bee' 'bee' && fail "_::lang::gte 'Bee' 'bee'" || pass
_::lang::gte 'bee' 'bees' && fail "_::lang::gte 'bee' 'bees'" || pass
