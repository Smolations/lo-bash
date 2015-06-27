#!/bin/bash

h1 'gt'

_.gt 3 1 && pass || fail
_.gt 1 3 && fail || pass
_.gt 2 2 && fail || pass
