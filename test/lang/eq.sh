#!/bin/bash

h1 '_::lang::eq'

_::lang::eq 4 4 && pass || fail
_::lang::eq 2 '2' && pass || fail
_::lang::eq '2a' '2a' && pass || fail

_::lang::eq 3 4 && fail || pass
_::lang::eq '2a' '2b' && fail || pass
