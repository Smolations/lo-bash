#!/bin/bash

h1 'lb_math'

[[ `lb_math '1 + 2'` == 3 ]] && pass || fail
[[ `lb_math '8 - 7'` == 1 ]] && pass || fail
[[ `lb_math '5 * 5'` == 25 ]] && pass || fail
[[ "`lb_math '7 / 2'`" == "3.5" ]] && pass || fail
[[ "`lb_math '5 / 4'`" == "1.25" ]] && pass || fail
[[ "`lb_math '2 / 3'`" == "0.6666666666666666" ]] && pass || fail
