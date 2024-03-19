-- Insert into Galaxy table
INSERT INTO galaxy(name, size, constellation, number_of_stars, viewable_from_earth) VALUES('Andromeda_Galaxy', 152000, 'Andromeda', 1000000000000, TRUE);
INSERT INTO galaxy(name, size, constellation, number_of_stars, viewable_from_earth) VALUES('Milky Way', 100000, 'Sagittarius', 3000000000, TRUE);
INSERT INTO galaxy(name, size, constellation, number_of_stars, viewable_from_earth) VALUES('Cartwheel', 144300, 'Sculptor', 6000000000, FALSE);
INSERT INTO galaxy(name, size, constellation, number_of_stars, viewable_from_earth) VALUES('Firewords', 87300, 'Cepheus', 900000000, FALSE);
INSERT INTO galaxy(name, size, constellation, number_of_stars, viewable_from_earth) VALUES('Cigar', 40800, 'Ursa_Major', 30000000000, TRUE);
INSERT INTO galaxy(name, size, constellation, number_of_stars, viewable_from_earth) VALUES('Condor', 522000, 'Pavo', 1200000000000, TRUE);





-- Break

-- Insert into Asteroid table
INSERT INTO asteroid(name, size, type, mean_distance_from_sun) VALUES('Vesta', 525, 'vestoid', 2.360);
INSERT INTO asteroid(name, size, type, mean_distance_from_sun) VALUES('Bennu', 490, 'blue', 1.130);
INSERT INTO asteroid(name, size, type, mean_distance_from_sun) VALUES('Psyche', 226, 'metallic', 3.000);


-- Break

-- Insert into Star table
INSERT INTO star(name, size, mass, surface_temp) VALUES('Sun', 432000, 333000, 5772);
INSERT INTO star(name, size, mass, surface_temp) VALUES('Proxima Centauri', 211680, 1400000, 3042);
-- Update/check Arcturus name, size, and mass in database
INSERT INTO star(name, size, mass, surface_temp) VALUES('Arctrus', 10800000, 333000, 4200);
INSERT INTO star(name, size, mass, surface_temp) VALUES('Hamal', 6480000, 499500, 5770);
INSERT INTO star(name, size, mass, surface_temp) VALUES('Pollux', 1944000, 864000, 4666);
INSERT INTO star(name, size, mass, surface_temp) VALUES('Rigel', 15120000, 6993000, 12100);
-- Break

--Set Star FOREIGN Key to reference it's Galaxy
ALTER TABLE star ADD COLUMN galaxy_ID INT REFERENCES galaxy(galaxy_id);


-- Update table to reference each moon to a planet_id
UPDATE star SET galaxy_id = x WHERE star_id = x
UPDATE star SET galaxy_id = 2 WHERE star_id = 1;
UPDATE star SET galaxy_id = 2 WHERE star_id = 2;
UPDATE star SET galaxy_id = 2 WHERE star_id = 3;
UPDATE star SET galaxy_id = 2 WHERE star_id = 4;
UPDATE star SET galaxy_id = 2 WHERE star_id = 5;
UPDATE star SET galaxy_id = 2 WHERE star_id = 6;

-- Break

-- Insert into Planet table
INSERT INTO planet(name, size, type, has_water) VALUES('Mercury', 4880, 'terestrial', FALSE);
INSERT INTO planet(name, size, type, has_water) VALUES('Venus', 12104, 'terestrial', FALSE);
INSERT INTO planet(name, size, type, has_water) VALUES('Earth', 12760, 'terestrial', TRUE);
INSERT INTO planet(name, size, type, has_water) VALUES('Mars', 6780, 'terestrial', TRUE);
INSERT INTO planet(name, size, type, has_water) VALUES('Jupiter', 69911, 'gas_giant', TRUE);
INSERT INTO planet(name, size, type, has_water) VALUES('Saturn', 120500, 'gas_giant', FALSE);
INSERT INTO planet(name, size, type, has_water) VALUES('Uranus', 51118, 'ice_giant', TRUE);
INSERT INTO planet(name, size, type, has_water) VALUES('Neptune', 49528, 'ice_giant', TRUE);
INSERT INTO planet(name, size, type, has_water) VALUES('Pluto', 2253, 'dwarf', TRUE);
INSERT INTO planet(name, size, type, has_water) VALUES('Ceres', 476, 'dwarf', TRUE);
INSERT INTO planet(name, size, type, has_water) VALUES('Kepler-22b', 13394, 'super_earth', TRUE);
INSERT INTO planet(name, size, type, has_water) VALUES('COROT-7b', 10077, 'super_earth', TRUE);


