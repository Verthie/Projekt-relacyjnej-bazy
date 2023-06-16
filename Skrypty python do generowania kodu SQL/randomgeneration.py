#program do generowania randomowych danych do baz
import random
x=0
y=501
string=""
filepath = "DaneDoOplaty.txt"
with open(filepath) as fp:
    lines = fp.read().splitlines()
with open(filepath, "w") as fp:
    for i in range(200):
        x=random.randint(10,30)*10
        print("UPDATE dbo.Oplaty SET wysokoscoplaty values (" + str(x) + ") WHERE oplataid = " + str(y) , file=fp)
        y+=1
