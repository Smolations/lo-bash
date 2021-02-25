#!/bin/bash

h1 'lo::endsWith'

`lo::endsWith "abcdef" "def"` && pass || fail
`lo::endsWith "abcdefg" "def"` && fail || pass
# && pass || fail
