#!/bin/bash
echo ' ---== test: _.gt(3)'

_.gt 3 1 && echo '3 > 1'
_.gt 1 3 || echo '1 !> 3'
_.gt 2 2 || echo '2 !> 2'
