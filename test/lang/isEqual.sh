#!/bin/bash

h1 '_isEqual'

_isEqual 4 4 && pass || fail
_isEqual 2 '2' && pass || fail
_isEqual '2a' '2a' && pass || fail

_isEqual 3 4 && fail || pass
_isEqual '2a' '2b' && fail || pass
