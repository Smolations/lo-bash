#!/bin/bash

h1 'lo::isArray'


alpha='1 2 3'
bravo=(1 2 3)

function arrayTest {
  lo::isArray $1
}

lo::isArray bravo && pass || fail
arrayTest bravo && pass || fail

lo::isArray alpha && fail || pass
arrayTest alpha && fail || pass
