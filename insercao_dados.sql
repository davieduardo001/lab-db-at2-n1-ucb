-- alimentando o banco com os datasets

-- dataset da coluna pais

INSERT INTO pais (codPais, nomePais) VALUES
('AFG', 'Afghanistan'),
('ALB', 'Albania'),
('DZA', 'Algeria'),
('AND', 'Andorra'),
('AGO', 'Angola'),
('ATG', 'Antigua and Barbuda'),
('ARG', 'Argentina'),
('ARM', 'Armenia'),
('ABW', 'Aruba'),
('AUS', 'Australia'),
('AUT', 'Austria'),
('AZE', 'Azerbaijan'),
('BHS', 'Bahamas'),
('BHR', 'Bahrain'),
('BGD', 'Bangladesh'),
('BRB', 'Barbados'),
('BLR', 'Belarus'),
('BEL', 'Belgium'),
('BLZ', 'Belize'),
('BEN', 'Benin'),
('BMU', 'Bermuda'),
('BTN', 'Bhutan'),
('BOL', 'Bolivia'),
('BIH', 'Bosnia and Herzegovina'),
('BWA', 'Botswana'),
('BRA', 'Brazil'),
('VGB', 'British Virgin Islands'),
('BRN', 'Brunei'),
('BGR', 'Bulgaria'),
('BFA', 'Burkina Faso'),
('BDI', 'Burundi'),
('KHM', 'Cambodia'),
('CMR', 'Cameroon'),
('CAN', 'Canada'),
('CPV', 'Cape Verde'),
('CYM', 'Cayman Islands'),
('CAF', 'Central African Republic'),
('TCD', 'Chad'),
('OWID_CIS', 'Channel Islands'),
('CHL', 'Chile'),
('CHN', 'China'),
('COL', 'Colombia'),
('COM', 'Comoros'),
('COG', 'Congo'),
('CRI', 'Costa Rica'),
('CIV', 'Cote d\'Ivoire'),
('HRV', 'Croatia'),
('CUB', 'Cuba'),
('CUW', 'Curacao'),
('CYP', 'Cyprus') ;


-- populando a tabela de continente com os codigos principais pra relacionar com a de geracao de energia continente

INSERT INTO continente (nomecontinente, codcontinente) VALUES
('Africa', 'Afri'),
('Asia', 'Asia'),
('Europe', 'Euro'),
('European Union (27)', 'EuroU'),
('High-income countries', 'High'),
('Low-income countries', 'Low-'),
('Lower-middle-income countries', 'Lowe'),
('North America', 'Nort'),
('Oceania', 'Ocea'),
('South America', 'Sout'),
('Upper-middle-income countries', 'Uppe'); 

-- populando a tabela geracaoenergiacontinenete

INSERT INTO geracaoenergiacontinente (ano, geracaoenergiacontinente, continente_codcontinente) VALUES
(2020, 12000, 'Afri'),
(2020, 15000, 'Asia'),
(2020, 9000, 'Euro'),
(2020, 9500, 'EuroU'),
(2020, 8000, 'High'),
(2020, 3000, 'Low-'),
(2020, 4000, 'Lowe'),
(2020, 11000, 'Nort'),
(2020, 5000, 'Ocea'),
(2020, 6000, 'Sout'),
(2020, 7000, 'Uppe'),

(2021, 12500, 'Afri'),
(2021, 15500, 'Asia'),
(2021, 9200, 'Euro'),
(2021, 9700, 'EuroU'),
(2021, 8200, 'High'),
(2021, 3200, 'Low-'),
(2021, 4200, 'Lowe'),
(2021, 11500, 'Nort'),
(2021, 5500, 'Ocea'),
(2021, 6500, 'Sout'),
(2021, 7500, 'Uppe'),

(2022, 13000, 'Afri'),
(2022, 16000, 'Asia'),
(2022, 9400, 'Euro'),
(2022, 9800, 'EuroU'),
(2022, 8400, 'High'),
(2022, 3400, 'Low-'),
(2022, 4400, 'Lowe'),
(2022, 12000, 'Nort'),
(2022, 6000, 'Ocea'),
(2022, 7000, 'Sout'),
(2022, 8000, 'Uppe'),

(2023, 13500, 'Afri'),
(2023, 16500, 'Asia'),
(2023, 9600, 'Euro'),
(2023, 9900, 'EuroU'),
(2023, 8600, 'High'),
(2023, 3600, 'Low-'),
(2023, 4600, 'Lowe'),
(2023, 12500, 'Nort'),
(2023, 6500, 'Ocea'),
(2023, 7500, 'Sout'),
(2023, 8500, 'Uppe'),

