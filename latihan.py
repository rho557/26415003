#!/usr/bin/python
import json
import os
from collections import defaultdict
from pprint import pprint

test = defaultdict(int)

total = 0
int1 = 0
for a in range(1, 12):
	arglist = a
	bashCommand = "/bin/bash latihan.sh %d" % arglist
	os.system(bashCommand)
	with open('latihan.txt') as data_file:
		data = json.load(data_file)

	for x in data['data']:
		print x['name'],
		print x['low'],
		print x['high'],
		print x['average'],
