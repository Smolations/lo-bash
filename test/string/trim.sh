#!/bin/bash

h1 '_trim'

needle=3456
alpha="  ${needle}  "
bravo="00${needle} 0"
charlie="0120${needle}01230"


[[ "`_trim "$alpha"`" == "${needle}" ]] && pass || fail
[[ "`_trim "$bravo" 0`" == "$needle " ]] && pass || fail
[[ "`_trim "$bravo" ' 0'`" == "$needle" ]] && pass || fail

[[ "`_trim "$charlie" '012'`" == "${needle}3" ]] && fail || pass
