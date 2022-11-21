CREATE DATABASE library;
USE library;

SET NAMES utf8;
START TRANSACTION;

CREATE TABLE 'authentication'(
    'loginID' BIGINT NOT NULL PRIMARY KEY, 
    'password' VARCHAR ( 15 ) NOT NULL,
) ENGINE = INNODB DEFAULT CHARSET = utf8;

CREATE TABLE 'book'(
    'bookID' BIGINT NOT NULL PRIMARY KEY,
    'ISBN' VARCHAR ( 15 ) NOT NULL,
    'author' VARCHAR ( 15 ) NOT NULL,
    'title' VARCHAR ( 20 ) NOT NULL,
    'edition' INT DEFAULT NUll,
    'classID' VARCHAR ( 15 ) NOT NULL,
    'numberRemained' INT DEFAULT NUll,
) ENGINE = INNODB DEFAULT CHARSET = utf8;

CREATE TABLE 'class'(
    'classID' INT NOT NULL PRIMARY KEY, 
    'className' VARCHAR ( 15 ) NOT NULL
) ENGINE = INNODB DEFAULT CHARSET = utf8;

CREATE TABLE 'publisher'(
    'publisherID' BIGINT NOT NULL PRIMARY KEY,
    'name' VARCHAR ( 15 ) NOT NULL,
    'publishDate' date NOT NULL,
    'bookID' VARCHAR ( 15 ) NOT NULL
) ENGINE = INNODB DEFAULT CHARSET = utf8;

CREATE TABLE 'reader'(
    'userID' BIGINT NOT NULL PRIMARY KEY,
    'email' VARCHAR ( 50 ) NOT NULL,
    'name' VARCHAR ( 10 ) NOT NULL,
    'phone' VARCHAR ( 15 ) NOT NULL,
    'address' VARCHAR ( 50 ) NOT NULL
) ENGINE = INNODB DEFAULT CHARSET = utf8;

CREATE TABLE 'reserve'(
    'reserveDate' date NOT NULL PRIMARY KEY,
    'returnDate' date NOT NULL,
    'dueDate' date NOT NULL,
    'userID' BIGINT NOT NULL,
    'bookID' VARCHAR ( 15 ) NOT NULL
) ENGINE = INNODB DEFAULT CHARSET = utf8;

CREATE TABLE 'report'(
    'reportNo' BIGINT NOT NULL PRIMARY KEY,
    'userID' BIGINT NOT NULL,
    'bookID' VARCHAR ( 15 ) NOT NULL,
    'reserveDate' date NOT NULL,
    'returnDate' date NOT NULL,
    'staffID' BIGINT NOT NULL
) ENGINE = INNODB DEFAULT CHARSET = utf8;

CREATE TABLE 'staff'(
    'staffID' BIGINT NOT NULL PRIMARY KEY,
    'name'  VARCHAR ( 10 ) NOT NULL,
    'loginID' BIGINT NOT NULL
) ENGINE = INNODB DEFAULT CHARSET = utf8;