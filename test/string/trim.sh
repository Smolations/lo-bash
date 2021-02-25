#!/bin/bash

h1 '_::string::trim'

needle=3456
alpha="  ${needle}  "
bravo="00${needle} 0"
charlie="0120${needle}01230"


[[ "`_::string::trim "$alpha"`" == "${needle}" ]] && pass || fail
[[ "`_::string::trim "$bravo" 0`" == "$needle " ]] && pass || fail
[[ "`_::string::trim "$bravo" ' 0'`" == "$needle" ]] && pass || fail

[[ "`_::string::trim "$charlie" '012'`" == "${needle}3" ]] && fail || pass
