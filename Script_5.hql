INSERT OVERWRITE DIRECTORY '/user/edureka/hive/script_5'  Select airline,  name , alias , iata , icao , callsign , country , active from airlines where active = 'Y';

