#!/bin/bash

h1 'lo::min'

nums=(5 9 2 24 12 1 19.1 24.01 -4)

[[ "`lo::min ${nums[@]}`" == '-4' ]] && pass || fail
