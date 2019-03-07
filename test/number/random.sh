#!/bin/bash

h1 '_random'

rand_max=100
rand_min=10

test_default=true
test_max=true
test_min_max=true


for (( i = 0; i < 50; i++ )); do
  ran_default=`_random`
  ran_max=`_random $rand_max`
  ran_min_max=`_random $rand_min $rand_max`

  [[ $test_default ]] && (( ran_default < 0 || ran_default > 100 )) && test_default=
  [[ $test_max ]] && (( ran_max < 0 || ran_max > rand_max )) && test_max=
  [[ $test_min_max ]] && (( ran_min_max < rand_min || ran_min_max > rand_max )) && test_min_max=
done


[[ $test_default ]] && pass || fail
[[ $test_max ]] && pass || fail
[[ $test_min_max ]] && pass || fail
_random 1 10 >/dev/null && pass || fail
_random 10 1 >/dev/null && fail || pass
