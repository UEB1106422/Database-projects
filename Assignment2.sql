/*
Database created by Michael Yeboah
Index Number: UEB1106422
*/


CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    index_number VARCHAR(20) UNIQUE NOT NULL,
    telephone VARCHAR(15),
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL
);
INSERT INTO students (full_name, index_number, telephone, email, password) VALUES
('Michael Yeboah', 'SCT1001', '0244000001', 'michael.yeboah@example.com', 'pass123'),
('Ama Kumi', 'SCT1002', '0244000002', 'ama.kumi@example.com', 'ama456'),
('Kojo Mensah', 'SCT1003', '0244000003', 'kojo.mensah@example.com', 'kojo789'),
('Akua Adjei', 'SCT1004', '0244000004', 'akua.adjei@example.com', 'akua321'),
('Yaw Owusu', 'SCT1005', '0244000005', 'yaw.owusu@example.com', 'yaw654'),
('Kofi Boateng', 'SCT1006', '0244000006', 'kofi.boateng@example.com', 'kofi987'),
('Sandra Boadu', 'SCT1007', '0244000007', 'sandra.boadu@example.com', 'sand123'),
('Kwame Asare', 'SCT1008', '0244000008', 'kwame.asare@example.com', 'kwame456'),
('Esi Serwaa', 'SCT1009', '0244000009', 'esi.serwaa@example.com', 'esi789'),
('Emmanuel Osei', 'SCT1010', '0244000010', 'emmanuel.osei@example.com', 'emma321'),
('Felix Darko', 'SCT1020', '0244000020', 'felix.darko@example.com', 'felix654');

SELECT * FROM students;

SELECT full_name, email FROM students;

SELECT * FROM students WHERE index_number = 'SCT1005';

UPDATE students
SET telephone = '0249999999'
WHERE index_number = 'SCT1003';

SELECT * FROM students;

DELETE FROM students
WHERE index_number = 'SCT1010';

SELECT * FROM students;

