
DROP TABLE IF EXISTS Member;
DROP TABLE IF EXISTS `User`;
DROP TABLE IF EXISTS Course;

CREATE TABLE `User` (
    user_id     INTEGER NOT NULL AUTO_INCREMENT,
    name        VARCHAR(128) UNIQUE,
    PRIMARY KEY(user_id)
) ENGINE=InnoDB CHARACTER SET=utf8;

CREATE TABLE Course (
    course_id     INTEGER NOT NULL AUTO_INCREMENT,
    title         VARCHAR(128) UNIQUE,
    PRIMARY KEY(course_id)
) ENGINE=InnoDB CHARACTER SET=utf8;

CREATE TABLE Member (
    user_id       INTEGER,
    course_id     INTEGER,
    role          INTEGER,

    CONSTRAINT FOREIGN KEY (user_id) REFERENCES `User` (user_id)
      ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT FOREIGN KEY (course_id) REFERENCES Course (course_id)
       ON DELETE CASCADE ON UPDATE CASCADE,

    PRIMARY KEY (user_id, course_id)
) ENGINE=InnoDB CHARACTER SET=utf8;

-- Insert User Data
INSERT INTO `User` (name) VALUES
('Krystal'), ('Ellis'), ('Razan'), ('Seren'), ('Yasmeen'),
('Martin'), ('Conrad'), ('Crystal'), ('Ezekiel'), ('Jazeb'),
('Charley'), ('Corrie'), ('Jensen'), ('Keir'), ('Milandra');

-- Insert Course Data
INSERT INTO Course (title) VALUES ('si106'), ('si110'), ('si206');

-- Insert Member Data
INSERT INTO Member (user_id, course_id, role) VALUES
(1, 1, 1), (2, 1, 0), (3, 1, 0), (4, 1, 0), (5, 1, 0),
(6, 2, 1), (7, 2, 0), (8, 2, 0), (9, 2, 0), (10, 2, 0),
(11, 3, 1), (12, 3, 0), (13, 3, 0), (14, 3, 0), (15, 3, 0);

SELECT `User`.name, Course.title, Member.role
    FROM `User` JOIN Member JOIN Course
    ON `User`.user_id = Member.user_id AND Member.course_id = Course.course_id
    ORDER BY Course.title, Member.role DESC, `User`.name
