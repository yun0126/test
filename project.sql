DROP DATABASE IF EXISTS project;
CREATE DATABASE project;

USE project;
DROP TABLE IF EXISTS member;

CREATE TABLE member (
    id VARCHAR(50) PRIMARY KEY,
    password VARCHAR(30) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    nickname VARCHAR(10) UNIQUE NOT NULL,
    username VARCHAR(10) NOT NULL,
    hp VARCHAR(12) UNIQUE,
    bthday VARCHAR(30),
    regdate DATETIME NOT NULL
);
DROP TABLE IF EXISTS board;
 
CREATE TABLE board (
    b_num INT AUTO_INCREMENT PRIMARY KEY,
    type VARCHAR(10) NOT NULL,
    title VARCHAR(100) NOT NULL,
    content VARCHAR(1000) NOT NULL,
    nickname VARCHAR(10) UNIQUE NOT NULL,
    regdate DATETIME NOT NULL,
    updatedate DATETIME NOT NULL,
    views INT NOT NULL,
    referrals INT,
    FOREIGN KEY (nickname)
        REFERENCES member (nickname)
        ON UPDATE CASCADE ON DELETE CASCADE
);

SELECT * FROM member;
SELECT * FROM board;
