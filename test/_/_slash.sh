#!/bin/bash

h1 '_slash'

slashed=`_._slash 'should be "two slashes"'`
# echo "$slashed" && pass
egrep -q '\\' <<< "$slashed" && pass || fail
