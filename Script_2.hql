INSERT OVERWRITE DIRECTORY '/user/edureka/hive/script_2'  
Select A.Airline, A.AirlineID ,	A.Sourceairport , A.SourceairportID , A.Destinationairport , A.DestinationairportID ,	A.Codeshare , A.Stops , A.Equipment , B.Name, B. Alias from routes A, airlines B  where A.AirlineID = B.Airline and A.Stops = 0;
