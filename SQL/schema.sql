USE Master 

IF EXISTS (SELECT * FROM sysdatabases WHERE name = 'Schema') 

DROP DATABASE Schema 
GO 

CREATE DATABASE Schema 

ON PRIMARY 

(
	NAME = 'Schema',
	FILENAME = 'C:\stage\Schema.mdf',  
	SIZE = 4 MB, 
	MAXSIZE =  6 MB,   
	FILEGROWTH = 500 Kb  
 )

LOG ON 
(
	NAME = 'Schema_Log',  
	FILENAME = 'C:\stage\Schema.ldf',  
	SIZE = 1MB,
	MAXSIZE =  2MB,
	FILEGROWTH = 500 Kb
) 
	
GO

USE Schema

CREATE TABLE PERSON
(
	firstName				varchar(50)			NOT NULL,
	lastName				varchar(50)			NOT NULL,
	phone					varchar(25)			NOT NULL,
	persAddress				varchar(200)		NOT NULL,
	PersonID				int					NOT NULL 		IDENTITY(1,1),
	email					varchar(100)		NULL
)

CREATE TABLE ACCOUNT
(
	accountNum				int					NOT NULL		IDENTITY(1,1),
	personID				int					NOT NULL,
	userName				varchar(50)			NOT NULL,
	accPassword				varchar(50)			NOT NULL,
	accountType				varchar(25)			NOT NULL
)

CREATE TABLE BILLING
(
	billingID				int					NOT NULL		IDENTITY(1,1),
	accountNum				int					NOT NULL,
	creditCard				varchar(25)			NULL,
	billingAddress			varchar(200)		NULL,
	billingPhone			varchar(25)			NULL
)

CREATE TABLE ITEM
(
	itemNum					int					NOT NULL		IDENTITY(1,1),
	billingID				int					NOT NULL,
	itemPrice				money				NOT NULL,
	itemQTY					smallint			NOT NULL
)

CREATE TABLE INSURANCE
(
	insurNum				varchar(100)		NOT NULL 		IDENTITY(1,1),
	accountNum				int					NOT NULL,
	insProvider				varchar(50)			NOT NULL,
	planType				varchar(25)			NOT NULL
)