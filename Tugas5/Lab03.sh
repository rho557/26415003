#!/bin/bash

read input;

curl $input > Lab01.txt;

grep -n -v  '^<!' <Lab01.txt;
