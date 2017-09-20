create database airlines;

use airlines;

create external table airports (AirportID smallint, AirportName string, City string, Country  string, IATA string, FAA string, Latitude float, Longitude float, Altitude float, Timezone smallint, DST char(2), Tz string) 
ROW FORMAT DELIMITED FIELDS TERMINATED BY ','  
LINES TERMINATED BY '\n' 
STORED AS TEXTFILE
location '/user/edureka/airlines/airports';

create external table airlines (Airline smallint, Name string,	Alias string, IATA string, ICAO string,  Callsign  string, Country string, Active char(1)) 
ROW FORMAT DELIMITED FIELDS TERMINATED BY ','  
LINES TERMINATED BY '\n' 
STORED AS TEXTFILE
location '/user/edureka/airlines/airlines';

create external table routes (Airline char(2), AirlineID smallint, Sourceairport string, SourceairportID string, Destinationairport string, DestinationairportID string,	Codeshare char(1), Stops smallint, Equipment string) 
ROW FORMAT DELIMITED FIELDS TERMINATED BY ','  
LINES TERMINATED BY '\n' 
STORED AS TEXTFILE
location '/user/edureka/airlines/routes';