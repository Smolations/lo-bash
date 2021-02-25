#!/bin/bash

h1 'lo::trim'

needle=3456
alpha="  ${needle}  "
bravo="00${needle} 0"
charlie="0120${needle}01230"


[[ "`lo::trim "$alpha"`" == "${needle}" ]] && pass || fail
[[ "`lo::trim "$bravo" 0`" == "$needle " ]] && pass || fail
[[ "`lo::trim "$bravo" ' 0'`" == "$needle" ]] && pass || fail

[[ "`lo::trim "$charlie" '012'`" == "${needle}3" ]] && fail || pass
