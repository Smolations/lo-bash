#!/bin/bash

h1 '_startsWith'

`_startsWith "abcdef" "abc"` && pass || fail
`_startsWith "abcdefg" "bcd"` && fail || pass
# && pass || fail
