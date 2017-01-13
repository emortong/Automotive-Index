-- \c estefaniamorton;

DROP USER IF EXISTS indexed_cars_user;

CREATE USER indexed_cars_user;

DROP DATABASE IF EXISTS indexed_cars;

CREATE DATABASE indexed_cars;

-- ALTER DATABASE indexed_cars OWNER TO indexed_cars_user;


\c indexed_cars;

DROP INDEX IF EXISTS car_models_make_code_idx;

CREATE INDEX car_models_make_code_idx
  ON car_models (make_code, make_title, model_code, model_title, year);

SELECT DISTINCT make_title FROM car_models WHERE make_code = 'LAM';
--5.291 ms

SELECT DISTINCT model_title FROM car_models WHERE make_code = 'NISSAN' AND model_code = 'GT-R';
--4.784 ms

SELECT make_code, model_code, model_title, year FROM car_models WHERE make_code = 'LAM';
--6.343 ms

SELECT * FROM car_models WHERE year BETWEEN 2010 AND 2015;
--208.916 ms

SELECT * FROM car_models WHERE year = 2010;
--108.496 ms

