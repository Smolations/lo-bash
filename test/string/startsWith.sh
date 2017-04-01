#!/bin/bash

h1 'startsWith'

`_.startsWith "abcdef" "abc"` && pass || fail
`_.startsWith "abcdefg" "bcd"` && fail || pass
# && pass || fail
