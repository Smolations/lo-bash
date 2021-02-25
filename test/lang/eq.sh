#!/bin/bash

h1 'lo::eq'

lo::eq 4 4 && pass || fail
lo::eq 2 '2' && pass || fail
lo::eq '2a' '2a' && pass || fail

lo::eq 3 4 && fail || pass
lo::eq '2a' '2b' && fail || pass
