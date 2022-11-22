CREATE TABLE deputati (
    id_deputati int PRIMARY KEY,
    vards varchar(20) NOT NULL,
    uzvards varchar(20) NOT NULL,
    partija varchar(20),
    izglitiba varchar(20) NOT NULL,
    vai_ir_saeima varchar(20) NOT NULL,
    dzimsanas_gads date NOT NULL,
);

INSERT INTO deputati (id_deputati, vards, uzvards, partija, izglitiba, vai_ir_saeima, dzimsanas_gads)
VALUES (1, 'Janis', 'Berzins', 'KPV LV', 'Vidusskola', 'Nē', '1980-01-01'),
       (2, 'Aivars', 'Lembergs', 'KPV LV', 'Vidusskola', 'Nē', '1980-01-01'),
       (3, 'Aivars', 'Lembergs', 'KPV LV', 'Vidusskola', 'Nē', '1980-01-01'),
       (4, 'Aivars', 'Lembergs', 'KPV LV', 'Vidusskola', 'Nē', '1980-01-01'),
       (5, 'Aivars', 'Lembergs', 'KPV LV', 'Vidusskola', 'Nē', '1980-01-01'),
       (6, 'Aivars', 'Lembergs', 'KPV LV', 'Vidusskola', 'Nē', '1980-01-01'),
       (7, 'Aivars', 'Lembergs', 'KPV LV', 'Vidusskola', 'Nē', '1980-01-01'),
       (8, 'Aivars', 'Lembergs', 'KPV LV', 'Vidusskola', 'Nē', '1980-01-01'),
       (9, 'Aivars', 'Lembergs', 'KPV LV', 'Vidusskola', 'Nē', '1980-01-01'),
       (10, 'Aivars', 'Lembergs', 'KPV LV', 'Vidusskola', 'Nē', '1980-01-01'),
       (11, 'Aivars', 'Lembergs', 'KPV LV', 'Vidusskola', 'Nē', '1980-01-01'),
       (12, 'Aivars', 'Lembergs', 'KPV LV', 'Vidusskola', 'Nē', '1980-01-01'),
       (13, 'Aivars', 'Lembergs', 'KPV LV', 'Vidusskola', 'Nē', '1980-01-01'),
       (14, 'A