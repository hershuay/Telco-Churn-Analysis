CREATE DATABASE IF NOT EXISTS telco_churn;

CREATE TABLE IF NOT EXISTS services (
	`Customer ID` VARCHAR(30) NOT NULL PRIMARY KEY,
	`Count` INT NOT NULL,
	`Quarter` VARCHAR(2) NOT NULL,
	`Referred a Friend` VARCHAR(3) NOT NULL,
	`Number of Referrals` INT NOT NULL,
	`Tenure in Months` INT NOT NULL,
	`Offer` VARCHAR(25) NOT NULL,
	`Phone Service` VARCHAR(3) NOT NULL,
	`Avg Monthly Long Distance Charges` DECIMAL(8,2) NOT NULL,
	`Multiple Lines` VARCHAR(3) NOT NULL,
	`Internet Service` VARCHAR(3) NOT NULL,
	`Internet Type` VARCHAR(20) NOT NULL,
	`Avg Monthly GB Download` INT NOT NULL,
	`Online Security` VARCHAR(3) NOT NULL,
	`Online Backup` VARCHAR(3) NOT NULL,
	`Device Protection Plan` VARCHAR(3) NOT NULL,
	`Premium Tech Support` VARCHAR(3) NOT NULL,
	`Streaming TV` VARCHAR(3) NOT NULL,
	`Streaming Movies` VARCHAR(3) NOT NULL,
	`Streaming Music` VARCHAR(3) NOT NULL,
	`Unlimited Data` VARCHAR(3) NOT NULL,
	`Contract` VARCHAR(50) NOT NULL,
	`Paperless Billing` VARCHAR(3) NOT NULL,
	`Payment Method` VARCHAR(50) NOT NULL,
	`Monthly Charge` DECIMAL(8,2) NOT NULL,
	`Total Charges` DECIMAL(8,2) NOT NULL,
	`Total Refunds` DECIMAL(8,2) NOT NULL,
	`Total Extra Data Charges` DECIMAL(8,2) NOT NULL,
	`Total Long Distance Charges` DECIMAL(8,2) NOT NULL,
	`Total Revenue` DECIMAL(8,2) NOT NULL
);

CREATE TABLE IF NOT EXISTS status(
    `Customer ID` VARCHAR(30) NOT NULL PRIMARY KEY,
	`Count` INT NOT NULL,
	`Quarter` VARCHAR(2) NOT NULL,
	`Satisfaction Score` INT NOT NULL,
	`Customer Status` VARCHAR(25) NOT NULL,
	`Churn Label` VARCHAR(3) NOT NULL,
	`Churn Value` INT NOT NULL,
	`Churn Score` INT NOT NULL,
	`CLTV` INT NOT NULL,
	`Churn Category` VARCHAR(50) NOT NULL,
	`Churn Reason` VARCHAR(150) NOT NULL
);

CREATE TABLE IF NOT EXISTS demographics(
    `Customer ID` VARCHAR(30) NOT NULL PRIMARY KEY,
	`Count` INT NOT NULL,
    `Gender` VARCHAR(6) NOT NULL,
	`Age` INT NOT NULL,
	`Under 30` VARCHAR(3) NOT NULL,
	`Senior Citizen` VARCHAR(3) NOT NULL,
	`Married` VARCHAR(3) NOT NULL,
	`Dependents` VARCHAR(3) NOT NULL,
	`Number of Dependents` INT NOT NULL
    );

CREATE TABLE IF NOT EXISTS location(
	`Customer ID` VARCHAR(30) NOT NULL PRIMARY KEY,
	`Count` INT NOT NULL,
	`Country` VARCHAR(50) NOT NULL,
	`State` VARCHAR(50) NOT NULL,
	`City` VARCHAR (50) NOT NULL,
	`Zip Code` INT NOT NULL,
	`Lat Long` VARCHAR(50) NOT NULL,
	`Latitude` DEC(12,6) NOT NULL,
	`Longitude` DEC(12,6) NOT NULL
);

CREATE TABLE IF NOT EXISTS population(
	`ID` VARCHAR(8) NOT NULL PRIMARY KEY,
	`Zip Code` INT NOT NULL,
	`Population` INT NOT NULL
);


CREATE VIEW services_view AS
	SELECT 
		`Customer ID`, 
		Quarter, 
		`Referred a Friend`, 
		`Tenure in Months`, 
		DATE_SUB('2018-09-30', INTERVAL `Tenure in Months` MONTH) AS `Acquisition Date`,
		Offer, 
		`Phone Service`, 
		`Avg Monthly Long Distance Charges`, 
		`Multiple Lines`, 
		`Internet Type`, 
		`Streaming TV`, 
		`Streaming Movies`, 
		`Streaming Music`, 
		`Unlimited Data`, 
		Contract, 
		`Monthly Charge`, 
		`Total Charges`, 
		`Total Extra Data Charges`, 
		`Total Long Distance Charges`, 
		`Total Revenue`
	FROM services;

CREATE VIEW status_view AS
	SELECT 
		`Customer ID`, 
		`Satisfaction Score`, 
		`Customer Status`, 
		`Churn Score`,
		CASE
			WHEN `Churn Score` < 50 THEN 'Low'
			WHEN `Churn Score` >= 50 THEN 'Medium'
			WHEN `Churn Score` > 75 THEN 'High'
		END AS `Risk Level`,
		CLTV, 
		`Churn Category`, 
		`Churn Reason`
	FROM status;

CREATE VIEW demographics_view AS
	SELECT 
		`Customer ID`,
		Gender,
		Age,
		CASE
			WHEN age < 18 THEN 'Teenager'
			WHEN age >= 18 AND age <= 26 THEN 'Young Adult'
			WHEN age >= 27 AND age <= 40 THEN 'Adult' 
			WHEN age >= 41 AND age <= 54 THEN 'Middle Age'
			ELSE 'Senior'
		END AS 'Age Group',
		Married,
		Dependents,
		`Number of Dependents`,
		CASE
			WHEN married = 'Yes' AND Dependents = 'Yes' THEN 'Family'
			ELSE 'Individual'
		END AS 'Account Type'
	FROM demographics;

CREATE VIEW location_view AS
	SELECT 
		`Customer ID`,
		Country,
		State,
		City,
		`Zip Code`,
		`Lat Long`,
		Latitude,
		Longitude
	FROM location;

CREATE VIEW population_view AS
	SELECT 
		`Zip Code`,
		Population
	FROM population;


