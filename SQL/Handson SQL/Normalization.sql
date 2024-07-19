use infiniteDB

CREATE TABLE client (
    client_no INT PRIMARY KEY,
    client_name VARCHAR(30)
);
 
CREATE TABLE Owner_tbl (
    owner_no INT PRIMARY KEY,
    owner_name VARCHAR(30)
);

CREATE TABLE Hproperty_details (
    property_no INT PRIMARY KEY,
    property_address VARCHAR(30),
    rent INT
);
 
CREATE TABLE Handson_property (
    client_no int,
    property_no int,
    rent_start date,
    rent_end date,
    owner_no int,
    PRIMARY KEY (client_no, property_no),
    FOREIGN KEY (client_no) REFERENCES client(client_no),
    FOREIGN KEY (owner_no) REFERENCES Owner_tbl(owner_no),
    FOREIGN KEY (property_no) REFERENCES Hproperty_details(property_no)
);
INSERT INTO client (client_no, client_name) VALUES
(1, 'Shreyash'),
(2, 'Sai'),
(3, 'Vijendra');

INSERT INTO Owner_tbl (owner_no, owner_name) VALUES
(11, 'kiran'),
(12, 'venky'),
(13, 'vamshi');

INSERT INTO Hproperty_details (property_no, property_address, rent) VALUES
(100, 'HCL', 6500),
(200, 'Charminar', 4000),
(300, 'Taj', 11000);

INSERT INTO Handson_property (client_no, property_no, rent_start, rent_end, owner_no) VALUES
(1, 100, '2024-02-23', '2024-04-30', 11),
(1, 200, '2024-01-09', '2025-04-07', 12),
(2, 100, '2024-01-07', '2024-09-10', 11),
(2, 300, '2024-02-06', '2024-07-08', 13);

EXEC sp_help 'client';
 
 
EXEC sp_help 'Owner_tbl';
 
 
EXEC sp_help 'Hproperty_details';
 
 
EXEC sp_help 'Handson_property';
 
 
SELECT c.client_name, 
       p.property_address, 
       p.rent, 
       o.owner_name
FROM Handson_property AS hp
JOIN client AS c ON hp.client_no = c.client_no
JOIN Owner_tbl AS o ON hp.owner_no = o.owner_no
JOIN Hproperty_details AS p ON hp.property_no = p.property_no;
 