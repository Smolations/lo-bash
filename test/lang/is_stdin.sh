#!/bin/bash

h1 '_::lang::is_stdin'


! _::lang::is_stdin && pass || fail
echo "hi" | _::lang::is_stdin && pass || fail
