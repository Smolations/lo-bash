#!/bin/bash

h1 '_::is_array'


alpha='1 2 3'
bravo=(1 2 3)

function arrayTest() {
  _::is_array $1
}

_::is_array bravo && pass || fail
arrayTest bravo && pass || fail

_::is_array alpha && fail || pass
arrayTest alpha && fail || pass
