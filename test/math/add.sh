#!/bin/bash

h1 'add'

[[ `_.add 1 3` == 4 ]] && pass || fail
[[ `_.add 2 -5` == -3 ]] && pass || fail
