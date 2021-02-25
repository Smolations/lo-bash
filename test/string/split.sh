#!/bin/bash

h1 '_::string::split'


str="what's up guys?"

_::string::split "$str" "z" splitArray
[[ ${#splitArray[*]} == 1 ]] && pass || fail "${#splitArray[*]} == 1"
[[ "${splitArray[0]}" == "$str" ]] && pass || fail

_::string::split "$str" " " splitArray
[[ ${#splitArray[*]} == 3 ]] && pass || fail "${#splitArray[*]} == 3"
[[ "${splitArray[1]}" == "up" ]] && pass || fail

_::string::split "$str" "'" splitArray
[[ ${#splitArray[*]} == 2 ]] && pass || fail "${#splitArray[*]} == 2"
[[ "${splitArray[1]}" == "s up guys?" ]] && pass || fail

_::string::split "$str" "?" splitArray
[[ ${#splitArray[*]} == 2 ]] && pass || fail "${#splitArray[*]} == 2"
[[ "${splitArray[1]}" == "" ]] && pass || fail

_::string::split "$str" "w" splitArray
[[ ${#splitArray[*]} == 2 ]] && pass || fail "${#splitArray[*]} == 2"
[[ "${splitArray[1]}" == "hat's up guys?" ]] && pass || fail

_::string::split "$str" " up " splitArray
[[ ${#splitArray[*]} == 2 ]] && pass || fail "${#splitArray[*]} == 2"
[[ "${splitArray[1]}" == "guys?" ]] && pass || fail

# && pass || fail
