#!/bin/bash

h1 'trimRight'

needle=3456
alpha="  ${needle}  "
bravo="${needle}00"


[ "`_.trimRight "$alpha"`" == "  ${needle}" ] && pass || fail
[ "`_.trimRight "$bravo" 0`" == "$needle" ] && pass || fail

[ "`_.trimRight "$alpha"`" == "${needle}" ] && fail || pass
