CREATE OR REPLACE PROCEDURE countries_by_region(region_name text)
LANGUAGE plpgsql AS
$$
	DECLARE
		country_rec record;
	BEGIN
		FOR country_rec IN
			SELECT country4.country_name
			FROM country4
			INNER JOIN region4 ON country4.region_id = region4.region_id
				 WHERE region4.region = region_name
		LOOP
			RAISE INFO 'Country from %: %',region_name, country_rec.country_name;
		END LOOP;
	END;
$$ 