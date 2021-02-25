#!/bin/bash

h1 '_::date::now'

_::date::now | egrep -q '^[0-9]+$' && pass || fail

