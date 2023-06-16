#wykorzystanie appending do wielu lini
x=1
y=0
z=1
filepath = "danedotabelioceny.txt"
with open(filepath) as fp:
    lines = fp.read().split()
with open(filepath, "w") as fp:
    for line in lines:
        #print(lines[y],lines[z])
        print('UPDATE dbo.Oceny SET studid = ' + lines[y] + ', ' + 'przedmiotid = ' + lines[z] + ' WHERE ocenaid = ' + str(x) , file=fp)
        x+=1
        y+=2
        z+=2
