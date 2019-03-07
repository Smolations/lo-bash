#!/bin/bash

h1 '_isNumber'

_isNumber .4 && pass || fail
_isNumber 4. && pass || fail
_isNumber 4 && pass || fail
_isNumber -5 && pass || fail
_isNumber 7.312 && pass || fail
_isNumber '65' && pass || fail

_isNumber 7.3.12 && fail || pass
_isNumber 'a' && fail || pass
_isNumber '2a' && fail || pass
_isNumber 7.-312 && fail || pass
