#!/bin/bash

h1 'lb_slash'

slashed=`lb_slash 'should be "two slashes"'`

# echo "$slashed" && pass
skip # egrep -q '\\' <<< "$slashed" && pass || fail


quote_cnt=`egrep -c '"' <<< "$slashed"`
# echo $quote_cnt
