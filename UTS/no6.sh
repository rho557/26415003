#!/bin/bash

echo "Masukkan N"
read N

for((i=0;i<N;i++)){
	echo "Masukkan nama"
	read name
	echo "Masukkan nrp"
	read nrp
	echo "Masukkan phone"
	read phone
	echo "Masukkan address"
	read address

	echo $name"|"$nrp"|"$phone"|"$address>>data.txt
}

awk -F"|" '{print $2"|"$1"|"$4"|"$3}' data.txt >>data2.txt

grep -v "Siwalankerto" data2.txt >>data3.txt
