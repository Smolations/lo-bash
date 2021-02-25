#!/bin/bash

h1 '_::lang::is_number'

_::lang::is_number .4 && pass || fail
_::lang::is_number 4. && pass || fail
_::lang::is_number 4 && pass || fail
_::lang::is_number -5 && pass || fail
_::lang::is_number 7.312 && pass || fail
_::lang::is_number '65' && pass || fail

_::lang::is_number 7.3.12 && fail || pass
_::lang::is_number 'a' && fail || pass
_::lang::is_number '2a' && fail || pass
_::lang::is_number 7.-312 && fail || pass
