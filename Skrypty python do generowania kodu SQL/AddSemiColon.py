import random
filepath = "dboKonta.txt"
x=1
string=""
with open(filepath) as fp:
    lines = fp.read().splitlines()
with open(filepath, "w") as fp:
    for line in lines:
        print(line + ";", file=fp)
