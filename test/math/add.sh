#!/bin/bash

h1 'lo::add'

[[ `lo::add 1 3` == 4 ]] && pass || fail
[[ `lo::add 2 -5` == -3 ]] && pass || fail
