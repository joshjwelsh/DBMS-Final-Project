import random 
n = 5

def randomizer(n , size):   
    myRands = list()
    for x in range(n): 
        myStr = ""
        for i in range(size):
            rand = random.randint(0,9)
            myStr += str(rand)
        myStr += "\n"
        myRands.append(myStr)
    print(myRands)
    return myRands

def createFile(fileName, size):
    with open(fileName, "w+") as f:
        rand = randomizer(n, size)
        f.writelines(rand)
        


# createFile("registrationNumsData.txt", 10 )
# createFile("phoneNumDataOutlet.txt", 10 )
# createFile("phoneNumDataClient.txt", 10 )
# createFile("phoneNumDataStaff.txt", 10 )
# createFile("faxNumOutlet.txt", 10 )


# createFile("hireData.txt", 10 )
createFile("clientData.txt", 10 )
