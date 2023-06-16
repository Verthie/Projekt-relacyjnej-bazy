#program do zastepowania wyrazow w tekscie
with open('Listakierunkow.txt', 'r') as file :
    filedata = file.read()

filedata=filedata.replace('1b','UPDATE dbo.Oplaty SET wysokoscoplaty values (600);')
filedata=filedata.replace('2b','UPDATE dbo.Oplaty SET wysokoscoplaty values (750);')
filedata=filedata.replace('3b','UPDATE dbo.Oplaty SET wysokoscoplaty values (400);')
filedata=filedata.replace('4b','UPDATE dbo.Oplaty SET wysokoscoplaty values (700);')
filedata=filedata.replace('5b','UPDATE dbo.Oplaty SET wysokoscoplaty values (300);')
filedata=filedata.replace('6b','UPDATE dbo.Oplaty SET wysokoscoplaty values (500);')
filedata=filedata.replace('7b','UPDATE dbo.Oplaty SET wysokoscoplaty values (450);')

with open('Listakierunkow.txt', 'w') as file:
    file.write(filedata)
