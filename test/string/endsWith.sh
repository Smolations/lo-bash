#!/bin/bash

h1 'endsWith'

`_.endsWith "abcdef" "def"` && pass || fail
`_.endsWith "abcdefg" "def"` && fail || pass
# && pass || fail
