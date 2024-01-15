-- Creating Table
CREATE TABLE IF NOT EXISTS Ages (
    name VARCHAR(128),
    age INTEGER
);

-- Ensuring Table is empty
TRUNCATE TABLE Ages; -- Using TRUNCATE to quickly remove all rows

-- Inserting the provided rows
INSERT INTO Ages (name, age) VALUES ('Zahra', 34);
INSERT INTO Ages (name, age) VALUES ('Olufunke', 23);
INSERT INTO Ages (name, age) VALUES ('Choire', 38);
INSERT INTO Ages (name, age) VALUES ('Makenna', 32);
INSERT INTO Ages (name, age) VALUES ('Ula', 16);
INSERT INTO Ages (name, age) VALUES ('Garren', 40);

SELECT SHA1(CONCAT(name, age)) AS X FROM Ages ORDER BY X;

-- 493f4a0d01c55fddba656d6e89436ac96d271e13
-- 526df586b647f7b13f7d8a68064e91a96019d799
-- 5929b63eb5e4c8ec143531dc25c9b426a44a18e4
-- 5e242d6b83c824ddf54c25264698cad4763564ae
-- ae0310cef065dfc3919b0a257ef7f9ea3ca7dbb8
-- e42defa827ddfea303470d8787dfe14559e40ca4