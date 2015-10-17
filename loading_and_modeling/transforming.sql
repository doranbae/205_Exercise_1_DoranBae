DROP TABLE careQualityTable;
CREATE TABLE careQualityTable AS
SELECT PROVIDERNUMBER, STATE, HCAHPS_BASE FROM quality
WHERE (HCAHPS_BASE !='Not Available');

DROP TABLE hospitalinfoTable;
CREATE TABLE hospitalinfoTable AS
SELECT PROVIDERID, HOSPITALNAME, ADDRESS, STATE from hospitals;

DROP TABLE procedureQualityTable;
CREATE TABLE procedureQualityTable AS
SELECT PROVIDERID,MEASURENAME,SCORE FROM effective_care
WHERE (MEASURENAME !='Not Available') AND (SCORE !='Not Available');