DROP TABLE variability_table;

CREATE TABLE variability_table as
select measurename, min(CAST(score AS INT)), max(CAST (score AS INT)), max(CAST (score AS INT)) - min(CAST (score AS INT)) AS diffScore
from effective_care
group by measurename
ORDER BY diffScore DESC;

select * from variability_table
limit 10;