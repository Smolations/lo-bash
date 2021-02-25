#!/bin/bash

h1 'lo::difference'


# the basics. just numbers.
arr1=(1 2 3) expected1=(1 3)
arr2=(4 2)   expected2=(4)

lo::difference arr_diff1 arr1 arr2 && pass || fail "function error"
[[ "${#arr_diff1[*]}" == "${#expected1[*]}" ]] && pass || fail
[[ "${arr_diff1[0]}" == "${expected1[0]}" ]] && pass || fail
[[ "${arr_diff1[1]}" == "${expected1[1]}" ]] && pass || fail

lo::difference arr_diff2 arr2 arr1 && pass || fail "function error"
[[ "${#arr_diff2[*]}" == "${#expected2[*]}" ]] && pass || fail
[[ "${arr_diff2[0]}" == "${expected2[0]}" ]] && pass || fail


# check some string splitting
arr1=('dogs' 'are the' 'best') expected1=('dogs' 'are the')
arr2=('the absolute' 'best')   expected2=('the absolute')

lo::difference result1 arr1 arr2
[[ "${#result1[*]}" == "${#expected1[*]}" ]] && pass || fail "${#result1[*]} == ${#expected1[*]}"
[[ "${result1[0]}" == "${expected1[0]}" ]] && pass || fail "${result1[0]} == ${expected1[0]}"
[[ "${result1[1]}" == "${expected1[1]}" ]] && pass || fail "${result1[1]} == ${expected1[1]}"

lo::difference result2 arr2 arr1
[[ "${#result2[*]}" == "${#expected2[*]}" ]] && pass || fail "${#result2[*]} == ${#expected2[*]}"
[[ "${result2[0]}" == "${expected2[0]}" ]] && pass || fail "${result2[0]} == ${expected2[0]}"


# quoting
arr1=("so that's" '"your"' "given \"name?\"") expected1=("so that's" 'given "name?"')
arr2=("yes that's" '"your"' "given \"name\"") expected2=("yes that's" 'given "name"')

lo::difference result1 arr1 arr2
[[ "${#result1[*]}" == "${#expected1[*]}" ]] && pass || fail "${#result1[*]} == ${#expected1[*]}"
[[ "${result1[0]}" == "${expected1[0]}" ]] && pass || fail "${result1[0]} == ${expected1[0]}"
[[ "${result1[1]}" == "${expected1[1]}" ]] && pass || fail "${result1[1]} == ${expected1[1]}"

lo::difference result2 arr2 arr1
[[ "${#result2[*]}" == "${#expected2[*]}" ]] && pass || fail "${#result2[*]} == ${#expected2[*]}"
[[ "${result2[0]}" == "${expected2[0]}" ]] && pass || fail "${result2[0]} == ${expected2[0]}"
[[ "${result2[1]}" == "${expected2[1]}" ]] && pass || fail "${result2[1]} == ${expected2[1]}"


# escaping
# arr1=('dogs' 'are the' 'best') expected1=('dogs' 'are the')
# arr2=('the absolute' 'best')   expected2=('the absolute')

# lo::difference result1 arr1 arr2
# [ "${#result1[*]}" == "${#expected1[*]}" ] && pass || fail "${#result1[*]} == ${#expected1[*]}"
# [ "${result1[0]}" == "${expected1[0]}" ] && pass || fail "${result1[0]} == ${expected1[0]}"
# [ "${result1[1]}" == "${expected1[1]}" ] && pass || fail "${result1[1]} == ${expected1[1]}"

# lo::difference result2 arr2 arr1
# [ "${#result2[*]}" == "${#expected2[*]}" ] && pass || fail "${#result2[*]} == ${#expected2[*]}"
# [ "${result2[0]}" == "${expected2[0]}" ] && pass || fail "${result2[0]} == ${expected2[0]}"
