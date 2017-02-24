CREATE EXTERNAL TABLE page_views 
(
  logtime STRING, 
  userid INT, 
  ip STRING, 
  page STRING, 
  ref STRING, 
  os STRING, 
  os_ver STRING, 
  agent STRING
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\t'
LOCATION '/user/cloudera/hive_in_practice/page_views/data';

