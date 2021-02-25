#!/bin/bash

h1 '_::lang::is_function'


function whatwhat() {
  :
}

whowho=(1 2 3)
whywhy='1 2 3'

_::lang::is_function whatwhat && pass || fail

_::lang::is_function whowho && fail || pass
_::lang::is_function whywhy && fail || pass
