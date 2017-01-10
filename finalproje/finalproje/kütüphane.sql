-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 10 Oca 2017, 18:27:28
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
-- Tablo için tablo yapısı `kütüphane`
--

CREATE TABLE `kütüphane` (
  `sire` int(11) NOT NULL,
  `kitapadi` varchar(50) DEFAULT NULL,
  `kitapyazari` varchar(50) DEFAULT NULL,
  `kitaptürü` varchar(50) DEFAULT NULL,
  `yayinevi` varchar(50) DEFAULT NULL,
  `kitapcilt` int(11) DEFAULT NULL,
  `yayintarihi` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `kütüphane`
--

INSERT INTO `kütüphane` (`sire`, `kitapadi`, `kitapyazari`, `kitaptürü`, `yayinevi`, `kitapcilt`, `yayintarihi`) VALUES
(0, 'Elveda Güzel Vatan?m', 'Ahmet Ümit', 'Roman', 'Everest Yay?nlar?', 1, '2017-01-02'),
(1, 'Kürk Mantolu Madonna', 'Sabahattin Ali', 'Roman', 'Yap? Kredi Yay?nlar?', 1, '2017-01-01'),
(2, 'Ustam ve Ben', 'Elif ?afak', 'Roman', 'Do?an Kitap', 1, '2017-01-01'),
(3, 'Havva''n?n Üç K?z?', 'Elif ?afak', 'Roman', 'Do?an Kitap', 1, '2017-01-02'),
(4, 'Tehlikeli Oyunlar', 'O?uz Atay', 'Roman', '?leti?im Yay?nc?l?k', 1, '2017-01-02'),
(5, 'Ku?lar Yas?na Gider', ' Hasan Ali Topta?', 'Roman', ' Everest Yay?nlar?', 1, '2017-01-03'),
(6, 'Saatleri Ayarlama Enstitüsü', 'Ahmet Hamdi Tanp?nar', 'Roman', 'Dergah Yay?nlar?', 1, '2017-01-03'),
(7, 'Karde?imin Hikayesi', 'Zülfü Livaneli', 'Roman', 'Do?an Kitap', 1, '2017-01-03'),
(8, 'Uyumak ?steyen Tav?an', ' Carl-Johan Forssén Ehrlin', 'Hikaye', 'Okuyan Us Yay?nlar?', 1, '2017-01-04'),
(9, 'Gece Maymunu Gündüz Maymunu', 'Julia Donaldson', 'Hikaye', '1001 Çiçek', 1, '2017-01-05'),
(10, '?natç? Kirpi Mina', 'Tülin Koziko?lu', 'Hikaye', 'Redhouse Kidz Yay?nlar?', 1, '2017-01-05'),
(11, 'Masal Masal ?çinde', 'Ahmet Ümit', 'Hikaye', 'Everest Yay?nlar?', 1, '2017-01-05'),
(12, 'Masal Masal ?çinde', 'Ahmet Ümit', 'Hikye', 'Everest Yay?nlar?', 1, '2017-01-05'),
(13, 'Gö?e Bakma Dura??', 'Turgut Uyar', 'Siir', 'Yap? Kredi Yay?nlar?', 1, '2017-01-06'),
(14, 'Ihlamur Günlükleri', 'Ba?ak Bu?day', 'Siir', 'Yap? Kredi Yay?nlar?', 1, '2017-01-06'),
(15, 'Üstü Kals?n', ' Cemal Süreya', 'Siir', 'Yap? Kredi Yay?nlar?', 1, '2017-01-07'),
(16, 'Yolun Ba??', ' Ali Lidar', 'Siir', '?thaki Yay?nlar?', 1, '2017-01-08'),
(17, 'Dokuza Kadar On', 'Özdemir Asaf', 'Siir', 'Yap? Kredi Yay?nlar?', 1, '2017-01-10');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `kütüphane`
--
ALTER TABLE `kütüphane`
  ADD PRIMARY KEY (`sire`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
