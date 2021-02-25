#!/bin/bash

h1 '_::is_stdin'


! _::is_stdin && pass || fail
echo "hi" | _::is_stdin && pass || fail
