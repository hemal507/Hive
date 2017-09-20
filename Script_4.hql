INSERT OVERWRITE DIRECTORY '/user/edureka/hive/script_4' SELECT Country, COUNT(*) as cnt
FROM airports GROUP BY Country ORDER BY cnt  DESC LIMIT 1 ;
