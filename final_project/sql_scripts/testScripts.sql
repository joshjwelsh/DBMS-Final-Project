
SELECT H.registrationNum, vehicleModel, vehicleMake, milageBeforeNewHire as Milage, vehicleEngineSize, vehicleCapacity, hireRate
FROM hireAgreement H , Vehicle V
WHERE (h.registrationNum = v.registrationNum); 


SELECT staffNum , firstName, lastName, dateJoined, dateOfBirth
FROM Staff
WHERE salary = (
    SELECT MAX(salary) from Staff
);

SELECT * 
FROM Vehicle
WHERE milagebeforenewhire >=1000;