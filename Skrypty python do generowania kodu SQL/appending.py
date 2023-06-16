import random
filepath = "dboTypOplaty.txt"
x=1
string=""
with open(filepath) as fp:
    lines = fp.read().splitlines()
with open(filepath, "w") as fp:
    for i in range(1, 701):
        if i<501:
            string="czesne"
        else:
            x=random.randint(1,3)
            if x==1:
                string="praktyki"
            elif x==2:
                string="wyjazdy"
            elif x==3:
                string="ubezpieczenie"
                
        print("insert into dbo.TypOplaty (typopid, nazwa, oplataid) values (" + str(i) + " " + string + " " + str(i) + ");", file=fp)
        x+=1
