#!/bin/bash

h1 '_::now'

_::now | egrep -q '^[0-9]+$' && pass || fail

