#!/bin/bash

h1 'lo::parseInt'

[[ "`lo::parseInt 3`" == '3' ]] && pass || fail
[[ "`lo::parseInt '03'`" == '3' ]] && pass || fail
[[ "`lo::parseInt 3.321`" == '3' ]] && pass || fail
[[ "`lo::parseInt '3abc'`" == '3' ]] && pass || fail
[[ "`lo::parseInt '   3.4'`" == '3' ]] && pass || fail
[[ "`lo::parseInt abc`" == '' ]] && pass || fail

# [[ "`lo::parseInt abc`" == '' ]] && fail || pass

