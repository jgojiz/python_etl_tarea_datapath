DROP SCHEMA IF EXISTS olap_prime_users;
CREATE SCHEMA olap_prime_users;
USE olap_prime_users;


CREATE TABLE prime_users (
	User_ID INT,
	Name VARCHAR(45),
	Email_Address VARCHAR(50),
	Username VARCHAR(45),
	Date_of_Birth DATETIME,
	Gender VARCHAR(6),
	Location VARCHAR(30),
	Membership_Start_Date DATETIME,
	Membership_End_Date DATETIME,
	Subscription_Plan VARCHAR(15),
	Payment_Information VARCHAR(15),
	Renewal_Status VARCHAR(10),
	Usage_Frequency VARCHAR(15),
	Purchase_History VARCHAR(15),
	Favorite_Genres VARCHAR(15),
	Devices_Used VARCHAR(15),
	Engagement_Metrics INT,
	Feedback_Ratings INT,
	Customer_Support_Interactions INT,
    PRIMARY KEY (User_ID)
);

CREATE TABLE dimension_time (
    time_id INT PRIMARY KEY,
    year INT NOT NULL,
    quarter INT NOT NULL,
    month INT NOT NULL,
    day INT NOT NULL,
    day_of_week INT NOT NULL,
    day_of_year INT NOT NULL,
    week_of_year INT NOT NULL,
    is_weekend BOOLEAN NOT NULL
);