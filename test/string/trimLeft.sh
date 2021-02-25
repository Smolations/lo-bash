#!/bin/bash

h1 '_::trim_left'

needle=3456
alpha="  ${needle}  "
bravo="00${needle}"


[[ "`_::trim_left "$alpha"`" == "${needle}  " ]] && pass || fail
[[ "`_::trim_left "$bravo" 0`" == "$needle" ]] && pass || fail

[[ "`_::trim_left "$alpha"`" == "${needle}" ]] && fail || pass
