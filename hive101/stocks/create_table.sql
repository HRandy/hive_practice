CREATE EXTERNAL TABLE stocks (
  symbol STRING,
  date STRING,
  open FLOAT,
  high FLOAT,
  low FLOAT,
  close FLOAT,
  volume INT,
  adj_close FLOAT
)
ROW FORMAT 
  DELIMITED FIELDS TERMINATED BY ','
STORED AS TEXTFILE
LOCATION '/user/cloudera/hive101/stocks/data';


