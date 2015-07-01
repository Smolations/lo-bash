#!/bin/bash

h1 'trimLeft'

needle=3456
alpha="  ${needle}  "
bravo="00${needle}"


[ "`_.trimLeft "$alpha"`" == "${needle}  " ] && pass || fail
[ "`_.trimLeft "$bravo" 0`" == "$needle" ] && pass || fail

[ "`_.trimLeft "$alpha"`" == "${needle}" ] && fail || pass
