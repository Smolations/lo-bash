#!/bin/bash

h1 '_endsWith'

`_endsWith "abcdef" "def"` && pass || fail
`_endsWith "abcdefg" "def"` && fail || pass
# && pass || fail
