#!/bin/bash

h1 '_trimRight'

needle=3456
alpha="  ${needle}  "
bravo="${needle}00"


[[ "`_trimRight "$alpha"`" == "  ${needle}" ]] && pass || fail
[[ "`_trimRight "$bravo" 0`" == "$needle" ]] && pass || fail

[[ "`_trimRight "$alpha"`" == "${needle}" ]] && fail || pass
