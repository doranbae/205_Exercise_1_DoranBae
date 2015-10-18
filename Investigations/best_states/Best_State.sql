DROP TABLE best_state;
CREATE TABLE best_state AS
SELECT state,
SUM(hcahps_base) as sumscore
FROM careQualityTable
GROUP BY state
ORDER BY sumscore DESC;

select * from best_state
limit 10;