-- db indexed_cars

CREATE TABLE IF NOT EXISTS car_models
(
 id serial,
 make_code character varying(125) NOT NULL,
 make_title character varying(125) NOT NULL,
 model_code character varying(125) NOT NULL,
 model_title character varying(125) NOT NULL,
 year integer NOT NULL,
 PRIMARY KEY (id)
)

SELECT DISTINCT make_title FROM car_models WHERE make_code = 'LAM';
--78.222 ms

SELECT DISTINCT model_title FROM car_models WHERE make_code = 'NISSAN' AND model_code = 'GT-R';
--76.025 ms

SELECT make_code, model_code, model_title, year FROM car_models WHERE make_code = 'LAM';
--84.507 ms

SELECT * FROM car_models WHERE year BETWEEN 2010 AND 2015;
--212.597 ms

SELECT * FROM car_models WHERE year = 2010;
--104.919 ms

SELECT make_title FROM car_models;
-- 173.269 ms

SELECT model_title FROM car_models WHERE make_code = 'LAM';
-- 91.612 ms
