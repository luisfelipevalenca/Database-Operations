-- Step 1: Create Database (Optional)

-- Step 2: Create Table
CREATE TABLE Ages (
  `name` VARCHAR(128),
  age INTEGER
);

-- Step 3: Ensure Table is Empty
DELETE FROM Ages;

-- Step 4: Insert Data
INSERT INTO Ages (`name`, age) VALUES ('Marcel', 15);
INSERT INTO Ages (`name`, age) VALUES ('Abby', 28);
INSERT INTO Ages (`name`, age) VALUES ('Kailyn', 33);
INSERT INTO Ages (`name`, age) VALUES ('Pushkar', 33);

-- Step 5: Run SQL Query for SHA1 Hash
SELECT sha1(CONCAT(`name`,age)) AS X FROM Ages ORDER BY X;

-- 2e2c00ab0e66f4fc69842dd1daa497c1bdda6f6e