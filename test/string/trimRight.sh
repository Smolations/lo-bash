#!/bin/bash

h1 'lo::trimRight'

needle=3456
alpha="  ${needle}  "
bravo="${needle}00"


[[ "`lo::trimRight "$alpha"`" == "  ${needle}" ]] && pass || fail
[[ "`lo::trimRight "$bravo" 0`" == "$needle" ]] && pass || fail

[[ "`lo::trimRight "$alpha"`" == "${needle}" ]] && fail || pass
