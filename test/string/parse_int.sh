#!/bin/bash

h1 '_::string::parse_int'

[[ "`_::string::parse_int 3`" == '3' ]] && pass || fail
[[ "`_::string::parse_int '03'`" == '3' ]] && pass || fail
[[ "`_::string::parse_int 3.321`" == '3' ]] && pass || fail
[[ "`_::string::parse_int '3abc'`" == '3' ]] && pass || fail
[[ "`_::string::parse_int '   3.4'`" == '3' ]] && pass || fail
[[ "`_::string::parse_int abc`" == '' ]] && pass || fail

# [[ "`_::string::parse_int abc`" == '' ]] && fail || pass

