#!/bin/bash

h1 '_::eq'

_::eq 4 4 && pass || fail
_::eq 2 '2' && pass || fail
_::eq '2a' '2a' && pass || fail

_::eq 3 4 && fail || pass
_::eq '2a' '2b' && fail || pass
