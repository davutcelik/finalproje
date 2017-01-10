-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 10 Oca 2017, 19:39:44
-- Sunucu sürümü: 10.1.16-MariaDB
-- PHP Sürümü: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `test`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kiralik`
--

CREATE TABLE `kiralik` (
  `kitapid` int(11) NOT NULL,
  `kiralikgün` int(11) DEFAULT NULL,
  `müsteriad` varchar(50) DEFAULT NULL,
  `müsterisoyad` varchar(50) DEFAULT NULL,
  `müsterino` int(11) DEFAULT NULL,
  `müsteritc` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `kiralik`
--

INSERT INTO `kiralik` (`kitapid`, `kiralikgün`, `müsteriad`, `müsterisoyad`, `müsterino`, `müsteritc`) VALUES
(1, 20, 'DAVUT', 'CELIK', 55, 34),
(2, 2, 'A', 'A', 4, 5),
(7, 2, 'CAN', 'YILMAZ', 34, 55);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `kiralik`
--
ALTER TABLE `kiralik`
  ADD PRIMARY KEY (`kitapid`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `kiralik`
--
ALTER TABLE `kiralik`
  MODIFY `kitapid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
