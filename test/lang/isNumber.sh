#!/bin/bash

h1 'isNumber'

_.isNumber .4 && pass || fail
_.isNumber 4. && pass || fail
_.isNumber 4 && pass || fail
_.isNumber -5 && pass || fail
_.isNumber 7.312 && pass || fail
_.isNumber '65' && pass || fail

_.isNumber 7.3.12 && fail || pass
_.isNumber 'a' && fail || pass
_.isNumber '2a' && fail || pass
_.isNumber 7.-312 && fail || pass
