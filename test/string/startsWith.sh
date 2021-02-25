#!/bin/bash

h1 '_::starts_with'

`_::starts_with "abcdef" "abc"` && pass || fail
`_::starts_with "abcdefg" "bcd"` && fail || pass
# && pass || fail
