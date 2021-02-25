#!/bin/bash

h1 'lo::startsWith'

`lo::startsWith "abcdef" "abc"` && pass || fail
`lo::startsWith "abcdefg" "bcd"` && fail || pass
# && pass || fail
