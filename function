CREATE OR REPLACE FUNCTION clear_years_info4() RETURNS void AS
$$
	BEGIN
		DELETE FROM years_info4
			WHERE years_info4.points=0 OR years_info4.place>158 OR years_info4.place<1;
	END;
$$ LANGUAGE 'plpgsql';