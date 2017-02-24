ADD JAR /usr/lib/hive/lib/hive-contrib.jar;

CREATE EXTERNAL TABLE weblogs (
  host STRING,
  identity STRING,
  user STRING,
  time STRING,
  request STRING,
  status STRING,
  size STRING
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.contrib.serde2.RegexSerDe'
WITH SERDEPROPERTIES (
  "input.regex" =
   "([^ ]*) ([^ ]*) ([^ ]*) (-|\\[[^\\]]*\\]) ([^ \"]*|\"[^\"]*\") (-|[0-9]*) (-|[0-9]*)",
  "output.format.string"="%1$s %2$s %3$s %4$s %5$s %6$s %7$s" )
STORED AS TEXTFILE
LOCATION '/user/cloudera/hive101/weblogs/data';
 	
