#!/bin/bash

h1 '_::lang::is_array'


alpha='1 2 3'
bravo=(1 2 3)

function arrayTest() {
  _::lang::is_array $1
}

_::lang::is_array bravo && pass || fail
arrayTest bravo && pass || fail

_::lang::is_array alpha && fail || pass
arrayTest alpha && fail || pass
