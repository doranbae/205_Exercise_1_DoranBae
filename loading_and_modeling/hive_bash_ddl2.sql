add jar csv-serde.jar;

DROP TABLE effective_care;
CREATE EXTERNAL TABLE IF NOT EXISTS effective_care
(PROVIDERID varchar(500),
HOSPITALNAME varchar(500),
ADDRESS varchar(500),
CITY varchar(500),
STATE varchar(500),
ZIPCODE varchar(500),
COUNTRYNAME varchar(500),
PHONENUMBER varchar(500),
MEASUREID varchar(500),
MEASURENAME varchar(500),
SCORE varchar(500),
SAMPLE varchar(500),
FOOTNOTE varchar(500),
MEASURESTARTDATE varchar(500),
MEASUREENDDATE varchar(500))
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
with serdeproperties (
  "separatorChar" = ",",
  "quoteChar"     = "\"",
  "escapeChar"    = "\\")
LOCATION '/data/w205/hospitalcare/effective_care';

LOAD DATA LOCAL INPATH '/data/w205/hospitalcare/effective_care.csv'
OVERWRITE INTO TABLE effective_care;



DROP TABLE hospitals;
CREATE EXTERNAL TABLE IF NOT EXISTS hospitals
(PROVIDERID varchar(500),
HOSPITALNAME varchar(500),
ADDRESS varchar(500),
CITY varchar(500),
STATE varchar(500),
ZIPCODE varchar(500),
COUNTYNAME varchar(500),
PHONENUMBER varchar(500),
HOSPITALTYPE varchar(500),
HOSPITALOWNER varchar(500),
EMERGENCYSERVICE varchar(500))
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
with serdeproperties (
  "separatorChar" = ",",
  "quoteChar"     = "\"",
  "escapeChar"    = "\\")
LOCATION '/data/w205/hospitalcare/hospitals';

LOAD DATA LOCAL INPATH '/data/w205/hospitalcare/hospitals.csv'
OVERWRITE INTO TABLE hospitals;





DROP TABLE quality;
CREATE EXTERNAL TABLE IF NOT EXISTS quality
(PROVIDERNUMBER varchar(500),
HOSPITALNAME varchar(500),
ADDRESS varchar(500),
CITY varchar(500),
STATE varchar(500),
ZIPCODE varchar(500),
COUNTYNAME varchar(500),
COMM_NURSE_ACHIEVE varchar(100),
COMM_NURSE_IMPROVE varchar(100),
COMM_NURSE_DIMENSION varchar(100),
COMM_DR_ACHIEVE varchar(100),
COMM_DR_IMPROVE varchar(100),
COMM_DR_DIMENSION varchar(100),
RESPONS_STAFF_ACHIEVE varchar(100),
RESPONS_STAFF_IMPROVE varchar(100),
RESPONS_STAFF_DIMENSION varchar(100),
PAIN_MNG_ACHIEVE varchar(100),
PAIN_MNG_IMPROVE varchar(100),
PAIN_MNG_DIMENSION varchar(100),
COM_MED_ACHIEVE varchar(100),
COM_MED_IMPROVE varchar(100),
COM_MED_DIMENSION varchar(100),
CLEAN_QUITE_ACHIEVE varchar(100),
CLEAN_QUITE_IMPROVE varchar(100),
CLEAN_QUITE_DIMENSION varchar(100),
DISCHARGE_ACHIEVE varchar(100),
DISCHARGE_IMPROVE varchar(100),
DISCHARGE_DIMENSION varchar(100),
OVERALL_ACHIEVE varchar(100),
OVERALL_IMPROVE varchar(100),
OVERALL_DIMENSION varchar(100),
HCAHPS_BASE varchar (100),
HCAHPS_CONSIST varchar (100))
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
with serdeproperties (
  "separatorChar" = ",",
  "quoteChar"     = "\"",
  "escapeChar"    = "\\")
LOCATION '/data/w205/hospitalcare/quality';

LOAD DATA LOCAL INPATH '/data/w205/hospitalcare/surveys_responses.csv'
OVERWRITE INTO TABLE quality;