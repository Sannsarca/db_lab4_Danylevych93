CREATE TRIGGER short_name_insert
AFTER INSERT ON region4
FOR EACH ROW
EXECUTE FUNCTION region_name_upper();

CREATE OR REPLACE FUNCTION region_name_upper() RETURNS trigger AS
$$
	BEGIN
		UPDATE region4
		SET region = UPPER(region)
		WHERE region4.region_id = NEW.region_id;
		RETURN NULL;
	END;
$$ LANGUAGE 'plpgsql';