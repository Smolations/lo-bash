#!/bin/bash

h1 'lo::isStdin'


! lo::isStdin && pass || fail
echo "hi" | lo::isStdin && pass || fail
