DROP TABLE best_hospitals;
CREATE TABLE best_hospitals AS
SELECT h.hospitalname,
SUM(p.score) as sumscore
FROM procedureQualityTable p JOIN hospitalinfoTable h
ON (p.PROVIDERID = h.PROVIDERID)
GROUP BY h.hospitalname
ORDER BY sumscore DESC;

select * from best_hospitals
limit 10;