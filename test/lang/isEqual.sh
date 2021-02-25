#!/bin/bash

h1 '_::is_equal'

_::is_equal 4 4 && pass || fail
_::is_equal 2 '2' && pass || fail
_::is_equal '2a' '2a' && pass || fail

_::is_equal 3 4 && fail || pass
_::is_equal '2a' '2b' && fail || pass
