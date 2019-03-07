#!/bin/bash

h1 '_eq'

_eq 4 4 && pass || fail
_eq 2 '2' && pass || fail
_eq '2a' '2a' && pass || fail

_eq 3 4 && fail || pass
_eq '2a' '2b' && fail || pass
