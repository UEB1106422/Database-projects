-- Database: MySQL
-- Created by: Michael Yeboah
-- Index number: UEB1106422

DROP TABLE IF EXISTS students;

CREATE TABLE students (
  id INT AUTO_INCREMENT PRIMARY KEY,
  full_name VARCHAR(100) NOT NULL,
  index_number VARCHAR(20) NOT NULL UNIQUE,
  telephone VARCHAR(20),
  email VARCHAR(150) NOT NULL UNIQUE,
  password VARCHAR(255) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insert 20 sample students
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
('Janet Owusu', 'SCT1011', '0244000011', 'janet.owusu@example.com', 'janet654'),
('Prince Amponsah', 'SCT1012', '0244000012', 'prince.amponsah@example.com', 'prince987'),
('Belinda Konadu', 'SCT1013', '0244000013', 'belinda.konadu@example.com', 'belinda123'),
('Kwesi Nyarko', 'SCT1014', '0244000014', 'kwesi.nyarko@example.com', 'kwesi456'),
('Grace Mensima', 'SCT1015', '0244000015', 'grace.mensima@example.com', 'grace789'),
('Samuel Agyeman', 'SCT1016', '0244000016', 'samuel.agyeman@example.com', 'sam321'),
('Anita Opoku', 'SCT1017', '0244000017', 'anita.opoku@example.com', 'anita654'),
('Richmond Tetteh', 'SCT1018', '0244000018', 'richmond.tetteh@example.com', 'rich789'),
('Lydia Aidoo', 'SCT1019', '0244000019', 'lydia.aidoo@example.com', 'lydia321'),
('Felix Darko', 'SCT1020', '0244000020', 'felix.darko@example.com', 'felix654');

-- BASIC QUERIES (copy-paste into an editor or run in CLI)

-- 1) Show all rows
SELECT * FROM students;

-- 2) Show only names and emails
SELECT full_name, email FROM students;

-- 3) Find by index number
SELECT * FROM students WHERE index_number = 'SCT1005';

-- 4) Update a telephone number
UPDATE students SET telephone = '0249999999' WHERE index_number = 'SCT1003';

-- 5) Delete a row by index number
DELETE FROM students WHERE index_number = 'SCT1010';

-- 6) Count rows
SELECT COUNT(*) AS total_students FROM students;

-- 7) Find names that start with 'K'
SELECT * FROM students WHERE full_name LIKE 'K%'; 

-- 8) Order by created_at descending (most recent first)
SELECT * FROM students ORDER BY created_at DESC;

-- 9) Add an ownership comment row (optional)
-- If you prefer storing the info in a separate table:
DROP TABLE IF EXISTS submission_info;
CREATE TABLE submission_info (
  id INT AUTO_INCREMENT PRIMARY KEY,
  owner_name VARCHAR(150),
  index_number VARCHAR(50),
  note TEXT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO submission_info (owner_name, index_number, note) VALUES
('Michael Yeboah','UEB1106422','Submission for class presentation - MySQL version');

-- 10) Show the submission info
SELECT * FROM submission_info;
