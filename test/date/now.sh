#!/bin/bash

h1 'now'

_.now | egrep -q '^[0-9]+$' && pass || fail

