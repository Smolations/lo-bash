#!/bin/bash

h1 'lb_array'


lb_array myArray 1 2 3
[[ '2' == "${myArray[1]}" ]] && pass || fail

lb_array myArray 'i' 'have several' 'elements'
[[ 'have several' == "${myArray[1]}" ]] && pass || fail

lb_array myArray 'i hope' 'strings with "quotes"' 'will work'
[[ 'strings with "quotes"' == "${myArray[1]}" ]] && pass || fail

lb_array emptyArray
lo::isArray emptyArray && pass || fail

