DROP TABLE if exists detections;
DROP TABLE if exists discoveries;
DROP TABLE if exists exoplanets;
DROP TABLE if exists astronomers;

CREATE TABLE astronomers (
id SERIAL4 PRIMARY KEY,
name VARCHAR(255),
observation_type VARCHAR(255)
);

CREATE TABLE exoplanets (
id SERIAL4 PRIMARY KEY,
name VARCHAR(255),
type VARCHAR(255),
habitable BOOLEAN,
mass FLOAT(1),
discovery DATE
);

CREATE TABLE discoveries (
id SERIAL4 PRIMARY KEY,
astronomer_id INT4 REFERENCES astronomers(id),
exoplanet_id INT4 REFERENCES exoplanets(id)
);

CREATE TABLE detections (
id SERIAL4 PRIMARY KEY,
astronomer_id INT4 REFERENCES astronomers(id),
exoplanet_id INT4 REFERENCES exoplanets(id),
astronomer_name VARCHAR(255) REFERENCES astronomers(name),
astronomer_observation VARCHAR(255) REFERENCES,
exoplanet_name VARCHAR(255) REFERENCES exoplanets(name),
exoplanet_type VARCHAR(255) REFERENCES exoplanets(type),
exoplanet_habitable BOOLEAN(255) REFERENCES exoplanets(habitable),
exoplanet_mass FLOAT(1) REFERENCES exoplanets(mass),
exoplanet_discovery DATE REFERENCES exoplanets(discovery)
);