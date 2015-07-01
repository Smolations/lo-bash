#!/bin/bash

h1 'difference'


# the basics. just numbers.
arr1=(1 2 3) expected1=(1 3)
arr2=(4 2)   expected2=(4)

result1=( `_.difference arr1 arr2` )
result2=( `_.difference arr2 arr1` )

[ "${#result1[*]}" == "${#expected1[*]}" ] && pass || fail
[ "${result1[0]}" == "${expected1[0]}" ] && pass || fail
[ "${result1[1]}" == "${expected1[1]}" ] && pass || fail

[ "${#result2[*]}" == "${#expected2[*]}" ] && pass || fail
[ "${result2[0]}" == "${expected2[0]}" ] && pass || fail


# check some string splitting
arr1=('dogs' 'are the' 'best') expected1=('dogs' 'are the')
arr2=('the absolute' 'best')   expected2=('the absolute')

result1=( `_.difference arr1 arr2` )
result2=( `_.difference arr2 arr1` )

[ "${#result1[*]}" == "${#expected1[*]}" ] && pass || fail "${#result1[*]} == ${#expected1[*]}"
[ "${result1[0]}" == "${expected1[0]}" ] && pass || fail "${result1[0]} == ${expected1[0]}"
[ "${result1[1]}" == "${expected1[1]}" ] && pass || fail "${result1[1]} == ${expected1[1]}"

[ "${#result2[*]}" == "${#expected2[*]}" ] && pass || fail "${#result2[*]} == ${#expected2[*]}"
[ "${result2[0]}" == "${expected2[0]}" ] && pass || fail "${result2[0]} == ${expected2[0]}"


# quoting
# arr1=('dogs' 'are the' 'best') expected1=('dogs' 'are the')
# arr2=('the absolute' 'best')   expected2=('the absolute')

# result1=( `_.difference arr1 arr2` )
# result2=( `_.difference arr2 arr1` )

# [ "${#result1[*]}" == "${#expected1[*]}" ] && pass || fail
# [ "${result1[0]}" == "${expected1[0]}" ] && pass || fail
# [ "${result1[1]}" == "${expected1[1]}" ] && pass || fail

# [ "${#result2[*]}" == "${#expected2[*]}" ] && pass || fail
# [ "${result2[0]}" == "${expected2[0]}" ] && pass || fail


# escaping
# arr1=('dogs' 'are the' 'best') expected1=('dogs' 'are the')
# arr2=('the absolute' 'best')   expected2=('the absolute')

# result1=( `_.difference arr1 arr2` )
# result2=( `_.difference arr2 arr1` )

# [ "${#result1[*]}" == "${#expected1[*]}" ] && pass || fail
# [ "${result1[0]}" == "${expected1[0]}" ] && pass || fail
# [ "${result1[1]}" == "${expected1[1]}" ] && pass || fail

# [ "${#result2[*]}" == "${#expected2[*]}" ] && pass || fail
# [ "${result2[0]}" == "${expected2[0]}" ] && pass || fail
