#!/bin/bash

echo "Jumlah input = "
read n

rm data.txt

for ((number = 0;number < n ;number++))
{
echo "masukkan nrp= "
read nrp
echo "masukkan nama= "
read nama
echo "Masukkan address= "
read address
echo "Masukkan telp= "
read telp

echo "$nrp|$nama|$address|$telp" >> data.txt

}

awk -F "|" '{nrp[NR]=$1;nama[NR]=$2;add[NR]=$3;telp[NR]=$4} {for (i in nrp) printf"%s|%s|%s|%s\n",nama[i],nrp[i],telp[i],add[i]}' data.txt > data2.txt
awk -F "|" '{nama[NR]=$1;nrp[NR]=$2;telp[NR]=$3;add[NR]=$4} {for (i in nama) if (add[i]!="siwalankerto") printf"%s|%s|%s|%s\n",nama[i],nrp[i],telp[i],add[i]}' data2.txt > data3.txt
