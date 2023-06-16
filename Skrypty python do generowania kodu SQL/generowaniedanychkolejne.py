#samo generowanie danych
import random
x=0
y=1
string=""
filepath = "DaneDoRodzajOceny.txt"
with open(filepath, "w") as fp:
    for i in range(2000):
        x=random.randint(1,3)
        if x==1:
            string="'Kolokwium'"
        elif x==2:
            string="'Projekt'"
        else:
            string="'Laboratorium'"
        print("insert into dbo.RodzajOceny (nazwarodzaju, ocenaid) values (" + string + ", " + str(y) +");", file=fp)
        y+=1
