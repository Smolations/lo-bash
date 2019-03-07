#!/bin/bash

h1 '_trimLeft'

needle=3456
alpha="  ${needle}  "
bravo="00${needle}"


[[ "`_trimLeft "$alpha"`" == "${needle}  " ]] && pass || fail
[[ "`_trimLeft "$bravo" 0`" == "$needle" ]] && pass || fail

[[ "`_trimLeft "$alpha"`" == "${needle}" ]] && fail || pass
