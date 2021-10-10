-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 10, 2021 at 07:55 AM
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
(1, 1, 'Sat, 09 Oct 2021', 1, 'Sat, 09 Oct 2021', '2021-10-10 05:51:54', '2021-10-10 05:51:54');

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
  `room` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`npm`, `fullname`, `class`, `password`, `room`, `createdAt`, `updatedAt`) VALUES
('1817101369', 'Achmad Husein Noor Faizi', '4 RKS Echo', '$2a$08$ePHm1/ua9mdcBczAXMDMP.vdSgtGyDsmzZHn/.wQGh3CrhUbkKFbC', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1817101370', 'Adam Waluyo', '4 RKS Echo', '$2a$08$MwvRHfmwvkxVz3N5Y8WOH.XBd.dS1nJnQHI040VwTTEb3YWMvStd.', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1817101371', 'Adenta Rubian Qiyas Syahwidi', '4 RKS Trace', '$2a$08$YuAeSulbKOvh9gs45LADsOt3EdGIRn6OO/TQLtxrYmM0kLPYBkLA2', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1817101372', 'Adit Candra Prayuda', '4 RKS Route', '$2a$08$goNhb/Br2b8o9zOErf8.k.asQi.2xoXwKvgZikbw84cliqaRK/hO6', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1817101373', 'Ageng Angelita Puti Anggini', '4 RKS Route', '$2a$08$adQuPKZW1URxWQxjSCU6b.EeN38I8r.cschp3DVngi8eXFhZAyDvu', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1817101374', 'Agung Maulana Putra', '4 RKS Trace', '$2a$08$ANSMBJxjyQKxhkyg7vJaCON0RLnlWpOvSQbAuZQQl9Ghrt0dgKbGm', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1817101375', 'Aidil Yusuf Priadi', '4 RKS Trace', '$2a$08$icQoi2Xd1lWKWoPxBYQNfedwN..JFlyhdudu9yQt6HJ13mXSOKIS2', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1817101376', 'Aji Agung Sedayu', '4 RSK', '$2a$08$bpwa.oak6xI4D0RwSTBVGuyn5oY1ytlqtR3EtB.uFSPau3mFEiu26', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1817101377', 'Alfian Adi Saputra', '4 RKS Route', '$2a$08$5yiFhjtO/Ep8hn03SkTvYOA0EJ1oyZobCaSsQrOnMzxGnQ.eg/Zju', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1817101378', 'Aljevon Yusuf Sulaiman', '4 RKS Trace', '$2a$08$h6a9TflyZ08wL36RayFZNuZzzV3XbelxzBapG8rYav1hFGdZSLIw.', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1817101379', 'Alya Aiman Salsabila Arif', '4 RPLK', '$2a$08$p3Fp18RxNksfh.gUlmyt/.2A4b6U0surqZXgAr7GtXR3O4qYuulmm', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1817101380', 'Amerta Bian Kretarta', '4 RPLK', '$2a$08$.vaaNwU52m59Y9vUbbR1fOmz1mpHg72MvoCmtJjDrbc1FRlGgUcPm', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1817101381', 'Andhika Sigit Juliyanto', '4 RKS Route', '$2a$08$8IVJT/CoI9l0nySoHTs/q.d9t7uPcP5obVKTPH6SWV30ygfmDCutm', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1817101382', 'Anjeli Lutfiani', '4 RSK', '$2a$08$9zmITv/3ds4CZ82r6d0.JetcdD6TIESKj7KV./cWuO5tBh1XVoyDK', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1817101383', 'Antonius Alfari', '4 RKS Echo', '$2a$08$Cm/dhbOkQtauM.W9G.njpuDC/Ev5DjYBUAh3jzABjkPJAAzqgbxXe', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1817101384', 'Aprizal Sahulecha Simanjuntak', '4 RPK Quantum', '$2a$08$pF5KzmN9cr4HPzeigcIShO/OhG9S7p4Pxu2prFh7CgK9Wdd5HYiYm', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1817101385', 'Arbain Nur Prasetyo', '4 RKS Trace', '$2a$08$uDPMblxP/T8YbwEC2zOk0ez268GVzuMDbjGgZsPz8VGfDSX1pjxli', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1817101386', 'Arni Yulia', '4 RSK', '$2a$08$kSFxCxCX3Exf0j5/zRBs8eRvggsdtOWm08aNdtUOuW8JCqlfEfdIi', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1817101387', 'Arsya Dyani Azzahra', '4 RSK', '$2a$08$qBFtQsl8.5OubZenZwnujulKV6CNU2nHTc1FtmQYRKfu5qnAA8z02', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1817101388', 'Asep Dadan Rifansyah', '4 RKS Route', '$2a$08$P6fP4MwCGILarycYqvpSx.TaKXJUCxyxdu6im5WUBGV3c2UAtQ0GO', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1817101389', 'Asyraffi Adnil Ma\'ali', '4 RKS Trace', '$2a$08$9m7/DG63PK2ArbljCvy5f.EGSGtQ0PWb2u8ln/vL/kyViBY4inRrK', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1817101390', 'Atika Nurliana', '4 RPLK', '$2a$08$BfTvjz3N5OJQDdjNLHfVge7i5ZgiXLIEMiz6qw9c92MbNN0D2bcXW', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1817101391', 'Balqis Tuffahati Permana', '4 RSK', '$2a$08$8GWHh6PJuCvUG1nwFp5lfO8HedxGF9JIVPFnpuMXoSW6gbZN/bMxi', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1817101392', 'Bernawan Ikhsan Syahputra', '4 RPK Quantum', '$2a$08$Udlyd3/8ym3VZ2CFYVOZ3ezt7L.IpL4AvinH60eM1d5qnCdgYxQAS', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1817101393', 'Bimo Setyo Husodo', '4 RKS Trace', '$2a$08$Glodjvo3LBpr5G8PTGin2eF2atLtVAlEYdO3xBtPl63bsdPZ2eRBi', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1817101394', 'Daffa Akbar Putra Yusa', '4 RKS Trace', '$2a$08$vN5h3d1gOKmxcH.qHtnQOutQ9vbq6CO28.8zOWAnLQsOigMDKO9Wm', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1817101395', 'Dendi Risman Saputra', '4 RKS Echo', '$2a$08$BP8xuymgbE1izBHSzOCoqeNFLGDztr5tNCGecAA7Hh7x34pOPtZeO', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1817101396', 'Dewi Kartika Prasasti', '4 RSK', '$2a$08$ep1LM7xyVNMznZn4//Ag1ueZ6CLFKvCrUGU8F4fSIiMLukW4hh56e', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1817101397', 'Dhea Septi Kurnia Dati', '4 RSK', '$2a$08$mDOe5Py1seHW4Osx0iarGeL7y/96r4l1duisDDcf12yf2Dv0xjRAK', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1817101399', 'Dikka Aditya Satria Wibawa', '4 RPLK', '$2a$08$p9xS5YcbDNn2K4HXPSBwte2AeBeb4VTxG3PGmcSQLumVOXlTx4s9C', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1817101400', 'Donny Irwansyah', '4 RPLK', '$2a$08$Sql/rwRFKuORLKHt.PglweAUyCculvWexrPXWILQXCf3dSwvTg7a.', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1817101401', 'Ega Bagus Wibowo', '4 RKS Route', '$2a$08$OI/YPCXTreHy82vuOzyBXOCtVPElcmHqe1A/Q5z8IvS.oPTsC.aTC', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1817101402', 'Emmanuelle Sibarani', '4 RSK', '$2a$08$NEScGrpVqXvWwI0411cLMeZdbfUvAQNHoVQwqj14JZgdf8laE5sDK', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1817101403', 'Fadhil Raditya', '4 RKS Route', '$2a$08$RR6lz84tZ0qNQTIriZup5u9hydIgZz3L2D8Ko0If7853IfQi9g2Ni', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1817101404', 'Fahdel Achmad Purnama Putra', '4 RKS Echo', '$2a$08$Nx4su9z50g5mkStRpXRGY.crzR4XaTvXb7.yUo6j8h5OS8xGQ7rk2', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1817101405', 'Fahma Dieny Sumardi', '4 RSK', '$2a$08$HVR6injhOSzmmFf3.nE5Mef8w1WChaoLiwiugWMhZGfz2uQ5NXcRa', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1817101406', 'Farid Akram', '4 RKS Trace', '$2a$08$K2e/h9hHaiDFA0Qdd.dpn.x055JZzBrDC/5NPyKAl/V9A8vHnTW7y', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1817101407', 'Farras Ahmad Naufal', '4 RPLK', '$2a$08$6H9UZbQxKc5KPu1gVfWzFOVl3X4.5eC9RnxoZuKsUGyuH6KMT.gCq', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1817101408', 'Fela Nadya Sari', '4 RKS Echo', '$2a$08$iQdlUQKnAeIoUK6OncAdIeVEPsQD4P.3TdtsEuK1Hi/VodNb1LjCq', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1817101409', 'Fendy Heryanto', '4 RSK', '$2a$08$olWSkOIdsEPZPV7DgMnhwuaErKlj5nY1tcd6aDEhQ9ox8tCbEMxje', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1817101410', 'Fika Dwi Rahmawati', '4 RPLK', '$2a$08$pApShDKOPqgLMsqzcxRFn.sgYgME28mhl9g07vgXeORUXqi2KSKE.', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1817101411', 'Fitra Hutomo', '4 RPK Quantum', '$2a$08$mRa717jiUIFBod1GJLpU4O3ur69NSNRMymJ9IQtud5VVAd/No3K82', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1817101412', 'Galang Putra Nusantara', '4 RKS Echo', '$2a$08$mep3dGfmIfqVPufGgQaix.fYjk64bRFSrlKpSq0YL6oLGhTMrb9CW', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1817101413', 'Ghiffari Adhe Permana', '4 RKS Echo', '$2a$08$5w8L0dlbySKUerMWQB0K5uJmqi4Hfak0HJA20.Kpru.vAzDqXeg32', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1817101414', 'Hafizh Ghozie Afiansyah', '4 RKS Trace', '$2a$08$TQ3r/kcfGo1QxALx6Rl5Oui0/VbDiifaYKcXQJegeH/2DzI080avm', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1817101415', 'Handhika Yanuar Pratama', '4 RKS Trace', '$2a$08$I/UY21zuSEiToo27UKNIGekp3b7PHXS4mVMIN2WASXKi7S8zWJzai', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1817101416', 'Hanifah Salsabila', '4 RKS Route', '$2a$08$JYbRfqTDo/lqaYFSQzp7UexZhBnH2CEWSMvsOhOwQD7tnRd.sBBKe', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1817101417', 'Hernowo Adi Nugroho', '4 RKS Trace', '$2a$08$vQhiem31/u2TRWFdxmvxLOzz5ZZjtxO7SCTAni9EzeOkY5hBITE5e', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1817101418', 'I Wayan Ari Marjaya', '4 RKS Echo', '$2a$08$HEjDbUffFSTyQnwC6GRyK.hOKYKiCR2JRW8JU73lknFVyVC2osY.y', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1817101420', 'Kamila Rizqina', '4 RKS Trace', '$2a$08$aNd0aqBR8QJ9l/dFZVplZ.D8JdVpGllB23a7AMPuG3oQn.gxlXGyO', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1817101421', 'Khaerunnisa', '4 RPK Quantum', '$2a$08$4AtJTOOtMoti6NGCqurp2uUE1DY4bMHPgmFiXQ9a1pE7lJEbSAxbi', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1817101422', 'Kirana Larasati Dewi', '4 RKS Echo', '$2a$08$RrMOp23d0Jm8s8WM1kOtpuxFYBkR42oL5iKSVBX5EdOQKeQvnUblu', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1817101423', 'Latisha Safa Salsabilla Kirana', '4 RKS Echo', '$2a$08$zqfHEU2Qa.U0Rc.1uubopOOxPp9QYFE5naqUGBp4iDz5WwLIRbmzy', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1817101424', 'Lisa Saputri', '4 RKS Echo', '$2a$08$uujpbIlPhsla1rspSpc8uu.8SaB9KTPOKqppnYpEzxrfw8fwmDSmC', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1817101425', 'M Jaya Hadi Kusuma', '4 RPK Quantum', '$2a$08$im5KhneQaYbeG4bLSRFESO0g25ud0k1xRCZMC7FTxM0aMyMWCn8T6', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1817101427', 'Mahar Surya Malacca', '4 RKS Echo', '$2a$08$wpPVjFtVIt2ySVN/EznuqOr4ZMrOjUGOTZo1PoEHBw8hhhZd7C4He', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1817101428', 'Maulana Ihsan', '4 RSK', '$2a$08$Pv95L1VvDVzpnAmqRIDXE.JchwYUv9oUhlWsG6ZTfqpxp/BXeada.', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1817101429', 'Melandy Andriawan', '4 RKS Trace', '$2a$08$hIJWCoqNLccsyoWrtpzf7.MNet.mDr.ag1KaqOrqtRy2Ybd9aJnVO', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1817101430', 'Meta Mutia Permata Sari', '4 RSK', '$2a$08$aaq0WhplsqLnDnmEoINNzuKj4wQNSZkC4AGxfHjpQEsTxORXnOMWi', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1817101431', 'Muhamad Qolby Fawzan', '4 RPLK', '$2a$08$XGUktgvz.QBS/MNKKxM0QOKyYJ6eKd3.tETalG0XFsmUCNviA7UTS', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1817101432', 'Muhamad Saleh', '4 RKS Echo', '$2a$08$VO4mID8wW5q.FJpSIDsk0.5yT51Lx8tdCRWL.ieD.XOLLHuc/4pYO', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1817101434', 'Muhammad Fadilah Akbar Al Rosyid', '4 RKS Route', '$2a$08$Yby/wa/HTP/WyIe7hCvrR.HLLub/O8sB2WzVLzKklkYhUfuOQiMi6', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1817101435', 'Muhammad Fahmi Ramadhani', '4 RPK Quantum', '$2a$08$mr6Lq4bpHO4WUaYOnoZxmujE/GaKMoc9tf631aiJvsJ94Z1umBKAW', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1817101436', 'Muhammad Hadi', '4 RPLK', '$2a$08$bcszQT.e3ByNAn/Tp0TCfuBB0b0d0XsnvY.SiTuyM8sN4agY5EOs2', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1817101437', 'Muhammad Hilmi Amanullah', '4 RKS Echo', '$2a$08$xoa0H.D8z73zxW3GCSJUK.8xqAzrDGSpKFD5dMpTBcozyQypC2UXe', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1817101438', 'Muhammad Irfan Cahyanto', '4 RPLK', '$2a$08$OwSWHK7gYtBcAqD8826GgeHnXMP/LMm0oU1fafMYVWKWTHqZCL6f2', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1817101439', 'Muhammad Luthfi Rizki Chusam', '4 RKS Echo', '$2a$08$vHfcVF8cegClOqx3WgIsfOX6pQE69DV6CBDzJSG/iOZ4tU4SWaE.W', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1817101440', 'Muhammad Novrizal Ghiffari', '4 RPLK', '$2a$08$oG/6KmqQ5lNEeon7zx2UseB7ons0lGCRDl9YBfEYZ2czpa0IwWsZS', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1817101441', 'Muhammad Rohmanur Rizqi', '4 RKS Route', '$2a$08$6Ef6fNtlnu1ZxfPQWWvdbut2u5XniZJrPMqugIpVdvhrDE9XlpRMa', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1817101442', 'Muhammad Syihaab Al-Faaruuq', '4 RKS Echo', '$2a$08$sJLmj.NqMEBx0T4d0hwQk.6Y3RV3Ikrm7vfPFCj/BQC1ADRnKi1Jq', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1817101443', 'Muhammad Zhilal Agrayasa', '4 RKS Trace', '$2a$08$xuIXtPNNV2PmH6M9A7xCp.Hh.Fy4.piabs44wCiDSTcoQBabwlhNu', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1817101444', 'Nafila Laili Ikrimah', '4 RSK', '$2a$08$P/rIIxdxpamU.Sgkng66ROeZRXtC/m5No7K94wyAnIwVSGnRb7YdK', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1817101445', 'Naufal Hafiz', '4 RKS Echo', '$2a$08$586pz8xuyomo6t5GlvWu0uSuk8n2z5cP82.TWT/HHgxWysO4d1Vr2', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1817101446', 'Naufal Hafiz Syahidan', '4 RPK Quantum', '$2a$08$ghkQ10ymL2Ksk9vUmkI8ueupd/pDRKzYDWhIHEkLhAKaP1LtpNJuy', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1817101447', 'Naufal Madega Pratama', '4 RKS Route', '$2a$08$3BfgkQN3O4mueS8Us7E6uON.N6JTn8XB65sKSu1TNJvL5lUIIQGAm', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1817101448', 'Nazela Khairani Putri', '4 RPK Quantum', '$2a$08$K.6I2PPtfNUcJMOD6f5TeepcLr2uj/faTnZ5fcHZVrxkGWyZBlQ/u', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1817101449', 'Nizam Aditya Zuhayr', '4 RPLK', '$2a$08$GVLnhkt4iyiYDefokHKvcOPtEScsl9BVQtKguL3qDJNwQ5SiEgkbO', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1817101450', 'Nofrisal Dwi Syahputra', '4 RPLK', '$2a$08$sOn51LDG8p3D8EKbBKZr6OQp2mrPqqTCGQZ1a.POLq16dQNV0WwMe', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1817101451', 'Noni Fauziah Septianty', '4 RKS Trace', '$2a$08$qAwgdqlfrweAb4FyTOWCPOQGruDHEpurBgghqqG1SmrHPS/SeI0ou', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1817101452', 'Rakha Nadhifa Harmana', '4 RKS Route', '$2a$08$Q2piYlHcAR9jQCBdPBWvNOuxlCwfcrK7HOsSRGluK4pbIyhZ4bx4C', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1817101453', 'Regina Christanty Beatrix Hadjo', '4 RKS Trace', '$2a$08$ARsjfLZyn9tT56js4Z3zteCiM4lBN0CztBoVO6oeaux3puzHdI62e', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1817101454', 'Ridho Mauldiansyah', '4 RKS Route', '$2a$08$is/eszldOfqA3jhYriAB0u5OYXH9j7QUunb8tdCKDdZXuXvK.Svs2', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1817101455', 'Rizaldi Wahaz', '4 RKS Route', '$2a$08$OjD3kSaZQlRcNf0WWf.mGuOPDo3lAx.rgsmr6nF9J7FwEaEKxNOce', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1817101456', 'Rizky Ainur Rofiq', '4 RKS Trace', '$2a$08$JFVBTfNq8uXJCpbIXCxZquTg8.XA6gG7NkpcNWpzarTwdzhq4CA4y', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1817101457', 'Saffana Tistiyani', '4 RKS Trace', '$2a$08$2EpcigzImVZB0UTjRFuXt.YJCCmCoLNYhKaPlke48Yfmx5pRW6I6y', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1817101458', 'Salsa Alma\'ariz', '4 RPLK', '$2a$08$trrqoiK8NtMYbGosrleFqeARTZHyy.Lk7hCUfiXWDYkKL1vHFSDe.', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1817101459', 'Sari Putri Yanti', '4 RKS Route', '$2a$08$ClR5EwKdLQ5vVMMJ/6bkYeDeuDa.5OGlR8ZWkUKJZipKsyJJXPbga', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1817101460', 'Sekar Mutiara', '4 RPK Quantum', '$2a$08$xsHFlvJTMnz8Cof/c0CiAehPEnzHe5GHGyZ1hO63/FDH4eKtFzVdq', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1817101461', 'Shafira Dinda Ramadhini', '4 RKS Route', '$2a$08$JgdcaWjHIn/ijMX90cF5tuwbOaRZq4/Faa2ZqAQQFRPtnx1Mpo71K', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1817101462', 'Tri Hesti Damayanti', '4 RKS Route', '$2a$08$6vjX/R7rRG4gjOl2Vb7zMOqlOSqCzUcGFiwsVFgStcpaIBv3Ayv3u', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1817101463', 'Wahyu Riski Aulia Putra', '4 RKS Route', '$2a$08$9bX9I4KgOfefUWfjGK3kteAPbqOX0Y4hwM2Po6ibUyz89qACCKYkO', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1817101464', 'Whisnu Yudha Aditama', '4 RKS Route', '$2a$08$bBWSgD4yN.ucJ2ltUYf2B.lCc8LCB9aJ3SAxzb0pxyhhmO5kWc.bm', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1817101465', 'Wisnu Irawan', '4 RKS Echo', '$2a$08$jqVmcHAA04/RP3xyQ2HNNOH/5RWebVFwxMvQgpAX4pYnZXpsqVkTm', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1817101466', 'Zaidan Nuraga Chuldun', '4 RPK Quantum', '$2a$08$8dS6EJh8bHKJGsG7aNqMEevT5xeIsGx9imjd1gxIQdXKE1HqAI9TK', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1817101467', 'Zathalinny', '4 RPK Quantum', '$2a$08$lqKSby5dw2D8GX0iP.TsFO.fdLZLot57xufImVydBBBuSW6W9qEte', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1817101468', 'Zidna Wildan Alfain', '4 RPLK', '$2a$08$02Zftt/6dulVfIEk7YyDUOTTzlsr4eD6EjMaC16fq7LlzuIiS3gnS', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101426', 'Abidah Salsabila Putri Sanita', '3 RKS Python', '$2a$08$qtJHESIka2YxWwepyL5L3e7NazbONL94pBlHXW5DkAcFXaWpU3C/.', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101469', 'Adek Muhammad Zulkham Ristiawan Kertanegara', '3 RPLK', '$2a$08$Bj.29SpnQHfaq.ednWtKMuZ8hOEGM99/nqQgXdcdLDeO0.KZT/GOC', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101470', 'Adelia Putri Andriyani', '3 RKS Python', '$2a$08$Yimma2ajrAt07Acy/3bW1.vkoiUwxQVUY5kWnFI2e3qw.qTUI1L3u', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101471', 'Adisha Hanifa Ewata', '3 RSK', '$2a$08$79WDiAgheyLYruMHj3LbNu.B6Rset1mRL.g8OuOM.YSxhydXE1OBy', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101472', 'Adiva Fiqri Nugraha', '3 RPLK', '$2a$08$BC5nTw5NHECNKjTO7EzFYemFF9Xs3p/khHbgsG1W0SkgIT2bP/8z2', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101473', 'Akhmad Rizal Arifudin', '3 RPLK', '$2a$08$.nFEgCLB52jnm8HV248Z7u8vkt0kOc5qGdNXVLY9Bq8blRS/LdvcW', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101474', 'Aldi Cahya Fajar Nugraha', '3 RKS Nexus', '$2a$08$SN1WyBL7e8OXB1cw.yVOG.dQvg6/VrbOUrB4JRR9YhbTKqUrs6pci', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101475', 'Alhafid Azhimullah', '3 RPK Elektron', '$2a$08$A6kx9qsiiWXEqd/gu5z9kOnS0MBRpVh2aTRO6QIMzfLCG4ZCeASNy', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101476', 'Alifah Noor Islami', '3 RKS Nexus', '$2a$08$jkVB3tR45WGxwJL7wKaTQeDCBvsZMnkl8mSU7RVhSEHYlMcBT2gty', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101477', 'Almeera Shafa Rayyana', '3 RKS Python', '$2a$08$dgaxu.0Nh0vWmQcGb450nOOUeelUXLXuO8U7sXE/FzLapW0sRj8DW', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101478', 'Alviana Juni Susanti', '3 RPK Elektron', '$2a$08$L32EhOW8XVldZS3dXf04JOBcPhjXKmE8S9Ypug7kB7xC7IhBJionW', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101479', 'Annisa Aulia Budianti Qurota\'aini', '3 RKS Python', '$2a$08$eCMYg2prlT/ySnqHlzumMO63HcxoruGn3hVNSkwIbh2w.DhgxoW5q', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101480', 'Arbi Nur\'aini Labibah', '3 RSK', '$2a$08$h12CVjaug6hX6ZMq10UeVOGWqlVMhjKFbJ/g/i7eLJVFUUnlafL.C', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101481', 'Arga Prayoga', '3 RPLK', '$2a$08$akAq4M49I3PI/BZRyDY/euOgrYR5UStHWuTHctAkyhI21unuqFbLa', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101482', 'Arildha Rahma Savitri', '3 RSK', '$2a$08$zNRwPbufGnMQAD4Es5/yHeZhO8sb7uVPxK/8RHAqmGKpHre4cAH92', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101483', 'Arion Sapril Tamba', '3 RPK Elektron', '$2a$08$1QZuZyAwwswpnJkx.KfZROX5HgNk1k3P9QMY7Zkq/wPGY.KvzstQ6', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101484', 'Asep Setiawan', '3 RKS Ruby', '$2a$08$I.BJqLjcZibiBcqU9dOGneyrbEVHgAG4XUsrbPvpwikZfDiE8HV3i', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101485', 'Asri Safira Priantana', '3 RKS Ruby', '$2a$08$haIgl1abfLHQep9jrVscvesi0Yfi0SDhB7KJkoGXOO6jFT61LpVA6', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101486', 'Asti Nuryani', '3 RKS Ruby', '$2a$08$tdzatkPW.lk2i8RncVoqSOyVEexJE99Q0yK9pe20kJGEg1Q2BOaT2', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101487', 'Aulia Rachmawati', '3 RKS Nexus', '$2a$08$mdXMSnmPsRr2CIZR/QoDTeCrPcW./P2AWOlOfeEwduvRjJDaj4Fjy', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101488', 'Aviva Javantio', '3 RKS Python', '$2a$08$FnUg0Bdiekhfs3sQRVgyc.fqmewIeQP.NEYT997KZc/mbMDb3iqG2', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101489', 'Ayu Choiriyah', '3 RKS Ruby', '$2a$08$eU2nUhGnWqI328kzNouc6eHUSJ/xswgUbHcjHFTfwjXvN8Le8N8xS', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101490', 'Ayu Ningtyas Nurfuadah', '3 RKS Python', '$2a$08$UAeo9Qg.tYpaNm6LTOJhCOM9RA4wn4/3Zav9OlSftQKwZFn7knFUm', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101491', 'Aziiza Ratnadewati Pratama', '3 RKS Nexus', '$2a$08$7i0adAO9/gq5rjTe/rpxxeS6a9ArjFNZGyruygf5mH4h5/URAjSr6', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101492', 'Bagas Megantoro', '3 RPK Elektron', '$2a$08$YWdAUhpoIEDIXs0K.iJ1j.tIGrmYOjg8pD7xJ2s8qg2HleJGRnc2.', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101493', 'Bagus Pribadi', '3 RKS Ruby', '$2a$08$VOaFgt/lLDkCFlLp5aqn7eRSdQZnJXrAeET.vzbp4Rpcpj.0gCc6u', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101494', 'Bahrianto Prakoso', '3 RPK Elektron', '$2a$08$YuMs4Qk5rb2ifUCY.PurdeYOQ/Dn1zEEHbLggfbfr.uejgUea6QSi', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101495', 'Cantigi Kharisma Khairanisa', '3 RKS Ruby', '$2a$08$08V6tVTHpCw/rCOgfYh6ZehQNCu2qO/X1vj7BuS7J8ommA6Gx4iDu', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101496', 'Dhana Arvina Alwan', '3 RPLK', '$2a$08$AfxEYtpAyxy/IEWkz6A1Z.kLXaLjTXsNH/v1Hd8noQkHyFneqH4hy', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101497', 'Dian Dwi Karlina', '3 RSK', '$2a$08$CVStwrdHEctlqnM7x4MwNOqx6k3FhjK2ZoVDB.7AfQfW5uexXg2vG', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101498', 'Diky Artin Sitanggang', '3 RKS Python', '$2a$08$rvtTT9EfzMe2nSnKjeQgwee4bfjAFC8cXpOmY.TIPb6prDrP9nnTK', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101499', 'Dyah Rahmatannisa Zenina Alfiandini', '3 RPK Elektron', '$2a$08$8qOjSkjXnjZaF43oHilt4.7z3bq/2j2C8adwH9rZ5ZbMoXHIwi/qa', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101500', 'El Fitrah Firdaus Fadhilah Akbar', '3 RKS Ruby', '$2a$08$KVwCHZNGtNOAS2dMVZrYd.XkJAccNxuuOs3VU5v0aJL4DRlXsZ7FO', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101501', 'Ellisa Hani Nur Safitri', '3 RKS Nexus', '$2a$08$l//c25UuhoNeQZEquRQ7oekL3IRsDCTaf9nKFz.ltWBgXd3JrBKH6', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101502', 'Fahmi Ramadan', '3 RKS Ruby', '$2a$08$c6pUukRoFfFpS0x3ENFNv.Wsvy5ceoNkGk1W.asEIAE5n/M9efpeG', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101503', 'Faris Firana Febrian', '3 RKS Ruby', '$2a$08$msQFXRehBOUkv6dtwbyVmOkOBDhDpTFcIVSzAiNFjtcFVTnISQqr.', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101504', 'Fathurrahman Rifqi Azzami', '3 RPLK', '$2a$08$e1xrktYkZyowUYfNFue2Reb4kHq5XJBKBYTp1zW1Eq7Vcg6.HTib6', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101505', 'Fatikho Kautsar', '3 RKS Nexus', '$2a$08$d4XseBQ3VUZNIyjx/aijA.LR27NPyh1QBL06e0cQKD7H1PlRBFeLK', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101506', 'Febri Putra Sandhya Prawiranata', '3 RKS Ruby', '$2a$08$kM0KGA2HITGfU6yvigcp1O60AaB9UZ7Kxb7p2WsX6Upi6daLRGDG6', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101507', 'Fiksal Ramadhan', '3 RKS Python', '$2a$08$cZLnWjt5QqqBWsTatLa9yeI.Yn6XYoljDaEit8pd.dyyQOyvkWHJu', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101508', 'Fitri Ramadhanti', '3 RPK Elektron', '$2a$08$KIqTSfIRF6FFD0bQ48hgq.R/NIOi2aHR6cux2b0Wi16E1/BwRkWdO', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101509', 'Guntur Satria Ajie', '3 RKS Nexus', '$2a$08$ua9ChjUPUxcKZ.cD8rd8Fuxxtzk8cpVsFTEy7f9m20GTl/dAIOac6', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101510', 'Gusti Agung Ngurah Gde Kaba Teguh Darmawangsa', '3 RPLK', '$2a$08$Qx/JM3nuGrAer1O1O74.I.O3RON1K03NUfkExon4uXskOLhMRb2Fi', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101511', 'Hakiki Widya Ningrum', '3 RKS Ruby', '$2a$08$dxPfVKrgl5UGvjZsEcvzd.ac4VA30IuWJ9KMwh..Q7EEnI8mK0SF6', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101512', 'Hedian Alif Hedfannaja', '3 RPLK', '$2a$08$8v3ggeYhRhQbOUkePURiUO1yPXwqtpuVxjrQM8kgG/7ziz1FtKd22', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101513', 'Hendy Aulia Rahman', '3 RKS Nexus', '$2a$08$X9/JP1SRywYAkPYd8B0pI.KRj4iDENc.Q0peu.hY7HVPZV8QqQmo2', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101514', 'Hilya Tazkia Kamalia', '3 RPLK', '$2a$08$rZfhT6y4F3EFCGQdtLujKOIef9kuonBlEL8kr4DXM8wcnn8nLVIcy', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101515', 'I Gusti Putu Kanda Putra Yoga', '3 RKS Ruby', '$2a$08$NVXct995pQc8NmDxBVp8nuE4wARQkQKt/aaEbUXJkhlAhbrFSN6WW', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101516', 'I Made Wisnu Bakti Saputra', '3 RKS Python', '$2a$08$sKKlWKEt4YlA0CjrwkdAcOSYtbMyWgWlcPyFbEkWBMUOKqkzYyPZG', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101517', 'Ikhwanul Hakim Masri', '3 RSK', '$2a$08$yb57FQ0Co.Kj8.F0nmBVJOBbsEGx/u8bmRo6F6t2t6PnycmHlsJli', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101518', 'Ilham Jati Kusuma', '3 RSK', '$2a$08$9jXyTQ9I9Dtw4wXp.wchd.cH.9M1tV0BTLCv3TCjaYpQQSSrnPpF.', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101519', 'Johannes Simanjuntak', '3 RPK Elektron', '$2a$08$nt4dH8TwifZcKrI/xc2fYOrDwPCp3u95JuBHvjnJnT386TCA1ZGQS', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101520', 'Joko Nugroho Suryo Raharjo', '3 RPK Elektron', '$2a$08$d16CALA7klUlaoTIfixo0.4CkxeAZ1GGL9U1mUKlIkajsNybGmSOm', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101521', 'Kadhana Darma Tatya', '3 RKS Python', '$2a$08$6yjC4lN7i1sSbblKtcS.keHkkqun3vEQQ5NaNfRF5IRQ.HCZKC91S', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101522', 'Kamila Amalia', '3 RSK', '$2a$08$hIA3zqEaoiFRY0pOkdIrV.88SSMJv2ZobJSSmgKol1Zy45bHaoHrK', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101523', 'Karina Puspa Listianing Ratri', '3 RKS Nexus', '$2a$08$GVWarHrKrS8015lLjkYQ6OwWPb3ZPlOVQPi/.icSmJxRhpSHL6dIC', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101524', 'Kevin Yehezkiel Gurning', '3 RKS Nexus', '$2a$08$8q.TfHqAX/YUUWYdW4ImZe39RyJ0xV0D.02b8domiaTBecpOFyY1S', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101525', 'Lazuardi Aulia Fahrensa', '3 RSK', '$2a$08$JnGYFd5/U1TZkQq0t1VlPeI6HMmeRgcp2xVPXWW2t5kuUlEnA..ke', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101526', 'Marcella Risky Avianti', '3 RKS Nexus', '$2a$08$dc5lspl1O9dnOhF6vslKtOZE3P/cHO2IGCQ/NvxZCUENERhozt8HO', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101527', 'Marwah Nur Azizah', '3 RSK', '$2a$08$6tIZHKV6qHuUhpdpB0scV.WiWDobX3zSjUxCLEXqHSsSg6J0e7MZK', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101528', 'Mega Rosita', '3 RKS Python', '$2a$08$02ETHJVcMnL.VWnFwkLmAOiVWdwh.fFzateWcqgoF9j/t4QrvAZtu', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101529', 'Meidy Fenti Salsabila', '3 RPK Elektron', '$2a$08$kzr8dDqyGQDivAKiitZQ.u3ltz9VLiRhpHiwk6g9yvG5yea7bJXP2', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101530', 'Meme Indriana Putri', '3 RPK Elektron', '$2a$08$5FM1shbtUDpPIIxbCmdsHerJ.XtpiJQnzEVczTnFS9je/BClT6c7C', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101531', 'Moh. Faishal', '3 RKS Nexus', '$2a$08$BJaZem87z8T3gT75CnCjSudju6xshQh23165hCJotk0meSlJiilHO', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101532', 'Mohamad Rizal Fitrian', '3 RPK Elektron', '$2a$08$DXxN.H9XBeiSgT.mLfSK/ezi7BWj4GjOlWb/3kGuWWUDKMoaz3sy.', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101533', 'Monica Christy Natalia', '3 RKS Python', '$2a$08$fa/.RtA.iX.PeraY1R8yNeXlBQLQLavhCyKmJ6A2lYOzfdcE3u9v6', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101534', 'Muh.Amirul Faruq', '3 RKS Python', '$2a$08$esZs8I3cLKiEXJx35WmnYu7BzzGiiA2Gm9dC7IqpNGUjZlJxkCGuS', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101535', 'Muhammad Dandi Pradana', '3 RSK', '$2a$08$toxMzK7yxGw0v.ISIrJW5OThNzq2DAmYSmg99..vChDs9COC7KC.G', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101536', 'Muhammad Faiz Syukron', '3 RKS Nexus', '$2a$08$8OLl1dwcNJlnxBPqQG8/j.qOI0i02rRsjriKQdTidW3y0DdKQU5Ba', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101537', 'Muhammad Surya', '3 RKS Ruby', '$2a$08$WblwsCGnU6BBvLEZzuRiNuacwGZuEljd25cCGwHpEm3ZTEcA6jQ.i', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101539', 'Nafiz Feizal Mahendra', '3 RKS Python', '$2a$08$BZzQ9Wu/9F0OJFJCqFZy0OcOOLiOFHgQCQOw2MRgn5ay/uvUuWF5K', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101540', 'Ni Putu Tarisa Purnama Putri', '3 RKS Ruby', '$2a$08$MRb3fg/6iocFQud70HzK7.3fZksf1Z8vO.1etsmt0YMbzkDTHhThW', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101541', 'Nindi Anansari', '3 RSK', '$2a$08$9l//cR/abQs0mD7942sG9OvdwsKOUUfEIaCbz8uq03lAGbcEuiY5a', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101542', 'Nonie Krisnaningtyas', '3 RKS Ruby', '$2a$08$JzzZoLwSC61UyQshs38/o.NEA4gBFfQ9yqjGtBQGaIXpHzVSz.KOG', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101543', 'Nurul Amalia Rendreana', '3 RKS Nexus', '$2a$08$gFckOCJOm44eAj32xZF8TujngTriQ5ZWEJ86BxVMy8ZdXKFnRkB8y', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101544', 'Olga Geby Nabila', '3 RPLK', '$2a$08$NAOkDz/DzqWo8fzM1LEfBO9vIOtxLaOqaVvFR0pRROHqvBt5RArBC', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101545', 'Pratama Aji Prisadi', '3 RKS Ruby', '$2a$08$nLkbuqy6bWBCMek1BQvBPudENRkGKr7zACGeqB/qc81scWoQprN7W', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101546', 'Pratiwi Armita', '3 RKS Nexus', '$2a$08$VZ9ovb2EIjbXo5SdqsbKE.d5xCgXL6UczKqLNvuOfOD2xuoHeo9f6', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101547', 'Putri Azizah Restu Bumi', '3 RKS Nexus', '$2a$08$/PzU77oGmLUCnpxOfrSGfOwBrGhwDBcRIhR9XOqs2/SfKagJePFpe', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101548', 'Putri Rusdwi Kusuma Astuti', '3 RKS Nexus', '$2a$08$B8d9pJ9D/vDV39FovxmijOmLheKM4IEfkm4ysyQ1ZOEWWX4eFIV3a', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101549', 'Rico Rinando', '3 RKS Python', '$2a$08$E7w9xfSXTMC5EVHGq0Hwie87rHUtZ.811c1s6i.Be3rgLmEi7X2KO', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101550', 'Ridwan Tri Cahyo Utomo', '3 RKS Ruby', '$2a$08$P/h7beqy8qrkkLLc3GBar.j8x7iCFT7DdA04boQTEBv8fEjPpJg.C', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101551', 'Roihan Akbar', '3 RPK Elektron', '$2a$08$V5dh1o2SoPhjFlp2/t8nTOSQvcO6lXUNwr9nONVPxngEZMisF8utm', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101552', 'Rossy Artanti Zulaiekha', '3 RKS Python', '$2a$08$6.l94aFK6Nl8M83Agkx8QujoGvkiLQfO3hVohp3UvSlxkdWpFGdzS', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101553', 'Sabela Trisiana Oktavia', '3 RKS Python', '$2a$08$/nUxJ48M.5dKL5qyoF9iKON8pMftIH2JBheTqDOY1Bqfh2izjHVhq', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101554', 'Salsa Sabila Baladina', '3 RSK', '$2a$08$DYOCmIIZzcpJbm0VF7c32.3mPIo.X6svmCzTbS7a4XYZnYXTTTTJ.', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101555', 'Salsabila Hadida Difanda', '3 RSK', '$2a$08$3XRbIIIldkeKTJue.lf6ieG2P9at6ltfWQmoPLOR3nBw4Ha0/3ox2', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101556', 'Shakira Putri Ayunda', '3 RPLK', '$2a$08$.Da2hvlSFff.tF1Z7tmVIOt0qpOiNZC8WIm/4biU8o7H4Es9XCP6W', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101557', 'Shalihati Mutiara Rejki', '3 RPK Elektron', '$2a$08$FrBxjaZkA.HZ10JYH/kYfuwQ7K3bEMb3LvEEtd3eaEjNKUOQyYM/i', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101559', 'Syafira Mardhiyah', '3 RSK', '$2a$08$M1WHX4AX.7tpGhjgL81FX.q1FK6WhZRohfa3KT1kZQEgJk6KGHism', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101560', 'Tsania Nur Hanifah', '3 RKS Python', '$2a$08$BhhepQKlMUFuC9GibJCHD.q0RTvO0zlVI.cQnNkMKUZfrW5OznQ5W', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101561', 'Vandzani Farhan', '3 RKS Nexus', '$2a$08$uNrJCbbH.VduNSGKYZlNTei6fGzt.wk7sQz4uIuHQZAItgXHfVqWC', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101562', 'Verent Regita Mapareza', '3 RSK', '$2a$08$ZOU1eQPPORMmHrEeUhDoFu/ZKLJ3RlSxUn7bWf1zDkylBKaUZkqBW', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101563', 'Wanodya Estithama', '3 RKS Nexus', '$2a$08$2sieh5bxHgygLG/EcNjCx.puDT2yul88nj61vgdMr/q2rFC09dT9e', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101564', 'William Barkem', '3 RKS Python', '$2a$08$qm1MsGIKZpBme8LbYsfwaOHzNN.H6gInvBLsSPoXVhpXX54E97Apy', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101565', 'Yehezikha Beatrix Natasya Ully', '3 RPLK', '$2a$08$W1HNk4EyV9mO9dgmUETX.eFfFeQft1ujn.UPjdsb8wIh0w5PE9LDS', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101566', 'Yogi Ibnu Prasetya', '3 RPLK', '$2a$08$WwlfPzqXnR7Vg2TMslLbzuJvyX0c37if3iin4psJhvekA55WQOhRa', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('1918101567', 'Yulyanti Hendriani', '3 RKS Ruby', '$2a$08$iW0by0zCKK.4CwsbX3LJ3.lC2hw4u462NlMD6MPua3iPDqGf3dMEC', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101568', 'Aditya Hari Kurnia Putra', '2 RKS Red', '$2a$08$rzkrFuvwbgQJ8Dx7VxzJ9.5sa8nUO571WHDOBMPvsxPffWKSk3YDa', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101569', 'Aditya Sukhoi Lean Sumule', '2 RKS Blue', '$2a$08$Lgo.HTpwoDkfnXCenVsemerqcZIXVi/evXn09rmIz/.PdlTsZTURa', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101570', 'Afrizal Ajuj Mudzakkar ', '2 RKS Blue', '$2a$08$3j9.tlwHVicdYRHbfcSZreIAcj0kFjODxK4hXAO7UOND2XeaWEcby', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101571', 'Ahmad Pardan Mahpudin', '2 RKS Blue', '$2a$08$bkqZzFltVGnhkOq9zYdo1O3iI7evWwf0IvikXSChrnQ1NCMJOnM7C', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101572', 'Ahmad Zainudin Mahfud', '2 RKS Red', '$2a$08$jkeH1bka0Ic0E4LVlgr5.ug86aqcVoYQHpdLlWbS76buAfuLXXvoe', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101573', 'Alfian Putra Rakhmadani', '2 RPK ', '$2a$08$00srYlJ4WpN/eZS4fjvB8erNdd0pZjt6.50p2zyP178ZuGY3jEMGu', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101574', 'Alfido Osdie', '2 RKS Blue', '$2a$08$hJbOzB8Ivm2jCZlCSsL7pOm5ulejAorMxRcnooPMoyrhIwLc6yvBq', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101575', 'Almalika Setya Widyanti', '2 RSK', '$2a$08$/zajx/6EeXu/1NRTTvVBGeufh42rMCXh/0JlFZKztlchWRXXybaXm', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101576', 'Andre Irawan', '2 RSK', '$2a$08$tRzUq5TE0LVWg.PgqAe2/OUCVtVt2TJSadB.ZiZF9cStcklbwvC9e', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101577', 'Angelita Salsabila Afifah', '2 RPLK', '$2a$08$P7vTxZ2ifYDFqqFgZhcaEOhgYL/ZaamVzhD7QELAlThV05OKpC9yW', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101578', 'Anita Rizkiana Handiko', '2 RPK ', '$2a$08$cqvZyNAYedvAY7/EAT.jVOjbNmeONOzSK0JSCVQGU4KuSQ1oC7GPe', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101579', 'Arga Yuda Prasetya', '2 RKS Red', '$2a$08$Sz7rrJZAu725BIHmA88JteIMiV0Njs0lIVBXEvAR.QVTnM5zvdFSi', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101580', 'Ariska Allamanda', '2 RPK ', '$2a$08$XJYbGibqUYRLiXwXBTmkQugNTxv57JItjhPcxQbRxeyjAAmAUi9hy', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101581', 'As\'Ad El Hafidy', '2 RKS Blue', '$2a$08$9OEkK9GalUBw.x1RGrF0xut3dDt4aVK6Hw8xI9deUaS.Nsaak8gMO', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101582', 'Aura Nirmala Puspabuana', '2 RKS Blue', '$2a$08$Q4qztE6RMToanIvdVq4.HOZLrNr4WOiGpn/nk9FA8lNg08/4fbvSS', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101583', 'Bagas Kurnadi', '2 RKS Red', '$2a$08$FESgjuHbKd20NulDjrJLquKZ7TZxwrNzGrw5iLD0WYIIXa0BpYo/O', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101584', 'Bella Wulandari Hartejo', '2 RPK ', '$2a$08$O8LZPpB.VqjO7WhqyPgPdeObMivctlP762S1qxPaGJw.WpkkKARA6', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101585', 'Brian Nasywa Rayhan', '2 RPK ', '$2a$08$7v3zOEopsRy85Ve8SLmAc.QZV61gu7Gg6fojReqVVQvnmPKNlT8Mi', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101586', 'Danang Enggar Risyaf Alam', '2 RPK ', '$2a$08$VP6YyBdpgaXrns1Mo3H8nu9mZXba2gZfHvdnC5bKqYQAvXUyD4Fhi', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101587', 'David Relikson', '2 RKS Blue', '$2a$08$aGy9mtddiNZKBrM725TGFO7fR4rnXdlF4.lMHBVbjONQPTiXzBrG2', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101588', 'Dawwas Arya Bahytsani', '2 RKS Blue', '$2a$08$.AoLsbOvs7Ljw3KgoRpeJ.rb/KxKikP0zj5E6JU6B7oj.s/p8vZX.', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101589', 'Dessy Ariami', '2 RKS Red', '$2a$08$KBI0hxkzk/3GVsi8kMT1B.WJpjeT.nCEXSA0sd4D3MXbJBEDKE8Q6', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101590', 'Dika Agustian Akbar', '2 RSK', '$2a$08$g.s.Ft9vkvo1v0J.OuP1H.ceVM3E/s.Hs6H122WgG94ZiHuXFj6B2', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101591', 'Dimas Wahyu Utomo', '2 RKS Red', '$2a$08$n0.9KYna/P24piPHWWd/VOJmyvHlOS5tFdcbfnxR7fhpbZIzCtYPy', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101592', 'Dzakwan Al Dzaky Bewasana', '2 RKS Red', '$2a$08$46RoyB1j0UyPUfh50qw6COgoYTLmQTuV439co/Q4wAc2Noe0l27XK', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101593', 'Efifania Sibagariang', '2 RPLK', '$2a$08$MrqeFi7YddgZnrr5RBTP1.BThKYZaT/mpGSkvenz5Xo4yOnO50ekO', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101594', 'Erfandra Ramadhan Susanto', '2 RPK ', '$2a$08$J0ubVpwsrWecUci/yVJsbuZ0UwyHUsFj/peD76.Vej553bMiyqmPu', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101595', 'Erza Adira Mahatir Muhammad', '2 RSK', '$2a$08$NFPl0UsuNvpqAaPNwjcDmu7BHZkzgXbR.XUCzlwag4ehcePBj8iSG', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101596', 'Fachrul Ali Nurfadillah', '2 RKS Red', '$2a$08$1L7gnj5M/rNdwHHKFsyI1.k6i1xlcBtNqzEeIONGFl3YDLr8MmyW6', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101597', 'Fadel Azzahra', '2 RPLK', '$2a$08$EfGBTT4FhyWS590EosGPru7NqEyj5UFcuc6mOjJETALBQCzjGrhH6', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101598', 'Faizal Gani Setyawan', '2 RPLK', '$2a$08$7FGsYYKQxx7hy1st4lG1hODMWn9PW.AUDAqWj5a6vUMCEw5fDteNa', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101599', 'Falinsa Salsabila Yursa', '2 RKS Blue', '$2a$08$4/cfIdBJgrOXVBIX7a8Ubu0Fhs.A5wXXaYP4ekP3CbLsZ.uKGCr0S', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101600', 'Faqih Rangga Wijaya', '2 RPK ', '$2a$08$6dzuyxCYVr7go.EH.JFGFOVs7/0H7WlSo2fgDe/wuFxrgoAzNdtAS', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101601', 'Febrizky Dwi Restu Rini', '2 RKS Blue', '$2a$08$5vtcr3.jfMFOjHxOn8ORl.I0mpFLxE9aYOnWkXFp6fgiRARJHESv6', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101602', 'Fikra Amalia Raihana', '2 RPLK', '$2a$08$fO2h7vfiaPvsnldJtloQj.AzdTF/eLtIQjKFfNCDEGpmq.tWB/Rry', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101603', 'Galang Mardani', '2 RSK', '$2a$08$SRIFiDpQFarbDMw9./3WGex/8CW874o2M9J5VY7JWm6yEBgT.ghdy', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101604', 'Grace Friscilla Margaretha Karo Karo', '2 RKS Red', '$2a$08$31xZowUQbQ/k1FpY4SzafOSp8yXru4Sv6HDq3T/HSVsPOAFQd.dX2', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101605', 'Gustito Panatagama', '2 RPK ', '$2a$08$VPzQOw16HHDrObykgFoF9.71Kim3GKwbMOA4JTim8jA6.65Jg1soK', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101606', 'Habib Alfitrah S', '2 RPK ', '$2a$08$TT6U0AWUxk2hZl.jwkGfh.1Oqojab.2baYSRYnCAzV91iqt/Gdwpa', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101607', 'Happy Sandhiyadini Rosari', '2 RPLK', '$2a$08$xmZ1bp2IMIIPMhWojMvBfuINLYck.HIkddQWOdQ2FFKX1iSUaZLK6', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101608', 'Herisa Pratama Nur Baeti', '2 RPLK', '$2a$08$A.XOt0CfVUAog0S3i5F26e38uYJDA2yWxWk5ag8z/jBLxc8Qifkc.', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101609', 'Herlambang Rafli Wicaksono', '2 RPLK', '$2a$08$QPF58qtgjVOg9c2wkSUv9eNhO8imwwzIBn13Rjo5f3n0RUpi8SM8K', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101610', 'I Gede Gilang Dharma Suputra', '2 RKS Red', '$2a$08$8SBUBnKsUFZ/DNtfZyKA8OARg8Iz7vcVh.uNQubeL5D130kYo5Pf2', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101611', 'Ihsan Fadli Tampati', '2 RPLK', '$2a$08$ySrF5SwVW.PmsVke/obPye3o/7ekEiILLBmL7x3Psk9F1uUNvHN02', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101612', 'Ilham Dwi Harjanto', '2 RKS Red', '$2a$08$22rTb9Rf4OSJM2ExEIYudu9VMwIK6U1xIzXLkykfQTqCWuGtOI6OO', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101613', 'Irman Yunal Wirdani ', '2 RKS Red', '$2a$08$uV08rG4XrKfwqUtckkYKTuQ2.5dVOlK76b3HEXsUgNMQn.b41wRwu', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101614', 'Khirsa Inayatul Aini', '2 RKS Red', '$2a$08$lu/y4m9YqY0gXLcFNivqiOuKUXgrkS4JwmbZkvUk7buq0z1urPwa6', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101615', 'Khoerina Sa\'Adah', '2 RKS Red', '$2a$08$9bBVaT/3KlsfFVmKpc4OVuEzn42FeijqEBgBj6vvYf8WfnYf7N8Fa', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101616', 'Laila Nur Khofifah', '2 RSK', '$2a$08$nmv/UPQ1UgCAra.WiqcD9uVF3YPQVsnSo0//Sy5bQ1qX0grOfusPe', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101617', 'Lintang Listyowati', '2 RPK ', '$2a$08$gQlsQ7QYLCnC0.mq.y3pAei29krZ1.qiNhymuCqWqVsKch.yF0Vke', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101618', 'Luthfi Hakim Panuntun', '2 RSK', '$2a$08$.B7t1Wdw.kkPhH7FSzNz6egpEm9Dr0esl1KsaBeG6zdVUkSK4iIwq', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101619', 'M. Firdaus Yusuf', '2 RKS Red', '$2a$08$YplOWqG/CJNH/J8sHGGJ7OMJ48kBBMbUS5Ohc2BB7MtZjUaLDefGm', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101620', 'M. Ikhsan Mubarok', '2 RSK', '$2a$08$nTeW4vGPU8wTa/0yjpJRtOt1v4kFdrAefqtV9/uTwGLjoRUj7TicC', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101621', 'M. Luthfan Putra Sopian', '2 RKS Blue', '$2a$08$bh68nH0skQJwYJm36SQu7eUXFnaROlQ6/pM2ZQT/pCtCFmGgMtzQm', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101622', 'Madany Awang Bintara', '2 RPLK', '$2a$08$kMO7mvxIV27NVzOOq1BFzeeX2a4P6p4oYG/LkE2AyvMHsqldAxo1K', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101623', 'Mahaputra Giovani Muhammad', '2 RKS Blue', '$2a$08$3.Z1Qm8ee3XI4ry3EGq3.Or39mPIGh8RGyqV4Ln14/h/lPNq/cZXK', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101624', 'Malika Ayunasari', '2 RPK ', '$2a$08$mZm20RqKvb.5DBfgQp0Ke.xbMP6vMhqj392MQkUwSD07Is1XV5xV.', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101625', 'Mazaya Vanisa Putri ', '2 RSK', '$2a$08$IQAhsWlD0MATzXbZRdwApuN7XLMye6db44FKJ5IWjSNhEeTKbwOrS', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101626', 'Melanisa Nur Harin Prandya', '2 RSK', '$2a$08$CVRbWL9b1wzxmtjwnHZ1..IWgjQdQ5Q/XR9FpqwayQQcbi.WPuaBq', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101627', 'Mirza Uliartha Simanjuntak', '2 RPLK', '$2a$08$/2Dds2NTwJpU2cpAWjpupu7g0gLHXfi6rDxaPOYB5MNP/Z9JUliq2', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101628', 'Mohammad Raffli Firmansyah', '2 RKS Blue', '$2a$08$QBIwAAjnTRuoUvB0/3p0S.bo9i3odR0Ksvjr1q1JHZMfvEOTvO0Zu', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101629', 'Muhamad Nadhif Zulfikar', '2 RPK ', '$2a$08$98w3ZQpwJsA1udODlrrX9.UHYLeX.ENpotFg2I5RtEsfhMN1Xsv4q', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101630', 'Muhamad Tegar Sabila ', '2 RKS Red', '$2a$08$nwKAU0ngZhhKhqNzzjfkGuq0Eec.0TzmwcqjOIYCkl.RSSK5kJn9m', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101631', 'Muhammad Faturrohman Sugiyarto', '2 RPLK', '$2a$08$9cGBNQeAVwwLukra2EEP5.D7vLrCbSWAHKNRfYkWX2lzfVOD75A2G', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101632', 'Muhammad Habibi Motaain Nirbaya', '2 RKS Red', '$2a$08$3umGBJWKlUQY2eYX4iOMaev3Su8kaEZglZZi2rUBzuSG/YQwQzQF2', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101633', 'Muhammad Haidar Wijaya', '2 RSK', '$2a$08$10ezgUA29ORS/sXJbPY0ZuLyQ74Pq1yX5/x.gzb14NpMoh95i7Ubi', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101634', 'Muhammad Hilal', '2 RKS Red', '$2a$08$5H/Na1BtTwtma3IecYx/JOy/ub1JqGlyVMvTRoRTljl1dQ8JdpbpG', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101636', 'Muhammad Rahdian Ega Kurnia', '2 RKS Blue', '$2a$08$7PX.8jcdX6aZlf6UJhOLPO8r.7cdPvakQyBP7NDq8MJVAcAcdfR8K', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101637', 'Muhammad Sofyan Arif Harumnanda', '2 RKS Red', '$2a$08$rleodOvxKPr5tHFXjCFC8OGzcvej4mKLR9NOE/H5rji4ZQZA.iElu', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101638', 'Muhammad Syaibani Al Hakim', '2 RPLK', '$2a$08$qkqju7vRDc78fgk9494nzuHHwHvapr2k48MAVYpX1kjYDBv36orbe', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101639', 'Mukti Wibowo', '2 RKS Blue', '$2a$08$8CzWFiSjGib7cyJJAxDCT.sgY775X6lIrZj8fm0NGSVADMV9gqLBm', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101640', 'Nabilah Nawang Amaranggani', '2 RSK', '$2a$08$yxzX2r2QGwW.62hU7LymGOpy/7RI8I5yc1fyQZ.IMi3jX.ObcuyJ.', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101641', 'Nathanael Berliano Novanka Putra', '2 RPLK', '$2a$08$7.PMShZU/ywQvF.wo/73M.W48yo4Dz.3px/p4RvLho1K7hCCjQqo6', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101642', 'Nila Ardhya Lintang Pramesty ', '2 RSK', '$2a$08$LUnlpy40L1g545Wq1L5ZZu7zXmkR723WdwjHMCtmF6b2twKwdycF6', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101643', 'Nugroho Adi Wibowo', '2 RKS Red', '$2a$08$1kSwhJJ9kuHiHJE9QYlFKuL7usMgSpdrxRyynlovHQzCwyAAWc8L6', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101644', 'Nurfarida Sekar Andzani', '2 RPLK', '$2a$08$6hlyGcuw9UAOEx9ZaIBTDO6PPqg9V1nuc5df8lN6RThprVGGqUM.q', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101645', 'Patar Wiyardhana Marbun', '2 RPK ', '$2a$08$842t6rxXdZv0c342wvmdVOr1mdw5q/FoT80vFNwiK6tnHZM9wnPXO', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101646', 'R.M. Genggam Satoe Bintang', '2 RKS Blue', '$2a$08$B69w/3OuRqvqvTgS27VeNuuDZCW/9.kV7aBVETj6fV63lBOjQ45xq', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101647', 'Rakha Wilis', '2 RKS Blue', '$2a$08$J8cujK6q/w8M5CW0m1faL.p/.R7HK9jlRtuKpMoK285lznZgBwxui', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101648', 'Rayhan Ramdhany Hanaputra', '2 RPLK', '$2a$08$gPOa10r5gT.KAhGSHQDsv.XsIzlt8OcS8fnOW0m2wj/2ZVHO4gieK', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101649', 'Rey Maulana Faridh', '2 RKS Blue', '$2a$08$1f42czmFn16OHXwnQRN1Veqny9PMHerMgtxSZ3NpgPN786Mmy43u2', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101650', 'Reza Aulia Wildana', '2 RKS Blue', '$2a$08$9iAtySETKoHD.0syxMHRAOJ2bfJgP5v5nlMomwb.N6HZGQa8ZpAKO', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101651', 'Rezar Surya Efendi', '2 RKS Blue', '$2a$08$SDV.V9g3jU6mvk3hKoUs7.w/sUmgxY1CRssaP68pPqfy5bW.BK656', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101652', 'Robet Edi Prasetyo', '2 RPK ', '$2a$08$NutTm.AqmpSHP9ytB9vrg./BYtZ9fwp3M6tid9LuS.r29MpTWuUaK', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101653', 'Rudolf Paris Parlindungan Sihombing', '2 RPLK', '$2a$08$7EkjihtpGtX.iYF0A9MIx.QGQBEUYvjpJvyW3FCYtD59NS1VZ0Pze', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101654', 'Ryan Muhammad Azizulfiqar Kamajaya', '2 RKS Blue', '$2a$08$aKPXX9n8UVQRGemaVL39HuTc4MsssBEaZIT./phBxSLpLFvtQKhO2', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101655', 'Saca Ilmare Dinbiru', '2 RKS Red', '$2a$08$zt8iEc6vn6MP6eo13jlne.7hVADUZzgpLtUMGLd4y6dGGBEMLb7N.', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101656', 'Saddam Hidayatulloh', '2 RPK ', '$2a$08$xkjTPg9KOM3WYm.NRySpC.xo83fcyGz5VYysYjWLtbsUOFiNEPcYa', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101657', 'Sandy Tri Kurnia', '2 RSK', '$2a$08$cxMiDgVWVBFXxlU24nizOe6KL6Fwtl8V6944jsas87jV3hIrHfe.u', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101658', 'Siti Manayra Sabiya', '2 RPK ', '$2a$08$k3d4y7kR7GSr168vvI4ar.jWYHqBp6M9Le9MOyMMB.fZu0hIH0wG6', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101659', 'Socrates Anugrah Mendrofa', '2 RSK', '$2a$08$rMFDl0bUM3eaFKaq/ulGuuc6nUVsc/EZkNfUuLPb7iQU6pUy0F1ti', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101660', 'Syafrizal Ananta Adhitya', '2 RSK', '$2a$08$XnvML3UUuaytWYbJYpvvGeZYfFeVOLVlTkyQIfNtJM9DE518iI0GK', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101661', 'Tsamara Khadijah Slim', '2 RSK', '$2a$08$NK2jF6TWPTH3t0fyOhfLJejkmBbcxzVz79PLyriurZMWoPijyZ1Ru', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101662', 'Willem Michael Albert Mondong', '2 RPLK', '$2a$08$RTEwultLmLfV0AeCPIOwsujQdYc8ahAjSb2/vfxoDa/N4Bwe2B9ma', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101663', 'Wiyar Wilujengning Sejati', '2 RPLK', '$2a$08$t0GiP.m8lQIsK5VU4Gyj3.Hxd0agfLCZPWuCdeTyiS3pJg/RwGyq.', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101664', 'Yafi\' Athallah Yuwandana', '2 RSK', '$2a$08$YugKBmA6/qqsZd3iVSCuNujnDLnfHjEjo.9XJZa/XQz/sPbyhuUR.', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101665', 'Yasmin Putri Salma', '2 RPLK', '$2a$08$02R.zofZNSBxWLi2kiByI.dnCxgroGJoEynYCUfAiyeiLUnqgEeMu', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101666', 'Yudhistira', '2 RKS Red', '$2a$08$cfJoHftDoAdeW6ItDj63y.JLHg/1ImplljgcwoS5vewXlO3iHTHJG', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54'),
('2019101667', 'Zulma Mardiah', '2 RPLK', '$2a$08$ddjPoxdtenLx/DBq6BbOaugh81WK4WQJ3wD/eVThqmGnBanFviw3m', NULL, '2021-10-10 05:51:54', '2021-10-10 05:51:54');

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
  ADD UNIQUE KEY `npm` (`npm`);

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
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_ibfk_1` FOREIGN KEY (`userNpm`) REFERENCES `users` (`npm`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_roles_ibfk_2` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
