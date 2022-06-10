CREATE TABLE maxwastestats(city, stationid, trucktype, maxwastecollected) AS (
	SELECT 
		s.city,
		s.stationid,
		t.trucktype,
		MAX(f.wastecollected) AS maxwastecollected
	
	FROM facttrips f 
		INNER JOIN dimstation s ON s.stationid = f.stationid
		INNER JOIN dimtruck t ON t.truckid = f.truckid 
	
	GROUP BY 
		s.city,
		s.stationid,
		t.trucktype
)

	DATA INITIALLY DEFERRED 
	REFRESH DEFERRED 
	MAINTAINED BY SYSTEM
	ENABLE QUERY OPTIMIZATION

;