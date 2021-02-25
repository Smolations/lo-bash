#!/bin/bash

h1 '_::string::starts_with'

`_::string::starts_with "abcdef" "abc"` && pass || fail
`_::string::starts_with "abcdefg" "bcd"` && fail || pass
# && pass || fail
