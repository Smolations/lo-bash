#!/bin/bash

h1 '_math'

[ `_._math '1 + 2'` -eq 3 ] && pass || fail
[ `_._math '8 - 7'` -eq 1 ] && pass || fail
[ `_._math '5 * 5'` -eq 25 ] && pass || fail
[ "`_._math '7 / 2'`" == "3.5" ] && pass || fail
[ "`_._math '5 / 4'`" == "1.25" ] && pass || fail
[ "`_._math '2 / 3'`" == "0.6666666666666666" ] && pass || fail
