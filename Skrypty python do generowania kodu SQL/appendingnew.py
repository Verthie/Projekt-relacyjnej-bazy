#program dodaje wartosc rosnaca zawsze o 1 na koniec kazdej linijki
a=1
string=""
filepath = "dboKategoriePrzedmiotu.txt"
with open(filepath) as fp:
    lines = fp.read().splitlines()
with open(filepath, "w") as fp:
    for i in range(4):
        if a==1:
            string="wyklad"
        elif a==2:
            string="laboratorium"
        elif a==3:
            string="cwiczenia"
        else:
            string="projekt"
            
        for j in range(1,29): 
            print("insert into dbo.KategoriePrzedmiotu (nazwakategorii, przedmiotid) values (" + string + ", " + str(j) + ")", file=fp)
        a+=1
