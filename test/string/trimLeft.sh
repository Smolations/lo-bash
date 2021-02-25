#!/bin/bash

h1 'lo::trimLeft'

needle=3456
alpha="  ${needle}  "
bravo="00${needle}"


[[ "`lo::trimLeft "$alpha"`" == "${needle}  " ]] && pass || fail
[[ "`lo::trimLeft "$bravo" 0`" == "$needle" ]] && pass || fail

[[ "`lo::trimLeft "$alpha"`" == "${needle}" ]] && fail || pass
