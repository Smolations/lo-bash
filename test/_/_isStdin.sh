#!/bin/bash

h1 '_isStdin'


! _._isStdin && pass || fail
echo "hi" | _._isStdin && pass || fail
