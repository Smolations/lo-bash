#!/bin/bash

# echo 'test: _.now(1)'
echo ' ---== test: now(1)'

_.now | egrep '^[0-9]+$'
