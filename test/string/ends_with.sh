#!/bin/bash

h1 '_::string::ends_with'

`_::string::ends_with "abcdef" "def"` && pass || fail
`_::string::ends_with "abcdefg" "def"` && fail || pass
# && pass || fail
