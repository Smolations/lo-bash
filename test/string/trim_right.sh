#!/bin/bash

h1 '_::string::trim_right'

needle=3456
alpha="  ${needle}  "
bravo="${needle}00"


[[ "`_::string::trim_right "$alpha"`" == "  ${needle}" ]] && pass || fail
[[ "`_::string::trim_right "$bravo" 0`" == "$needle" ]] && pass || fail

[[ "`_::string::trim_right "$alpha"`" == "${needle}" ]] && fail || pass
