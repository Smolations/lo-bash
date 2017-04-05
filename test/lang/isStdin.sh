#!/bin/bash

h1 'isStdin'


! _.isStdin && pass || fail
echo "hi" | _.isStdin && pass || fail
