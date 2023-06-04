DROP DATABASE IF EXISTS xat;
CREATE DATABASE xat;
USE xat;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


CREATE TABLE `amistad` (
  `mail1` varchar(50) NOT NULL,
  `mail2` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `message` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `origen` varchar(20) NOT NULL,
  `desti` varchar(20) NOT NULL,
  `text` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `paises` (
  `Codigo` varchar(2) NOT NULL,
  `Pais` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


INSERT INTO `paises` (`Codigo`, `Pais`) VALUES
('AU', 'Australia'),
('CN', 'China'),
('JP', 'Japan'),
('TH', 'Thailand'),
('IN', 'India'),
('MY', 'Malaysia'),
('KR', 'Kore'),
('HK', 'Hong Kong'),
('TW', 'Taiwan'),
('PH', 'Philippines'),
('VN', 'Vietnam'),
('FR', 'France'),
('EU', 'Europe'),
('DE', 'Germany'),
('SE', 'Sweden'),
('IT', 'Italy'),
('GR', 'Greece'),
('ES', 'Spain'),
('AT', 'Austria'),
('GB', 'United Kingdom'),
('NL', 'Netherlands'),
('BE', 'Belgium'),
('CH', 'Switzerland'),
('AE', 'United Arab Emirates'),
('IL', 'Israel'),
('UA', 'Ukraine'),
('RU', 'Russian Federation'),
('KZ', 'Kazakhstan'),
('PT', 'Portugal'),
('SA', 'Saudi Arabia'),
('DK', 'Denmark'),
('IR', 'Ira'),
('NO', 'Norway'),
('US', 'United States'),
('MX', 'Mexico'),
('CA', 'Canada'),
('A1', 'Anonymous Proxy'),
('SY', 'Syrian Arab Republic'),
('CY', 'Cyprus'),
('CZ', 'Czech Republic'),
('IQ', 'Iraq'),
('TR', 'Turkey'),
('RO', 'Romania'),
('LB', 'Lebanon'),
('HU', 'Hungary'),
('GE', 'Georgia'),
('BR', 'Brazil'),
('AZ', 'Azerbaijan'),
('A2', 'Satellite Provider'),
('PS', 'Palestinian Territory'),
('LT', 'Lithuania'),
('OM', 'Oman'),
('SK', 'Slovakia'),
('RS', 'Serbia'),
('FI', 'Finland'),
('IS', 'Iceland'),
('BG', 'Bulgaria'),
('SI', 'Slovenia'),
('MD', 'Moldov'),
('MK', 'Macedonia'),
('LI', 'Liechtenstein'),
('JE', 'Jersey'),
('PL', 'Poland'),
('HR', 'Croatia'),
('BA', 'Bosnia and Herzegovina'),
('EE', 'Estonia'),
('LV', 'Latvia'),
('JO', 'Jordan'),
('KG', 'Kyrgyzstan'),
('RE', 'Reunion'),
('IE', 'Ireland'),
('LY', 'Libya'),
('LU', 'Luxembourg'),
('AM', 'Armenia'),
('VG', 'Virgin Island'),
('YE', 'Yemen'),
('BY', 'Belarus'),
('GI', 'Gibraltar'),
('MQ', 'Martinique'),
('PA', 'Panama'),
('DO', 'Dominican Republic'),
('GU', 'Guam'),
('PR', 'Puerto Rico'),
('VI', 'Virgin Island'),
('MN', 'Mongolia'),
('NZ', 'New Zealand'),
('SG', 'Singapore'),
('ID', 'Indonesia'),
('NP', 'Nepal'),
('PG', 'Papua New Guinea'),
('PK', 'Pakistan'),
('AP', 'Asia/Pacific Region'),
('BS', 'Bahamas'),
('LC', 'Saint Lucia'),
('AR', 'Argentina'),
('BD', 'Bangladesh'),
('TK', 'Tokelau'),
('KH', 'Cambodia'),
('MO', 'Macau'),
('MV', 'Maldives'),
('AF', 'Afghanistan'),
('NC', 'New Caledonia'),
('FJ', 'Fiji'),
('WF', 'Wallis and Futuna'),
('QA', 'Qatar'),
('AL', 'Albania'),
('BZ', 'Belize'),
('UZ', 'Uzbekistan'),
('KW', 'Kuwait'),
('ME', 'Montenegro'),
('PE', 'Peru'),
('BM', 'Bermuda'),
('CW', 'Curacao'),
('CO', 'Colombia'),
('VE', 'Venezuela'),
('CL', 'Chile'),
('EC', 'Ecuador'),
('ZA', 'South Africa'),
('IM', 'Isle of Man'),
('BO', 'Bolivia'),
('GG', 'Guernsey'),
('MT', 'Malta'),
('TJ', 'Tajikistan'),
('SC', 'Seychelles'),
('BH', 'Bahrain'),
('EG', 'Egypt'),
('ZW', 'Zimbabwe'),
('LR', 'Liberia'),
('KE', 'Kenya'),
('GH', 'Ghana'),
('NG', 'Nigeria'),
('TZ', 'Tanzani'),
('ZM', 'Zambia'),
('MG', 'Madagascar'),
('AO', 'Angola'),
('NA', 'Namibia'),
('CI', 'Cote D\ Ivoire'),
('SD', 'Sudan'),
('CM', 'Cameroon'),
('MW', 'Malawi'),
('GA', 'Gabon'),
('ML', 'Mali'),
('BJ', 'Benin'),
('TD', 'Chad'),
('BW', 'Botswana'),
('CV', 'Cape Verde'),
('RW', 'Rwanda'),
('CG', 'Congo'),
('UG', 'Uganda'),
('MZ', 'Mozambique'),
('GM', 'Gambia'),
('LS', 'Lesotho'),
('MU', 'Mauritius'),
('MA', 'Morocco'),
('DZ', 'Algeria'),
('GN', 'Guinea'),
('CD', 'Cong'),
('SZ', 'Swaziland'),
('BF', 'Burkina Faso'),
('SL', 'Sierra Leone'),
('SO', 'Somalia'),
('NE', 'Niger'),
('CF', 'Central African Republic'),
('TG', 'Togo'),
('BI', 'Burundi'),
('GQ', 'Equatorial Guinea'),
('SS', 'South Sudan'),
('SN', 'Senegal'),
('MR', 'Mauritania'),
('DJ', 'Djibouti'),
('KM', 'Comoros'),
('IO', 'British Indian Ocean Territory'),
('TN', 'Tunisia'),
('GL', 'Greenland'),
('VA', 'Holy See (Vatican City State)'),
('CR', 'Costa Rica'),
('KY', 'Cayman Islands'),
('JM', 'Jamaica'),
('GT', 'Guatemala'),
('MH', 'Marshall Islands'),
('AQ', 'Antarctica'),
('BB', 'Barbados'),
('AW', 'Aruba'),
('MC', 'Monaco'),
('AI', 'Anguilla'),
('KN', 'Saint Kitts and Nevis'),
('GD', 'Grenada'),
('PY', 'Paraguay'),
('MS', 'Montserrat'),
('TC', 'Turks and Caicos Islands'),
('AG', 'Antigua and Barbuda'),
('TV', 'Tuvalu'),
('PF', 'French Polynesia'),
('SB', 'Solomon Islands'),
('VU', 'Vanuatu'),
('ER', 'Eritrea'),
('TT', 'Trinidad and Tobago'),
('AD', 'Andorra'),
('HT', 'Haiti'),
('SH', 'Saint Helena'),
('FM', 'Micronesi'),
('SV', 'El Salvador'),
('HN', 'Honduras'),
('UY', 'Uruguay'),
('LK', 'Sri Lanka'),
('EH', 'Western Sahara'),
('CX', 'Christmas Island'),
('WS', 'Samoa'),
('SR', 'Suriname'),
('CK', 'Cook Islands'),
('KI', 'Kiribati'),
('NU', 'Niue'),
('TO', 'Tonga'),
('TF', 'French Southern Territories'),
('YT', 'Mayotte'),
('NF', 'Norfolk Island'),
('BN', 'Brunei Darussalam'),
('TM', 'Turkmenistan'),
('PN', 'Pitcairn Islands'),
('SM', 'San Marino'),
('AX', 'Aland Islands'),
('FO', 'Faroe Islands'),
('SJ', 'Svalbard and Jan Mayen'),
('CC', 'Cocos (Keeling) Islands'),
('NR', 'Nauru'),
('GS', 'South Georgia and the South Sandwich Islands'),
('UM', 'United States Minor Outlying Islands'),
('GW', 'Guinea-Bissau'),
('PW', 'Palau'),
('AS', 'American Samoa'),
('BT', 'Bhutan'),
('GF', 'French Guiana'),
('GP', 'Guadeloupe'),
('MF', 'Saint Martin'),
('VC', 'Saint Vincent and the Grenadines'),
('PM', 'Saint Pierre and Miquelon'),
('BL', 'Saint Barthelemy'),
('DM', 'Dominica'),
('ST', 'Sao Tome and Principe'),
('KP', 'Kore'),
('FK', 'Falkland Islands (Malvinas)'),
('MP', 'Northern Mariana Islands'),
('TL', 'Timor-Leste'),
('BQ', 'Bonair'),
('MM', 'Myanmar'),
('NI', 'Nicaragua'),
('SX', 'Sint Maarten (Dutch part)'),
('GY', 'Guyana'),
('LA', 'Lao People\ s Democratic Republic'),
('CU', 'Cuba'),
('ET', 'Ethiopia');

CREATE TABLE `persona` (
  `user` varchar(50) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `pass` varchar(250) NOT NULL,
  `last_log` date DEFAULT NULL,
  `session` varchar(9) DEFAULT NULL,
  `country` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO persona (user, mail, pass, country) VALUES ("Usuario", "antonio@gmail.com", "EF797C8118F02DFB649607DD5D3F8C7623048C9C063D532CC95C5ED7A898A64F", "ES");
INSERT INTO persona (user, mail, pass, country) VALUES ("Usuario", "mario@gmail.com", "EF797C8118F02DFB649607DD5D3F8C7623048C9C063D532CC95C5ED7A898A64F", "ES");
INSERT INTO persona (user, mail, pass, country) VALUES ("Usuario", "jaume@gmail.com", "EF797C8118F02DFB649607DD5D3F8C7623048C9C063D532CC95C5ED7A898A64F", "ES");
INSERT INTO persona (user, mail, pass, country) VALUES ("Usuario", "nuria@gmail.com", "EF797C8118F02DFB649607DD5D3F8C7623048C9C063D532CC95C5ED7A898A64F", "ES");
INSERT INTO persona (user, mail, pass, country) VALUES ("Usuario", "estela@gmail.com", "EF797C8118F02DFB649607DD5D3F8C7623048C9C063D532CC95C5ED7A898A64F", "ES");
INSERT INTO persona (user, mail, pass, country) VALUES ("Usuario", "juan@gmail.com", "EF797C8118F02DFB649607DD5D3F8C7623048C9C063D532CC95C5ED7A898A64F", "ES");


INSERT INTO amistad (mail1, mail2) VALUES ("antonio@gmail.com", "jaume@gmail.com");
INSERT INTO amistad (mail1, mail2) VALUES ("antonio@gmail.com", "mario@gmail.com");
INSERT INTO amistad (mail1, mail2) VALUES ("antonio@gmail.com", "nuria@gmail.com");
INSERT INTO amistad (mail1, mail2) VALUES ("antonio@gmail.com", "estela@gmail.com");
INSERT INTO amistad (mail1, mail2) VALUES ("antonio@gmail.com", "juan@gmail.com");


INSERT INTO amistad (mail1, mail2) VALUES ("mario@gmail.com", "jaume@gmail.com");
INSERT INTO amistad (mail1, mail2) VALUES ("mario@gmail.com", "antonio@gmail.com");
INSERT INTO amistad (mail1, mail2) VALUES ("mario@gmail.com", "nuria@gmail.com");
INSERT INTO amistad (mail1, mail2) VALUES ("mario@gmail.com", "juan@gmail.com");
INSERT INTO amistad (mail1, mail2) VALUES ("mario@gmail.com", "estela@gmail.com");

INSERT INTO amistad (mail1, mail2) VALUES ("jaume@gmail.com", "mario@gmail.com");
INSERT INTO amistad (mail1, mail2) VALUES ("jaume@gmail.com", "antonio@gmail.com");
INSERT INTO amistad (mail1, mail2) VALUES ("jaume@gmail.com", "nuria@gmail.com");
INSERT INTO amistad (mail1, mail2) VALUES ("jaume@gmail.com", "juan@gmail.com");
INSERT INTO amistad (mail1, mail2) VALUES ("jaume@gmail.com", "estela@gmail.com");


ALTER TABLE `message`
  ADD UNIQUE KEY `id` (`id`);

ALTER TABLE `paises`
  ADD PRIMARY KEY (`Codigo`);

ALTER TABLE `persona`
  ADD PRIMARY KEY (`mail`);

ALTER TABLE `message`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;
COMMIT;