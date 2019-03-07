#!/bin/bash

h1 '_parseInt'

[[ "`_parseInt 3`" == '3' ]] && pass || fail
[[ "`_parseInt '03'`" == '3' ]] && pass || fail
[[ "`_parseInt 3.321`" == '3' ]] && pass || fail
[[ "`_parseInt '3abc'`" == '3' ]] && pass || fail
[[ "`_parseInt '   3.4'`" == '3' ]] && pass || fail
[[ "`_parseInt abc`" == '' ]] && pass || fail

# [[ "`_parseInt abc`" == '' ]] && fail || pass

