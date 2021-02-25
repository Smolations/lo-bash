#!/bin/bash

h1 'lo::isEqual'

lo::isEqual 4 4 && pass || fail
lo::isEqual 2 '2' && pass || fail
lo::isEqual '2a' '2a' && pass || fail

lo::isEqual 3 4 && fail || pass
lo::isEqual '2a' '2b' && fail || pass
