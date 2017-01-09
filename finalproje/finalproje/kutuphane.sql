-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 09 Oca 2017, 23:51:23
-- Sunucu sürümü: 10.1.19-MariaDB
-- PHP Sürümü: 7.0.13

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
-- Tablo için tablo yapısı `kütüphane`
--

CREATE TABLE `kütüphane` (
  `sire` int(11) NOT NULL,
  `kitapadi` varchar(50) NOT NULL,
  `kitapyazari` varchar(50) NOT NULL,
  `kitaptürü` varchar(50) NOT NULL,
  `yayinevi` varchar(50) NOT NULL,
  `kitapcilt` int(11) NOT NULL,
  `yayintarihi` date NOT NULL,
  `kiralikgün` int(11) NOT NULL,
  `müsteriad` varchar(50) NOT NULL,
  `müsterisoyad` varchar(50) NOT NULL,
  `müsterino` int(11) NOT NULL,
  `müsteritc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `kütüphane`
--

INSERT INTO `kütüphane` (`sire`, `kitapadi`, `kitapyazari`, `kitaptürü`, `yayinevi`, `kitapcilt`, `yayintarihi`, `kiralikgün`, `müsteriad`, `müsterisoyad`, `müsterino`, `müsteritc`) VALUES
(2, 'deneme', 'davut', 'hikaye', 'mu?', 1, '2017-01-03', 20, 'davut', 'celik', 1515, 2147483647),
(4, 'Ask', 'Elif Safak', 'Roman', 'Dogan Kitap', 1, '0000-00-00', 0, '', '', 0, 0),
(5, 'Ikimizin Melodisi', 'Ercan Akarsu', 'Roman', 'Kanes Yayinlari', 1, '0000-00-00', 0, '', '', 0, 0),
(6, 'Yüregim Seni Çok Sevdi', 'Canan Tan', 'Roman', 'Dogan Kitap', 1, '0000-00-00', 0, '', '', 0, 0),
(7, 'Yok Artik', 'Mustafa Sinan', 'Hikaye', 'Arunas Yayinevi', 2, '2017-01-11', 0, '', '', 0, 0),
(8, 'Gecenin Ye?ili ', 'Bar?? Tut', 'Hikaye', 'Profil Yay?nc?l?k', 1, '0000-00-00', 0, '', '', 0, 0),
(9, 'Masalci Kiz', 'Manica K. Musil', 'Hikaye', 'Timai Çocuk', 1, '2017-01-03', 0, '', '', 0, 0),
(10, 'Küçük Kara Bal?k', 'Samed Behrengi', 'Masal', 'Can Yay?nlar?', 1, '2017-01-12', 0, '', '', 0, 0),
(11, ' Binbir Gece Masallar?', 'Samed Behrengi', 'Masal', 'Tutku Yay?nevi', 1, '2017-01-04', 0, '', '', 0, 0),
(12, 'Sevda Sözleri', 'Cemal Süreya', '?iir', 'Yap? Kredi Yay?nlar?', 1, '0000-00-00', 0, '', '', 0, 0),
(13, 'Elif Gibi Sevmek', 'Hikmet An?l Öztekin', '?iir', 'Sufidükkan Kitap', 1, '0000-00-00', 0, '', '', 0, 0);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `kütüphane`
--
ALTER TABLE `kütüphane`
  ADD PRIMARY KEY (`sire`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `kütüphane`
--
ALTER TABLE `kütüphane`
  MODIFY `sire` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;