#!/bin/bash

h1 'isArray'


alpha='1 2 3'
bravo=(1 2 3)

function arrayTest {
  _.isArray $1
}

_.isArray bravo && pass || fail
arrayTest bravo && pass || fail

_.isArray alpha && fail || pass
arrayTest alpha && fail || pass
