SHOW VARIABLES LIKE 'secure_file_priv';


CREATE TABLE nyc_inspection (
    camis                  BIGINT,
    dba                    VARCHAR(255),
    boro                   VARCHAR(50),
    street                 VARCHAR(255),
    cuisine_description    VARCHAR(100),
    inspection_date        DATE,
    action                 TEXT,
    violation_code         VARCHAR(10),
    violation_description  TEXT,
    critical_flag          VARCHAR(20),
    score                  INT,
    grade                  CHAR(1),
    grade_date             DATE,
    inspection_type        VARCHAR(100),
    nta                    VARCHAR(10)
);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/nyc_inspection.csv'
INTO TABLE nyc_inspection
CHARACTER SET latin1
FIELDS TERMINATED BY ','
		ENCLOSED BY '"'
		ESCAPED BY '\\'
LINES   TERMINATED BY '\n'
IGNORE 1 ROWS     
(camis,dba,boro,street,cuisine_description,@raw_inspection_date,action,violation_code,
violation_description,critical_flag,@raw_score,grade,@raw_grade_date,inspection_type,nta)
SET
	inspection_date = IF(@raw_inspection_date = '', NULL,STR_TO_DATE(@raw_inspection_date, '%m/%d/%Y')),
	grade_date = IF(@raw_grade_date = '', NULL,STR_TO_DATE(@raw_grade_date, '%m/%d/%Y')),
    score = IF(@raw_score = '',NULL, CAST(@raw_score AS SIGNED))
;

SELECT *
FROM nyc_inspection;



#QUESTION 1: Which violations are most common and where do they occur most frequently?
SELECT boro, violation_code, critical_flag , count(*) AS violation_count
FROM nyc_inspection
GROUP BY boro, violation_code, critical_flag
ORDER BY violation_count DESC
limit 10;



#QUESTION 2: Which cuisines and neighborhoods have the lowest food safety performance?
SELECT cuisine_description, nta, count(*) AS total_inspections, AVG(score) AS avg_risk_score
FROM nyc_inspection
WHERE score IS NOT NULL AND critical_flag ='Critical'
GROUP BY cuisine_description,nta
ORDER BY avg_risk_score DESC
;

#QUESTION 3: How do resturant grades and violations vary across boroughs and over time?
SELECT boro, EXTRACT(YEAR FROM inspection_date) AS inspection_year, AVG(score) AS avg_yearly_score,
       COUNT(CASE WHEN grade ='A' THEN 1 END) * 100/ COUNT(*) AS percent_A_grades, Count(violation_code) AS violation_count
FROM nyc_inspection
WHERE grade IN ('A','B','C') AND violation_code IS NOT NULL
GROUP BY boro,inspection_year
ORDER BY inspection_year, avg_yearly_score
;

#QUESTION 4: Where should the city focus inspections, policies, or education to improve food safety?
SELECT boro, cuisine_description, COUNT(*) AS violation_count
FROM nyc_inspection
WHERE critical_flag = 'Critical'
GROUP BY boro, cuisine_description
ORDER BY violation_count DESC
LIMIT 10; 
