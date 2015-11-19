DROP TABLE corr_procedureTable;
CREATE TABLE corr_procedureTable AS
select hospitalname, avg(CAST (score AS INT)) as avgScore
from effective_care
group by hospitalname;

select * from corr_procedureTable
limit 10;




DROP TABLE corr_qualityTable;
CREATE TABLE corr_qualityTable AS
select q.hospitalname, CAST(q.hcahps_base AS INT) AS qualityScore, p.avgScore AS procedureScore
from quality q JOIN corr_procedureTable p
ON (q.hospitalname = p.hospitalname);

select * from corr_qualityTable
limit 10;


select CORR(qualityScore,procedureScore)
from corr_qualityTable;