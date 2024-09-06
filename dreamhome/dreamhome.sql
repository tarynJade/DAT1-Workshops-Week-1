
.open dreamhome.sqlite
-- Create tables
CREATE TABLE branch (
    branchno CHAR(4) PRIMARY KEY,
    street VARCHAR(32),
    city VARCHAR(32),
    postcode VARCHAR(8)
);

CREATE TABLE staff (
    staffno VARCHAR(4) PRIMARY KEY,
    fname VARCHAR(32),
    lname VARCHAR(32),
    position VARCHAR(32),
    sex CHAR(1),
    dob DATE,
    salary INTEGER,
    branchno CHAR(4),
    FOREIGN KEY (branchno) REFERENCES branch (branchno)
);

CREATE TABLE privateowner (
    ownerno CHAR(4) PRIMARY KEY,
    fname VARCHAR(32),
    lname VARCHAR(32),
    address VARCHAR(50),
    telno VARCHAR(32),
    email VARCHAR(50),
    password VARCHAR(8)
);

CREATE TABLE client (
    clientno CHAR(4) PRIMARY KEY,
    fname VARCHAR(32),
    lname VARCHAR(32),
    telno VARCHAR(32),
    preftype VARCHAR(5),
    maxrent INTEGER,
    email VARCHAR(50)
);

CREATE TABLE propertyforrent (
    propertyno CHAR(4) PRIMARY KEY,
    street VARCHAR(32),
    city VARCHAR(32),
    postcode VARCHAR(8),
    type VARCHAR(5),
    rooms INTEGER,
    rent INTEGER,
    ownerno CHAR(4),
    staffno VARCHAR(4),
    branchno CHAR(4),
    FOREIGN KEY (ownerno) REFERENCES privateowner (ownerno),
    FOREIGN KEY (staffno) REFERENCES staff (staffno),
    FOREIGN KEY (branchno) REFERENCES branch (branchno)
);

CREATE TABLE viewing (
    view_id INTEGER PRIMARY KEY,
    clientno CHAR(4),
    propertyno CHAR(4),
    viewdate DATE,
    comment VARCHAR(32),
    FOREIGN KEY (clientno) REFERENCES client (clientno),
    FOREIGN KEY (propertyno) REFERENCES propertyforrent (propertyno)
);

CREATE TABLE registration (
    reg_id INTEGER PRIMARY KEY,
    clientno CHAR(4),
    branchno CHAR(4),
    staffno VARCHAR(4),
    datejoined DATE,
    FOREIGN KEY (clientno) REFERENCES client (clientno),
    FOREIGN KEY (branchno) REFERENCES branch (branchno),
    FOREIGN KEY (staffno) REFERENCES staff (staffno)
);

-- Insert data from CSV files

-- Branch data
INSERT INTO branch (branchno, street, city, postcode) VALUES
('B005', '22 Deer Rd', 'London', 'SW1 4EH'),
('B007', '16 Argyll St', 'Aberdeen', 'AB2 3SU'),
('B003', '163 Main St', 'Glasgow', 'G11 9QX'),
('B004', '32 Manse Rd', 'Bristol', 'BS99 1NZ'),
('B002', '56 Clover Dr', 'London', 'NW10 6EU');

-- Staff data
INSERT INTO staff (staffno, fname, lname, position, sex, dob, salary, branchno) VALUES
('SL21', 'John', 'White', 'Manager', 'M', '1945-10-01', 30000, 'B005'),
('SG37', 'Ann', 'Beech', 'Assistant', 'F', '1960-11-10', 12000, 'B003'),
('SG14', 'David', 'Ford', 'Supervisor', 'M', '1958-03-24', 18000, 'B003'),
('SA9', 'Mary', 'Howe', 'Assistant', 'F', '1970-02-19', 9000, 'B007'),
('SG5', 'Susan', 'Brand', 'Manager', 'F', '1940-06-03', 24000, 'B003'),
('SL41', 'Julie', 'Lee', 'Assistant', 'F', '1965-06-13', 9000, 'B005');

-- Private Owner data
INSERT INTO privateowner (ownerno, fname, lname, address, telno, email, password) VALUES
('CO46', 'Joe', 'Keogh', '2 Fergus Dr, Aberdeen AB2 7SX', '01224-861212', 'jkeogh@lhh.com', '********'),
('CO87', 'Carol', 'Farrel', '6 Achray St, Glasgow G32 9DX', '0141-357-7419', 'cfarrel@gmail.com', '********'),
('CO40', 'Tina', 'Murphy', '63 Well St, Glasgow G42', '0141-943-1728', 'tinam@hotmail.com', '********'),
('CO93', 'Tony', 'Shaw', '12 Park Pl, Glasgow G4 0QR', '0141-225-7025', 'tony.shaw@ark.com', '********');

-- Client data
INSERT INTO client (clientno, fname, lname, telno, preftype, maxrent, email) VALUES
('CR76', 'John', 'Kay', '0207-774-5632', 'Flat', 425, 'john.kay@gmail.com'),
('CR56', 'Aline', 'Stewart', '0141-848-1825', 'Flat', 350, 'astewart@hotmail.com'),
('CR74', 'Mike', 'Ritchie', '01475-392178', 'House', 750, 'mritchie01@yahoo.co.uk'),
('CR62', 'Mary', 'Tregear', '01224-196720', 'Flat', 600, 'maryt@hotmail.co.uk');

-- Property for Rent data
INSERT INTO propertyforrent (propertyno, street, city, postcode, type, rooms, rent, ownerno, staffno, branchno) VALUES
('PA14', '16 Holhead', 'Aberdeen', 'AB7 5SU', 'House', 6, 650, 'CO46', 'SA9', 'B007'),
('PL94', '6 Argyll St', 'London', 'NW2', 'Flat', 4, 400, 'CO87', 'SL41', 'B005'),
('PG4', '6 Lawrence St', 'Glasgow', 'G11 9QX', 'Flat', 3, 350, 'CO40', NULL, 'B003'),
('PG36', '2 Manor Rd', 'Glasgow', 'G32 4QX', 'Flat', 3, 375, 'CO93', 'SG37', 'B003'),
('PG21', '18 Dale Rd', 'Glasgow', 'G12', 'House', 5, 600, 'CO87', 'SG37', 'B003'),
('PG16', '5 Novar Dr', 'Glasgow', 'G12 9AX', 'Flat', 4, 450, 'CO93', 'SG14', 'B003');

-- Viewing data
INSERT INTO viewing (view_id, clientno, propertyno, viewdate, comment) VALUES
(1, 'CR56', 'PA14', '2013-05-24', 'too small'),
(2, 'CR76', 'PG4', '2013-04-20', 'too remote'),
(3, 'CR56', 'PG4', '2013-05-26', NULL),
(4, 'CR62', 'PA14', '2013-05-14', 'no dining room'),
(5, 'CR56', 'PG36', '2013-04-28', NULL);

-- Registration data
INSERT INTO registration (reg_id, clientno, branchno, staffno, datejoined) VALUES
(1, 'CR76', 'B005', 'SL41', '2013-01-02'),
(2, 'CR56', 'B003', 'SG37', '2012-04-11'),
(3, 'CR74', 'B003', 'SG37', '2011-11-16'),
(4, 'CR62', 'B007', 'SA9', '2012-03-07');