import random
rok=2018
data=""
x=6213
filepath = "dboKonta.txt"
with open(filepath) as fp:
    lines = fp.read().splitlines()
with open(filepath, "w") as fp:
    for j in range(1, 501):
        miesiac=random.randint(1,12)
        dzien=random.randint(1,28)
        godzina=random.randint(0,23)
        minuta=random.randint(0,59)
        sekunda=random.randint(0,59)
        milisekunda=random.randint(0,999)
        data=(str(rok) + "-" + str(miesiac) + "-" + str(dzien) + " " + str(godzina) + ":" + str(minuta) + ":" + str(sekunda) + "." + str(milisekunda))
        print("insert into dbo.Konta (email, ostatniczaslogowania, studid) values (w" + str(x) + ", " + data + ", " + str(j) + ")", file=fp)
        x+=1
