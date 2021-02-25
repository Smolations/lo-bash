#!/bin/bash

h1 'lo::gte'

lo::gte 3 1 && pass || fail "lo::gte 3 1"
lo::gte 3 -1 && pass || fail "lo::gte 3 -1"
lo::gte -1 -1 && pass || fail "lo::gte -1 -1"
lo::gte '5' 2 && pass || fail "lo::gte '5' 2"
lo::gte '1.32' '1.233' && pass || fail "lo::gte '1.32' '1.233'"
lo::gte 'g' 'b' && pass || fail "lo::gte 'g' 'b'"
lo::gte 'g' 'g' && pass || fail "lo::gte 'g' 'g'"
lo::gte 'go' 'g' && pass || fail "lo::gte 'go' 'g'"

lo::gte 1 3 && fail "lo::gte 1 3" || pass
lo::gte 'Bee' 'bee' && fail "lo::gte 'Bee' 'bee'" || pass
lo::gte 'bee' 'bees' && fail "lo::gte 'bee' 'bees'" || pass
