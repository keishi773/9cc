#!/bin/bash
try(){
 expected="$1"
 input="$2"

 ./a1 "$input" > test3.s
 gcc -o test3 test3.s
 ./test3
 actual="$?"

 if [ "$actual" = "$expected" ]; then
	echo "$input => $actual"
 else
	echo "$input => $expected expected, but got $actual"
	exit 1
 fi
}

try 0 0
try 42 42

echo OK
