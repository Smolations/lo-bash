#!/bin/bash

h1 '_isArray'


alpha='1 2 3'
bravo=(1 2 3)

function arrayTest {
  _isArray $1
}

_isArray bravo && pass || fail
arrayTest bravo && pass || fail

_isArray alpha && fail || pass
arrayTest alpha && fail || pass
