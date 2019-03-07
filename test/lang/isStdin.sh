#!/bin/bash

h1 '_isStdin'


! _isStdin && pass || fail
echo "hi" | _isStdin && pass || fail
