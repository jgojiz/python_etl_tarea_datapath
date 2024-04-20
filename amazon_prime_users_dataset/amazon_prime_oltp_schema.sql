DROP SCHEMA IF EXISTS oltp_amazon_prime;
CREATE SCHEMA oltp_amazon_prime;
USE oltp_amazon_prime;

-- main fact table
CREATE TABLE prime_users (
	User_ID INT,
	Name VARCHAR(45),
	Email_Address VARCHAR(50),
	Username VARCHAR(45),
	Date_of_Birth DATETIME,
	Gender VARCHAR(6),
	Location_Id SMALLINT,
	Membership_Start_Date DATETIME,
	Membership_End_Date DATETIME,
	Subscription_Plan_Id SMALLINT,
	Payment_Info_Id SMALLINT,
	Renewal_Status_Id SMALLINT,
	Usage_Frequency_Id SMALLINT,
	Purchase_History_Id SMALLINT,
	Favorite_Genres_Id SMALLINT,
	Devices_Used_Id SMALLINT,
	Engagement_Metrics_Id SMALLINT,
	Feedback_Ratings INT,
	Customer_Support_Interactions INT,
    PRIMARY KEY (User_ID),
	FOREIGN KEY (Location_Id) REFERENCES location (location_id),
	FOREIGN KEY (Subscription_Plan_Id) REFERENCES location (Subscription_Plan_Id),
	FOREIGN KEY (Payment_Info_Id) REFERENCES location (Payment_Info_Id),
	FOREIGN KEY (Renewal_Status_Id) REFERENCES location (Renewal_Status_Id),
	FOREIGN KEY (Usage_Frequency_Id) REFERENCES location (Usage_Frequency_Id),
	FOREIGN KEY (Purchase_History_Id) REFERENCES location (Purchase_History_Id),
	FOREIGN KEY (Favorite_Genres_Id) REFERENCES location (Favorite_Genres_Id),
	FOREIGN KEY (Devices_Used_Id) REFERENCES location (Devices_Used_Id),
	FOREIGN KEY (Engagement_Metrics_Id) REFERENCES location (Engagement_Metrics_Id)
);

-- dimensions

CREATE TABLE devices (
	device_id SMALLINT NOT NULL AUTO_INCREMENT,
	device VARCHAR(15),
	PRIMARY KEY (device_id)
)

CREATE TABLE engagement (
	engagement_id SMALLINT NOT NULL AUTO_INCREMENT,
	engagement_metrics VARCHAR(15),
	PRIMARY KEY (engagement_id)
)

CREATE TABLE genres (
	genre_id SMALLINT NOT NULL AUTO_INCREMENT,
	genre VARCHAR(15),
	PRIMARY KEY (genre_id)
)

CREATE TABLE location (
	location_id SMALLINT NOT NULL AUTO_INCREMENT,
	location VARCHAR(15),
	PRIMARY KEY (location_id)
)

CREATE TABLE payment (
	payment_id SMALLINT NOT NULL AUTO_INCREMENT,
	payment VARCHAR(15),
	PRIMARY KEY (payment_id)
)

CREATE TABLE purchase_history (
	purchase_history_id SMALLINT NOT NULL AUTO_INCREMENT,
	purchase_history VARCHAR(15),
	PRIMARY KEY (purchase_history_id)
)

CREATE TABLE renewal (
	renewal_id SMALLINT NOT NULL AUTO_INCREMENT,
	renewal_status VARCHAR(15),
	PRIMARY KEY (renewal_id)
)

CREATE TABLE subscription_plan (
	subscription_plan_id SMALLINT NOT NULL AUTO_INCREMENT,
	subscription_plan VARCHAR(15),
	PRIMARY KEY (subscription_plan_id)
)

CREATE TABLE usage_frequency (
	usage_frequency_id SMALLINT NOT NULL AUTO_INCREMENT,
	usage_frequency VARCHAR(15),
	PRIMARY KEY (usage_frequency_id)
)
