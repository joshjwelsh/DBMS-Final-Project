

Q1 = '''
SELECT * 
FROM CLIENT
'''

Q2 = '''
SELECT H.registrationNum, vehicleModel, vehicleMake, milageBeforeNewHire as Milage, vehicleEngineSize, vehicleCapacity, hireRate
FROM Vehicle V, hireAgreement H
WHERE (h.registrationNum = v.registrationNum)
'''

Q3 = '''
SELECT staffNum , firstName, lastName, dateJoined, dateOfBirth
FROM Staff
WHERE salary = (
    SELECT MAX(salary) from Staff
)
'''

Q4 = '''
SELECT * 
FROM Staff
ORDER BY salary DESC
'''

Q5 = '''
SELECT * 
FROM Vehicle
WHERE milagebeforenewhire >=1000
'''