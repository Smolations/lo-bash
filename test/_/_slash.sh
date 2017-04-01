#!/bin/bash

h1 '_slash'

slashed=`_._slash 'should be "two slashes"'`

# echo "$slashed" && pass
skip # egrep -q '\\' <<< "$slashed" && pass || fail


quote_cnt=`egrep -c '"' <<< "$slashed"`
# echo $quote_cnt
