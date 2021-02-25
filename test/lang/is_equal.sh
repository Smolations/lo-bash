#!/bin/bash

h1 '_::lang::is_equal'

_::lang::is_equal 4 4 && pass || fail
_::lang::is_equal 2 '2' && pass || fail
_::lang::is_equal '2a' '2a' && pass || fail

_::lang::is_equal 3 4 && fail || pass
_::lang::is_equal '2a' '2b' && fail || pass
