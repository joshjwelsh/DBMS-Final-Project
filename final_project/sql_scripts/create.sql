CREATE TABLE Outlet(
    locationNum NUMBER(10) Primary key, 
    phoneNum NUMBER(10) UNIQUE NOT NULL, 
    address VARCHAR(255) UNIQUE NOT NULL, 
    faxNum NUMBER(10)
);

CREATE TABLE Vehicle (
    registrationNum NUMBER(10) Primary Key, 
    locationNum NUMBER(10) UNIQUE NOT NULL, 
    vehicleModel VARCHAR(50),
    vehicleMake VARCHAR(50),
    milageBeforeNewHire NUMBER(10,2) NOT NULL,
    vehicleEngineSize NUMBER(7,1),
    vehicleCapacity NUMBER(2) NOT NULL,
    hireRate NUMBER(5, 2) NOT NULL,
    Constraint
    locationNum Foreign Key (locationNum)REFERENCES Outlet ON DELETE CASCADE
);

CREATE TABLE Staff(
    staffNum NUMBER(10) Primary Key,
    locationNum NUMBER(10) UNIQUE NOT NULL, 
    firstNum VARCHAR(20) NOT NULL,
    lastNum VARCHAR(20) NOT NULL,
    homeAddress VARCHAR(255) NOT NULL,
    phoneNum NUMBER(10) NOT NULL, 
    dateOfBirth DATE NOT NULL, 
    sex VARCHAR(1) NOT NULL, 
    dateJoined DATE NOT NULL, 
    jobTitle VARCHAR(20) NOT NULL, 
    salary NUMBER(7,2) NOT NULL,
    
    CONSTRAINT 
    sex_check CHECK (sex = 'F' or sex = 'M'),
    CONSTRAINT
    locationNum Foreign Key (locationNum) REFERENCES Outlet ON DELETE CASCADE
);

CREATE TABLE Client(
    clientNum NUMBER(10) Primary Key, 
    firstNum VARCHAR(20) NOT NULL,
    lastNum VARCHAR(20) NOT NULL,
    homeAddress VARCHAR(255) NOT NULL,
    phoneNum NUMBER(10) NOT NULL, 
    dateOfBirth DATE NOT NULL, 
    sex VARCHAR(1) NOT NULL
); 

ALTER TABLE Client ADD CONSTRAINT 
    sex_check2 CHECK (sex = 'F' or sex = 'M');


CREATE TABLE hireAgreement(
    hireNum NUMBER(10) Primary Key, 
    clientNum NUMBER(10) UNIQUE NOT NULL, 
    registrationNum NUMBER(10) UNIQUE NOT NULL,
    startDate DATE NOT NULL, 
    endDate DATE NOT NULL,
    CONSTRAINT 
    clientNum Foreign Key(clientNum) REFERENCES Client ON DELETE CASCADE,
    CONSTRAINT
    registrationNum Foreign Key(registrationNum) REFERENCES Vehicle ON DELETE CASCADE
);

