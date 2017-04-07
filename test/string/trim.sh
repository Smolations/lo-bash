#!/bin/bash

h1 'trim'

needle=3456
alpha="  ${needle}  "
bravo="00${needle} 0"
charlie="0120${needle}01230"


[[ "`_.trim "$alpha"`" == "${needle}" ]] && pass || fail
[[ "`_.trim "$bravo" 0`" == "$needle " ]] && pass || fail
[[ "`_.trim "$bravo" ' 0'`" == "$needle" ]] && pass || fail

[[ "`_.trim "$charlie" '012'`" == "${needle}3" ]] && fail || pass
