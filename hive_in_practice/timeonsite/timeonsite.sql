ADD FILE /home/cloudera/Desktop/hive_in_practice/timeonsite/timeonsite.py;

CREATE TABLE IF NOT EXISTS timeonsite (userid INT, timeonsite INT)
ROW FORMAT DELIMITED
  FIELDS TERMINATED BY ',';

FROM (
 FROM page_views
 SELECT userid, logtime
 DISTRIBUTE BY userid SORT BY userid, logtime
) src
INSERT OVERWRITE TABLE timeonsite
SELECT TRANSFORM (src.userid, src.logtime) USING './timeonsite.py'
AS (userid, timeonsite);

