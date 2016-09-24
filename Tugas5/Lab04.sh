#!/bin/bash

read input;
curl $input > Lab03.txt;

sed -e  's/<[^>]*>//g' <Lab03.txt;
