#!/bin/bash

h1 '_::parse_int'

[[ "`_::parse_int 3`" == '3' ]] && pass || fail
[[ "`_::parse_int '03'`" == '3' ]] && pass || fail
[[ "`_::parse_int 3.321`" == '3' ]] && pass || fail
[[ "`_::parse_int '3abc'`" == '3' ]] && pass || fail
[[ "`_::parse_int '   3.4'`" == '3' ]] && pass || fail
[[ "`_::parse_int abc`" == '' ]] && pass || fail

# [[ "`_::parse_int abc`" == '' ]] && fail || pass

