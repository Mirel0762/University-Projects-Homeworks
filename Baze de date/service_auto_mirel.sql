-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gazdă: 127.0.0.1:3306
-- Timp de generare: feb. 13, 2023 la 09:11 AM
-- Versiune server: 5.7.36
-- Versiune PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Bază de date: `service_auto_mirel`
--

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `adrese`
--

DROP TABLE IF EXISTS `adrese`;
CREATE TABLE IF NOT EXISTS `adrese` (
  `coordonate` varchar(45) NOT NULL,
  `număr` int(11) DEFAULT NULL,
  `județ` varchar(45) DEFAULT NULL,
  `strada` varchar(45) DEFAULT NULL,
  `localitate` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`coordonate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Eliminarea datelor din tabel `adrese`
--

INSERT INTO `adrese` (`coordonate`, `număr`, `județ`, `strada`, `localitate`) VALUES
('1°1\'1\"', 23, 'PH', 'Portocalilor', 'Brazi'),
('1°1\'10\"', 98, 'OT', 'Rozelor', 'Dumbrava'),
('1°1\'11\"', 60, 'VS', 'Gladiator', 'Ciordeni'),
('1°1\'12\"', 11, 'CS', 'Zambilelor', 'Barcanesti'),
('1°1\'13\"', 711, 'BR', 'Banu Voda', 'Varbilau'),
('1°1\'14\"', 99, 'DJ', 'Randunici', 'Poiana'),
('1°1\'15\"', 41, 'PH', 'Leului', 'Magureni'),
('1°1\'16\"', 87, 'DB', 'Lacrimilor', 'Padureni'),
('1°1\'17\"', 72, 'NT', 'Lalelelor', 'Caliman'),
('1°1\'18\"', 63, 'SB', 'Undelor', 'Banesti'),
('1°1\'19\"', 5, 'BC', 'Sarpelui', 'Caiacul'),
('1°1\'2\"', 234, 'AG', 'Mihai Bravu', 'Tinosu'),
('1°1\'20\"', 79, 'HD', 'Copacului', 'Zahana'),
('1°1\'3\"', 7, 'B', 'Macaralelor', 'Bucuresti'),
('1°1\'4\"', 43, 'B', 'Narciselor', 'Bucuresti'),
('1°1\'5\"', 28, 'PH', 'Cireselor', 'Popesti'),
('1°1\'6\"', 32, 'CT', 'Ion Caragiale', 'Mangalia'),
('1°1\'7\"', 78, 'MM', 'Craiului', 'Mogosoiu'),
('1°1\'8\"', 55, 'PH', 'Rubin', 'Negoiesti'),
('1°1\'9\"', 16, 'IF', 'Smaranda', 'Rovinari');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `angajatii`
--

DROP TABLE IF EXISTS `angajatii`;
CREATE TABLE IF NOT EXISTS `angajatii` (
  `cnp` int(15) NOT NULL,
  `specializare` varchar(45) DEFAULT NULL,
  `nume` varchar(45) DEFAULT NULL,
  `prenume` varchar(45) DEFAULT NULL,
  `salariu` varchar(45) DEFAULT NULL,
  `vechime` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cnp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Eliminarea datelor din tabel `angajatii`
--

INSERT INTO `angajatii` (`cnp`, `specializare`, `nume`, `prenume`, `salariu`, `vechime`) VALUES
(2001234567, 'mecanica', 'Lupu', 'Sorin', '4500 lei', '8 ani'),
(2002345678, 'mecanica', 'Parvulescu', 'Olimpius', '4000 lei', ' 6 ani'),
(2003456789, 'electrica', 'Rares', 'Bogdan', '3000 lei', '3 ani'),
(2004456780, 'mecanica', 'Vasilescu', 'Costin', '5000  lei', '6 ani'),
(2005456789, 'electrica', 'Marinescu', 'Bogdan', '4200 lei', '5 ani'),
(2006456780, 'mecanica', 'Dumitru', 'Alexandru', '2700 lei', '3 ani'),
(2007456789, 'electrica', 'Dinu', 'Cosmin', '6000 lei', '7 ani'),
(2008456780, 'mecanica', 'Cobzaru', 'Marian', '1900 lei', '1 an'),
(2009456789, 'electrica', 'Popa', 'Florin', '2500 lei', '2 ani'),
(2010456780, 'electrica', 'Georgescu', 'Claudiu', '1700 lei', '2 ani'),
(2011456789, 'mecanica', 'Nitu', 'Ionut', '2900 lei', '4 ani'),
(2012456780, 'mecanica', 'Sima', 'Ghita', '4400 lei', '5 ani'),
(2013456789, 'electrica', 'Sandu', 'Cornel', '3600 lei', '8 ani'),
(2014456780, 'mecanica', 'Dragomir', 'Catalin', '7000 lei', '12 ani'),
(2015456789, 'electrica', 'Cosma', 'Liviu', '5100 lei', '7 ani'),
(2016456780, 'mecanica', 'Marusi', 'Cristian', '2300 lei', '2 ani'),
(2017456789, 'electrica', 'Florea', 'Adrian', '1500 lei', '1 an'),
(2018456780, 'mecanica', 'Hera', 'Daniel', '3700 lei', '4 ani'),
(2019456789, 'mecanica', 'Voicu', 'Mihai', '2000 lei', '2 ani'),
(2020456780, 'mecanica', 'Temelie', 'Gabriel', '4800 lei', '3 ani');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `autovechicule`
--

DROP TABLE IF EXISTS `autovechicule`;
CREATE TABLE IF NOT EXISTS `autovechicule` (
  `nr_înmatriculare` varchar(20) NOT NULL,
  `marca` varchar(45) DEFAULT NULL,
  `model` varchar(45) DEFAULT NULL,
  `an_fabricație` int(11) DEFAULT NULL,
  `tip_combustibil` varchar(45) DEFAULT NULL,
  `capacitate_motor` varchar(45) DEFAULT NULL,
  `kilometraj` varchar(45) DEFAULT NULL,
  `clienti_id_client` int(11) NOT NULL,
  PRIMARY KEY (`nr_înmatriculare`),
  KEY `fk_autovechicule_clienti1_idx` (`clienti_id_client`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Eliminarea datelor din tabel `autovechicule`
--

INSERT INTO `autovechicule` (`nr_înmatriculare`, `marca`, `model`, `an_fabricație`, `tip_combustibil`, `capacitate_motor`, `kilometraj`, `clienti_id_client`) VALUES
('AG 57 DMK', 'Mercedes', 'GLS 600', 2021, 'hibrid', '4400 cm^3', '13000 km', 2),
('B 777 LFV', 'Skoda', 'Octavia 2.0', 2011, 'benzina', '2000 cm^3', '134232 km', 3),
('BC 77 RVL', 'BMW', 'M5 Competition', 2018, 'hibrid', '7600 cm^3', '15600 km', 4),
('BR 32 PMX', 'AUDI', 'Q5', 2010, 'diesel', '3000 cm^3', '285631 km', 13),
('CS 44 HGF', 'Nissan', 'Qashqai', 2014, 'diesel', '1590 cm^3', '102507 km', 12),
('CT 70 ADA', 'Volvo', 'CX60', 2023, 'hibrid', '1949 cm^3', '180 km', 6),
('CV 63 LMV', 'Citroen', 'C5', 2004, 'benzina', '1600 cm^3', ' 334009 km', 19),
('DJ 08 WEC', 'Mazda', 'Sport 6 kombi', 2012, 'diesel', '2200 cm^3', '233446 km', 14),
('HD 04 RTO', 'Mercedes', 'G class W463', 2006, 'diesel', '2700 cm^3', '299320 km', 20),
('IF 56 SDQ', 'Range Rover', 'Vogue', 2007, 'diesel', '2629 cm^3', '279221', 9),
('IS 82 BER', 'Renault', 'Talisman 130 DCI', 2016, 'Diesel', '1600 cm^3', '193412 km', 16),
('MM 34 KLD', 'Seat', 'Leon', 2013, 'diesel', '1200 cm^3', '323476 km', 7),
('NT 89 RTJ', 'Toyota', 'Avensis', 2010, 'benzina', '2000 cm^3', '145609 km', 17),
('OT 60 CAM', 'Chevrolet', 'Camora RS', 2015, 'benzina', '3600 cm^3', '88012 km', 10),
('PH 11 GTA', 'Dacia', 'Logan', 2008, 'GPL+benzina', '1600 cm^3', '352876 km', 15),
('PH 23 GRA', 'Volkswagen', 'Golf 4', 2013, 'diesel', '1500 cm^3', '211532 km', 5),
('PH 34 ARE', 'Porche', 'Cayenne', 2006, 'GPL', '4500 cm^3', '265321 km', 8),
('PH 49 MRL', 'Opel', 'Astra 1.6', 2001, 'benzina', '1600 cm^3', '280000 km', 1),
('SB 71 RBS', 'Peugeot', '508', 2014, 'hibrid', '2000 cm^3', '253121 km', 18),
('VS 77 ZAV', 'Volkswagen', 'P', 1992, 'GPL+benzina', '2000 cm^3', '512305 km', 11);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `clienti`
--

DROP TABLE IF EXISTS `clienti`;
CREATE TABLE IF NOT EXISTS `clienti` (
  `id_client` int(11) NOT NULL,
  `nume` varchar(45) DEFAULT NULL,
  `prenume` varchar(45) DEFAULT NULL,
  `nr_talon` varchar(45) DEFAULT NULL,
  `nr_telefon` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_client`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Eliminarea datelor din tabel `clienti`
--

INSERT INTO `clienti` (`id_client`, `nume`, `prenume`, `nr_talon`, `nr_telefon`) VALUES
(1, 'Dumitru', 'Mirel', ' P0111213141H', '0711223344'),
(2, 'Gigel', 'Frone', 'A0111213141G', '0722334455'),
(3, 'Popescu', 'Alexandru', 'B02021222324', '0733444556'),
(4, 'Camil', 'Petrescu', 'B0323334353C', '0744455567'),
(5, 'Grigore', 'Andreea', 'P0424445464H', '0755566678'),
(6, 'Andrada ', 'Mihalache', 'C0515253545T', '0766677789'),
(7, 'Popa', 'Gabriel', 'M0616263646M', '0777788899'),
(8, 'Andreea', 'Trofin', 'P0717273747H', '0788889990'),
(9, 'Constantinescu', 'Andrei', 'I0818283848F', '0799900020'),
(10, 'Dorobantiu', 'Filip', 'O0919293949T', '0710002021'),
(11, 'Camelia', 'Iordache', 'V1021222321S', '0711003032'),
(12, 'Marinela', 'Florescu', 'C1130323332S', '0712004043'),
(13, 'Marinescu', 'Florin', 'B1240424442R', '0713050548'),
(14, 'Dragu', 'Costel', 'D1350525552J', '0714006065'),
(15, 'Radulescu', 'Geta', 'P1460626662H', '0715007077'),
(16, 'Antonescu', 'Gheorghe', 'D1570727772B', '0716008088'),
(17, 'Dragos', 'Florea', 'N1680828882T', '0717009099'),
(18, 'Soare', 'Niculae', 'S1790929992B', '0718010110'),
(19, 'Tiberiu', 'Vasile', 'B1810121012C', '0719011121'),
(20, 'Gheorghe', 'Oana', 'H1920230312D', '0720012232');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `electricieni`
--

DROP TABLE IF EXISTS `electricieni`;
CREATE TABLE IF NOT EXISTS `electricieni` (
  `cod_electrician` int(11) NOT NULL,
  `program_de_diagnostic` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cod_electrician`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Eliminarea datelor din tabel `electricieni`
--

INSERT INTO `electricieni` (`cod_electrician`, `program_de_diagnostic`) VALUES
(1, 'AutoCheck Pro'),
(2, 'AutoCheck Pro'),
(3, 'CarBrain'),
(4, 'CarBrain'),
(5, 'EngineMate'),
(6, 'EngineMate'),
(7, 'VehiclePro'),
(8, 'VehiclePro'),
(9, 'DriveDiag'),
(10, 'AutoDiag+'),
(11, 'CarCare Connect'),
(12, 'AutoScanner Pro'),
(13, 'AutoSentry'),
(14, 'TurboDiag'),
(15, 'TurboDiag'),
(16, 'TurboDiag'),
(17, 'MotorMind'),
(18, 'RapidScan'),
(19, 'AutoCode Master'),
(20, 'CarCheck Elite');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `itpuri`
--

DROP TABLE IF EXISTS `itpuri`;
CREATE TABLE IF NOT EXISTS `itpuri` (
  `cod_itp` int(11) NOT NULL,
  `valabilitate` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cod_itp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Eliminarea datelor din tabel `itpuri`
--

INSERT INTO `itpuri` (`cod_itp`, `valabilitate`) VALUES
(1, '1 an'),
(2, '1 an'),
(3, '1 an'),
(4, '2 ani'),
(5, '2 ani'),
(6, '2 ani'),
(7, '1 an'),
(8, '1 an'),
(9, '2 ani'),
(10, '2 ani'),
(11, '1 an'),
(12, '1 ani'),
(13, '2 ani'),
(14, '1 an'),
(15, '1 an'),
(16, '1 an'),
(17, '1 an'),
(18, '1 an'),
(19, '2 ani'),
(20, '1 an');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `mecanici`
--

DROP TABLE IF EXISTS `mecanici`;
CREATE TABLE IF NOT EXISTS `mecanici` (
  `cod_mecanic` int(11) NOT NULL,
  `marca_cunoscută` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cod_mecanic`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Eliminarea datelor din tabel `mecanici`
--

INSERT INTO `mecanici` (`cod_mecanic`, `marca_cunoscută`) VALUES
(1, 'Toyota'),
(2, 'Ford'),
(3, 'Chevrolet'),
(4, 'Honda'),
(5, 'Nissan'),
(6, 'Volkswagen'),
(7, 'BMW'),
(8, 'Mercedes-Benz'),
(9, 'Audi'),
(10, 'Subaru'),
(11, 'Mazda'),
(12, 'Kia'),
(13, 'Hyundai'),
(14, 'Jeep'),
(15, 'Ram'),
(16, 'Tesla'),
(17, 'Porsche'),
(18, 'Land Rover'),
(19, 'Dacia'),
(20, 'Dodge');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `operatii`
--

DROP TABLE IF EXISTS `operatii`;
CREATE TABLE IF NOT EXISTS `operatii` (
  `id_operatie` int(11) NOT NULL,
  `status` varchar(45) DEFAULT NULL,
  `data_start` date DEFAULT NULL,
  `data_finalizare` date DEFAULT NULL,
  `cost` varchar(15) DEFAULT NULL,
  `timp_necesar` varchar(45) DEFAULT NULL,
  `PROGRAMARI_CLIENTI_id_client` int(11) DEFAULT NULL,
  `programari_cod_programare` int(11) NOT NULL,
  PRIMARY KEY (`id_operatie`),
  KEY `fk_OPERATII_programari1_idx` (`programari_cod_programare`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Eliminarea datelor din tabel `operatii`
--

INSERT INTO `operatii` (`id_operatie`, `status`, `data_start`, `data_finalizare`, `cost`, `timp_necesar`, `PROGRAMARI_CLIENTI_id_client`, `programari_cod_programare`) VALUES
(1, 'in lucru', '2023-01-02', '2023-01-03', '800 lei', '7 ore', 1, 12),
(2, 'in lucru', '2023-01-04', '2023-02-04', '400 lei', '3 ore', 2, 1),
(3, 'in lucru', '2023-01-05', '2023-01-09', '1600 lei', '6 ore', 3, 2),
(4, 'asteptare', '2023-02-01', '2023-02-03', 'necunoscut', '48 ore', 4, 3),
(5, 'finalizat', '2022-12-05', '2022-12-07', '1000 lei', '36 ore', 5, 4),
(6, 'finalizat', '2023-02-08', '2023-02-09', '500 lei', '5 ore', 6, 5),
(7, 'in lucru', '2023-01-11', '2023-01-13', '1250 lei', '9 ore', 7, 6),
(8, 'finalizat', '2023-02-12', '2023-02-13', '1100 lei', '9 ore', 8, 7),
(9, 'asteptare', '2022-12-19', '2022-12-21', 'necunoscut', '16 ore', 9, 8),
(10, 'in lucru', '2023-02-12', '2023-02-13', '750 lei', '11 ore', 10, 9),
(11, 'finalizat', '2023-02-08', '2023-02-08', '200 lei', '1 ora', 11, 10),
(12, 'in lucru', '2023-01-10', '2023-01-12', '1500 lei', '16 ore', 12, 11),
(13, 'in lucru', '2023-01-23', '2023-01-23', '500 lei', '4 ore', 13, 13),
(14, 'finalizat', '2023-01-22', '2023-01-24', '1800 lei', '17 ore', 14, 14),
(15, 'finalizat', '2023-02-09', '2023-02-09', '450 lei', '2,5 ore', 15, 15),
(16, 'asteptare', '2023-01-09', '2023-01-12', 'necunoscut', '13 ore', 16, 16),
(17, 'finalizat', '2023-01-02', '2023-01-04', '850 lei', '4,5 ore', 17, 17),
(18, 'finalizat', '2022-12-13', '2022-12-14', '950 lei', '8,5 ore', 18, 18),
(19, 'in lucru', '2023-02-16', '2023-02-16', '566 lei', '3,5 ore', 19, 19),
(20, 'asteptare', '2023-02-07', '2023-02-10', '2000 lei', '16 ore', 20, 20);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `operatii_has_angajatii`
--

DROP TABLE IF EXISTS `operatii_has_angajatii`;
CREATE TABLE IF NOT EXISTS `operatii_has_angajatii` (
  `OPERATII_id_operatie` int(11) NOT NULL,
  `ANGAJATII_cnp` int(11) NOT NULL,
  PRIMARY KEY (`OPERATII_id_operatie`,`ANGAJATII_cnp`),
  KEY `fk_OPERATII_has_ANGAJATII_ANGAJATII1_idx` (`ANGAJATII_cnp`),
  KEY `fk_OPERATII_has_ANGAJATII_OPERATII1_idx` (`OPERATII_id_operatie`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Eliminarea datelor din tabel `operatii_has_angajatii`
--

INSERT INTO `operatii_has_angajatii` (`OPERATII_id_operatie`, `ANGAJATII_cnp`) VALUES
(1, 2003456789),
(14, 2004456780),
(8, 2005456789),
(2, 2007456789),
(3, 2009456789),
(4, 2010456780),
(15, 2011456789),
(9, 2012456780),
(5, 2013456789),
(13, 2014456780),
(6, 2015456789),
(12, 2016456780),
(16, 2016456780),
(7, 2017456789),
(17, 2017456789),
(11, 2018456780),
(18, 2018456780),
(10, 2019456789),
(19, 2019456789),
(20, 2020456780);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `piese`
--

DROP TABLE IF EXISTS `piese`;
CREATE TABLE IF NOT EXISTS `piese` (
  `cod_piesa` int(11) NOT NULL,
  `tip` varchar(45) DEFAULT NULL,
  `denumire` varchar(45) DEFAULT NULL,
  `furnizor` varchar(45) DEFAULT NULL,
  `preț` varchar(15) DEFAULT NULL,
  `ani_garantie` int(11) DEFAULT NULL,
  `OPERATII_id_operatie` int(11) NOT NULL,
  PRIMARY KEY (`cod_piesa`),
  KEY `fk_PIESE_OPERATII1_idx` (`OPERATII_id_operatie`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Eliminarea datelor din tabel `piese`
--

INSERT INTO `piese` (`cod_piesa`, `tip`, `denumire`, `furnizor`, `preț`, `ani_garantie`, `OPERATII_id_operatie`) VALUES
(1, 'mecanica', 'Motor', 'Auto Parts Unlimited', '1100 lei', 1, 1),
(2, 'mecanica si electrica', 'Cutie de viteze', 'Quality Auto Components', '450 lei', 2, 2),
(3, 'mecanica', 'Sistem de transmisie', 'Fast Car Parts', '370 lei', 1, 3),
(4, 'electrica', 'Sistem de frânare', 'The Auto Part Store', '550 lei', 2, 4),
(5, 'electrica', 'Sistem de direcție', 'Precision Auto Parts', '600 lei', 2, 5),
(6, 'mecanica', 'Ax spate', 'The Auto Spare Company', '470 lei', 3, 6),
(7, 'mecanica', 'Ax față', 'Reliable Auto Supply', '380 lei', 1, 7),
(8, 'mecanica', 'Amortizoare', 'Elite Auto Parts', '200 lei', 4, 8),
(9, 'mecanica', 'Rulmenti', 'Affordable Auto Parts', '80 lei', 2, 9),
(10, 'mecanica', 'Bucșe', 'Professional Auto Parts', '320 lei', 2, 10),
(11, 'electrica', 'Lagăre', 'Supreme Auto Components', '500 lei', 2, 11),
(12, 'mecanica si electrica', 'Brațe de susținere', 'Global Auto Parts', '650 lei', 5, 12),
(13, 'mecanica si electrica', 'Kit de reparație al direcției', 'The Car Part Guys', '700 lei', 3, 13),
(14, 'mecanica si electrica', 'Pompă de apă', 'Auto Parts Direct', '850 lei', 3, 14),
(15, 'mecanica si electrica', 'Pompă de ulei', 'Precision Engine Parts', '720 lei', 2, 15),
(16, 'mecanica si electrica', 'Radiator', 'The Car Parts Warehouse', '1200 lei', 2, 16),
(17, 'electrica', 'Alternator', 'Auto Parts Pro', '450 lei', 2, 17),
(18, 'electrica', 'Acumulator', 'The Auto Part Experts', '810 lei', 1, 18),
(19, 'electrica', 'Generator', 'Auto Parts Solutions', '1300 lei', 1, 19),
(20, 'mecanica si electrica', 'Termostat', 'Advanced Auto Parts and Supplies', '600 lei', 2, 20);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `programari`
--

DROP TABLE IF EXISTS `programari`;
CREATE TABLE IF NOT EXISTS `programari` (
  `cod_programare` int(11) NOT NULL,
  `ora` time DEFAULT NULL,
  `data` date DEFAULT NULL,
  `clienti_id_client` int(11) NOT NULL,
  `SERVICE-URI_cui` int(11) NOT NULL,
  PRIMARY KEY (`cod_programare`),
  KEY `fk_programari_clienti1_idx` (`clienti_id_client`),
  KEY `fk_programari_SERVICE-URI1_idx` (`SERVICE-URI_cui`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Eliminarea datelor din tabel `programari`
--

INSERT INTO `programari` (`cod_programare`, `ora`, `data`, `clienti_id_client`, `SERVICE-URI_cui`) VALUES
(1, '10:07:36', '2023-01-04', 1, 101),
(2, '10:08:35', '2023-01-05', 2, 102),
(3, '14:09:18', '2023-01-06', 3, 103),
(4, '11:10:52', '2023-01-09', 4, 104),
(5, '09:03:50', '2023-01-10', 5, 105),
(6, '12:04:38', '2023-01-11', 6, 106),
(7, '09:30:50', '2023-01-12', 7, 107),
(8, '08:06:21', '2023-01-13', 8, 108),
(9, '11:20:52', '2023-01-16', 9, 109),
(10, '13:00:21', '2023-01-17', 10, 110),
(11, '10:15:36', '2023-02-20', 11, 111),
(12, '12:30:52', '2023-01-24', 12, 112),
(13, '09:10:21', '2023-01-25', 13, 113),
(14, '13:10:52', '2023-01-26', 14, 114),
(15, '15:30:21', '2023-01-27', 15, 115),
(16, '14:03:50', '2023-01-30', 16, 116),
(17, '15:13:26', '2023-01-31', 17, 117),
(18, '14:30:04', '2023-02-01', 18, 118),
(19, '14:40:50', '2023-02-02', 19, 119),
(20, '14:00:21', '2023-02-03', 20, 120);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `re`
--

DROP TABLE IF EXISTS `re`;
CREATE TABLE IF NOT EXISTS `re` (
  `cod_reparație` int(11) NOT NULL,
  `nr_erori` int(11) DEFAULT NULL,
  PRIMARY KEY (`cod_reparație`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Eliminarea datelor din tabel `re`
--

INSERT INTO `re` (`cod_reparație`, `nr_erori`) VALUES
(1, 2),
(2, 3),
(3, 1),
(4, 4),
(5, 2),
(6, 2),
(7, 10),
(8, 6),
(9, 1),
(10, 6),
(11, 4),
(12, 4),
(13, 3),
(14, 10),
(15, 7),
(16, 0),
(17, 2),
(18, 3),
(19, 2),
(20, 3);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `rm`
--

DROP TABLE IF EXISTS `rm`;
CREATE TABLE IF NOT EXISTS `rm` (
  `cod_reparatie` int(11) NOT NULL,
  `piese_defecte` enum('Motor','Cutie de viteze','Sistem de transmisie','Sistem de frânare','Sistem de direcție','Ax spate','Ax față','Amortizoare','Rulmenți','Bucșe','Lagăre','Brațe de susținere','Kit de reparație al direcției','Pompă de apă','Pompă de ulei','Radiator','Alternator','Acumulator','Generator','Termostat') NOT NULL,
  PRIMARY KEY (`cod_reparatie`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Eliminarea datelor din tabel `rm`
--

INSERT INTO `rm` (`cod_reparatie`, `piese_defecte`) VALUES
(1, 'Motor'),
(2, 'Cutie de viteze'),
(3, 'Sistem de transmisie'),
(4, 'Sistem de frânare'),
(5, 'Sistem de direcție'),
(6, 'Ax spate'),
(7, 'Amortizoare'),
(8, 'Rulmenți'),
(9, 'Bucșe'),
(10, 'Lagăre'),
(11, 'Brațe de susținere'),
(12, 'Brațe de susținere'),
(13, 'Kit de reparație al direcției'),
(14, 'Pompă de apă'),
(15, 'Pompă de ulei'),
(16, 'Pompă de ulei'),
(17, 'Alternator'),
(18, 'Acumulator'),
(19, 'Generator'),
(20, 'Termostat');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `service-uri`
--

DROP TABLE IF EXISTS `service-uri`;
CREATE TABLE IF NOT EXISTS `service-uri` (
  `cui` int(11) NOT NULL,
  `nume` varchar(45) DEFAULT NULL,
  `program_lucru` varchar(45) DEFAULT NULL,
  `nr_telefon` varchar(11) DEFAULT NULL,
  `ADRESE_coordonate1` varchar(45) NOT NULL,
  `ANGAJATII_cnp` int(11) NOT NULL,
  PRIMARY KEY (`cui`),
  KEY `fk_SERVICE-URI_ADRESE1_idx` (`ADRESE_coordonate1`),
  KEY `fk_SERVICE-URI_ANGAJATII1_idx` (`ANGAJATII_cnp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Eliminarea datelor din tabel `service-uri`
--

INSERT INTO `service-uri` (`cui`, `nume`, `program_lucru`, `nr_telefon`, `ADRESE_coordonate1`, `ANGAJATII_cnp`) VALUES
(101, 'EKA TRUST', 'Luni-Vineri 10:00-19:00', '0745678901', '1°1\'1\"', 2003456789),
(102, 'AutoFix', 'Luni-Vineri 08:00-18:00', '0756789012', '1°1\'2\"', 2007456789),
(103, 'Rapid Service Auto', 'Luni-Vineri 08:00-17:00', '0791234567', '1°1\'3\"', 2009456789),
(104, 'AutoTech', 'Luni-Vineri 09:00-16:00', '0723456789', '1°1\'4\"', 2010456780),
(105, 'Total Car Care', 'Luni-Vineri 10:00-20:00', '0794567890', '1°1\'5\"', 2013456789),
(106, 'Pro Auto Service', 'Luni-Vineri 07:00-17:00', '0765432100', '1°1\'6\"', 2015456789),
(107, 'Elite Auto Repair', 'Luni-Vineri 08:00-16:00', '0712356789', '1°1\'7\"', 2017456789),
(108, 'Expert Auto Solutions', 'Luni-Vineri 07:00-15:00', '0781234567', '1°1\'8\"', 2005456789),
(109, 'A1 Auto Service', 'Luni-Vineri 11:00-19:00', '0745678923', '1°1\'9\"', 2012456780),
(110, 'Elite Auto Works', 'Luni-Vineri 08:00-17:00', '0798765432', '1°1\'10\"', 2019456789),
(111, 'Quick Auto Fix', 'Luni-Vineri 09:30-16:00', '0767890123', '1°1\'11\"', 2018456780),
(112, 'Precision Auto Maintenance', 'Luni-Vineri 08:30-18:00', '0711122233', '1°1\'12\"', 2016456780),
(113, 'Reliable Auto Repair', 'Luni-Vineri 10:30-19:00', '0745678934', '1°1\'13\"', 2014456780),
(114, 'Express Auto Service', 'Luni-Vineri 09:00-16:30', '0712121212', '1°1\'14\"', 2004456780),
(115, 'Top Auto Care', 'Luni-Vineri 07:30-17:00', '0790001122', '1°1\'15\"', 2011456789),
(116, 'Premier Auto Solutions', 'Luni-Vineri 10:40-19:00', '0723334444', '1°1\'16\"', 2008456780),
(117, 'Next Level Auto Repair', 'Luni-Vineri 10:40-20:00', '0755566778', '1°1\'17\"', 2006456780),
(118, 'Advanced Auto Works', 'Luni-Vineri 10:00-20:30', '0733669988', '1°1\'18\"', 2018456780),
(119, 'Master Auto Services', 'Luni-Vineri 08:00-16:30', '0797772211', '1°1\'19\"', 2019456789),
(120, 'Quality Auto Care', 'Luni-Vineri 08:30-18:40', '0788883322', '1°1\'20\"', 2020456780);

--
-- Constrângeri pentru tabele eliminate
--

--
-- Constrângeri pentru tabele `autovechicule`
--
ALTER TABLE `autovechicule`
  ADD CONSTRAINT `fk_autovechicule_clienti1` FOREIGN KEY (`clienti_id_client`) REFERENCES `clienti` (`id_client`);

--
-- Constrângeri pentru tabele `operatii`
--
ALTER TABLE `operatii`
  ADD CONSTRAINT `fk_OPERATII_programari1` FOREIGN KEY (`programari_cod_programare`) REFERENCES `programari` (`cod_programare`);

--
-- Constrângeri pentru tabele `operatii_has_angajatii`
--
ALTER TABLE `operatii_has_angajatii`
  ADD CONSTRAINT `fk_OPERATII_has_ANGAJATII_ANGAJATII1` FOREIGN KEY (`ANGAJATII_cnp`) REFERENCES `angajatii` (`cnp`),
  ADD CONSTRAINT `fk_OPERATII_has_ANGAJATII_OPERATII1` FOREIGN KEY (`OPERATII_id_operatie`) REFERENCES `operatii` (`id_operatie`);

--
-- Constrângeri pentru tabele `piese`
--
ALTER TABLE `piese`
  ADD CONSTRAINT `fk_PIESE_OPERATII1` FOREIGN KEY (`OPERATII_id_operatie`) REFERENCES `operatii` (`id_operatie`);

--
-- Constrângeri pentru tabele `programari`
--
ALTER TABLE `programari`
  ADD CONSTRAINT `fk_programari_SERVICE-URI1` FOREIGN KEY (`SERVICE-URI_cui`) REFERENCES `service-uri` (`cui`),
  ADD CONSTRAINT `fk_programari_clienti1` FOREIGN KEY (`clienti_id_client`) REFERENCES `clienti` (`id_client`);

--
-- Constrângeri pentru tabele `service-uri`
--
ALTER TABLE `service-uri`
  ADD CONSTRAINT `fk_SERVICE-URI_ADRESE1` FOREIGN KEY (`ADRESE_coordonate1`) REFERENCES `adrese` (`coordonate`),
  ADD CONSTRAINT `fk_SERVICE-URI_ANGAJATII1` FOREIGN KEY (`ANGAJATII_cnp`) REFERENCES `angajatii` (`cnp`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
