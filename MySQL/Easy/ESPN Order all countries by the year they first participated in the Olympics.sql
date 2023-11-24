SELECT noc, MIN(year) AS Debut_year FROM olympics_athletes_events 
GROUP BY noc 
ORDER BY 2,1;
