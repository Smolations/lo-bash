#!/bin/bash

h1 'add'

[ `_.add 1 3` -eq 4 ] && pass || fail
[ `_.add 2 -5` -eq -3 ] && pass || fail
