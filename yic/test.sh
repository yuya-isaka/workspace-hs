#!/bin/bash

assert() {
  expected="$1"
  input="$2"
  result=$(runghc yic.hs "$input")
  if [ "$result" = "$expected" ]; then
    echo "$input => $result"
  else
    echo "$input => $expected expected, but got $result"
    exit 1
  fi
}

assert 0 "0"
assert 42 "42"
assert 21 "5 + 20 - 4"

echo OK
