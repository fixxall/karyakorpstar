-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 10, 2021 at 10:38 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_karya`
--

-- --------------------------------------------------------

--
-- Table structure for table `commerce_records`
--

CREATE TABLE `commerce_records` (
  `id` int(11) NOT NULL,
  `npm` varchar(255) NOT NULL,
  `productname` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `status` varchar(255) DEFAULT 'PENDING',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `configs`
--

CREATE TABLE `configs` (
  `id` int(11) NOT NULL,
  `fastingopen` tinyint(1) NOT NULL DEFAULT 0,
  `fastingdate` varchar(255) DEFAULT NULL,
  `commerceopen` tinyint(1) NOT NULL DEFAULT 0,
  `commercedate` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `configs`
--

INSERT INTO `configs` (`id`, `fastingopen`, `fastingdate`, `commerceopen`, `commercedate`, `createdAt`, `updatedAt`) VALUES
(1, 1, 'Sat, 09 Oct 2021', 1, 'Sat, 09 Oct 2021', '2021-10-10 08:10:56', '2021-10-10 08:10:56');

-- --------------------------------------------------------

--
-- Table structure for table `fasting_records`
--

CREATE TABLE `fasting_records` (
  `npm` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fasting_records`
--

INSERT INTO `fasting_records` (`npm`) VALUES
('1817101467'),
('1817101468'),
('2019101600'),
('2019101601'),
('2019101602'),
('2019101609');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(1, 'FASTING ADMIN');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `npm` varchar(255) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `class` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `roomId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`npm`, `fullname`, `class`, `password`, `createdAt`, `updatedAt`, `roomId`) VALUES
('1817101369', 'Achmad Husein Noor Faizi', '4 RKS Echo', '$2a$08$MwW1MieZT0oj4Tb59rHe5eo1YG4yP6bt3L0Qd.ndGCZcaZkgVMqHu', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1817101370', 'Adam Waluyo', '4 RKS Echo', '$2a$08$.879nsctlNrTpFrKmFc2COOJ9w8mxWBPvsOwOBnbKGbY5zlha99UG', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1817101371', 'Adenta Rubian Qiyas Syahwidi', '4 RKS Trace', '$2a$08$j3ncNxRWLLOvoo9xOl6ULOGur3RLXMT/hx3Qagt7KFk1gXaxA00di', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1817101372', 'Adit Candra Prayuda', '4 RKS Route', '$2a$08$jAB8fGWaegGZtSVkj70ate9q8pfq4fTZOxVVz1MLKWPep5nQrhVVa', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1817101373', 'Ageng Angelita Puti Anggini', '4 RKS Route', '$2a$08$Cvmfk7mtJxg5hOnOWYDADuHSB43GrnJtIP3Q0gwO3dZ/0r4o0UeX.', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1817101374', 'Agung Maulana Putra', '4 RKS Trace', '$2a$08$NJjHZYRjAGP3wvgOqOWEcuOEoVeefP.fcyBgVXbXPFc6xIUEc8IpK', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1817101375', 'Aidil Yusuf Priadi', '4 RKS Trace', '$2a$08$XZbrVx56Ry5oYt9xm.S9YeLwsSmTCbpsQzeaJIMh4ENPbUMiDABXC', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1817101376', 'Aji Agung Sedayu', '4 RSK', '$2a$08$bWDa3ZzCRLwwK7BeyXCNTO2eZZ14qPx/81/EhATeaRbwDJ7QHrhWO', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1817101377', 'Alfian Adi Saputra', '4 RKS Route', '$2a$08$L477l.PGlx5tH1osF5ZzzuLExdoNl1Nk9.kIxdn7Ytd9LRHWflkIO', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1817101378', 'Aljevon Yusuf Sulaiman', '4 RKS Trace', '$2a$08$bfIJpQrw1pJ3hLYx.9aXJeuOu5ItdIqBr/qP86oi8HFBsbkwKEYZa', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1817101379', 'Alya Aiman Salsabila Arif', '4 RPLK', '$2a$08$r/8u/hEpEFSZMmN.J1fK3uetzdL9k65m0gpibdUySKt2R7shz.fCS', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1817101380', 'Amerta Bian Kretarta', '4 RPLK', '$2a$08$dn.j0mH5HOFsIMrP1Qd38eowofnGpLb22owo0ObFkK7GGVnyttilG', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1817101381', 'Andhika Sigit Juliyanto', '4 RKS Route', '$2a$08$3IRMPin3mTDHf.cUqFCVCePNkxc4qKqTDR6W0hX2KRNn6gOfzXHoO', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1817101382', 'Anjeli Lutfiani', '4 RSK', '$2a$08$weN5MEjebFC1ZJLmct.ApuFnWJb2mcR/oas60smYpTB07GI2P8KKa', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1817101383', 'Antonius Alfari', '4 RKS Echo', '$2a$08$vVE.cPbFwb/2SHP139zXy..Wv.UKFeG38CkMMS9TlbCMCBQ59QcPu', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1817101384', 'Aprizal Sahulecha Simanjuntak', '4 RPK Quantum', '$2a$08$Lgw6HCRDYZkindKVNLldjOBbSbwF2jHPD.Sb5.mumXzbNwcUFxuaS', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1817101385', 'Arbain Nur Prasetyo', '4 RKS Trace', '$2a$08$qtpB317LzfegGktujCAy7uQLTsWa8ufxeZk7bqeV1Gq6x.EKmMwXS', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1817101386', 'Arni Yulia', '4 RSK', '$2a$08$sPZNlLD5dDHQFaJFQvSxzeZHfhYCDaXjuG.H/7pPESGpJb3CMPo3a', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1817101387', 'Arsya Dyani Azzahra', '4 RSK', '$2a$08$/JaqVACm.Iv6y7neoBmGYu0ROI3m7.VXGEyNDT8eA8aomZ1ghezoK', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1817101388', 'Asep Dadan Rifansyah', '4 RKS Route', '$2a$08$SqyuAxXI8r79F0KZOJbHPOOO4p1BdRA2iBTfoeCuCP0O3iSedovju', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1817101389', 'Asyraffi Adnil Ma\'ali', '4 RKS Trace', '$2a$08$hzOU.IgQT24G8EtBMQAXlOEvtj6YQQwPmkH/wkEpeV/w8SmFJy62y', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1817101390', 'Atika Nurliana', '4 RPLK', '$2a$08$wbD.VFLC8wsSAgSV3r9iOerTOxIq7GXG4w.X5JrBFtsMvIsSVVGO2', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1817101391', 'Balqis Tuffahati Permana', '4 RSK', '$2a$08$T06IF8h/wQSZ.Yn2WAuzAOlvBa94NJ2cl96s83o6ZhzarkMLkoagi', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1817101392', 'Bernawan Ikhsan Syahputra', '4 RPK Quantum', '$2a$08$851m2ezR.xSHRMR0kQQZZeMDoVPfvpseHH0yz/GZVHM1RWgvLbOxG', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1817101393', 'Bimo Setyo Husodo', '4 RKS Trace', '$2a$08$22X0pTsnf.FKWNfzc1jlA.qydK59mZsC81IGxnt.1xpL7g6fOzcJ6', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1817101394', 'Daffa Akbar Putra Yusa', '4 RKS Trace', '$2a$08$p7ZGmqI.8y3V7EB6KUVDgOHFE5QLgdjQSXet2M4r5WKIT9oAtpeda', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1817101395', 'Dendi Risman Saputra', '4 RKS Echo', '$2a$08$rBd9zMKFDwnkNT3VyPCcyetXTz6QiOgk1rMcdtKEOZ8FfqLF1AWH2', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1817101396', 'Dewi Kartika Prasasti', '4 RSK', '$2a$08$ae30z4t0/bIBAIIcL8JFbuCLPTTYd1tgWJ78u61O8tu9qlo4iMCX.', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1817101397', 'Dhea Septi Kurnia Dati', '4 RSK', '$2a$08$KmRl1gQGDUTgzSMsuvN.eubsXaMqQbYIVymJJISRA5F.sXt85Bv46', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1817101399', 'Dikka Aditya Satria Wibawa', '4 RPLK', '$2a$08$zjq66WQlO3aCylchWG1.FuOqb9061pGr25U1binj4p3YD2MLhknDi', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1817101400', 'Donny Irwansyah', '4 RPLK', '$2a$08$D24FS1AcG1pY5DXVZRggu.t/6yG6j9F3MKcCZ0ftzHA2XrJF8vbKS', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1817101401', 'Ega Bagus Wibowo', '4 RKS Route', '$2a$08$tvSa.Ih2PzdLBmvT8F/.o.3HTbTwxLvBih2sD.GuJDJP5xZwr96ou', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1817101402', 'Emmanuelle Sibarani', '4 RSK', '$2a$08$wK5yPjiWEwJLIqh3882GkOYmYPAFhxQ/Xv4aYvkLbkSgRPNZxp/TC', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1817101403', 'Fadhil Raditya', '4 RKS Route', '$2a$08$zqhsCJVa0O8CpPhITVlFVezybZDmEBwm.J6hRiW8JVek/7UUHvTUW', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1817101404', 'Fahdel Achmad Purnama Putra', '4 RKS Echo', '$2a$08$87WQ8Z2W/vj7urAMvMNwze/0K7Q8e.j74qahohcpDNTXxuZIgkCAy', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1817101405', 'Fahma Dieny Sumardi', '4 RSK', '$2a$08$0dJKEafU2IS6qXblPrUcDeOXZbt7O5fkrD9F6UAfjObGRVaNthchC', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1817101406', 'Farid Akram', '4 RKS Trace', '$2a$08$gzkRngHRC2jci3wHtcpWWuV9Se2QHHPLdoDm6LAfxFQr2bW.6gHMu', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1817101407', 'Farras Ahmad Naufal', '4 RPLK', '$2a$08$PiI4LuHCQ90ukkkKMNy9q.jNt2T8rH9kGTXnnbJxmGm1gT0VZFvYC', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1817101408', 'Fela Nadya Sari', '4 RKS Echo', '$2a$08$3FE1fAsErqP5t.EZ1KI9reJqPplGc9MZXJ1tiHHngffgdyXFpQcBi', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1817101409', 'Fendy Heryanto', '4 RSK', '$2a$08$fnEMSrwBOBzqA9U2fWUo9uPSEuqh4RckCNwE1no/x5sj5r/zn9a7e', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1817101410', 'Fika Dwi Rahmawati', '4 RPLK', '$2a$08$lKcDmaf.xqTqnuhQb3JHqOMwyxFV59qmffgx1clytAGES3GZ2qihS', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1817101411', 'Fitra Hutomo', '4 RPK Quantum', '$2a$08$BlxlMYZ5fmAZC3bZ4V4.X.A9baDYooodHVbP.Rd915aY/FoZwbttC', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1817101412', 'Galang Putra Nusantara', '4 RKS Echo', '$2a$08$di9YFODhPZUgEeqJgO/F4uTInA5YdPvka8ls2Y3XeHfzn08FMpZNO', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1817101413', 'Ghiffari Adhe Permana', '4 RKS Echo', '$2a$08$06HSATyaZ8GKdMK/QbwLJuUXh6M2mYcT3PQQUgbNrzgLyGELa/VaS', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1817101414', 'Hafizh Ghozie Afiansyah', '4 RKS Trace', '$2a$08$cZxss0Ad3HrErhiIX25pqebV7aFtEGtBdOfXXT1pZXNMwmMETlBkq', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1817101415', 'Handhika Yanuar Pratama', '4 RKS Trace', '$2a$08$S/BlZZhWWNkP9ScEcUnfEuFFZjKgnfqaleruHfANADf5KAjoTsM.W', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1817101416', 'Hanifah Salsabila', '4 RKS Route', '$2a$08$BkaLrMAA2XjN6QIH.HI/z.ZrHW8X6yABJRwomK0opszlRNzTKz0gK', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1817101417', 'Hernowo Adi Nugroho', '4 RKS Trace', '$2a$08$YUF3xu2KdKmxRcjQ36FSWOA5KzdrkwbU9vH1kiVE.CONeXqXwgnzW', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1817101418', 'I Wayan Ari Marjaya', '4 RKS Echo', '$2a$08$rS6lzF1l5ZqhxidohdCqPO4R5BzJSTLk9HvB3NJJMs3gkvkPjS66S', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1817101420', 'Kamila Rizqina', '4 RKS Trace', '$2a$08$xon8gYF3ymVEd6DO5/awVOFIBoAZdPUTXC/yj7i4BDht3PnmtEPDm', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1817101421', 'Khaerunnisa', '4 RPK Quantum', '$2a$08$5.R2uhhSxSDjvaJhZ9sAEelMFNKmN/1mIwlnWzHm3bjNqNFAFtPmS', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1817101422', 'Kirana Larasati Dewi', '4 RKS Echo', '$2a$08$KDu7NlNuc4nkCoBhXH0C2OaOnxlg5khz6V4el9sYthSsQElbpdWC.', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1817101423', 'Latisha Safa Salsabilla Kirana', '4 RKS Echo', '$2a$08$tcf.mfOMdlY2WMlibb62IeWSOZmC7K36Ly939s45E8NcXxJP6izUG', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1817101424', 'Lisa Saputri', '4 RKS Echo', '$2a$08$3SJslrBizV5ch21UI0AbWO.sZI0a00LP42rLTNFXK.VWQoRj0FbR2', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1817101425', 'M Jaya Hadi Kusuma', '4 RPK Quantum', '$2a$08$dkhSFzbiz04LCXRL2A6WKeMl5FM/4OcG8TVzC6tVBi8QKi3plfbrq', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1817101427', 'Mahar Surya Malacca', '4 RKS Echo', '$2a$08$v.IM/G49iNGpLzHqEVp4ruko.Tx/WVirc8IUHuDUJD1dZJdjuF2pG', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1817101428', 'Maulana Ihsan', '4 RSK', '$2a$08$QTbVqlVQwDSUdwN7YdsU2Oj1o5QlMm.uNB9ONvaS5DLBlfwRvcxw.', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1817101429', 'Melandy Andriawan', '4 RKS Trace', '$2a$08$WL8FEWV7F32AXmEscDtaROdKg08BIVEaaFYQxdUSbNEFCbo1fPtem', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1817101430', 'Meta Mutia Permata Sari', '4 RSK', '$2a$08$3eHNY2LNE3aYYXSjrGCH7.vogr0mvPGfYAJak.J/cEynm3f2zWYn6', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1817101431', 'Muhamad Qolby Fawzan', '4 RPLK', '$2a$08$Sm8i2ZNcseBEvrvmrQiqtOzHM/coblrwFaFaqicIKrFrKgDlv0cgu', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1817101432', 'Muhamad Saleh', '4 RKS Echo', '$2a$08$9VNnA2ZyWgrqOjWWjB7IueDN9qIy0K49QJlW1goiNH5TVe3E7IxKa', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1817101434', 'Muhammad Fadilah Akbar Al Rosyid', '4 RKS Route', '$2a$08$a7Wt2262u6LF/AD/WcP8RuIWsRRWzW9oFwjEnfRgh09ruyPqP0lHG', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1817101435', 'Muhammad Fahmi Ramadhani', '4 RPK Quantum', '$2a$08$a4a0/8yQl0WiVezBPup6h.xH3xJZC.JNvGnxX0pu5SnKsxmyJitGu', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1817101436', 'Muhammad Hadi', '4 RPLK', '$2a$08$cKqhcK3yn3q0E.7omRP66uZTruOS784BqTG9vUPgq7FOv.v0j5csO', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1817101437', 'Muhammad Hilmi Amanullah', '4 RKS Echo', '$2a$08$tBqdATGpAC./kNAD.PoUU.DsTaXtVA.L0lqFfj4Yy9S74ZqZ/..f6', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1817101438', 'Muhammad Irfan Cahyanto', '4 RPLK', '$2a$08$FeYhW0POQPXf3Yme9u.JUOmIsGPvQfwO0MN6tjOLcNKusN1zW5REG', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1817101439', 'Muhammad Luthfi Rizki Chusam', '4 RKS Echo', '$2a$08$8kkOhhYYwk7dWn2QzSK2UuODzcAxJZ3ykgx2ZlecvVxasT9dJjO9.', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1817101440', 'Muhammad Novrizal Ghiffari', '4 RPLK', '$2a$08$T4Y91XVkjmp/aeAdIz2rAu.w7U32xDQnIriz5eaXYwQyh/zrf4hFq', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1817101441', 'Muhammad Rohmanur Rizqi', '4 RKS Route', '$2a$08$De5URd5E8k5ZugvbBPwgWui0o6nY6zI.hjSq56r7bkyQ2XJFkWtKi', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1817101442', 'Muhammad Syihaab Al-Faaruuq', '4 RKS Echo', '$2a$08$qjPXFTbh4RgTyMjQWIMlZusjijwgNdE.ngQ5vnhPUXWvjQH90wT5W', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1817101443', 'Muhammad Zhilal Agrayasa', '4 RKS Trace', '$2a$08$13FxPoHWBgO6IRFSfvnE2eSVWFvLDe1mF9qfcQpUmJdBKEU4vYGGa', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1817101444', 'Nafila Laili Ikrimah', '4 RSK', '$2a$08$PG9PuCHJSuwsgOMuEjCqrefqyiZhmzyx7NjhPSWYZ/9L4jAjgubKu', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1817101445', 'Naufal Hafiz', '4 RKS Echo', '$2a$08$Khes0DVmq7g3cHQyPC7CsOBlQ8RCAYDwxc0HUNEbBhrvDcIhCJJVa', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1817101446', 'Naufal Hafiz Syahidan', '4 RPK Quantum', '$2a$08$tLeXOAAhik0/aHb9HN23s.7updHDTrMiaz8yShBApKD4yosyWIWq6', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1817101447', 'Naufal Madega Pratama', '4 RKS Route', '$2a$08$QFDnN2nYSx/uDzSMbmziQOIt1juftDGL6wMENrS8dGhPnfci5.YGq', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1817101448', 'Nazela Khairani Putri', '4 RPK Quantum', '$2a$08$6smgqlJ4//poRjVLed4AseUyB2.kFuFjD.NI32o4a.EgQ7BHdib92', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1817101449', 'Nizam Aditya Zuhayr', '4 RPLK', '$2a$08$uACHk0HeywmAqlaQofDjwOtiqDXH.JP05zaih3eJypWxD3wisSGTu', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1817101450', 'Nofrisal Dwi Syahputra', '4 RPLK', '$2a$08$emw9pv9KPvTsX4bRpMNWJeSqE/OyD1i9PNijmXK5W3DUgmejUoGG.', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1817101451', 'Noni Fauziah Septianty', '4 RKS Trace', '$2a$08$iQeBwmUWIAT5TZoyYVs5Xe.Lq7lY.1N79EQ2fnw3PjJsNeV5Oz1Pu', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1817101452', 'Rakha Nadhifa Harmana', '4 RKS Route', '$2a$08$8DYW4iFnuT/o7asfu6OutuvVOFIf8Eaqsg2pAWJURl7tisTXUdbO.', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1817101453', 'Regina Christanty Beatrix Hadjo', '4 RKS Trace', '$2a$08$579q3q6nxjcuhPcF1V7/6eyyOXo.iuW4yWeZnfZChmMxGazUBgKWW', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1817101454', 'Ridho Mauldiansyah', '4 RKS Route', '$2a$08$p9cJLQpAeE4YXMwhtv9r0Osw7TsZXstTTvbw7JesYL5ixeBgU7PXy', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1817101455', 'Rizaldi Wahaz', '4 RKS Route', '$2a$08$ttv0KhngmKOe.pgyOVQ0qOotjAYptadWRMye7t1wJUokefwDJvt7y', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1817101456', 'Rizky Ainur Rofiq', '4 RKS Trace', '$2a$08$RwlAORy.njZiMTs5WD6houwHpzyUHpqbFsUpI36SpkJF8YK2IBzC.', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1817101457', 'Saffana Tistiyani', '4 RKS Trace', '$2a$08$tAQ7SBMwd92SBrkmANolB.07k9.HCiMUJTX976GvR870Y8BPF27Ni', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1817101458', 'Salsa Alma\'ariz', '4 RPLK', '$2a$08$Z2KMRDn6iEZcvnO.QqdAJ.8VznKhuErFzbQh8Xfbb5AqV4dPI7/rq', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1817101459', 'Sari Putri Yanti', '4 RKS Route', '$2a$08$kCUC51GlnCKm64.tL9reWOdQcAqknWa4Gu2vkZeXh3O6T9R8pix2i', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1817101460', 'Sekar Mutiara', '4 RPK Quantum', '$2a$08$KUhLf1OBHQl4kl/fMu3yjuXnCzHkMsd4wNv1LFDeIazxAzkEmjIMi', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1817101461', 'Shafira Dinda Ramadhini', '4 RKS Route', '$2a$08$Qf1cuYKYhTcVu4Soxq7Teu7vHVFW4BKBlLphrlR5XxuAdQ/NhMw3e', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1817101462', 'Tri Hesti Damayanti', '4 RKS Route', '$2a$08$sHdVoVEaQkvlX4cnspNOO.IKIJmBs/9E2b6a6hTQTaOaB2LjgjGQm', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1817101463', 'Wahyu Riski Aulia Putra', '4 RKS Route', '$2a$08$40nJ6vzNNkJsufmCPo2aq.ieD0fUP2HTnC6x8OyFMJfwTGda1IwaS', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1817101464', 'Whisnu Yudha Aditama', '4 RKS Route', '$2a$08$YnHVj.AEDqlCUoh5U8eHqe4obhJHT05HjzvT3RI1m3UkNVEfUBJOa', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1817101465', 'Wisnu Irawan', '4 RKS Echo', '$2a$08$H1onRXrTafDak2YZ0oEsReQh8TqXu1sIfo6hl2y04/MqEBu98xR9W', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1817101466', 'Zaidan Nuraga Chuldun', '4 RPK Quantum', '$2a$08$5IatM9Mg/YQ8K0XYXBkPhO9BZcfLzDvP.mitxcZ50KVOGvl.LRdHe', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1817101467', 'Zathalinny', '4 RPK Quantum', '$2a$08$Edy2VRrJdT/eP23OxOovae/P3BC8.DtaC62LSZftHqIqC57ZwnB2W', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1817101468', 'Zidna Wildan Alfain', '4 RPLK', '$2a$08$uNgvTvDZ97.fQAzd68giN.2ai1hXKUH.Qp7ee.mrTU6Sik8oqsl8O', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101426', 'Abidah Salsabila Putri Sanita', '3 RKS Python', '$2a$08$6CFxdUWFxhxYggeC5oarZOdgSLMLgv.2S28ApLiIqnwl5gxlSg7im', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101469', 'Adek Muhammad Zulkham Ristiawan Kertanegara', '3 RPLK', '$2a$08$g09uSAvusKRcXpf2KmPoeuxlI1ojk/2o8kIPjW.z86wJJYbj1VMv6', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101470', 'Adelia Putri Andriyani', '3 RKS Python', '$2a$08$ETlpaTdikIBc6We6Y6gv6udQHymhFSQ4O6GV.lGKDvd3B5LBO1MFe', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101471', 'Adisha Hanifa Ewata', '3 RSK', '$2a$08$qP.k/iisljkKg4MsDgDiT.ydpNo6Q2RKIyBne90S7wEZ/rfSffufe', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101472', 'Adiva Fiqri Nugraha', '3 RPLK', '$2a$08$zWMKjhgtKwYcHWtWuV0uNuYhdN2sysPVMVvbHmh1bzNd6sSz.2RLO', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101473', 'Akhmad Rizal Arifudin', '3 RPLK', '$2a$08$mxk8GehL5N15yxhjDlef1eJ1XToNfjQRfj2hiCtv7R8nLWTxULI8y', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101474', 'Aldi Cahya Fajar Nugraha', '3 RKS Nexus', '$2a$08$eQcwLV0pZNE8jGHf5vIasuCl5yxb50S7nzo/CV3V/7OLCwwPpic/y', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101475', 'Alhafid Azhimullah', '3 RPK Elektron', '$2a$08$UtZ1eOrF6PznfxI7wgEKQef7.F9XhKdw4A57hGBzWkqIRZbyBAXpS', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101476', 'Alifah Noor Islami', '3 RKS Nexus', '$2a$08$EL0S3CjB1hmZmdwmDbI8TO1.K.k1uYFLGtVHXeJXRY8PCaU91HDE2', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101477', 'Almeera Shafa Rayyana', '3 RKS Python', '$2a$08$u0QMgZCa.a.zGOhmKBRtnerIJT/3DLXBChr9BVuGIZIwC7EZnS8m6', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101478', 'Alviana Juni Susanti', '3 RPK Elektron', '$2a$08$7ykh53gr0kXOXXnFkYiw4eZtdce8ZfZgC4fceADfzDy5MTBK0xspS', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101479', 'Annisa Aulia Budianti Qurota\'aini', '3 RKS Python', '$2a$08$EJc5Hkek6EJQwwrzRoVuA.Mj0arABmArLL3SFyx3GE69Kyatx9Uoq', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101480', 'Arbi Nur\'aini Labibah', '3 RSK', '$2a$08$Fvba/.FelhayIsuL0Ag5rOhZ/cRJJ8bv.eRp4AntqincY/FDk4Wxq', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101481', 'Arga Prayoga', '3 RPLK', '$2a$08$Mmba53i0lxuUq3u72kDz5.YwtxL3oahBbeGbNHrCbK7hxh9FbBXO6', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101482', 'Arildha Rahma Savitri', '3 RSK', '$2a$08$0qcYD7FE00M0FJhcUxoVQuTwmcPizdNKpe3iDKAC3d2yuhGo1xfsu', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101483', 'Arion Sapril Tamba', '3 RPK Elektron', '$2a$08$t2QYiID1QZpNA5cmCPrVxuQh0jqMBoe9.359hQVNM/kUjVwGv5gj2', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101484', 'Asep Setiawan', '3 RKS Ruby', '$2a$08$FiRlysjRW54zpSeKGddkeOWBNH.4bk.oUNCTh0zjk0iNrP1S2i5c.', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101485', 'Asri Safira Priantana', '3 RKS Ruby', '$2a$08$bAtTJPOwJjIMeWz0139Ame9ZIMoYzDtHaT7CM1/EvWpfsCjc/AO16', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101486', 'Asti Nuryani', '3 RKS Ruby', '$2a$08$sCSfdj/HAJjLa3/PMu3FqOBtNE5tO1eqSxoMG/sVD6uzOmGikBzr2', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101487', 'Aulia Rachmawati', '3 RKS Nexus', '$2a$08$zS7sRLZjj5PMfX5hYFIrfu1exZb2Nv0R/A/gFpVfj15tuijgYJWYa', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101488', 'Aviva Javantio', '3 RKS Python', '$2a$08$TDzEEbxCyetHrqJsdZ/EDeM7en0yXBtlf9XOHMmaCNtpujVCHbKX6', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101489', 'Ayu Choiriyah', '3 RKS Ruby', '$2a$08$YdXWbK0V/ZSZDU2Ry0fRzuO1fuAOIfHvpZdd/9Huqn9bbN0FId6hu', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101490', 'Ayu Ningtyas Nurfuadah', '3 RKS Python', '$2a$08$fGmMYFWOM0KRXUuXOXRqlOOQ0sADwMRL2yx7kN4cdZBVgCOhKsb5y', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101491', 'Aziiza Ratnadewati Pratama', '3 RKS Nexus', '$2a$08$bEwJl5tCHlg4dZ0a7l69aelTb.LlAe4ZQ3kgF4nE5.Oxc2fN2MXn6', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101492', 'Bagas Megantoro', '3 RPK Elektron', '$2a$08$x0fczx/QtmWaOTmx7k7Cs.EBj6hDmIyvpesTUp0LH055mPqnxYw0i', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101493', 'Bagus Pribadi', '3 RKS Ruby', '$2a$08$VBoKT5R0EKB7sEDAK2iAbuE.auFdHrkeeVoFMrWiKvVaBv0mNTQ3u', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101494', 'Bahrianto Prakoso', '3 RPK Elektron', '$2a$08$Z8SVzDX5KmICVGFjU4K5aeKgvIWythXxk.VUS74XXgHlxIMfNqb9G', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101495', 'Cantigi Kharisma Khairanisa', '3 RKS Ruby', '$2a$08$OiPYM0Q2lCo4DXv77s.lGufx6QD3NqSCM0lhttFnIJKGiz65C24HC', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101496', 'Dhana Arvina Alwan', '3 RPLK', '$2a$08$gnP3KROLwi4dLhONRq3KVeRnKHkeYCDa1EZhhNy29nrDQhoQQ/n.2', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101497', 'Dian Dwi Karlina', '3 RSK', '$2a$08$ipV9.osgCCcPX8SD3dVhMevdqfruQn4lJSxWL2/71BOXT1rXNMl2q', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101498', 'Diky Artin Sitanggang', '3 RKS Python', '$2a$08$9498e15znjtHEp1eZzz/k.Mk.DDnFVQF/oVG3bagDxKxOJ/HjEh3m', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101499', 'Dyah Rahmatannisa Zenina Alfiandini', '3 RPK Elektron', '$2a$08$c38l33F5Aby0O3CVcOup6.yfWA.dXdhJOaJ.xooyvcWb42Nk5UBUq', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101500', 'El Fitrah Firdaus Fadhilah Akbar', '3 RKS Ruby', '$2a$08$Q4fidmStJui0BaQWxOO2..nFmmezxQRJpH0V6VpIjI45hxBuCEK4i', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101501', 'Ellisa Hani Nur Safitri', '3 RKS Nexus', '$2a$08$Y8R1fZvqLNfUq/AxsfZ8VOhSY8QKrqXj2MdycxTA/c9QZO1YPMs06', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101502', 'Fahmi Ramadan', '3 RKS Ruby', '$2a$08$x6qNCDkEJAfZ94KQd7qy9ef.eXs1E.NgyfQwqFUZqtXFCW7HyAhHK', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101503', 'Faris Firana Febrian', '3 RKS Ruby', '$2a$08$rWgZhCfypPrUEB2xTglH6euKIDqCV6lbpeAZHyhDA2/Pu.73M9EYy', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101504', 'Fathurrahman Rifqi Azzami', '3 RPLK', '$2a$08$mO7WNczqnGjYtIBMh5lBUepQlYw5waCuLm5MHkzlmrbvlu3/ZCUYq', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101505', 'Fatikho Kautsar', '3 RKS Nexus', '$2a$08$a3q88YxkMzJOwfIIu0pcgeL.D5NlazuQjfQkWEYPZUFChPuz377Qe', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101506', 'Febri Putra Sandhya Prawiranata', '3 RKS Ruby', '$2a$08$ENraMlsxm4KLmUTcAcbbl.J83PQlVDIpkwvVyuZP5ZXdSob45ogVG', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101507', 'Fiksal Ramadhan', '3 RKS Python', '$2a$08$wM110/2cIwKo4f4TfUKWPe6Lclg5ASIOvvyWhytoX8.AexKXcT4fS', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101508', 'Fitri Ramadhanti', '3 RPK Elektron', '$2a$08$0Ia0EmEHl3W3dtjlXyI7buUrtkA2FFfkyg3/g4Ub2wunhqeHn6glW', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101509', 'Guntur Satria Ajie', '3 RKS Nexus', '$2a$08$KFAxNHMxuci30ADVQbOhRenXYy.mHA7p2GcK37KAemZcXy9G5hZW6', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101510', 'Gusti Agung Ngurah Gde Kaba Teguh Darmawangsa', '3 RPLK', '$2a$08$Qnd5wnGwwaOmIIXAZ5ureOOz22nHExykMb08bQBUM9PGS5UwEHpUa', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101511', 'Hakiki Widya Ningrum', '3 RKS Ruby', '$2a$08$f7Zmtm.l/E286aOhunsVwetMGdeY6QgFd.kJGLLmhcVPQxjiPKhou', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101512', 'Hedian Alif Hedfannaja', '3 RPLK', '$2a$08$AHdVDkYN7tRlcSWmraZP0OeTxs.Cy0XG1ZWDC0tavlRDCUdUTcuiy', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101513', 'Hendy Aulia Rahman', '3 RKS Nexus', '$2a$08$jOLgtSOBtBhNSs5Aq4FuJulrexYaMWsq2Z.oQANa76DksddigKhWi', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101514', 'Hilya Tazkia Kamalia', '3 RPLK', '$2a$08$v/QjsFg8up6p7g5NOGA5mOUrHcSxAySs/vffMItxGBgyrfBMRMihS', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101515', 'I Gusti Putu Kanda Putra Yoga', '3 RKS Ruby', '$2a$08$bAuA6aKjaYc4Iuln9ljo0.Mfrsx939EUZ3h78RZ2LSNiTe72OZaui', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101516', 'I Made Wisnu Bakti Saputra', '3 RKS Python', '$2a$08$.aqgvuD/PUcduTiLJnVV4ezJSiSb0FdT.CLOWMYvby0iet6shW.Om', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101517', 'Ikhwanul Hakim Masri', '3 RSK', '$2a$08$kgjPsB9aHtYrys65R0rryumxvlirtZLYZmwhH.PlL9wnVXYFwsm8e', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101518', 'Ilham Jati Kusuma', '3 RSK', '$2a$08$PficxmoTJ73n1ZT/KQhTRe5bccqF7Lich0gRxnzP6zj/nxwmnLcsq', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101519', 'Johannes Simanjuntak', '3 RPK Elektron', '$2a$08$NItV7WxU/UAqNj4pUB0vQuf.zqSpf2SSK5cxleD9RaM6aIt5MAaby', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101520', 'Joko Nugroho Suryo Raharjo', '3 RPK Elektron', '$2a$08$1lYfVR8QRuOPbcA/IuCRNeCYRf2b9QdjO8o6XeYxdA/u1uEz21Tjq', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101521', 'Kadhana Darma Tatya', '3 RKS Python', '$2a$08$Ic4M0JvzSQzXoBpCJZytneNYhwRiDMC9l3gkP2nXTwl0k4QoxfJ9W', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101522', 'Kamila Amalia', '3 RSK', '$2a$08$IjmKTyoGhmZM/0aBdNhq7O5Y74SkHhisaXOrOovyDdDcp6Qd./JU.', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101523', 'Karina Puspa Listianing Ratri', '3 RKS Nexus', '$2a$08$IxIcBYcyJpIdeEZsSkXSFecX4lKSWCRYTs79d/2VBhntTMw1S2L/i', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101524', 'Kevin Yehezkiel Gurning', '3 RKS Nexus', '$2a$08$D0CT9RTLVUyc/93mn12oxOOIqs7dJlV9WS8VU1SoC42SmTu0guYLa', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101525', 'Lazuardi Aulia Fahrensa', '3 RSK', '$2a$08$cCbfFed9jLusmnOQRT1FPOJpEhKhMYl0Wg.bptj/H9MDhzTyuMgbu', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101526', 'Marcella Risky Avianti', '3 RKS Nexus', '$2a$08$3IicbFft3YUNA5aiHSlJrOAKESZADlBnKL7YRZdmd3gcHFB7w531G', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101527', 'Marwah Nur Azizah', '3 RSK', '$2a$08$0gDQLOvsCa930WIr/AcDkua//as//CymGRAgqbujszmx9xe5XA6jq', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101528', 'Mega Rosita', '3 RKS Python', '$2a$08$qCShiNGFW2565zcg8VBltOWS0MKW5hKr01cJ2/BDzLprbvKCEezXS', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101529', 'Meidy Fenti Salsabila', '3 RPK Elektron', '$2a$08$llinBm7JMeqXLqK.kuhJG.pOby9.PLHkf5wbnMbtZUGj74hmZ6bFW', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101530', 'Meme Indriana Putri', '3 RPK Elektron', '$2a$08$i2.EwPUD4/88.4h6pi9T3O3xwOjyiwE.Fn7omLO/BLvCH8Ybu7zja', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101531', 'Moh. Faishal', '3 RKS Nexus', '$2a$08$XPLiXxkqxVqo235y/tKWlOOFCEmPw0vzI0d3nsiJMya9hXvTENwwK', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101532', 'Mohamad Rizal Fitrian', '3 RPK Elektron', '$2a$08$QrHVBNuUvPkRvy.NdON4Su0go9pykg4AIxibiZOw3P333wXwBtck.', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101533', 'Monica Christy Natalia', '3 RKS Python', '$2a$08$6.nepdoHpefVNuNLqsumIOi7oJ3XwmRXTMln1334EW8Mqi4mM2ECq', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101534', 'Muh.Amirul Faruq', '3 RKS Python', '$2a$08$RphNaykfvTSAM.agE2p0/OgKLJ.eFT1nqxRO.8.CCIBBao1.yOQsu', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101535', 'Muhammad Dandi Pradana', '3 RSK', '$2a$08$cpUJMytfCFdfKE7bobZ4Lu9XxK.hL93lP0DZ9hAfHf6lqV1Oosn.y', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101536', 'Muhammad Faiz Syukron', '3 RKS Nexus', '$2a$08$n.VcN4zsBtYn.bUrDMMxtuT.ah23HzrJsLBMRPaTx.xakbrNs.WtK', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101537', 'Muhammad Surya', '3 RKS Ruby', '$2a$08$WEk2yfZoS6U6l/79EAnlp.dUxDM9/dnIkv7/X7hk451mTPwO/1M5u', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101539', 'Nafiz Feizal Mahendra', '3 RKS Python', '$2a$08$s5eeK.8jiaEA.pqkUF5mde8sFRNp6jpxMnM0It5yKODXxN3bbXdqy', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101540', 'Ni Putu Tarisa Purnama Putri', '3 RKS Ruby', '$2a$08$9GRzzRT0mrgkpjk/dBf9Y.8Lg/vB8z2rNb4VcwBm4FpTGcl4G3AC.', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101541', 'Nindi Anansari', '3 RSK', '$2a$08$sqRjws6EgdTpHZWjbelM.e0pyjSiY6lppFRwzzDWH2Aqxbw2/qBuy', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101542', 'Nonie Krisnaningtyas', '3 RKS Ruby', '$2a$08$JsxJXcXpi1AVaSQnpnrcFuKS88pgZOH.9Pqw6HlFkoUddQGwz2upa', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101543', 'Nurul Amalia Rendreana', '3 RKS Nexus', '$2a$08$DHctwqDtJl48ZXEaRtsvg.T9CUB1rQBJFZ6GtQ4BhNMGL6kiE55im', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101544', 'Olga Geby Nabila', '3 RPLK', '$2a$08$M31vM1BPcmCF4NZ.LVA3yuJ4SZLlmaLEjdWJWRjpH7AID21lo270e', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101545', 'Pratama Aji Prisadi', '3 RKS Ruby', '$2a$08$RqK836nvNa4ATRnA.qVN4O7FRxSDvuDMVHNV.WNNweaul9nk5czpq', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101546', 'Pratiwi Armita', '3 RKS Nexus', '$2a$08$BSRl8bummTN7PzW4B9lFMOt6EVwANmqpJ.pGsv1mX2d0xdo93BVyi', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101547', 'Putri Azizah Restu Bumi', '3 RKS Nexus', '$2a$08$vUxkeatx66Z9QRgz1eJaTet1V0Sz.LO/md7R74j7HQRmV3lWrWt8a', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101548', 'Putri Rusdwi Kusuma Astuti', '3 RKS Nexus', '$2a$08$x93Qs5Z/Z9Im1eY4FskqWuBrFuFiWaxfRg22mDDOwrJfuIjzYQngS', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101549', 'Rico Rinando', '3 RKS Python', '$2a$08$Uk3EdYQv5gqcIJTyhPb6PuMWQTiR5pbVNcGFvs/4hAg6VGbmwazYW', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101550', 'Ridwan Tri Cahyo Utomo', '3 RKS Ruby', '$2a$08$DFbbeWWL8s8Ba.r2s/rVfux6gVn/PuIp1hWT.Z6QfgawcoI8r0VCi', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101551', 'Roihan Akbar', '3 RPK Elektron', '$2a$08$ZN9b7UCyDk9MRcS3t2CLYePtmVknZskIx/N6Sbtbm6PKDMWw6mHF.', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101552', 'Rossy Artanti Zulaiekha', '3 RKS Python', '$2a$08$084/d6S7qikYwB4KkVOc5.fV0p5JgU/WcZ0xfFEk8vERWBvS2o4KG', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101553', 'Sabela Trisiana Oktavia', '3 RKS Python', '$2a$08$ONHtk5bK0YSBm4WPxBIWxOEwMeBW3lxyHOapjRkz8BuH/mOfEeoP6', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101554', 'Salsa Sabila Baladina', '3 RSK', '$2a$08$jhUOF5fxnueaB9BPYddnG.u7sB5DPVKtYv4Ht2ZFD/1oyrWI5U0im', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101555', 'Salsabila Hadida Difanda', '3 RSK', '$2a$08$1WIs0h1Pr9NjwwVbZYoPCO/koaP6.NQgUCuPsQANxRH/oPjcKpiE6', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101556', 'Shakira Putri Ayunda', '3 RPLK', '$2a$08$PvERJAPrdPAuZ0OqfIbd8.cZDtdXE94LG0rNTJTA7nBbO.lc4OuWe', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101557', 'Shalihati Mutiara Rejki', '3 RPK Elektron', '$2a$08$XoL3ys78NsYnihkbjRqWs.PssXDznmM3OLfOv4J/4jSdZ6nJzvHdG', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101559', 'Syafira Mardhiyah', '3 RSK', '$2a$08$Ipc2Hwq6659oFz5sqNpfiedxct3yHyjvkBxTmxdMComoolBh3bBGi', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101560', 'Tsania Nur Hanifah', '3 RKS Python', '$2a$08$RqP.9VEbn45fpRyupv8e/OmbElAw2FQgnCW5/XWsXBLxJ/N1Wq.jG', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101561', 'Vandzani Farhan', '3 RKS Nexus', '$2a$08$qERNmeFwOUVyG8HcrVgnr.grCcbM2dT1TnBDHhtljsf5cYfr2T63K', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101562', 'Verent Regita Mapareza', '3 RSK', '$2a$08$IzL9W8tO6KKK5Z1QRMsAcuaW0OjlZMQ6oVZ0a6jDrTtFZWlAyShE.', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101563', 'Wanodya Estithama', '3 RKS Nexus', '$2a$08$clEqLhjD3HflG6Auh0rnBO/ISFht7MZihwIq8.znSNu1JGwgollDy', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101564', 'William Barkem', '3 RKS Python', '$2a$08$I2aT/ijcK1N1fum9kzLMZuSuWGSdQf.Sl8kZGgALgYrP4sWU/4pJi', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101565', 'Yehezikha Beatrix Natasya Ully', '3 RPLK', '$2a$08$Oj4d4M.b1G..T/0vEsJCWuI7zgpZk2s6dpOis68WVBt9nLgin5.V.', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101566', 'Yogi Ibnu Prasetya', '3 RPLK', '$2a$08$jh7KccPJ0ydpZLBjnxJaG.80LFlC8FEoP5fEGQB08hyneL1n5wdLC', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('1918101567', 'Yulyanti Hendriani', '3 RKS Ruby', '$2a$08$ezrFaZ8BRw1J4.WHFUWJXOUWUInigANftyIoyIbNhKJltQZ9GQYDe', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101568', 'Aditya Hari Kurnia Putra', '2 RKS Red', '$2a$08$5GSzc13Jhx1WqkFby2d4AOyxZn6torBOyDOsSDuVUX33pLZeNrZLW', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101569', 'Aditya Sukhoi Lean Sumule', '2 RKS Blue', '$2a$08$Yd8yNifYkSKCmzyOaXIYeeyUASEY/cEns8xgYFFDqTvZk.0zO9lmC', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101570', 'Afrizal Ajuj Mudzakkar ', '2 RKS Blue', '$2a$08$N//Eg/Qc5spTUqE6t3w6w.UFOMumljunhGzdwZj7Zky6eqPm9q4bS', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101571', 'Ahmad Pardan Mahpudin', '2 RKS Blue', '$2a$08$P5hxWwXv9vz9pUPp5GmSLOyPPSosqDGtxnDn5nKIQ1MOabZ.5b0Ue', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101572', 'Ahmad Zainudin Mahfud', '2 RKS Red', '$2a$08$1LenIEdw9RLEFPxKOIx4gOpkHnEDdBQF3PBgxtR5njZbxLF4rkU4a', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101573', 'Alfian Putra Rakhmadani', '2 RPK ', '$2a$08$TmScTZ5HS8OCW7byXNVyqOQxhCYZtMgFy6oNcVR8tUpW77qsRLzWy', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101574', 'Alfido Osdie', '2 RKS Blue', '$2a$08$FFIe88JUt8i.HFa292djNeDzcbkF7Ze/c5HqMjGaFvoyau.QTK71K', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101575', 'Almalika Setya Widyanti', '2 RSK', '$2a$08$70WzVYjI3VJ4t5XfeUtOYONWA4HlN8/Cat1dEjBIwYZXHIjf2ik3u', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101576', 'Andre Irawan', '2 RSK', '$2a$08$9wgvajeziotgT6UdOXxDZuN3Q2uJgRKgwOnYl6P/s.aG8xkUjgBx.', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101577', 'Angelita Salsabila Afifah', '2 RPLK', '$2a$08$M3xRCW04LVqISmNwaUrpbebEvT2dUYPpMLvzoxrq4ZKG8zLfbvtTq', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101578', 'Anita Rizkiana Handiko', '2 RPK ', '$2a$08$rYx6nZRGPwBwfn8RiMHCfeWG2gh7Ed4W6Qf55zRkqjrcZbmhIlSGS', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101579', 'Arga Yuda Prasetya', '2 RKS Red', '$2a$08$xeGfje0iC70.ac4cortcnOCC0n2HHRKj8MZkqehYvzQCsQjVGiQnS', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101580', 'Ariska Allamanda', '2 RPK ', '$2a$08$58NmD/lNoxM3BYbKmK5QnuKDqj1uKBXijQGGLwUZGgAY9kNDH9Ir6', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101581', 'As\'Ad El Hafidy', '2 RKS Blue', '$2a$08$LdnagZgpXBOrTBa3g30rLeKKsp9xyN80kygV6pBmQY647TcvwU1nu', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101582', 'Aura Nirmala Puspabuana', '2 RKS Blue', '$2a$08$VYZuhavySGfj9RaVTooTgOpQHNrRsWgA8NLYoEqW6lNgGIH7jAwY2', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101583', 'Bagas Kurnadi', '2 RKS Red', '$2a$08$1SOPMKq.RihchfMuSHGPrebtJITfSZW6oZm6skY3b1b0loS3.r8/y', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101584', 'Bella Wulandari Hartejo', '2 RPK ', '$2a$08$y9UyXufRFZo0atUen81No.SBekxdwHRSCDhziSPTw38xIPrSlM2Qu', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101585', 'Brian Nasywa Rayhan', '2 RPK ', '$2a$08$aeAw0/z36S.wbFwOB8ExgeGQJF32w7lPyuY9qpCYaar2ZrquR9uR6', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101586', 'Danang Enggar Risyaf Alam', '2 RPK ', '$2a$08$4uqo0mo3Ud48O2olCjIhUObIrmZ7nsioCx1/5/V0gUiXZ/BglTN2q', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101587', 'David Relikson', '2 RKS Blue', '$2a$08$sJA2yWRdVWYYVDetyukv7uDGEaKe6XAsDS3hoMkirWNY5jmMKaU5K', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101588', 'Dawwas Arya Bahytsani', '2 RKS Blue', '$2a$08$Sa/Ghh8FVs0SraCXDJ8VfedN2gQjMaTl89sgQ5Tdky9mpNaRCPz3e', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101589', 'Dessy Ariami', '2 RKS Red', '$2a$08$es85A5v8pjWqncMjPlqgium/Cr2lqtAaPGbKyQk4.oHR23bCh63nW', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101590', 'Dika Agustian Akbar', '2 RSK', '$2a$08$J9BRamHlqE2ns8S/Zo5PH.oqDBcA9O59KjX8g6Kk4RqIiZCm8l3/u', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101591', 'Dimas Wahyu Utomo', '2 RKS Red', '$2a$08$5jIk2ofzxvQ1afu0tO0URuoH6BTvluos2wjhan377pXnQxXblLA5i', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101592', 'Dzakwan Al Dzaky Bewasana', '2 RKS Red', '$2a$08$Oqi.eXLhmX4fsf9SZroTs.PhWbIA1PYaehMnWmuBGXb2UfuSWtYJu', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101593', 'Efifania Sibagariang', '2 RPLK', '$2a$08$BI2PbilEzv2ha3SR4jtyFeu2VBBkF10PV0I7SjQxhbhm7MEG4ppAO', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101594', 'Erfandra Ramadhan Susanto', '2 RPK ', '$2a$08$UFdXyzaqUyAyh/jQ0ej5OOfo2nbG4ceezuE6m7EmeLMBCNhEa6aTW', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101595', 'Erza Adira Mahatir Muhammad', '2 RSK', '$2a$08$2k6tPkyvAtdTdJXrwPG9WeVvNRIiIHZLMm4CL1EeM1XDxusjHjx5q', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101596', 'Fachrul Ali Nurfadillah', '2 RKS Red', '$2a$08$rq/I5WNkqgouxAxaDE/RvOSgHtHALCU5UUbEqx95Fol3VlfCDa7ky', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101597', 'Fadel Azzahra', '2 RPLK', '$2a$08$cfA5ROkcv.yVPaML9t6R6.NVM1riqlYwoqVNCcoC.hR4kr.wl.bCm', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101598', 'Faizal Gani Setyawan', '2 RPLK', '$2a$08$jPhxNfQl1/gMTeizPWvxqeoNIN6pOL4CUI4sWalbXTRjHNy0AecB6', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101599', 'Falinsa Salsabila Yursa', '2 RKS Blue', '$2a$08$IKNa4zR04fibV6A0.stsq.Dc4W.xZdSf/zrK75jKoBCdaCG9pYWE2', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101600', 'Faqih Rangga Wijaya', '2 RPK ', '$2a$08$E9/OyVVD3NkcpVQ/IywiWO7bZac5tk.jY1YzVd5WHMF9IfwnTeUsS', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101601', 'Febrizky Dwi Restu Rini', '2 RKS Blue', '$2a$08$rUEVG3bYsAK4/lYs8w3X7u6.wF..G6sF46iB44LVbchp1AuBuvujK', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101602', 'Fikra Amalia Raihana', '2 RPLK', '$2a$08$IiT66PDGa/drgvPOn4wkJOaMzzjhcqzRbBfbyQWyi7CO3gC9e5z2S', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101603', 'Galang Mardani', '2 RSK', '$2a$08$tLGpAuXbkc5phr5CCP2/0.pK32uIOBB1nbDLC4DpXrkz022mtmCy6', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101604', 'Grace Friscilla Margaretha Karo Karo', '2 RKS Red', '$2a$08$W3iUgo.OQcbVM0pieMUke.mvhK0ViJTxoDP/N1i61SPH2kPdCmQ2i', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101605', 'Gustito Panatagama', '2 RPK ', '$2a$08$byC1m7uagv2QTFrwtwEBGOojHiyB8uyEZKGpTuixnAQBFtun5VXki', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101606', 'Habib Alfitrah S', '2 RPK ', '$2a$08$dmCYLZ2gvdrf4IC7.ieFoOfkP8ifPQ.yyAKpR1.qQ9CrW2kh8GECm', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101607', 'Happy Sandhiyadini Rosari', '2 RPLK', '$2a$08$qWWicY0LWfoRXrBoJfycxO/ONp5Sm4FqGShnagK2j2/rjNy1LiicC', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101608', 'Herisa Pratama Nur Baeti', '2 RPLK', '$2a$08$BX/3rbmo5fLNai24ObNmdu8xDzwZ/W1PeOAD0IxLXp4wNur9AVO.O', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101609', 'Herlambang Rafli Wicaksono', '2 RPLK', '$2a$08$zkst/c8c0fKP/l25XCsbaOeg0oG6LdAbZ3IrAFCkL2p6LNarLaT3S', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101610', 'I Gede Gilang Dharma Suputra', '2 RKS Red', '$2a$08$bP1Y6q2RVlD/4hcqBc74BOdLgjTEejlEf8gKB7LVuzKCOr3PtyOum', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101611', 'Ihsan Fadli Tampati', '2 RPLK', '$2a$08$CBB3iKUcOsQYqc3uKhlDbujTTakkLJm6aUgnu2W/e7XBtLB02sKO2', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101612', 'Ilham Dwi Harjanto', '2 RKS Red', '$2a$08$Thlk7pDROrGKgXVRa3Lfu.acwZSTh1EQkRaKRp5NF3fbN5zLCrVpa', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101613', 'Irman Yunal Wirdani ', '2 RKS Red', '$2a$08$n.qiTlM.iFmtJ7SjyCPb8.OlpqCfMj50lAOL1rtF7Dle9.6GQaQay', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101614', 'Khirsa Inayatul Aini', '2 RKS Red', '$2a$08$pnHLzCW9PoLBBVH8HTrSJOwp6wfzlXEqTuM4WlFziRRj1DU8rrcLu', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101615', 'Khoerina Sa\'Adah', '2 RKS Red', '$2a$08$VgULohxysj4cYVXpp9cN1.6JFxQUIWcyAg4P7EiYqMtUrM.mrtuHa', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101616', 'Laila Nur Khofifah', '2 RSK', '$2a$08$0xOkjFbXXmP7bmfF5WOeF.OsgPBulQ/X01cdfgKzHYdoZgUnYNxYe', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101617', 'Lintang Listyowati', '2 RPK ', '$2a$08$X5ooBcY7NZtuWw2mMHguauuNY0RXdG/BtTN2uaVKh323jm4N1ZTGK', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101618', 'Luthfi Hakim Panuntun', '2 RSK', '$2a$08$H/hLMxLVAl3H.3BAH.8F2.Ugwe2FKTnYYsQTNEWvo0yjbnA1Arziy', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101619', 'M. Firdaus Yusuf', '2 RKS Red', '$2a$08$wjG/H726dkG/hfkzeIo8j.DMIq.UFxggMM3g2WEFtZaVflVVHdHcq', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101620', 'M. Ikhsan Mubarok', '2 RSK', '$2a$08$goMmKOcqKU4D1/K.NuPEt.Cgiuc0/LcovL3HEBMSFtN549GCLqeo2', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101621', 'M. Luthfan Putra Sopian', '2 RKS Blue', '$2a$08$9w3Ye8OMcmctdETv/LIdYuJC8h0dvSBoY4ZqXqMhj2sfsdIA3ZAhW', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101622', 'Madany Awang Bintara', '2 RPLK', '$2a$08$iW2IOppTCRJ.PgxR2P66LuiQKaVwfH77NXS8hTmavIRGvSTcs6dXO', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101623', 'Mahaputra Giovani Muhammad', '2 RKS Blue', '$2a$08$4wJabfx50.cdYP8tOjInr.ctVu2bAe7Ujt/aOJspxlUndV6hI/XIW', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101624', 'Malika Ayunasari', '2 RPK ', '$2a$08$YMpDd.PMCkMfveLo2RO9veGw6LB/035vCXCeUPjqW/FUa/dNfgLYy', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101625', 'Mazaya Vanisa Putri ', '2 RSK', '$2a$08$smE4YjnLr4BPNWXJ9WmVLe8.mtodOnI5PBuQGy0gOEGCTecVodgHO', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101626', 'Melanisa Nur Harin Prandya', '2 RSK', '$2a$08$wGPFNN7WO61TFawfjNJHVeo2KThp.1P0JNoN0mVRglZxBk6ZM8hBu', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101627', 'Mirza Uliartha Simanjuntak', '2 RPLK', '$2a$08$ZcAC58QshCz.74c3gDCgJ.DPPIvhvd6QoamlfN9/TIu0i6Y.erYvC', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101628', 'Mohammad Raffli Firmansyah', '2 RKS Blue', '$2a$08$MKZ.kJ.yYpMmFn.boJM7guRzGkDAfE18N.kLAYMX2rU//Vyj1Yo1G', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101629', 'Muhamad Nadhif Zulfikar', '2 RPK ', '$2a$08$zpUu8RuKJhRlJlYUeWWYSOnfqzrXEFA/eUYnmV21wcsv/4QmovLDK', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101630', 'Muhamad Tegar Sabila ', '2 RKS Red', '$2a$08$BD1Od5IfKaQbMWuEMSnAUeVHt43AYP.EOa//c0d2NF8sl05eeyWAW', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101631', 'Muhammad Faturrohman Sugiyarto', '2 RPLK', '$2a$08$EW..ovz.JiqDdH3PiSWO9ul7qgbv9KgoB6BK7jkSOfdmbuCCCBsHq', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101632', 'Muhammad Habibi Motaain Nirbaya', '2 RKS Red', '$2a$08$Rrx/kbLhZg0ouHG1Om4Z7u6VR0IQugzEGd4lmmQScgV5T9Y5NNJUO', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101633', 'Muhammad Haidar Wijaya', '2 RSK', '$2a$08$d12yC/YxPHFDYUjJEQH6B.GbsOv3UWqo5P3Iu4E9of7A3iHZfcNmW', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101634', 'Muhammad Hilal', '2 RKS Red', '$2a$08$gF0j7BM6pBRdDwpWZXbhrOOlEadaTGaRfhJReshmnVrxwWUKtASIa', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101636', 'Muhammad Rahdian Ega Kurnia', '2 RKS Blue', '$2a$08$NYfhFDV9QGhzLbofAK2PzuMa2e3dGW.eUyuy4GkbS4cte8toM0Vla', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101637', 'Muhammad Sofyan Arif Harumnanda', '2 RKS Red', '$2a$08$ysmXxDdRXf4c4vKKqQPO9OoeKlyuzAal0BaL2Bu607l2xchej1kvK', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101638', 'Muhammad Syaibani Al Hakim', '2 RPLK', '$2a$08$UpyAc8FPIi2ww9AWEUU8U.mNrrGak3e5PaEMh.tFYeMNOoSjGKyaS', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101639', 'Mukti Wibowo', '2 RKS Blue', '$2a$08$/.2JVW1nVvF1JPOye8pqAOp6D2y7ZBLEEuKqDdxSxIXWAf9/nSI4.', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101640', 'Nabilah Nawang Amaranggani', '2 RSK', '$2a$08$.o4FFJdbJwGLzXhgrS2Cq.bmBgZDsDQtPu5Sf3uCvLGnig.MA9xDC', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101641', 'Nathanael Berliano Novanka Putra', '2 RPLK', '$2a$08$NGtanNEjrO3V7S.bt.WGZeN69Ftu/hfKe8TNhTM1NQ9JN2zoe36Um', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101642', 'Nila Ardhya Lintang Pramesty ', '2 RSK', '$2a$08$zjQ4RskNwhFLXp9mh7o5Pu8f05a2l9mdToLyd1SNKg29sfGcOLtiq', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101643', 'Nugroho Adi Wibowo', '2 RKS Red', '$2a$08$7PwujYcw8QAxfuvTnwKZ8ur0zRTN7uknPS.9z8rjftsrL71A6xJKC', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101644', 'Nurfarida Sekar Andzani', '2 RPLK', '$2a$08$/4T3kP4PqCtCFvH0Gp2VLezk5Z4Qs6ZMV5NsFnefjHXShRO04lAXe', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101645', 'Patar Wiyardhana Marbun', '2 RPK ', '$2a$08$ET6CiT1sv0DCyNzp88wKHeOjvA7qJBmmqucx1srJuQxFlzG6Bu0wK', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101646', 'R.M. Genggam Satoe Bintang', '2 RKS Blue', '$2a$08$lknmBIdw5Mn3OS9YyykLlOrNw2CIK.0G0F0yUjW0n1C3fp0EfeoHa', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101647', 'Rakha Wilis', '2 RKS Blue', '$2a$08$6qnfWLPxjO5swXMDuCGMwu0x8zzCvPSqnuOniR5UJG7UmBD80eUi2', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101648', 'Rayhan Ramdhany Hanaputra', '2 RPLK', '$2a$08$tLZOtDi16YEcc3zup3eD9.ChMOA5HIEGgvHELSi1u9DqmDbQO8uhm', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101649', 'Rey Maulana Faridh', '2 RKS Blue', '$2a$08$AhPqgHG28RrKWZLTIo3egOjM1Pit0MVSkU19Gfr/RPXr3N/XXJGI2', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101650', 'Reza Aulia Wildana', '2 RKS Blue', '$2a$08$4OEfUM6kxGlSA05wgzadR.liuRzTzOxskmzI39bFPxkgN4YMGjtmi', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101651', 'Rezar Surya Efendi', '2 RKS Blue', '$2a$08$3iaU6ihEgygbafs79NRGduPNE5R8vBDQj8a31z8Bk0rNGbPS2Om72', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101652', 'Robet Edi Prasetyo', '2 RPK ', '$2a$08$jPcmcIEJGo63FFPzVvbLyu2rlAarWSVUycG.QQT.dIwYILwyjj4X.', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101653', 'Rudolf Paris Parlindungan Sihombing', '2 RPLK', '$2a$08$ntzoSoXlyo3yGZtinsYgxOWu/W4z.u0jDJkheD8OnYIwlMakuLBy.', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101654', 'Ryan Muhammad Azizulfiqar Kamajaya', '2 RKS Blue', '$2a$08$ig.TC08NacId1ohWFy8LJOCmmviNsKA0at1xI4No00RqdgW8Gg4de', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101655', 'Saca Ilmare Dinbiru', '2 RKS Red', '$2a$08$1Vsh1EmWjHgTCMVHe2sz0uv4F9aEBycjUz73uRl0pO.6j1tOO0SEW', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101656', 'Saddam Hidayatulloh', '2 RPK ', '$2a$08$oZg6nnotPNDvnJtNuK3JpONA9tj8ctr/fwAeDRJrIYr131R40hoP.', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101657', 'Sandy Tri Kurnia', '2 RSK', '$2a$08$1hfXWXKKHfr7lztUsE1.Ou1QioMaGPu8rQEBe5VXFRjRl06VA.aoe', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101658', 'Siti Manayra Sabiya', '2 RPK ', '$2a$08$3peN/uQ.8GW2wWFkvan5f.xSIcRrhUGLoGq/sy7jLob0COFbWEyTm', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101659', 'Socrates Anugrah Mendrofa', '2 RSK', '$2a$08$wXkSUGvO3CtFm251NwZcZu758xk40YI6M78mA./TT3GHaVGl8twBK', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101660', 'Syafrizal Ananta Adhitya', '2 RSK', '$2a$08$nYeCfkbeMpE9gus7WBRvruJmKXWC/oqibW/VwXfB46pPuKCsWmwcW', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101661', 'Tsamara Khadijah Slim', '2 RSK', '$2a$08$EJ9ue2FV2V0u/Hn6Y3XrEO2YBe23lDvNBZij9tzKqFY7jEQ2Iqf0y', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101662', 'Willem Michael Albert Mondong', '2 RPLK', '$2a$08$fImNUHTG2Yb9fR9ZQKaRvepJb2TDu29k7pcsOd9qLiJrogag8D4TG', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101663', 'Wiyar Wilujengning Sejati', '2 RPLK', '$2a$08$Z7x1wbwoLJG.NucESYoKJedvl5eVEJb9tuSVZrwsl2Q5wtyKyKQGm', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101664', 'Yafi\' Athallah Yuwandana', '2 RSK', '$2a$08$T4JE8RqMTpEDcWSlRX4w4e0Hi3XlRsiuG/KIuoS6.rO.2n3vWShY.', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101665', 'Yasmin Putri Salma', '2 RPLK', '$2a$08$IaP8lvheBo34HFx4u6TwUuVHOIUOXOaywMlYGN7mx2VCCzVP/POAu', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101666', 'Yudhistira', '2 RKS Red', '$2a$08$BuySjEyLTY.GoUOuamC3/uGpoaBI/..MHth9oJ.qHA2VGr39DNSju', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL),
('2019101667', 'Zulma Mardiah', '2 RPLK', '$2a$08$7XVLM7hf0PQqc7FTqMuaQOppO/x0FX8tJbkGHez8J24mqzKZdj/2q', '2021-10-10 08:10:56', '2021-10-10 08:10:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `userNpm` varchar(255) NOT NULL,
  `roleId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`userNpm`, `roleId`) VALUES
('1817101465', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `commerce_records`
--
ALTER TABLE `commerce_records`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `npm` (`npm`);

--
-- Indexes for table `configs`
--
ALTER TABLE `configs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fasting_records`
--
ALTER TABLE `fasting_records`
  ADD PRIMARY KEY (`npm`),
  ADD UNIQUE KEY `npm` (`npm`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`npm`),
  ADD UNIQUE KEY `npm` (`npm`),
  ADD KEY `roomId` (`roomId`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`userNpm`,`roleId`),
  ADD KEY `roleId` (`roleId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `commerce_records`
--
ALTER TABLE `commerce_records`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `configs`
--
ALTER TABLE `configs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `commerce_records`
--
ALTER TABLE `commerce_records`
  ADD CONSTRAINT `commerce_records_ibfk_1` FOREIGN KEY (`npm`) REFERENCES `users` (`npm`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `fasting_records`
--
ALTER TABLE `fasting_records`
  ADD CONSTRAINT `fasting_records_ibfk_1` FOREIGN KEY (`npm`) REFERENCES `users` (`npm`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`roomId`) REFERENCES `rooms` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_ibfk_1` FOREIGN KEY (`userNpm`) REFERENCES `users` (`npm`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_roles_ibfk_2` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
