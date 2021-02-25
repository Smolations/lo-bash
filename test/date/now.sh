#!/bin/bash

h1 'lo::now'

lo::now | egrep -q '^[0-9]+$' && pass || fail

