#!/bin/bash

h1 'isFunction'


function whatwhat {
  :
}

whowho=(1 2 3)
whywhy='1 2 3'

_.isFunction whatwhat && pass || fail

_.isFunction whowho && fail || pass
_.isFunction whywhy && fail || pass
