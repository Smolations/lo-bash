#!/bin/bash

h1 '_now'

_now | egrep -q '^[0-9]+$' && pass || fail

