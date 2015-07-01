#!/bin/bash

h1 'isEqual'

_.isEqual 4 4 && pass || fail
_.isEqual 2 '2' && pass || fail
_.isEqual '2a' '2a' && pass || fail

_.isEqual 3 4 && fail || pass
_.isEqual '2a' '2b' && fail || pass