(2024, 14000, 'Afri'),
(2024, 17000, 'Asia'),
(2024, 9800, 'Euro'),
(2024, 10000, 'EuroU'),
(2024, 8800, 'High'),
(2024, 3800, 'Low-'),
(2024, 4800, 'Lowe'),
(2024, 13000, 'Nort'),
(2024, 7000, 'Ocea'),
(2024, 8000, 'Sout'),
(2024, 9000, 'Uppe');



-- alimentando a tabela de geracaoenergiapessoapais

INSERT INTO geracaoenergiapessoapais (ano, geracaoenergiapessoapais, pais_codpais)
VALUES
-- Registros para AFG (Afghanistan)
(2004, 123456789012, 'AFG'),
(2005, 98765432101234, 'AFG'),
-- Registros para ALB (Albania)
(2004, 234567890123, 'ALB'),
(2005, 87654321012345, 'ALB'),
-- Registros para DZA (Algeria)
(2004, 345678901234, 'DZA'),
(2005, 7654321091234, 'DZA'),
-- Registros para AND (Andorra)
(2004, 456789012345, 'AND'),
(2005, 65432109812345, 'AND'),
-- Registros para AGO (Angola)
(2004, 567890123456, 'AGO'),
(2005, 5432109876543, 'AGO'),
-- Registros para ATG (Antigua and Barbuda)
(2004, 678901234567, 'ATG'),
(2005, 43210987654321, 'ATG'),
-- Registros para ARG (Argentina)
(2004, 789012345678, 'ARG'),
(2005, 3210987654321, 'ARG'),
-- Registros para ARM (Armenia)
(2004, 890123456789, 'ARM'),
(2005, 2109876543210, 'ARM'),
-- Registros para ABW (Aruba)
(2004, 901234567890, 'ABW'),
(2005, 10987654321012, 'ABW'),
-- Registros para AUS (Australia)
(2004, 1234567890123, 'AUS'),
(2005, 98765432109876, 'AUS'),
-- Registros para AUT (Austria)
(2004, 2345678901234, 'AUT'),
(2005, 87654321098765, 'AUT'),
-- Registros para AZE (Azerbaijan)
(2004, 3456789012345, 'AZE'),
(2005, 76543210987654, 'AZE'),
-- Registros para BHS (Bahamas)
(2004, 4567890123456, 'BHS'),
(2005, 65432109876543, 'BHS'),
-- Registros para BHR (Bahrain)
(2004, 5678901234567, 'BHR'),
(2005, 54321098765432, 'BHR'),
-- Registros para BGD (Bangladesh)
(2004, 6789012345678, 'BGD'),
(2005, 43210987654321, 'BGD'),
-- Registros para BRB (Barbados)
(2004, 7890123456789, 'BRB'),
(2005, 32109876543210, 'BRB'),
-- Registros para BLR (Belarus)
(2004, 8901234567890, 'BLR'),
(2005, 21098765432101, 'BLR'),
-- Registros para BEL (Belgium)
(2004, 9012345678901, 'BEL'),
(2005, 10987654321012, 'BEL'),
-- Registros para BLZ (Belize)
(2004, 12345678901234, 'BLZ'),
(2005, 987654321098765, 'BLZ'),
-- Registros para BEN (Benin)
(2004, 23456789012345, 'BEN'),
(2005, 876543210987654, 'BEN'),
-- Registros para BMU (Bermuda)
(2004, 34567890123456, 'BMU'),
(2005, 765432109876543, 'BMU'),
-- Registros para BTN (Bhutan)
(2004, 45678901234567, 'BTN'),
(2005, 654321098765432, 'BTN'),
-- Registros para BOL (Bolivia)
(2004, 56789012345678, 'BOL'),
(2005, 543210987654321, 'BOL'),
-- Registros para BIH (Bosnia and Herzegovina)
(2004, 67890123456789, 'BIH'),
(2005, 432109876543210, 'BIH'),
-- Registros para BWA (Botswana)
(2004, 78901234567890, 'BWA'),
(2005, 321098765432101, 'BWA'),
-- Registros para BRA (Brazil)
(2004, 89012345678901, 'BRA'),
(2005, 210987654321012, 'BRA'),
-- Registros para VGB (British Virgin Islands)
(2004, 90123456789012, 'VGB'),
(2005, 109876543210123, 'VGB'),
-- Registros para BRN (Brunei)
(2004, 123456789012345, 'BRN'),
(2005, 987654321098765, 'BRN'),
-- Registros para BGR (Bulgaria)
(2004, 234567890123456, 'BGR'),
(2005, 876543210987654, 'BGR'),
-- Registros para BFA (Burkina Faso)
(2004, 345678901234567, 'BFA'),
(2005, 7654321098765432, 'BFA'),
-- Registros para BDI (Burundi)
(2004, 456789012345678, 'BDI'),
(2005, 6543210987654321, 'BDI'),
-- Registros para KHM (Cambodia)
(2004, 567890123456789, 'KHM'),
(2005, 5432109876543210, 'KHM'),
-- Registros para CMR (Cameroon)
(2004, 678901234567890, 'CMR'),
(2005, 4321098765432100, 'CMR'),
-- Registros para CAN (Canada)
(2004, 789012345678901, 'CAN'),
(2005, 3210987654321000, 'CAN'),
-- Registros para CPV (Cape Verde)
(2004, 890123456789012, 'CPV'),
(2005, 2109876543210000, 'CPV'),
-- Registros para CYM (Cayman Islands)
(2004, 901234567890123, 'CYM'),
(2005, 10987654321000000, 'CYM'),
-- Registros para CAF (Central African Republic)
(2004, 123456789012345, 'CAF'),
(2005, 9876543210987654, 'CAF'),
-- Registros para TCD (Chad)
(2004, 234567890123456, 'TCD'),
(2005, 8765432109876543, 'TCD'),
-- Registros para OWID_CIS (Channel Islands)
(2004, 3456789012345678, 'OWID_CIS'),
(2005, 76543210987654321, 'OWID_CIS'),
-- Registros para CHL (Chile)
(2004, 4567890123456789, 'CHL'),
(2005, 65432109876543210, 'CHL'),
-- Registros para CHN (China)
(2004, 5678901234567890, 'CHN'),
(2005, 5432109876543210, 'CHN'),
-- Registros para COL (Colombia)
(2004, 6789012345678901, 'COL'),
(2005, 4321098765432100, 'COL'),
-- Registros para COM (Comoros)
(2004, 7890123456789012, 'COM'),
(2005, 3210987654321000, 'COM'),
-- Registros para COG (Congo)
(2004, 8901234567890123, 'COG'),
(2005, 2109876543210000, 'COG'),
-- Registros para CRI (Costa Rica)
(2004, 9012345678901234, 'CRI'),
(2005, 10987654321000000, 'CRI'),
-- Registros para CIV (Cote d'Ivoire)
(2004, 1234567890123456, 'CIV'),
(2005, 987654321098765, 'CIV'),
-- Registros para HRV (Croatia)
(2004, 2345678901234567, 'HRV'),
(2005, 876543210987654, 'HRV'),
-- Registros para CUB (Cuba)
(2004, 3456789012345678, 'CUB'),
(2005, 765432109876543, 'CUB'),
-- Registros para CUW (Curacao)
(2004, 4567890123456789, 'CUW'),
(2005, 654321455, 'CUW');

-- alimentando a tabea de percentual da pop sem energia limpa (clean cooking fuels)



INSERT INTO percentpopenergialimpa (ano, percentPopEnergiaLimpa, pais_codpais)
VALUES
-- Registros para AFG (Afghanistan)
(2020, 10.55, 'AFG'),
(2021, 14.75, 'AFG'),
-- Registros para ALB (Albania)
(2020, 15.10, 'ALB'),
(2021, 17.85, 'ALB'),
-- Registros para DZA (Algeria)
(2020, 20.65, 'DZA'),
(2021, 23.40, 'DZA'),
-- Registros para AND (Andorra)
(2020, 31.75, 'AND'),
(2021, 34.10, 'AND'),
-- Registros para AGO (Angola)
(2020, 5.80, 'AGO'),
(2021, 7.25, 'AGO'),
-- Registros para ATG (Antigua and Barbuda)
(2020, 8.20, 'ATG'),
(2021, 9.75, 'ATG'),
-- Registros para ARG (Argentina)
(2020, 14.30, 'ARG'),
(2021, 18.10, 'ARG'),
-- Registros para ARM (Armenia)
(2020, 18.45, 'ARM'),
(2021, 20.55, 'ARM'),
-- Registros para ABW (Aruba)
(2020, 11.75, 'ABW'),
(2021, 13.60, 'ABW'),
-- Registros para AUS (Australia)
(2020, 25.15, 'AUS'),
(2021, 28.85, 'AUS'),
-- Registros para AUT (Austria)
(2020, 35.25, 'AUT'),
(2021, 38.90, 'AUT'),
-- Registros para AZE (Azerbaijan)
(2020, 29.40, 'AZE'),
(2021, 32.55, 'AZE'),
-- Registros para BHS (Bahamas)
(2020, 13.30, 'BHS'),
(2021, 16.10, 'BHS'),
-- Registros para BHR (Bahrain)
(2020, 18.20, 'BHR'),
(2021, 19.80, 'BHR'),
-- Registros para BGD (Bangladesh)
(2020, 6.90, 'BGD'),
(2021, 8.70, 'BGD'),
-- Registros para BRB (Barbados)
(2020, 9.50, 'BRB'),
(2021, 11.40, 'BRB'),
-- Registros para BLR (Belarus)
(2020, 15.60, 'BLR'),
(2021, 17.00, 'BLR'),
-- Registros para BEL (Belgium)
(2020, 28.50, 'BEL'),
(2021, 30.75, 'BEL'),
-- Registros para BLZ (Belize)
(2020, 7.30, 'BLZ'),
(2021, 8.90, 'BLZ'),
-- Registros para BEN (Benin)
(2020, 4.20, 'BEN'),
(2021, 5.50, 'BEN'),
-- Registros para BMU (Bermuda)
(2020, 9.75, 'BMU'),
(2021, 10.25, 'BMU'),
-- Registros para BTN (Bhutan)
(2020, 6.50, 'BTN'),
(2021, 7.85, 'BTN'),
-- Registros para BOL (Bolivia)
(2020, 8.90, 'BOL'),
(2021, 10.30, 'BOL'),
-- Registros para BIH (Bosnia and Herzegovina)
(2020, 16.20, 'BIH'),
(2021, 18.15, 'BIH'),
-- Registros para BWA (Botswana)
(2020, 11.15, 'BWA'),
(2021, 13.45, 'BWA'),
-- Registros para BRA (Brazil)
(2020, 22.10, 'BRA'),
(2021, 25.90, 'BRA'),
-- Registros para VGB (British Virgin Islands)
(2020, 10.80, 'VGB'),
(2021, 12.30, 'VGB'),
-- Registros para BRN (Brunei)
(2020, 14.00, 'BRN'),
(2021, 16.70, 'BRN'),
-- Registros para BGR (Bulgaria)
(2020, 20.80, 'BGR'),
(2021, 22.90, 'BGR'),
-- Registros para BFA (Burkina Faso)
(2020, 5.60, 'BFA'),
(2021, 7.00, 'BFA'),
-- Registros para BDI (Burundi)
(2020, 4.30, 'BDI'),
(2021, 5.80, 'BDI'),
-- Registros para KHM (Cambodia)
(2020, 9.10, 'KHM'),
(2021, 10.70, 'KHM'),
-- Registros para CMR (Cameroon)
(2020, 6.80, 'CMR'),
(2021, 8.00, 'CMR'),
-- Registros para CAN (Canada)
(2020, 30.00, 'CAN'),
(2021, 32.50, 'CAN'),
-- Registros para CPV (Cape Verde)
(2020, 11.20, 'CPV'),
(2021, 12.80, 'CPV'),
-- Registros para CYM (Cayman Islands)
(2020, 14.10, 'CYM'),
(2021, 15.30, 'CYM'),
-- Registros para CAF (Central African Republic)
(2020, 3.90, 'CAF'),
(2021, 4.80, 'CAF'),
-- Registros para TCD (Chad)
(2020, 5.00, 'TCD'),
(2021, 6.30, 'TCD'),
-- Registros para OWID_CIS (Channel Islands)
(2020, 12.00, 'OWID_CIS'),
(2021, 14.50, 'OWID_CIS'),
-- Registros para CHL (Chile)
(2020, 25.75, 'CHL'),
(2021, 27.60, 'CHL'),
-- Registros para CHN (China)
(2020, 18.50, 'CHN'),
(2021, 20.00, 'CHN'),
-- Registros para COL (Colombia)
(2020, 15.75, 'COL'),
(2021, 17.20, 'COL'),
-- Registros para COM (Comoros)
(2020, 4.00, 'COM'),
(2021, 5.00, 'COM'),
-- Registros para COG (Congo)
(2020, 8.10, 'COG'),
(2021, 9.20, 'COG'),
-- Registros para CRI (Costa Rica)
(2020, 13.50, 'CRI'),
(2021, 14.80, 'CRI'),
-- Registros para CIV (Cote d'Ivoire)
(2020, 7.80, 'CIV'),
(2021, 8.90, 'CIV'),
-- Registros para HRV (Croatia)
(2020, 16.90, 'HRV'),
(2021, 18.60, 'HRV'),
-- Registros para CUB (Cuba)
(2020, 9.20, 'CUB'),
(2021, 11.10, 'CUB'),
-- Registros para CUW (Curacao)
(2020, 7.30, 'CUW'),
(2021, 8.40, 'CUW'),
-- Registros para CYP (Cyprus)
(2020, 12.50, 'CYP'),
(2021, 13.70, 'CYP');



INSERT INTO percentpopenergialimpa (ano, percentpopenergialimpa, pais_codpais)
VALUES
-- Registros para AFG (Afghanistan)
(2020, 10.55, 'AFG'),
(2021, 14.75, 'AFG'),
-- Registros para ALB (Albania)
(2020, 15.10, 'ALB'),
(2021, 17.85, 'ALB'),
-- Registros para DZA (Algeria)
(2020, 20.65, 'DZA'),
(2021, 23.40, 'DZA'),
-- Registros para AND (Andorra)
(2020, 31.75, 'AND'),
(2021, 34.10, 'AND'),
-- Registros para AGO (Angola)
(2020, 5.80, 'AGO'),
(2021, 7.25, 'AGO'),
-- Registros para ATG (Antigua and Barbuda)
(2020, 8.20, 'ATG'),
(2021, 9.75, 'ATG'),
-- Registros para ARG (Argentina)
(2020, 14.30, 'ARG'),
(2021, 18.10, 'ARG'),
-- Registros para ARM (Armenia)
(2020, 18.45, 'ARM'),
(2021, 20.55, 'ARM'),
-- Registros para ABW (Aruba)
(2020, 11.75, 'ABW'),
(2021, 13.60, 'ABW'),
-- Registros para AUS (Australia)
(2020, 25.15, 'AUS'),
(2021, 28.85, 'AUS'),
-- Registros para AUT (Austria)
(2020, 35.25, 'AUT'),
(2021, 38.90, 'AUT'),
-- Registros para AZE (Azerbaijan)
(2020, 29.40, 'AZE'),
(2021, 32.55, 'AZE'),
-- Registros para BHS (Bahamas)
(2020, 13.30, 'BHS'),
(2021, 16.10, 'BHS'),
-- Registros para BHR (Bahrain)
(2020, 18.20, 'BHR'),
(2021, 19.80, 'BHR'),
-- Registros para BGD (Bangladesh)
(2020, 6.90, 'BGD'),
(2021, 8.70, 'BGD'),
-- Registros para BRB (Barbados)
(2020, 9.50, 'BRB'),
(2021, 11.40, 'BRB'),
-- Registros para BLR (Belarus)
(2020, 15.60, 'BLR'),
(2021, 17.00, 'BLR'),
-- Registros para BEL (Belgium)
(2020, 28.50, 'BEL'),
(2021, 30.75, 'BEL'),
-- Registros para BLZ (Belize)
(2020, 7.30, 'BLZ'),
(2021, 8.90, 'BLZ'),
-- Registros para BEN (Benin)
(2020, 4.20, 'BEN'),
(2021, 5.50, 'BEN'),
-- Registros para BMU (Bermuda)
(2020, 9.75, 'BMU'),
(2021, 10.25, 'BMU'),
-- Registros para BTN (Bhutan)
(2020, 6.50, 'BTN'),
(2021, 7.85, 'BTN'),
-- Registros para BOL (Bolivia)
(2020, 8.90, 'BOL'),
(2021, 10.30, 'BOL'),
-- Registros para BIH (Bosnia and Herzegovina)
(2020, 16.20, 'BIH'),
(2021, 18.15, 'BIH'),
-- Registros para BWA (Botswana)
(2020, 11.15, 'BWA'),
(2021, 13.45, 'BWA'),
-- Registros para BRA (Brazil)
(2020, 22.10, 'BRA'),
(2021, 25.90, 'BRA'),
-- Registros para VGB (British Virgin Islands)
(2020, 10.80, 'VGB'),
(2021, 12.30, 'VGB'),
-- Registros para BRN (Brunei)
(2020, 14.00, 'BRN'),
(2021, 16.70, 'BRN'),
-- Registros para BGR (Bulgaria)
(2020, 20.80, 'BGR'),
(2021, 22.90, 'BGR'),
-- Registros para BFA (Burkina Faso)
(2020, 5.60, 'BFA'),
(2021, 7.00, 'BFA'),
-- Registros para BDI (Burundi)
(2020, 4.30, 'BDI'),
(2021, 5.80, 'BDI'),
-- Registros para KHM (Cambodia)
(2020, 9.10, 'KHM'),
(2021, 10.70, 'KHM'),
-- Registros para CMR (Cameroon)
(2020, 6.80, 'CMR'),
(2021, 8.00, 'CMR'),
-- Registros para CAN (Canada)
(2020, 30.00, 'CAN'),
(2021, 32.50, 'CAN'),
-- Registros para CPV (Cape Verde)
(2020, 11.20, 'CPV'),
(2021, 12.80, 'CPV'),
-- Registros para CYM (Cayman Islands)
(2020, 14.10, 'CYM'),
(2021, 15.30, 'CYM'),
-- Registros para CAF (Central African Republic)
(2020, 3.90, 'CAF'),
(2021, 4.80, 'CAF'),
-- Registros para TCD (Chad)
(2020, 5.00, 'TCD'),
(2021, 6.30, 'TCD'),
-- Registros para OWID_CIS (Channel Islands)
(2020, 12.00, 'OWID_CIS'),
(2021, 14.50, 'OWID_CIS'),
-- Registros para CHL (Chile)
(2020, 25.75, 'CHL'),
(2021, 27.60, 'CHL'),
-- Registros para CHN (China)
(2020, 18.50, 'CHN'),
(2021, 20.00, 'CHN'),
-- Registros para COL (Colombia)
(2020, 15.75, 'COL'),
(2021, 17.20, 'COL'),
-- Registros para COM (Comoros)
(2020, 4.00, 'COM'),
(2021, 5.00, 'COM'),
-- Registros para COG (Congo)
(2020, 8.10, 'COG'),
(2021, 9.20, 'COG'),
-- Registros para CRI (Costa Rica)
(2020, 13.50, 'CRI'),
(2021, 14.80, 'CRI'),
-- Registros para CIV (Cote d'Ivoire)
(2020, 7.80, 'CIV'),
(2021, 8.90, 'CIV'),
-- Registros para HRV (Croatia)
(2020, 16.90, 'HRV'),
(2021, 18.60, 'HRV'),
-- Registros para CUB (Cuba)
(2020, 9.20, 'CUB'),
(2021, 11.10, 'CUB'),
-- Registros para CUW (Curacao)
(2020, 7.30, 'CUW'),
(2021, 8.40, 'CUW'),
-- Registros para CYP (Cyprus)
(2020, 12.50, 'CYP'),
(2021, 13.70, 'CYP');

-- alimentando a tabela de populaçao rural sem aceso a eletricidade


 INSERT INTO popruralsemeletricidade (ano, popruralsemeletricidade, pais_codpais) VALUES
-- Registros para AFG (Afghanistan)
(2010, 1234567890, 'AFG'),
(2011, 9876543211, 'AFG'),
-- Registros para ALB (Albania)
(2010, 2345678901, 'ALB'),
(2011, 8765432102, 'ALB'),
-- Registros para DZA (Algeria)
(2010, 3456789012, 'DZA'),
(2011, 7654321093, 'DZA'),
-- Registros para AND (Andorra)
(2010, 4567890123, 'AND'),
(2011, 6543210984, 'AND'),
-- Registros para AGO (Angola)
(2010, 5678901234, 'AGO'),
(2011, 5432109875, 'AGO'),
-- Registros para ATG (Antigua and Barbuda)
(2010, 6789012345, 'ATG'),
(2011, 4321098766, 'ATG'),
-- Registros para ARG (Argentina)
(2010, 7890123456, 'ARG'),
(2011, 3210987657, 'ARG'),
-- Registros para ARM (Armenia)
(2010, 8901234567, 'ARM'),
(2011, 2109876548, 'ARM'),
-- Registros para ABW (Aruba)
(2010, 9012345678, 'ABW'),
(2011, 1098765439, 'ABW'),
-- Registros para AUS (Australia)
(2010, 12345678901, 'AUS'),
(2011, 98765432102, 'AUS'),
-- Registros para AUT (Austria)
(2010, 23456789012, 'AUT'),
(2011, 87654321023, 'AUT'),
-- Registros para AZE (Azerbaijan)
(2010, 34567890123, 'AZE'),
(2011, 76543210934, 'AZE'),
-- Registros para BHS (Bahamas)
(2010, 45678901234, 'BHS'),
(2011, 65432109845, 'BHS'),
-- Registros para BHR (Bahrain)
(2010, 56789012345, 'BHR'),
(2011, 54321098756, 'BHR'),
-- Registros para BGD (Bangladesh)
(2010, 67890123456, 'BGD'),
(2011, 43210987667, 'BGD'),
-- Registros para BRB (Barbados)
(2010, 78901234567, 'BRB'),
(2011, 32109876578, 'BRB'),
-- Registros para BLR (Belarus)
(2010, 89012345678, 'BLR'),
(2011, 21098765489, 'BLR'),
-- Registros para BEL (Belgium)
(2010, 90123456789, 'BEL'),
(2011, 10987654390, 'BEL'),
-- Registros para BLZ (Belize)
(2010, 12345678901, 'BLZ'),
(2011, 23456789012, 'BLZ'),
-- Registros para BEN (Benin)
(2010, 34567890123, 'BEN'),
(2011, 45678901234, 'BEN'),
-- Registros para BMU (Bermuda)
(2010, 56789012345, 'BMU'),
(2011, 67890123456, 'BMU'),
-- Registros para BTN (Bhutan)
(2010, 78901234567, 'BTN'),
(2011, 89012345678, 'BTN'),
-- Registros para BOL (Bolivia)
(2010, 90123456789, 'BOL'),
(2011, 12345678901, 'BOL'),
-- Registros para BIH (Bosnia and Herzegovina)
(2010, 23456789012, 'BIH'),
(2011, 34567890123, 'BIH'),
-- Registros para BWA (Botswana)
(2010, 45678901234, 'BWA'),
(2011, 56789012345, 'BWA'),
-- Registros para BRA (Brazil)
(2010, 67890123456, 'BRA'),
(2011, 78901234567, 'BRA'),
-- Registros para VGB (British Virgin Islands)
(2010, 89012345678, 'VGB'),
(2011, 90123456789, 'VGB'),
-- Registros para BRN (Brunei)
(2010, 12345678901, 'BRN'),
(2011, 23456789012, 'BRN'),
-- Registros para BGR (Bulgaria)
(2010, 34567890123, 'BGR'),
(2011, 45678901234, 'BGR'),
-- Registros para BFA (Burkina Faso)
(2010, 56789012345, 'BFA'),
(2011, 67890123456, 'BFA'),
-- Registros para BDI (Burundi)
(2010, 78901234567, 'BDI'),
(2011, 89012345678, 'BDI'),
-- Registros para KHM (Cambodia)
(2010, 90123456789, 'KHM'),
(2011, 12345678901, 'KHM'),
-- Registros para CMR (Cameroon)
(2010, 23456789012, 'CMR'),
(2011, 34567890123, 'CMR'),
-- Registros para CAN (Canada)
(2010, 45678901234, 'CAN'),
(2011, 56789012345, 'CAN'),
-- Registros para CPV (Cape Verde)
(2010, 67890123456, 'CPV'),
(2011, 78901234567, 'CPV'),
-- Registros para CYM (Cayman Islands)
(2010, 89012345678, 'CYM'),
(2011, 90123456789, 'CYM'),
-- Registros para CAF (Central African Republic)
(2010, 12345678901, 'CAF'),
(2011, 23456789012, 'CAF'),
-- Registros para TCD (Chad)
(2010, 34567890123, 'TCD'),
(2011, 45678901234, 'TCD'),
-- Registros para OWID_CIS (Channel Islands)
(2010, 56789012345, 'OWID_CIS'),
(2011, 67890123456, 'OWID_CIS'),
-- Registros para CHL (Chile)
(2010, 78901234567, 'CHL'),
(2011, 89012345678, 'CHL'),
-- Registros para CHN (China)
(2010, 90123456789, 'CHN'),
(2011, 12345678901, 'CHN'),
-- Registros para COL (Colombia)
(2010, 23456789012, 'COL'),
(2011, 34567890123, 'COL'),
-- Registros para COM (Comoros)
(2010, 45678901234, 'COM'),
(2011, 56789012345, 'COM'),
-- Registros para COG (Congo)
(2010, 67890123456, 'COG'),
(2011, 78901234567, 'COG'),
-- Registros para CRI (Costa Rica)
(2010, 89012345678, 'CRI'),
(2011, 90123456789, 'CRI'),
-- Registros para CIV (Cote d'Ivoire)
(2010, 12345678901, 'CIV'),
(2011, 23456789012, 'CIV'),
-- Registros para HRV (Croatia)
(2010, 34567890123, 'HRV'),
(2011, 45678901234, 'HRV'),
-- Registros para CUB (Cuba)
(2010, 56789012345, 'CUB'),
(2011, 67890123456, 'CUB'),
-- Registros para CUW (Curacao)
(2010, 78901234567, 'CUW'),
(2011, 89012345678, 'CUW'),
-- Registros para CYP (Cyprus)
(2010, 90123456789, 'CYP'),
(2011, 12345678901, 'CYP');


INSERT INTO popsemacessoenergia (ano, popsemenergia, pais_codpais) VALUES
-- Registros para AFG (Afghanistan)
(2010, 25348712, 'AFG'),
(2012, 25679342, 'AFG'),
-- Registros para ALB (Albania)
(2010, 2901234, 'ALB'),
(2013, 2956789, 'ALB'),
-- Registros para DZA (Algeria)
(2011, 39123456, 'DZA'),
(2014, 39876543, 'DZA'),
-- Registros para AND (Andorra)
(2010, 78542, 'AND'),
(2015, 80234, 'AND'),
-- Registros para AGO (Angola)
(2011, 21123456, 'AGO'),
(2016, 22134567, 'AGO'),
-- Registros para ATG (Antigua and Barbuda)
(2012, 84765, 'ATG'),
(2017, 85987, 'ATG'),
-- Registros para ARG (Argentina)
(2010, 41098765, 'ARG'),
(2015, 41567890, 'ARG'),
-- Registros para ARM (Armenia)
(2010, 3012345, 'ARM'),
(2016, 3067890, 'ARM'),
-- Registros para ABW (Aruba)
(2010, 102345, 'ABW'),
(2014, 105678, 'ABW'),
-- Registros para AUS (Australia)
(2011, 21765432, 'AUS'),
(2018, 21987654, 'AUS'),
-- Registros para AUT (Austria)
(2010, 8456789, 'AUT'),
(2015, 8523456, 'AUT'),
-- Registros para AZE (Azerbaijan)
(2010, 9401234, 'AZE'),
(2016, 9654321, 'AZE'),
-- Registros para BHS (Bahamas)
(2011, 399876, 'BHS'),
(2018, 401234, 'BHS'),
-- Registros para BHR (Bahrain)
(2012, 138987, 'BHR'),
(2019, 141567, 'BHR'),
-- Registros para BGD (Bangladesh)
(2010, 160000000, 'BGD'),
(2015, 165000000, 'BGD'),
-- Registros para BRB (Barbados)
(2010, 285000, 'BRB'),
(2014, 290000, 'BRB'),
-- Registros para BLR (Belarus)
(2011, 9467890, 'BLR'),
(2017, 9501234, 'BLR'),
-- Registros para BEL (Belgium)
(2010, 11400000, 'BEL'),
(2015, 11550000, 'BEL'),
-- Registros para BLZ (Belize)
(2012, 363252, 'BLZ'),
(2018, 370003, 'BLZ'),
-- Registros para BEN (Benin)
(2010, 11500000, 'BEN'),
(2013, 11600000, 'BEN'),
-- Registros para BMU (Bermuda)
(2011, 62000, 'BMU'),
(2015, 63500, 'BMU'),
-- Registros para BTN (Bhutan)
(2010, 738000, 'BTN'),
(2016, 750000, 'BTN'),
-- Registros para BOL (Bolivia)
(2010, 10600000, 'BOL'),
(2014, 10750000, 'BOL'),
-- Registros para BIH (Bosnia and Herzegovina)
(2011, 3581234, 'BIH'),
(2016, 3600000, 'BIH'),
-- Registros para BWA (Botswana)
(2010, 2000000, 'BWA'),
(2017, 2100000, 'BWA'),
-- Registros para BRA (Brazil)
(2010, 204000000, 'BRA'),
(2015, 210000000, 'BRA'),
-- Registros para VGB (British Virgin Islands)
(2011, 26200, 'VGB'),
(2019, 27000, 'VGB'),
-- Registros para BRN (Brunei)
(2010, 400000, 'BRN'),
(2017, 410000, 'BRN'),
-- Registros para BGR (Bulgaria)
(2011, 7000000, 'BGR'),
(2015, 7100000, 'BGR'),
-- Registros para BFA (Burkina Faso)
(2010, 18500000, 'BFA'),
(2014, 18700000, 'BFA'),
-- Registros para BDI (Burundi)
(2011, 11500000, 'BDI'),
(2016, 11600000, 'BDI'),
-- Registros para KHM (Cambodia)
(2010, 14700000, 'KHM'),
(2015, 15000000, 'KHM'),
-- Registros para CMR (Cameroon)
(2010, 20000000, 'CMR'),
(2014, 20150000, 'CMR'),
-- Registros para CAN (Canada)
(2011, 34000000, 'CAN'),
(2018, 34500000, 'CAN'),
-- Registros para CPV (Cape Verde)
(2010, 500000, 'CPV'),
(2016, 520000, 'CPV'),
-- Registros para CYM (Cayman Islands)
(2011, 58000, 'CYM'),
(2018, 59000, 'CYM'),
-- Registros para CAF (Central African Republic)
(2010, 4900000, 'CAF'),
(2016, 4950000, 'CAF'),
-- Registros para TCD (Chad)
(2011, 11800000, 'TCD'),
(2018, 11900000, 'TCD'),
-- Registros para OWID_CIS (Channel Islands)
(2010, 177000, 'OWID_CIS'),
(2016, 178000, 'OWID_CIS'),
-- Registros para CHL (Chile)
(2011, 16900000, 'CHL'),
(2019, 17050000, 'CHL'),
-- Registros para CHN (China)
(2010, 1390000000, 'CHN'),
(2015, 1405000000, 'CHN'),
-- Registros para COL (Colombia)
(2010, 47000000, 'COL'),
(2015, 47250000, 'COL'),
-- Registros para COM (Comoros)
(2011, 755000, 'COM'),
(2018, 760000, 'COM'),
-- Registros para COG (Congo)
(2010, 4800000, 'COG'),
(2016, 4850000, 'COG'),
-- Registros para CRI (Costa Rica)
(2010, 4900000, 'CRI'),
(2015, 4950000, 'CRI'),
-- Registros para CIV (Cote d'Ivoire)
(2011, 22000000, 'CIV'),
(2019, 22300000, 'CIV'),
-- Registros para HRV (Croatia)
(2010, 4200000, 'HRV'),
(2015, 4250000, 'HRV'),
-- Registros para CUB (Cuba)
(2010, 11300000, 'CUB'),
(2015, 11450000, 'CUB'),
-- Registros para CUW (Curacao)
(2011, 160000, 'CUW'),
(2019, 162000, 'CUW');