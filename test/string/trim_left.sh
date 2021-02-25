#!/bin/bash

h1 '_::string::trim_left'

needle=3456
alpha="  ${needle}  "
bravo="00${needle}"


[[ "`_::string::trim_left "$alpha"`" == "${needle}  " ]] && pass || fail
[[ "`_::string::trim_left "$bravo" 0`" == "$needle" ]] && pass || fail

[[ "`_::string::trim_left "$alpha"`" == "${needle}" ]] && fail || pass
