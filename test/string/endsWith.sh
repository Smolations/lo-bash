#!/bin/bash

h1 '_::ends_with'

`_::ends_with "abcdef" "def"` && pass || fail
`_::ends_with "abcdefg" "def"` && fail || pass
# && pass || fail
