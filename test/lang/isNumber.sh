#!/bin/bash

h1 'lo::isNumber'

lo::isNumber .4 && pass || fail
lo::isNumber 4. && pass || fail
lo::isNumber 4 && pass || fail
lo::isNumber -5 && pass || fail
lo::isNumber 7.312 && pass || fail
lo::isNumber '65' && pass || fail

lo::isNumber 7.3.12 && fail || pass
lo::isNumber 'a' && fail || pass
lo::isNumber '2a' && fail || pass
lo::isNumber 7.-312 && fail || pass
