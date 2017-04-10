#!/bin/bash

h1 '_array'


_._array myArray 1 2 3
[[ '2' == "${myArray[1]}" ]] && pass || fail

_._array myArray 'i' 'have several' 'elements'
[[ 'have several' == "${myArray[1]}" ]] && pass || fail

_._array myArray 'i hope' 'strings with "quotes"' 'will work'
[[ 'strings with "quotes"' == "${myArray[1]}" ]] && pass || fail

_._array emptyArray
_.isArray emptyArray && pass || fail

