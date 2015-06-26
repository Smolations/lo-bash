#!/bin/bash

echo ' ---== test: _.add(1)'

[ `_.add 1 3` -eq 4 ] && echo '1 + 3 = 4'
