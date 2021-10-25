CREATE TABLE region (
  region_id SERIAL PRIMARY KEY,
  name VARCHAR(100) UNIQUE NOT NULL,
);

CREATE TABLE country(
  country_id SERIAL PRIMARY KEY,
  name VARCHAR(132) UNIQUE NOT NULL,
  region_id SERIAL NOT NULL,
  FOREIGN KEY (region_id)
      REFERENCES region (region_id)
);

INSERT INTO region(name) VALUES(
  'South Asia',
  'Southern Europe',
  'Antarctica',
  'Northern Africa',
  'Polynesia',
  'Southern Europe',
  'Middle Africa',
  'Caribbean',
  'Western Asia',
  'Souht America'
);

INSERT INTO country(name, region_id) VALUES(
  'Afghanistan', 1,
  'Albania', 2,
  'Antarctica', 3,
  'Algeria', 4,
  'American Samoa', 5,
  'Andorra', 6,
  'Angola', 7,
  'Antigua and Barduba', 8,
  'Azerbajian', 9,
  'Argentina', 10
);