--Set Planet FOREIGN Key to reference it's Star
ALTER TABLE planet ADD COLUMN star_id INT REFERENCES star(star_id);
-- Update table to reference each planet to a star_id
UPDATE planet SET star_id = x WHERE planet_id = x
UPDATE planet SET star_id = 1 WHERE planet_id = 1;
UPDATE planet SET star_id = 1 WHERE planet_id = 2;
UPDATE planet SET star_id = 1 WHERE planet_id = 3;
UPDATE planet SET star_id = 1 WHERE planet_id = 4;
UPDATE planet SET star_id = 1 WHERE planet_id = 5;
UPDATE planet SET star_id = 1 WHERE planet_id = 6;
UPDATE planet SET star_id = 1 WHERE planet_id = 7;
UPDATE planet SET star_id = 1 WHERE planet_id = 8;
UPDATE planet SET star_id = 1 WHERE planet_id = 9;
UPDATE planet SET star_id = 1 WHERE planet_id = 10;
UPDATE planet SET star_id = 1 WHERE planet_id = 11;
UPDATE planet SET star_id = 1 WHERE planet_id = 12;


-- Break

-- Insert into Moon table
INSERT INTO moon(name, size, type, distance_from_planet) VALUES('Moon', 3480, 'synchronous_rotation', 384400);
INSERT INTO moon(name, size, type, distance_from_planet) VALUES('Phobos', 23, 'synchronous_rotation', 9380);
INSERT INTO moon(name, size, type, distance_from_planet) VALUES('Deimos', 13, 'synchronous_rotation', 23460);
INSERT INTO moon(name, size, type, distance_from_planet) VALUES('Lo', 3644, 'main_group_moon', 421800);
INSERT INTO moon(name, size, type, distance_from_planet) VALUES('Europa', 3122, 'main_group_moon', 671100);
INSERT INTO moon(name, size, type, distance_from_planet) VALUES('Ganymede', 5268, 'main_group_moon', 1080400);
INSERT INTO moon(name, size, type, distance_from_planet) VALUES('Callisto', 4820, 'main_group_moon', 1882700);
INSERT INTO moon(name, size, type, distance_from_planet) VALUES('Amalthea', 168, 'prograde_irregular', 181400);
INSERT INTO moon(name, size, type, distance_from_planet) VALUES('Himalia', 140, 'prograde_irregular', 11461000);
INSERT INTO moon(name, size, type, distance_from_planet) VALUES('Elara', 86, 'prograde_irregular', 11741999);
INSERT INTO moon(name, size, type, distance_from_planet) VALUES('Pasiphae', 60, 'retrograde_irregular', 23624000);
INSERT INTO moon(name, size, type, distance_from_planet) VALUES('Sinope', 38, 'retrograde_irregular', 23939000);
INSERT INTO moon(name, size, type, distance_from_planet) VALUES('Lysithea', 36, 'prograde_irregular', 11717000);
INSERT INTO moon(name, size, type, distance_from_planet) VALUES('Mimas', 496, 'main_group_moon', 185540);
INSERT INTO moon(name, size, type, distance_from_planet) VALUES('Ymir', 18, 'retrograde_irregular', 23140000);
INSERT INTO moon(name, size, type, distance_from_planet) VALUES('Narvi', 7, 'retrograde_irregular', 19007000);
INSERT INTO moon(name, size, type, distance_from_planet) VALUES('Ariel', 1158, 'main_group_moon', 190900);
INSERT INTO moon(name, size, type, distance_from_planet) VALUES('Triton', 2706, 'retrograde_irregular', 354800);
INSERT INTO moon(name, size, type, distance_from_planet) VALUES('Halimede', 62, 'retrograde_irregular', 15728000);
INSERT INTO moon(name, size, type, distance_from_planet) VALUES('Charon', 1212, 'synchronous_rotation', 19591);


--Set Moon FOREIGN Key to reference it's Planet
ALTER TABLE moon ADD COLUMN planet_id INT REFERENCES planet(planet_id);
-- Update table to reference each moon to a planet_id
UPDATE moon SET planet_id = x WHERE moon_id = x
UPDATE moon SET planet_id = 3 WHERE moon_id = 1;
UPDATE moon SET planet_id = 4 WHERE moon_id = 2;
UPDATE moon SET planet_id = 4 WHERE moon_id = 3;
UPDATE moon SET planet_id = 5 WHERE moon_id = 4;
UPDATE moon SET planet_id = 5 WHERE moon_id = 6;
UPDATE moon SET planet_id = 5 WHERE moon_id = 7;
UPDATE moon SET planet_id = 5 WHERE moon_id = 8;
UPDATE moon SET planet_id = 5 WHERE moon_id = 9;
UPDATE moon SET planet_id = 5 WHERE moon_id = 10;
UPDATE moon SET planet_id = 5 WHERE moon_id = 11;
UPDATE moon SET planet_id = 5 WHERE moon_id = 12;
UPDATE moon SET planet_id = 5 WHERE moon_id = 13;
UPDATE moon SET planet_id = 6 WHERE moon_id = 14;
UPDATE moon SET planet_id = 6 WHERE moon_id = 15;
UPDATE moon SET planet_id = 6 WHERE moon_id = 16;
UPDATE moon SET planet_id = 7 WHERE moon_id = 17;
UPDATE moon SET planet_id = 8 WHERE moon_id = 18;
UPDATE moon SET planet_id = 8 WHERE moon_id = 19;
UPDATE moon SET planet_id = 9 WHERE moon_id = 20;