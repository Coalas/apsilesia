-- phpMyAdmin SQL Dump
-- version 3.3.7deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 25, 2011 at 05:17 PM
-- Server version: 5.1.49
-- PHP Version: 5.3.3-1ubuntu9.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `SS_apsilesia`
--

-- --------------------------------------------------------

--
-- Table structure for table `ContactPage`
--

CREATE TABLE IF NOT EXISTS `ContactPage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Mailto` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `SubmitText` mediumtext CHARACTER SET utf8,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `ContactPage`
--

INSERT INTO `ContactPage` (`ID`, `Mailto`, `SubmitText`) VALUES
(9, 'admin@domena.pl', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ContactPage_Live`
--

CREATE TABLE IF NOT EXISTS `ContactPage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Mailto` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `SubmitText` mediumtext CHARACTER SET utf8,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `ContactPage_Live`
--

INSERT INTO `ContactPage_Live` (`ID`, `Mailto`, `SubmitText`) VALUES
(9, 'admin@domena.pl', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ContactPage_versions`
--

CREATE TABLE IF NOT EXISTS `ContactPage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `Mailto` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `SubmitText` mediumtext CHARACTER SET utf8,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=22 ;

--
-- Dumping data for table `ContactPage_versions`
--

INSERT INTO `ContactPage_versions` (`ID`, `RecordID`, `Version`, `Mailto`, `SubmitText`) VALUES
(1, 9, 1, NULL, NULL),
(2, 9, 2, 'coalas@o2.pl', NULL),
(3, 9, 3, 'coalas@o2.pl', NULL),
(4, 9, 4, 'coalas@o2.pl', NULL),
(5, 9, 5, 'coalas@o2.pl', NULL),
(6, 9, 6, 'coalas@o2.pl', NULL),
(7, 9, 7, 'coalas@o2.pl', NULL),
(8, 9, 8, 'coalas@o2.pl', NULL),
(9, 9, 9, 'coalas@o2.pl', NULL),
(10, 9, 10, 'coalas@o2.pl', NULL),
(11, 9, 11, 'coalas@o2.pl', NULL),
(12, 9, 12, 'coalas@o2.pl', NULL),
(13, 9, 13, 'coalas@o2.pl', NULL),
(14, 9, 14, 'coalas@o2.pl', NULL),
(15, 9, 15, 'coalas@o2.pl', NULL),
(16, 9, 16, 'coalas@o2.pl', NULL),
(17, 9, 17, 'coalas@o2.pl', NULL),
(18, 9, 18, 'coalas@o2.pl', NULL),
(19, 9, 19, 'coalas@o2.pl', NULL),
(20, 9, 20, 'coalas@o2.pl', NULL),
(21, 9, 21, 'admin@domena.pl', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Email_BounceRecord`
--

CREATE TABLE IF NOT EXISTS `Email_BounceRecord` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Email_BounceRecord') CHARACTER SET utf8 DEFAULT 'Email_BounceRecord',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `BounceEmail` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `BounceTime` datetime DEFAULT NULL,
  `BounceMessage` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `MemberID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `MemberID` (`MemberID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `Email_BounceRecord`
--


-- --------------------------------------------------------

--
-- Table structure for table `ErrorPage`
--

CREATE TABLE IF NOT EXISTS `ErrorPage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ErrorCode` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `ErrorPage`
--

INSERT INTO `ErrorPage` (`ID`, `ErrorCode`) VALUES
(4, 404),
(5, 500);

-- --------------------------------------------------------

--
-- Table structure for table `ErrorPage_Live`
--

CREATE TABLE IF NOT EXISTS `ErrorPage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ErrorCode` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `ErrorPage_Live`
--

INSERT INTO `ErrorPage_Live` (`ID`, `ErrorCode`) VALUES
(4, 404),
(5, 500);

-- --------------------------------------------------------

--
-- Table structure for table `ErrorPage_versions`
--

CREATE TABLE IF NOT EXISTS `ErrorPage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ErrorCode` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `ErrorPage_versions`
--

INSERT INTO `ErrorPage_versions` (`ID`, `RecordID`, `Version`, `ErrorCode`) VALUES
(1, 4, 1, 404),
(2, 5, 1, 500);

-- --------------------------------------------------------

--
-- Table structure for table `File`
--

CREATE TABLE IF NOT EXISTS `File` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('File','FLV','MP3','Image','Folder','ImageGalleryImage','Image_Cached') CHARACTER SET utf8 DEFAULT 'File',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Filename` mediumtext CHARACTER SET utf8,
  `Content` mediumtext CHARACTER SET utf8,
  `Sort` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `OwnerID` int(11) NOT NULL DEFAULT '0',
  `SortOrder` int(11) NOT NULL DEFAULT '0',
  `SubsiteID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `OwnerID` (`OwnerID`),
  KEY `ClassName` (`ClassName`),
  KEY `SubsiteID` (`SubsiteID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=42 ;

--
-- Dumping data for table `File`
--

INSERT INTO `File` (`ID`, `ClassName`, `Created`, `LastEdited`, `Name`, `Title`, `Filename`, `Content`, `Sort`, `ParentID`, `OwnerID`, `SortOrder`, `SubsiteID`) VALUES
(1, 'Folder', '2011-04-13 11:25:39', '2011-04-13 11:25:39', 'Uploads', 'Uploads', 'assets/Uploads/', NULL, 0, 0, 0, 0, 0),
(2, 'Image', '2011-04-13 11:25:39', '2011-04-13 11:25:39', 'SilverStripeLogo.png', 'SilverStripeLogo.png', 'assets/Uploads/SilverStripeLogo.png', NULL, 0, 1, 0, 0, 0),
(3, 'File', '2011-04-13 11:25:39', '2011-04-13 11:25:39', 'error-404.html', 'error-404.html', 'assets/error-404.html', NULL, 0, 0, 0, 0, 0),
(4, 'File', '2011-04-13 11:25:39', '2011-04-13 11:25:39', 'error-500.html', 'error-500.html', 'assets/error-500.html', NULL, 0, 0, 0, 0, 0),
(5, 'Image', '2011-04-13 11:35:18', '2011-04-13 11:35:18', 'DSCN2619.JPG', 'DSCN2619', 'assets/Uploads/DSCN2619.JPG', NULL, 0, 1, 0, 2, 0),
(6, 'Image', '2011-04-13 11:37:29', '2011-04-13 11:37:29', 'DSCN2620.JPG', 'DSCN2620', 'assets/Uploads/DSCN2620.JPG', NULL, 0, 1, 0, 3, 0),
(7, 'Image', '2011-04-13 11:56:50', '2011-04-13 11:56:50', 'zdicia-005.jpg', 'zdicia 005', 'assets/Uploads/zdicia-005.jpg', NULL, 0, 1, 0, 4, 0),
(8, 'Image', '2011-04-13 12:15:00', '2011-04-13 12:15:00', 'DSCN2.JPG', 'DSCN2', 'assets/Uploads/DSCN2.JPG', NULL, 0, 1, 0, 5, 0),
(9, 'Image', '2011-04-13 13:15:55', '2011-04-13 13:15:55', 'img1.png', 'img1', 'assets/Uploads/img1.png', NULL, 0, 1, 0, 6, 0),
(10, 'Image', '2011-04-13 13:16:23', '2011-04-13 13:16:23', 'img3.png', 'img3', 'assets/Uploads/img3.png', NULL, 0, 1, 0, 7, 0),
(11, 'Image', '2011-04-13 13:17:28', '2011-04-13 13:17:28', 'img2.png', 'img2', 'assets/Uploads/img2.png', NULL, 0, 1, 0, 8, 0),
(12, 'Folder', '2011-04-13 13:58:42', '2011-04-13 13:58:42', 'image-gallery', 'Image Gallery', 'assets/image-gallery/', NULL, 0, 0, 0, 2, 0),
(13, 'Folder', '2011-04-13 13:58:42', '2011-04-13 13:59:36', 'Galeria', 'Galeria', 'assets/image-gallery/Galeria/', NULL, 0, 12, 0, 3, 0),
(14, 'Folder', '2011-04-13 13:58:42', '2011-04-13 14:00:06', 'turniej-2011', 'turniej-2011', 'assets/image-gallery/Galeria/turniej-2011/', NULL, 0, 13, 0, 4, 0),
(15, 'ImageGalleryImage', '2011-04-13 14:00:29', '2011-04-13 14:00:29', 'DSCF0391.JPG', 'DSCF0391', 'assets/image-gallery/Galeria/turniej-2011/DSCF0391.JPG', NULL, 0, 14, 0, 0, 0),
(16, 'ImageGalleryImage', '2011-04-13 14:01:08', '2011-04-13 14:01:08', 'DSCF0381.JPG', 'DSCF0381', 'assets/image-gallery/Galeria/turniej-2011/DSCF0381.JPG', NULL, 0, 14, 0, 2, 0),
(17, 'ImageGalleryImage', '2011-04-13 14:01:09', '2011-04-13 14:01:09', 'DSCF0388.JPG', 'DSCF0388', 'assets/image-gallery/Galeria/turniej-2011/DSCF0388.JPG', NULL, 0, 14, 0, 3, 0),
(18, 'ImageGalleryImage', '2011-04-13 14:01:11', '2011-04-13 14:01:11', 'DSCF2.JPG', 'DSCF2', 'assets/image-gallery/Galeria/turniej-2011/DSCF2.JPG', NULL, 0, 14, 0, 4, 0),
(19, 'ImageGalleryImage', '2011-04-13 14:01:13', '2011-04-13 14:01:13', 'DSCF0394.JPG', 'DSCF0394', 'assets/image-gallery/Galeria/turniej-2011/DSCF0394.JPG', NULL, 0, 14, 0, 5, 0),
(20, 'ImageGalleryImage', '2011-04-13 14:01:14', '2011-04-13 14:01:14', 'DSCF0397.JPG', 'DSCF0397', 'assets/image-gallery/Galeria/turniej-2011/DSCF0397.JPG', NULL, 0, 14, 0, 6, 0),
(21, 'ImageGalleryImage', '2011-04-13 14:01:16', '2011-04-13 14:01:16', 'DSCF0398.JPG', 'DSCF0398', 'assets/image-gallery/Galeria/turniej-2011/DSCF0398.JPG', NULL, 0, 14, 0, 7, 0),
(22, 'ImageGalleryImage', '2011-04-13 14:01:18', '2011-04-13 14:01:18', 'DSCF0400.JPG', 'DSCF0400', 'assets/image-gallery/Galeria/turniej-2011/DSCF0400.JPG', NULL, 0, 14, 0, 8, 0),
(23, 'ImageGalleryImage', '2011-04-13 14:01:19', '2011-04-13 14:01:19', 'DSCF0402.JPG', 'DSCF0402', 'assets/image-gallery/Galeria/turniej-2011/DSCF0402.JPG', NULL, 0, 14, 0, 9, 0),
(24, 'ImageGalleryImage', '2011-04-13 14:01:21', '2011-04-13 14:01:21', 'DSCF0403.JPG', 'DSCF0403', 'assets/image-gallery/Galeria/turniej-2011/DSCF0403.JPG', NULL, 0, 14, 0, 10, 0),
(25, 'ImageGalleryImage', '2011-04-13 14:01:22', '2011-04-13 14:01:22', 'DSCF0406.JPG', 'DSCF0406', 'assets/image-gallery/Galeria/turniej-2011/DSCF0406.JPG', NULL, 0, 14, 0, 11, 0),
(26, 'ImageGalleryImage', '2011-04-13 14:01:24', '2011-04-13 14:01:24', 'DSCF0413.JPG', 'DSCF0413', 'assets/image-gallery/Galeria/turniej-2011/DSCF0413.JPG', NULL, 0, 14, 0, 12, 0),
(27, 'ImageGalleryImage', '2011-04-13 14:01:26', '2011-04-13 14:01:26', 'DSCF0414.JPG', 'DSCF0414', 'assets/image-gallery/Galeria/turniej-2011/DSCF0414.JPG', NULL, 0, 14, 0, 13, 0),
(28, 'ImageGalleryImage', '2011-04-13 14:01:27', '2011-04-13 14:01:27', 'DSCF0417.JPG', 'DSCF0417', 'assets/image-gallery/Galeria/turniej-2011/DSCF0417.JPG', NULL, 0, 14, 0, 14, 0),
(29, 'ImageGalleryImage', '2011-04-13 14:01:29', '2011-04-13 14:01:29', 'DSCF0419.JPG', 'DSCF0419', 'assets/image-gallery/Galeria/turniej-2011/DSCF0419.JPG', NULL, 0, 14, 0, 15, 0),
(30, 'ImageGalleryImage', '2011-04-13 14:01:31', '2011-04-13 14:01:31', 'DSCF0421.JPG', 'DSCF0421', 'assets/image-gallery/Galeria/turniej-2011/DSCF0421.JPG', NULL, 0, 14, 0, 16, 0),
(31, 'ImageGalleryImage', '2011-04-13 14:01:32', '2011-04-13 14:01:32', 'DSCF0428.JPG', 'DSCF0428', 'assets/image-gallery/Galeria/turniej-2011/DSCF0428.JPG', NULL, 0, 14, 0, 17, 0),
(32, 'ImageGalleryImage', '2011-04-13 14:01:34', '2011-04-13 14:01:34', 'DSCF0431.JPG', 'DSCF0431', 'assets/image-gallery/Galeria/turniej-2011/DSCF0431.JPG', NULL, 0, 14, 0, 18, 0),
(33, 'ImageGalleryImage', '2011-04-13 14:01:35', '2011-04-13 14:01:35', 'DSCF0435.JPG', 'DSCF0435', 'assets/image-gallery/Galeria/turniej-2011/DSCF0435.JPG', NULL, 0, 14, 0, 19, 0),
(34, 'ImageGalleryImage', '2011-04-13 14:01:37', '2011-04-13 14:01:37', 'DSCF0438.JPG', 'DSCF0438', 'assets/image-gallery/Galeria/turniej-2011/DSCF0438.JPG', NULL, 0, 14, 0, 20, 0),
(35, 'ImageGalleryImage', '2011-04-13 14:01:39', '2011-04-13 14:01:39', 'DSCF0440.JPG', 'DSCF0440', 'assets/image-gallery/Galeria/turniej-2011/DSCF0440.JPG', NULL, 0, 14, 0, 21, 0),
(36, 'Folder', '2011-04-13 18:36:18', '2011-04-13 18:45:27', 'Galeria-3', 'Galeria', 'assets/image-gallery/Galeria-3/', NULL, 0, 12, 0, 5, 0),
(37, 'Folder', '2011-04-13 18:36:18', '2011-04-13 18:45:27', 'turniej-2010', 'turniej-2010', 'assets/image-gallery/Galeria-3/turniej-2010/', NULL, 0, 36, 0, 6, 0),
(38, 'Image', '2011-04-13 18:43:34', '2011-04-13 18:45:27', 'apache.jpg', 'apache', 'assets/image-gallery/Galeria-3/turniej-2010/apache.jpg', NULL, 0, 37, 0, 30, 0),
(39, 'ImageGalleryImage', '2011-04-13 18:44:13', '2011-04-13 18:45:27', '2.jpg', '2', 'assets/image-gallery/Galeria-3/turniej-2010/2.jpg', NULL, 0, 37, 0, 22, 0),
(40, 'Image', '2011-04-14 11:48:26', '2011-04-14 11:48:26', 'DSCN2224.JPG', 'DSCN2224', 'assets/Uploads/DSCN2224.JPG', NULL, 0, 1, 0, 32, 0),
(41, 'Image', '2011-04-14 11:49:15', '2011-04-14 11:49:15', 'DSCN2380.JPG', 'DSCN2380', 'assets/Uploads/DSCN2380.JPG', NULL, 0, 1, 0, 33, 0);

-- --------------------------------------------------------

--
-- Table structure for table `Group`
--

CREATE TABLE IF NOT EXISTS `Group` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Group') CHARACTER SET utf8 DEFAULT 'Group',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Title` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Description` mediumtext CHARACTER SET utf8,
  `Code` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Locked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `IPRestrictions` mediumtext CHARACTER SET utf8,
  `HtmlEditorConfig` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `AccessAllSubsites` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `Group`
--

INSERT INTO `Group` (`ID`, `ClassName`, `Created`, `LastEdited`, `Title`, `Description`, `Code`, `Locked`, `Sort`, `IPRestrictions`, `HtmlEditorConfig`, `ParentID`, `AccessAllSubsites`) VALUES
(1, 'Group', '2011-04-13 11:25:38', '2011-04-13 11:25:38', 'Autor treści', NULL, 'content-authors', 0, 1, NULL, NULL, 0, 1),
(2, 'Group', '2011-04-13 11:25:38', '2011-04-13 11:25:38', 'Administratorzy', NULL, 'administrators', 0, 0, NULL, NULL, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Group_Members`
--

CREATE TABLE IF NOT EXISTS `Group_Members` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `GroupID` int(11) NOT NULL DEFAULT '0',
  `MemberID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `GroupID` (`GroupID`),
  KEY `MemberID` (`MemberID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `Group_Members`
--

INSERT INTO `Group_Members` (`ID`, `GroupID`, `MemberID`) VALUES
(1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Group_Roles`
--

CREATE TABLE IF NOT EXISTS `Group_Roles` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `GroupID` int(11) NOT NULL DEFAULT '0',
  `PermissionRoleID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `GroupID` (`GroupID`),
  KEY `PermissionRoleID` (`PermissionRoleID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `Group_Roles`
--


-- --------------------------------------------------------

--
-- Table structure for table `Group_Subsites`
--

CREATE TABLE IF NOT EXISTS `Group_Subsites` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `GroupID` int(11) NOT NULL DEFAULT '0',
  `SubsiteID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `GroupID` (`GroupID`),
  KEY `SubsiteID` (`SubsiteID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `Group_Subsites`
--


-- --------------------------------------------------------

--
-- Table structure for table `ImageGalleryAlbum`
--

CREATE TABLE IF NOT EXISTS `ImageGalleryAlbum` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('ImageGalleryAlbum') CHARACTER SET utf8 DEFAULT 'ImageGalleryAlbum',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `AlbumName` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Description` mediumtext CHARACTER SET utf8,
  `SortOrder` int(11) NOT NULL DEFAULT '0',
  `CoverImageID` int(11) NOT NULL DEFAULT '0',
  `ImageGalleryPageID` int(11) NOT NULL DEFAULT '0',
  `FolderID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `CoverImageID` (`CoverImageID`),
  KEY `ImageGalleryPageID` (`ImageGalleryPageID`),
  KEY `FolderID` (`FolderID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `ImageGalleryAlbum`
--

INSERT INTO `ImageGalleryAlbum` (`ID`, `ClassName`, `Created`, `LastEdited`, `AlbumName`, `Description`, `SortOrder`, `CoverImageID`, `ImageGalleryPageID`, `FolderID`) VALUES
(1, 'ImageGalleryAlbum', '2011-04-13 13:58:42', '2011-04-13 14:00:06', 'Turniej 2011', NULL, 0, 6, 10, 14),
(2, 'ImageGalleryAlbum', '2011-04-13 18:36:19', '2011-04-13 18:43:37', 'Turniej 2010', NULL, 2, 38, 13, 37);

-- --------------------------------------------------------

--
-- Table structure for table `ImageGalleryItem`
--

CREATE TABLE IF NOT EXISTS `ImageGalleryItem` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('ImageGalleryItem') CHARACTER SET utf8 DEFAULT 'ImageGalleryItem',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Caption` mediumtext CHARACTER SET utf8,
  `SortOrder` int(11) NOT NULL DEFAULT '0',
  `ImageGalleryPageID` int(11) NOT NULL DEFAULT '0',
  `AlbumID` int(11) NOT NULL DEFAULT '0',
  `ImageID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ImageGalleryPageID` (`ImageGalleryPageID`),
  KEY `AlbumID` (`AlbumID`),
  KEY `ImageID` (`ImageID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=23 ;

--
-- Dumping data for table `ImageGalleryItem`
--

INSERT INTO `ImageGalleryItem` (`ID`, `ClassName`, `Created`, `LastEdited`, `Caption`, `SortOrder`, `ImageGalleryPageID`, `AlbumID`, `ImageID`) VALUES
(1, 'ImageGalleryItem', '2011-04-13 14:00:32', '2011-04-13 14:00:32', NULL, 0, 10, 1, 15),
(2, 'ImageGalleryItem', '2011-04-13 14:01:45', '2011-04-13 14:01:51', NULL, 2, 10, 1, 16),
(3, 'ImageGalleryItem', '2011-04-13 14:01:45', '2011-04-13 14:02:00', NULL, 3, 10, 1, 17),
(4, 'ImageGalleryItem', '2011-04-13 14:01:45', '2011-04-13 14:01:45', NULL, 4, 10, 1, 18),
(5, 'ImageGalleryItem', '2011-04-13 14:01:45', '2011-04-13 14:01:45', NULL, 5, 10, 1, 19),
(6, 'ImageGalleryItem', '2011-04-13 14:01:45', '2011-04-13 14:01:45', NULL, 6, 10, 1, 20),
(7, 'ImageGalleryItem', '2011-04-13 14:01:45', '2011-04-13 14:01:45', NULL, 7, 10, 1, 21),
(8, 'ImageGalleryItem', '2011-04-13 14:01:45', '2011-04-13 14:01:45', NULL, 8, 10, 1, 22),
(9, 'ImageGalleryItem', '2011-04-13 14:01:45', '2011-04-13 14:01:45', NULL, 9, 10, 1, 23),
(10, 'ImageGalleryItem', '2011-04-13 14:01:45', '2011-04-13 14:01:45', NULL, 10, 10, 1, 24),
(11, 'ImageGalleryItem', '2011-04-13 14:01:45', '2011-04-13 14:01:45', NULL, 11, 10, 1, 25),
(12, 'ImageGalleryItem', '2011-04-13 14:01:45', '2011-04-13 14:01:45', NULL, 12, 10, 1, 26),
(13, 'ImageGalleryItem', '2011-04-13 14:01:45', '2011-04-13 14:01:45', NULL, 13, 10, 1, 27),
(14, 'ImageGalleryItem', '2011-04-13 14:01:45', '2011-04-13 14:01:45', NULL, 14, 10, 1, 28),
(15, 'ImageGalleryItem', '2011-04-13 14:01:45', '2011-04-13 14:01:45', NULL, 15, 10, 1, 29),
(16, 'ImageGalleryItem', '2011-04-13 14:01:45', '2011-04-13 14:01:45', NULL, 16, 10, 1, 30),
(17, 'ImageGalleryItem', '2011-04-13 14:01:45', '2011-04-13 14:01:45', NULL, 17, 10, 1, 31),
(18, 'ImageGalleryItem', '2011-04-13 14:01:45', '2011-04-13 14:01:45', NULL, 18, 10, 1, 32),
(19, 'ImageGalleryItem', '2011-04-13 14:01:45', '2011-04-13 14:01:45', NULL, 19, 10, 1, 33),
(20, 'ImageGalleryItem', '2011-04-13 14:01:45', '2011-04-13 14:01:45', NULL, 20, 10, 1, 34),
(21, 'ImageGalleryItem', '2011-04-13 14:01:45', '2011-04-13 14:01:45', NULL, 21, 10, 1, 35),
(22, 'ImageGalleryItem', '2011-04-13 18:44:15', '2011-04-13 18:44:18', NULL, 22, 13, 2, 39);

-- --------------------------------------------------------

--
-- Table structure for table `ImageGalleryPage`
--

CREATE TABLE IF NOT EXISTS `ImageGalleryPage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SortBy` enum('Title','UploadDateASC','UploadDateDESC','SortASC') CHARACTER SET utf8 DEFAULT 'SortASC',
  `GalleryUI` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `CoverImageWidth` int(11) NOT NULL DEFAULT '0',
  `CoverImageHeight` int(11) NOT NULL DEFAULT '0',
  `ThumbnailSize` int(11) NOT NULL DEFAULT '0',
  `MediumSize` int(11) NOT NULL DEFAULT '0',
  `Square` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `NormalSize` int(11) NOT NULL DEFAULT '0',
  `NormalHeight` int(11) NOT NULL DEFAULT '0',
  `MediaPerPage` int(11) NOT NULL DEFAULT '0',
  `UploadLimit` int(11) NOT NULL DEFAULT '0',
  `RootFolderID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `RootFolderID` (`RootFolderID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=14 ;

--
-- Dumping data for table `ImageGalleryPage`
--

INSERT INTO `ImageGalleryPage` (`ID`, `SortBy`, `GalleryUI`, `CoverImageWidth`, `CoverImageHeight`, `ThumbnailSize`, `MediumSize`, `Square`, `NormalSize`, `NormalHeight`, `MediaPerPage`, `UploadLimit`, `RootFolderID`) VALUES
(10, 'SortASC', 'Lightbox', 128, 128, 128, 400, 1, 600, 0, 30, 20, 13),
(13, 'SortASC', 'Lightbox', 128, 128, 128, 400, 1, 600, 0, 30, 20, 36);

-- --------------------------------------------------------

--
-- Table structure for table `ImageGalleryPage_Live`
--

CREATE TABLE IF NOT EXISTS `ImageGalleryPage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SortBy` enum('Title','UploadDateASC','UploadDateDESC','SortASC') CHARACTER SET utf8 DEFAULT 'SortASC',
  `GalleryUI` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `CoverImageWidth` int(11) NOT NULL DEFAULT '0',
  `CoverImageHeight` int(11) NOT NULL DEFAULT '0',
  `ThumbnailSize` int(11) NOT NULL DEFAULT '0',
  `MediumSize` int(11) NOT NULL DEFAULT '0',
  `Square` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `NormalSize` int(11) NOT NULL DEFAULT '0',
  `NormalHeight` int(11) NOT NULL DEFAULT '0',
  `MediaPerPage` int(11) NOT NULL DEFAULT '0',
  `UploadLimit` int(11) NOT NULL DEFAULT '0',
  `RootFolderID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `RootFolderID` (`RootFolderID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=14 ;

--
-- Dumping data for table `ImageGalleryPage_Live`
--

INSERT INTO `ImageGalleryPage_Live` (`ID`, `SortBy`, `GalleryUI`, `CoverImageWidth`, `CoverImageHeight`, `ThumbnailSize`, `MediumSize`, `Square`, `NormalSize`, `NormalHeight`, `MediaPerPage`, `UploadLimit`, `RootFolderID`) VALUES
(10, 'SortASC', 'Lightbox', 128, 128, 128, 400, 1, 600, 0, 30, 20, 13),
(13, 'SortASC', 'Lightbox', 128, 128, 128, 400, 1, 600, 0, 30, 20, 36);

-- --------------------------------------------------------

--
-- Table structure for table `ImageGalleryPage_versions`
--

CREATE TABLE IF NOT EXISTS `ImageGalleryPage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `SortBy` enum('Title','UploadDateASC','UploadDateDESC','SortASC') CHARACTER SET utf8 DEFAULT 'SortASC',
  `GalleryUI` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `CoverImageWidth` int(11) NOT NULL DEFAULT '0',
  `CoverImageHeight` int(11) NOT NULL DEFAULT '0',
  `ThumbnailSize` int(11) NOT NULL DEFAULT '0',
  `MediumSize` int(11) NOT NULL DEFAULT '0',
  `Square` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `NormalSize` int(11) NOT NULL DEFAULT '0',
  `NormalHeight` int(11) NOT NULL DEFAULT '0',
  `MediaPerPage` int(11) NOT NULL DEFAULT '0',
  `UploadLimit` int(11) NOT NULL DEFAULT '0',
  `RootFolderID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `RootFolderID` (`RootFolderID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=13 ;

--
-- Dumping data for table `ImageGalleryPage_versions`
--

INSERT INTO `ImageGalleryPage_versions` (`ID`, `RecordID`, `Version`, `SortBy`, `GalleryUI`, `CoverImageWidth`, `CoverImageHeight`, `ThumbnailSize`, `MediumSize`, `Square`, `NormalSize`, `NormalHeight`, `MediaPerPage`, `UploadLimit`, `RootFolderID`) VALUES
(1, 10, 1, 'SortASC', 'Lightbox', 128, 128, 128, 400, 1, 600, 0, 30, 20, 0),
(2, 10, 2, 'SortASC', 'Lightbox', 128, 128, 128, 400, 1, 600, 0, 30, 20, 13),
(3, 13, 1, 'SortASC', 'Lightbox', 128, 128, 128, 400, 1, 600, 0, 30, 20, 0),
(4, 13, 2, 'SortASC', 'Lightbox', 128, 128, 128, 400, 1, 600, 0, 30, 20, 36),
(5, 13, 3, 'SortASC', 'Lightbox', 128, 128, 128, 400, 1, 600, 0, 30, 20, 36),
(6, 13, 4, 'SortASC', 'Lightbox', 128, 128, 128, 400, 1, 600, 0, 30, 20, 36),
(7, 13, 5, 'SortASC', 'Lightbox', 128, 128, 128, 400, 1, 600, 0, 30, 20, 36),
(8, 10, 3, 'SortASC', 'Lightbox', 128, 128, 128, 400, 1, 600, 0, 30, 20, 13),
(9, 10, 4, 'SortASC', 'Lightbox', 128, 128, 128, 400, 1, 600, 0, 30, 20, 13),
(10, 10, 5, 'SortASC', 'Lightbox', 128, 128, 128, 400, 1, 600, 0, 30, 20, 13),
(11, 10, 6, 'SortASC', 'Lightbox', 128, 128, 128, 400, 1, 600, 0, 30, 20, 13),
(12, 10, 7, 'SortASC', 'Lightbox', 128, 128, 128, 400, 1, 600, 0, 30, 20, 13);

-- --------------------------------------------------------

--
-- Table structure for table `LoginAttempt`
--

CREATE TABLE IF NOT EXISTS `LoginAttempt` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('LoginAttempt') CHARACTER SET utf8 DEFAULT 'LoginAttempt',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Email` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Status` enum('Success','Failure') CHARACTER SET utf8 DEFAULT 'Success',
  `IP` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `MemberID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `MemberID` (`MemberID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `LoginAttempt`
--


-- --------------------------------------------------------

--
-- Table structure for table `Member`
--

CREATE TABLE IF NOT EXISTS `Member` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Member') CHARACTER SET utf8 DEFAULT 'Member',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `FirstName` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Surname` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Email` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Password` varchar(160) CHARACTER SET utf8 DEFAULT NULL,
  `RememberLoginToken` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `NumVisit` int(11) NOT NULL DEFAULT '0',
  `LastVisited` datetime DEFAULT NULL,
  `Bounced` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `AutoLoginHash` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `AutoLoginExpired` datetime DEFAULT NULL,
  `PasswordEncryption` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Salt` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `PasswordExpiry` date DEFAULT NULL,
  `LockedOutUntil` datetime DEFAULT NULL,
  `Locale` varchar(6) CHARACTER SET utf8 DEFAULT NULL,
  `FailedLoginCount` int(11) NOT NULL DEFAULT '0',
  `DateFormat` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `TimeFormat` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `Email` (`Email`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `Member`
--

INSERT INTO `Member` (`ID`, `ClassName`, `Created`, `LastEdited`, `FirstName`, `Surname`, `Email`, `Password`, `RememberLoginToken`, `NumVisit`, `LastVisited`, `Bounced`, `AutoLoginHash`, `AutoLoginExpired`, `PasswordEncryption`, `Salt`, `PasswordExpiry`, `LockedOutUntil`, `Locale`, `FailedLoginCount`, `DateFormat`, `TimeFormat`) VALUES
(1, 'Member', '2011-04-13 11:25:38', '2011-04-25 15:26:13', 'Domyślny administrator', NULL, 'admin', '90296cbf1565bb5b199182c630cda64ed16a507a', NULL, 17, '2011-04-25 16:28:10', 0, NULL, NULL, 'sha1_v2.4', '20f600ebd984c205d14b6eb35aac61ffa77b6c64', NULL, NULL, 'pl_PL', 0, 'yyyy-MM-dd', 'HH:mm:ss');

-- --------------------------------------------------------

--
-- Table structure for table `MemberPassword`
--

CREATE TABLE IF NOT EXISTS `MemberPassword` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('MemberPassword') CHARACTER SET utf8 DEFAULT 'MemberPassword',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Password` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Salt` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `PasswordEncryption` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `MemberID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `MemberID` (`MemberID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `MemberPassword`
--

INSERT INTO `MemberPassword` (`ID`, `ClassName`, `Created`, `LastEdited`, `Password`, `Salt`, `PasswordEncryption`, `MemberID`) VALUES
(1, 'MemberPassword', '2011-04-13 11:25:39', '2011-04-13 11:25:39', 'a2dfcf570b31bbda94c72b5de98faa65ad748931', '20f600ebd984c205d14b6eb35aac61ffa77b6c64', 'sha1_v2.4', 1),
(2, 'MemberPassword', '2011-04-19 14:03:02', '2011-04-19 14:03:02', '90296cbf1565bb5b199182c630cda64ed16a507a', '20f600ebd984c205d14b6eb35aac61ffa77b6c64', 'sha1_v2.4', 1);

-- --------------------------------------------------------

--
-- Table structure for table `PageComment`
--

CREATE TABLE IF NOT EXISTS `PageComment` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('PageComment') CHARACTER SET utf8 DEFAULT 'PageComment',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Name` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `Comment` mediumtext CHARACTER SET utf8,
  `IsSpam` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `NeedsModeration` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `CommenterURL` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `SessionID` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `AuthorID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `AuthorID` (`AuthorID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `PageComment`
--


-- --------------------------------------------------------

--
-- Table structure for table `Permission`
--

CREATE TABLE IF NOT EXISTS `Permission` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Permission') CHARACTER SET utf8 DEFAULT 'Permission',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Code` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Arg` int(11) NOT NULL DEFAULT '0',
  `Type` int(11) NOT NULL DEFAULT '1',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `GroupID` (`GroupID`),
  KEY `Code` (`Code`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `Permission`
--

INSERT INTO `Permission` (`ID`, `ClassName`, `Created`, `LastEdited`, `Code`, `Arg`, `Type`, `GroupID`) VALUES
(1, 'Permission', '2011-04-13 11:25:38', '2011-04-13 11:25:38', 'CMS_ACCESS_CMSMain', 0, 1, 1),
(2, 'Permission', '2011-04-13 11:25:38', '2011-04-13 11:25:38', 'CMS_ACCESS_AssetAdmin', 0, 1, 1),
(3, 'Permission', '2011-04-13 11:25:38', '2011-04-13 11:25:38', 'CMS_ACCESS_CommentAdmin', 0, 1, 1),
(4, 'Permission', '2011-04-13 11:25:38', '2011-04-13 11:25:38', 'CMS_ACCESS_ReportAdmin', 0, 1, 1),
(5, 'Permission', '2011-04-13 11:25:38', '2011-04-13 11:25:38', 'SITETREE_REORGANISE', 0, 1, 1),
(6, 'Permission', '2011-04-13 11:25:38', '2011-04-13 11:25:38', 'ADMIN', 0, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `PermissionRole`
--

CREATE TABLE IF NOT EXISTS `PermissionRole` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('PermissionRole') CHARACTER SET utf8 DEFAULT 'PermissionRole',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Title` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `OnlyAdminCanApply` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `PermissionRole`
--


-- --------------------------------------------------------

--
-- Table structure for table `PermissionRoleCode`
--

CREATE TABLE IF NOT EXISTS `PermissionRoleCode` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('PermissionRoleCode') CHARACTER SET utf8 DEFAULT 'PermissionRoleCode',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Code` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `RoleID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `RoleID` (`RoleID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `PermissionRoleCode`
--


-- --------------------------------------------------------

--
-- Table structure for table `QueuedEmail`
--

CREATE TABLE IF NOT EXISTS `QueuedEmail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('QueuedEmail') CHARACTER SET utf8 DEFAULT 'QueuedEmail',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Send` datetime DEFAULT NULL,
  `Subject` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `From` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Content` mediumtext CHARACTER SET utf8,
  `ToID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ToID` (`ToID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `QueuedEmail`
--


-- --------------------------------------------------------

--
-- Table structure for table `RedirectorPage`
--

CREATE TABLE IF NOT EXISTS `RedirectorPage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RedirectionType` enum('Internal','External') CHARACTER SET utf8 DEFAULT 'Internal',
  `ExternalURL` varchar(2083) CHARACTER SET utf8 DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `LinkToID` (`LinkToID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `RedirectorPage`
--


-- --------------------------------------------------------

--
-- Table structure for table `RedirectorPage_Live`
--

CREATE TABLE IF NOT EXISTS `RedirectorPage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RedirectionType` enum('Internal','External') CHARACTER SET utf8 DEFAULT 'Internal',
  `ExternalURL` varchar(2083) CHARACTER SET utf8 DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `LinkToID` (`LinkToID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `RedirectorPage_Live`
--


-- --------------------------------------------------------

--
-- Table structure for table `RedirectorPage_versions`
--

CREATE TABLE IF NOT EXISTS `RedirectorPage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `RedirectionType` enum('Internal','External') CHARACTER SET utf8 DEFAULT 'Internal',
  `ExternalURL` varchar(2083) CHARACTER SET utf8 DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `LinkToID` (`LinkToID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `RedirectorPage_versions`
--


-- --------------------------------------------------------

--
-- Table structure for table `RelatedPageLink`
--

CREATE TABLE IF NOT EXISTS `RelatedPageLink` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('RelatedPageLink') CHARACTER SET utf8 DEFAULT 'RelatedPageLink',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `RelatedPageID` int(11) NOT NULL DEFAULT '0',
  `MasterPageID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `RelatedPageID` (`RelatedPageID`),
  KEY `MasterPageID` (`MasterPageID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `RelatedPageLink`
--


-- --------------------------------------------------------

--
-- Table structure for table `S3File`
--

CREATE TABLE IF NOT EXISTS `S3File` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('S3File') CHARACTER SET utf8 DEFAULT 'S3File',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Bucket` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `URL` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `OwnerID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `OwnerID` (`OwnerID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `S3File`
--


-- --------------------------------------------------------

--
-- Table structure for table `SiteConfig`
--

CREATE TABLE IF NOT EXISTS `SiteConfig` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SiteConfig') CHARACTER SET utf8 DEFAULT 'SiteConfig',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Tagline` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Theme` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers') CHARACTER SET utf8 DEFAULT 'Anyone',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers') CHARACTER SET utf8 DEFAULT 'LoggedInUsers',
  `CanCreateTopLevelType` enum('LoggedInUsers','OnlyTheseUsers') CHARACTER SET utf8 DEFAULT 'LoggedInUsers',
  `SubsiteID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`),
  KEY `SubsiteID` (`SubsiteID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `SiteConfig`
--

INSERT INTO `SiteConfig` (`ID`, `ClassName`, `Created`, `LastEdited`, `Title`, `Tagline`, `Theme`, `CanViewType`, `CanEditType`, `CanCreateTopLevelType`, `SubsiteID`) VALUES
(1, 'SiteConfig', '2011-04-13 11:25:38', '2011-04-13 11:26:24', 'Nazwa twojego serwisu', 'napisz swój slogan tutaj', 'apsilesia', 'Anyone', 'LoggedInUsers', 'LoggedInUsers', 0);

-- --------------------------------------------------------

--
-- Table structure for table `SiteConfig_CreateTopLevelGroups`
--

CREATE TABLE IF NOT EXISTS `SiteConfig_CreateTopLevelGroups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteConfigID` (`SiteConfigID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `SiteConfig_CreateTopLevelGroups`
--


-- --------------------------------------------------------

--
-- Table structure for table `SiteConfig_EditorGroups`
--

CREATE TABLE IF NOT EXISTS `SiteConfig_EditorGroups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteConfigID` (`SiteConfigID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `SiteConfig_EditorGroups`
--


-- --------------------------------------------------------

--
-- Table structure for table `SiteConfig_ViewerGroups`
--

CREATE TABLE IF NOT EXISTS `SiteConfig_ViewerGroups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteConfigID` (`SiteConfigID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `SiteConfig_ViewerGroups`
--


-- --------------------------------------------------------

--
-- Table structure for table `SiteTree`
--

CREATE TABLE IF NOT EXISTS `SiteTree` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SiteTree','Page','ImageGalleryPage','ContactPage','CupPage','HomePage','ErrorPage','RedirectorPage','VirtualPage','SliderPage') CHARACTER SET utf8 DEFAULT 'SiteTree',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `URLSegment` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `MenuTitle` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `Content` mediumtext CHARACTER SET utf8,
  `MetaTitle` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `MetaDescription` mediumtext CHARACTER SET utf8,
  `MetaKeywords` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ExtraMeta` mediumtext CHARACTER SET utf8,
  `ShowInMenus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ShowInSearch` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HomepageForDomain` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `ProvideComments` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HasBrokenFile` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HasBrokenLink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Status` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `ReportClass` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `ToDo` mediumtext CHARACTER SET utf8,
  `Version` int(11) NOT NULL DEFAULT '0',
  `Priority` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `SubsiteID` int(11) NOT NULL DEFAULT '0',
  `MasterPageID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `URLSegment` (`URLSegment`),
  KEY `ClassName` (`ClassName`),
  KEY `SubsiteID` (`SubsiteID`),
  KEY `MasterPageID` (`MasterPageID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=19 ;

--
-- Dumping data for table `SiteTree`
--

INSERT INTO `SiteTree` (`ID`, `ClassName`, `Created`, `LastEdited`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaTitle`, `MetaDescription`, `MetaKeywords`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `HomepageForDomain`, `ProvideComments`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `Status`, `ReportClass`, `CanViewType`, `CanEditType`, `ToDo`, `Version`, `Priority`, `ParentID`, `SubsiteID`, `MasterPageID`) VALUES
(1, 'HomePage', '2011-04-13 11:25:38', '2011-04-14 10:41:52', 'home', 'Start', NULL, '<p>Witaj w SilverStripe! To jest domyślna strona domowa. Możesz ją edytować, otwierając <a href="admin/">CMS</a>. Możesz teraz otworzyć <a href="http://doc.silverstripe.com">dokumentację dla developerów</a>, lub rozpocząć <a href="http://doc.silverstripe.com/doku.php?id=tutorials">jeden z samouczyków.</a></p>', 'Start', NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 3, '1.0', 0, 0, 0),
(2, 'Page', '2011-04-13 11:25:38', '2011-04-14 10:43:16', 'program', 'Program', NULL, '<div id="lipsum" style="text-align: justify;">\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam volutpat,  urna vel pulvinar mollis, elit magna convallis mi, at malesuada lacus  nisi eu erat. Proin congue lobortis libero, sed mattis metus ultrices  et. Praesent sodales mi a est vestibulum volutpat. Sed nunc purus,  pulvinar et pharetra sed, viverra interdum nunc. Curabitur tincidunt,  sem consectetur facilisis vulputate, lorem ipsum convallis risus, auctor  vestibulum enim libero ut erat. Curabitur euismod tempor tincidunt.  Fusce ac magna urna. In hac habitasse platea dictumst. Maecenas  tincidunt orci diam, porta condimentum arcu. Fusce ante massa, elementum  id varius ut, euismod et erat. Morbi et quam neque, eget venenatis  dolor.</p>\n<p>Fusce dui nulla, ullamcorper sit amet aliquam at, viverra ac odio.  Vestibulum ut ipsum vel dui accumsan congue. Fusce ac ante vel lorem  adipiscing rhoncus. Donec egestas euismod mauris, non dapibus dolor  ullamcorper eget. In eu neque justo. Maecenas id diam odio. Nulla  facilisi. Vestibulum pretium est et massa adipiscing egestas. Nunc  tincidunt eros eu metus tempor a elementum dolor iaculis. Vivamus ac  orci nunc, nec dignissim lacus.</p>\n<p>Nullam magna tellus, adipiscing vitae malesuada hendrerit, ultricies sed  mi. Aenean erat ante, accumsan vel auctor non, malesuada nec dolor.  Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere  cubilia Curae; Vivamus tincidunt, dui et consequat malesuada, nisi nunc  eleifend ipsum, id mollis neque neque eget nibh. Donec sit amet  bibendum mi. Donec semper congue auctor. Nulla sed eros elit. Fusce eget  porta neque. Maecenas non massa mauris. Proin hendrerit, nunc non  egestas vestibulum, leo lacus facilisis felis, et commodo enim magna non  mi. Maecenas bibendum lacus sit amet odio placerat interdum. Aenean  eget tortor a erat mollis congue.</p>\n<p>Nulla nunc augue, gravida eget ultrices eu, interdum vel magna. Mauris  elit augue, tempus non condimentum at, aliquet sed justo. Maecenas  aliquam, tellus in tincidunt tempor, lacus nisl ornare tellus, at tempor  diam sem eget massa. Etiam fringilla gravida augue nec gravida. Aliquam  mauris augue, varius et accumsan in, tempor vel est. Fusce placerat  erat sed odio ultricies in imperdiet lorem blandit. Duis ornare tellus  id eros tempor scelerisque. Pellentesque sagittis mi aliquet metus  suscipit eu tristique enim consectetur. Aenean eros enim, placerat et  vulputate a, malesuada vel ligula. Donec consectetur dignissim tellus.  Donec dapibus nunc a purus tempus sit amet adipiscing nibh interdum.  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse ut  egestas elit. Quisque congue arcu eget lorem fermentum sit amet  elementum est porttitor. Duis placerat nulla at tortor auctor imperdiet.  Aenean fringilla, lacus sed consectetur bibendum, magna nisl laoreet  sapien, vel vehicula nisl odio at augue. Vestibulum ante ipsum primis in  faucibus orci luctus et ultrices posuere cubilia Curae; Morbi pulvinar  consequat turpis, non fringilla orci pharetra sed. Mauris a felis  libero, vel pretium risus. Suspendisse cursus eros at arcu venenatis  tempus.</p>\n<p>Aenean at elit nec tellus dignissim iaculis at vel orci. Cras porta  pretium mauris, ullamcorper dignissim sapien ullamcorper nec. Ut auctor  ligula sit amet nisl mollis vel porttitor ante sollicitudin. Curabitur  vulputate libero in nibh fringilla ac dignissim erat ultricies. Sed  tincidunt enim ut risus ultrices tempor. Etiam quis nisl nunc, ut  gravida arcu. Suspendisse hendrerit nunc vel leo lobortis auctor.  Pellentesque habitant morbi tristique senectus et netus et malesuada  fames ac turpis egestas. Donec hendrerit fermentum accumsan. Nullam a  cursus elit. Donec mauris nibh, mattis eget ultricies id, malesuada  vitae ante. Aenean vulputate consectetur cursus.</p>\n</div>', 'Program', NULL, NULL, NULL, 1, 1, NULL, 0, 2, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 4, '1.0', 0, 0, 0),
(8, 'SliderPage', '2011-04-13 12:14:41', '2011-04-14 10:48:59', 'archiwum', 'Archiwum', NULL, NULL, 'Archiwum', NULL, NULL, NULL, 1, 1, NULL, 0, 9, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, 4, '1.0', 0, 0, 0),
(4, 'ErrorPage', '2011-04-13 11:25:38', '2011-04-13 11:25:39', 'nie-znaleziono-strony', 'Nie znaleziono strony', NULL, '<p>Niestety, próbujesz wejść na stronę, która nie istnieje.</p><p>Sprawdź pisownię adresu URL i spróbuj ponownie.</p>', NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 3, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, 1, NULL, 0, 0, 0),
(5, 'ErrorPage', '2011-04-13 11:25:39', '2011-04-13 11:25:39', 'server-error', 'Server error', NULL, '<p>Sorry, there was a problem with handling your request.</p>', NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 4, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, 1, NULL, 0, 0, 0),
(9, 'ContactPage', '2011-04-13 13:55:12', '2011-04-20 11:41:29', 'kontakt', 'Kontakt', NULL, '<p><strong>Klub Sportowy Akademia Piłkarska Silesia</strong></p>\n<p class="leftAlone">Ul. Kościuszki 35<br/>44-100 Gliwice </p>\n<p><span class="leftAlone"><strong>silesia@apsilesia.pl</strong><br/>Michał Tofilski tel. 795-696-874<br/>Rafał Grzegorzek tel. 794-789-807</span></p>', 'Kontakt', NULL, NULL, NULL, 1, 1, NULL, 0, 10, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 21, '1.0', 0, 0, 0),
(10, 'ImageGalleryPage', '2011-04-13 13:58:42', '2011-04-14 10:49:19', 'galeria', 'Galeria', NULL, NULL, 'Galeria', NULL, NULL, NULL, 1, 1, NULL, 0, 8, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 7, '1.0', 0, 0, 0),
(11, 'CupPage', '2011-04-13 18:36:09', '2011-04-14 18:02:21', 'regulamin', 'Regulamin', NULL, '<p style="text-align: justify;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean nec mi  vitae erat sagittis sodales eu volutpat dolor. Nam id lectus venenatis  ipsum rhoncus iaculis. Sed et nibh nisl, vel rutrum erat. Maecenas  congue scelerisque mollis. Nunc eu massa a erat viverra blandit vel in  mi. Nunc ut purus eget diam fermentum bibendum quis in risus. Mauris  suscipit blandit ante at luctus. Sed congue, mi vitae ultrices ornare,  velit felis accumsan nisi, ac placerat est enim id purus. Fusce eget sem  neque. Fusce tincidunt erat sit amet nisi vulputate hendrerit. Aliquam  vel orci quis dui vehicula rutrum.</p>\n<p style="text-align: justify;">In ultrices laoreet interdum. Aenean facilisis mauris et tortor  malesuada nec tincidunt nisl convallis. Phasellus nisi arcu, consequat  non dapibus eu, imperdiet sed nisi. Duis varius varius felis, ut  hendrerit mi viverra at. Nullam pulvinar iaculis tellus. Nunc imperdiet  eros in elit euismod vitae mollis velit posuere. Duis vel mi nisi.  Phasellus dapibus lacinia est, eget imperdiet libero lacinia ac. Nam  purus nisl, blandit non dapibus id, pretium quis nisl. Pellentesque  habitant morbi tristique senectus et netus et malesuada fames ac turpis  egestas. Pellentesque habitant morbi tristique senectus et netus et  malesuada fames ac turpis egestas. Donec vel tellus ligula. Etiam  accumsan dapibus posuere. Suspendisse eu ligula ac metus lobortis  consequat. Vestibulum ante ipsum primis in faucibus orci luctus et  ultrices posuere cubilia Curae; Quisque ut massa erat, quis egestas  velit. In vehicula purus lorem. Vivamus ac leo massa. Morbi consectetur,  augue ut pharetra fermentum, nisl odio sollicitudin tellus, quis dictum  velit justo at orci. Ut ut tortor massa.</p>\n<p style="text-align: justify;">Donec tempor tellus sed dui porttitor aliquam. Aliquam sem urna, laoreet  vel venenatis ut, aliquam a lorem. Pellentesque sed neque nec urna  rutrum accumsan eu a dui. Quisque tristique imperdiet feugiat. Fusce  lectus lorem, bibendum vel blandit nec, varius auctor velit. Morbi  blandit egestas massa et suscipit. Aliquam mauris mi, sodales ac  imperdiet a, feugiat non felis. Vestibulum ornare odio sed est posuere  et dignissim nisl euismod. Sed commodo porttitor tortor ac suscipit. In  elementum volutpat nulla et luctus. Curabitur suscipit elit a turpis  ultrices ac placerat tellus lobortis. Proin nec est tortor. In gravida  commodo commodo. Etiam in vehicula nunc. Fusce sem urna, dignissim vel  accumsan sed, euismod id mauris. Phasellus condimentum lectus et massa  tincidunt sed tempus orci faucibus. Praesent a ipsum nec orci posuere  porttitor.</p>\n<p style="text-align: justify;">Integer et turpis orci. Cras tincidunt lacinia nibh, vitae pulvinar  mauris varius in. Morbi egestas, eros tristique vehicula suscipit, odio  libero faucibus tortor, vel ornare neque justo a augue. Nulla accumsan  neque lorem, eget pulvinar erat. Praesent congue nunc a orci condimentum  quis interdum nulla volutpat. Cras sit amet tellus nulla, non aliquam  libero. Ut sit amet libero purus. Nullam auctor, odio eget porta  aliquam, lacus arcu cursus libero, non scelerisque augue justo non nibh.  Vivamus fringilla, urna non gravida molestie, metus nibh fermentum  odio, a posuere turpis enim sit amet quam. Mauris condimentum, augue  aliquam bibendum pretium, erat lacus mollis purus, et consectetur elit  quam eu odio. Mauris nec mattis felis.</p>\n<p style="text-align: justify;">Proin feugiat nunc eget metus laoreet eu dapibus urna laoreet. Cras  augue elit, sollicitudin sit amet sollicitudin non, fermentum non nunc.  Nunc pretium tempus risus in pretium. Duis euismod, diam id aliquet  convallis, mauris justo porta risus, nec accumsan lectus purus dapibus  sapien. In ullamcorper egestas justo non iaculis. Sed dolor velit,  commodo non dictum ac, tristique non felis. Morbi in leo vel sem auctor  suscipit vel auctor est. Nunc ornare cursus lectus sed viverra. Nullam  pellentesque facilisis lacus a convallis. Aenean accumsan adipiscing  dolor sed porttitor. Lorem ipsum dolor sit amet, consectetur adipiscing  elit. Donec ut condimentum odio. Sed eget tellus eu magna imperdiet  mollis id sed eros. Fusce eu odio quam, vitae pulvinar odio. Vivamus in  ante sed arcu hendrerit pulvinar vel et augue. Nulla eleifend, nisl vel  sagittis fermentum, tellus ante ultricies erat, non dapibus metus ligula  at nisl. Aliquam erat volutpat. Donec at interdum arcu. Etiam malesuada  vehicula rhoncus</p>', 'Regulamin', NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 6, '0.9', 12, 0, 0),
(12, 'CupPage', '2011-04-13 18:36:10', '2011-04-22 20:29:56', '2009', 'Turniej 2009', NULL, '<p style="text-align: justify;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean nec mi  vitae erat sagittis sodales eu volutpat dolor. Nam id lectus venenatis  ipsum rhoncus iaculis. Sed et nibh nisl, vel rutrum erat. Maecenas  congue scelerisque mollis. Nunc eu massa a erat viverra blandit vel in  mi. Nunc ut purus eget diam fermentum bibendum quis in risus. Mauris  suscipit blandit ante at luctus. Sed congue, mi vitae ultrices ornare,  velit felis accumsan nisi, ac placerat est enim id purus. Fusce eget sem  neque. Fusce tincidunt erat sit amet nisi vulputate hendrerit. Aliquam  vel orci quis dui vehicula rutrum.</p>\n<p style="text-align: justify;">In ultrices laoreet interdum. Aenean facilisis mauris et tortor  malesuada nec tincidunt nisl convallis. Phasellus nisi arcu, consequat  non dapibus eu, imperdiet sed nisi. Duis varius varius felis, ut  hendrerit mi viverra at. Nullam pulvinar iaculis tellus. Nunc imperdiet  eros in elit euismod vitae mollis velit posuere. Duis vel mi nisi.  Phasellus dapibus lacinia est, eget imperdiet libero lacinia ac. Nam  purus nisl, blandit non dapibus id, pretium quis nisl. Pellentesque  habitant morbi tristique senectus et netus et malesuada fames ac turpis  egestas. Pellentesque habitant morbi tristique senectus et netus et  malesuada fames ac turpis egestas. Donec vel tellus ligula. Etiam  accumsan dapibus posuere. Suspendisse eu ligula ac metus lobortis  consequat. Vestibulum ante ipsum primis in faucibus orci luctus et  ultrices posuere cubilia Curae; Quisque ut massa erat, quis egestas  velit. In vehicula purus lorem. Vivamus ac leo massa. Morbi consectetur,  augue ut pharetra fermentum, nisl odio sollicitudin tellus, quis dictum  velit justo at orci. Ut ut tortor massa.</p>\n<p style="text-align: justify;">Donec tempor tellus sed dui porttitor aliquam. Aliquam sem urna, laoreet  vel venenatis ut, aliquam a lorem. Pellentesque sed neque nec urna  rutrum accumsan eu a dui. Quisque tristique imperdiet feugiat. Fusce  lectus lorem, bibendum vel blandit nec, varius auctor velit. Morbi  blandit egestas massa et suscipit. Aliquam mauris mi, sodales ac  imperdiet a, feugiat non felis. Vestibulum ornare odio sed est posuere  et dignissim nisl euismod. Sed commodo porttitor tortor ac suscipit. In  elementum volutpat nulla et luctus. Curabitur suscipit elit a turpis  ultrices ac placerat tellus lobortis. Proin nec est tortor. In gravida  commodo commodo. Etiam in vehicula nunc. Fusce sem urna, dignissim vel  accumsan sed, euismod id mauris. Phasellus condimentum lectus et massa  tincidunt sed tempus orci faucibus. Praesent a ipsum nec orci posuere  porttitor.</p>\n<p style="text-align: justify;">Integer et turpis orci. Cras tincidunt lacinia nibh, vitae pulvinar  mauris varius in. Morbi egestas, eros tristique vehicula suscipit, odio  libero faucibus tortor, vel ornare neque justo a augue. Nulla accumsan  neque lorem, eget pulvinar erat. Praesent congue nunc a orci condimentum  quis interdum nulla volutpat. Cras sit amet tellus nulla, non aliquam  libero. Ut sit amet libero purus. Nullam auctor, odio eget porta  aliquam, lacus arcu cursus libero, non scelerisque augue justo non nibh.  Vivamus fringilla, urna non gravida molestie, metus nibh fermentum  odio, a posuere turpis enim sit amet quam. Mauris condimentum, augue  aliquam bibendum pretium, erat lacus mollis purus, et consectetur elit  quam eu odio. Mauris nec mattis felis.</p>\n<p style="text-align: justify;">Proin feugiat nunc eget metus laoreet eu dapibus urna laoreet. Cras  augue elit, sollicitudin sit amet sollicitudin non, fermentum non nunc.  Nunc pretium tempus risus in pretium. Duis euismod, diam id aliquet  convallis, mauris justo porta risus, nec accumsan lectus purus dapibus  sapien. In ullamcorper egestas justo non iaculis. Sed dolor velit,  commodo non dictum ac, tristique non felis. Morbi in leo vel sem auctor  suscipit vel auctor est. Nunc ornare cursus lectus sed viverra. Nullam  pellentesque facilisis lacus a convallis. Aenean accumsan adipiscing  dolor sed porttitor. Lorem ipsum dolor sit amet, consectetur adipiscing  elit. Donec ut condimentum odio. Sed eget tellus eu magna imperdiet  mollis id sed eros. Fusce eu odio quam, vitae pulvinar odio. Vivamus in  ante sed arcu hendrerit pulvinar vel et augue. Nulla eleifend, nisl vel  sagittis fermentum, tellus ante ultricies erat, non dapibus metus ligula  at nisl. Aliquam erat volutpat. Donec at interdum arcu. Etiam malesuada  vehicula rhoncus</p>', 'Turniej 2009', NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, 'Unpublished', NULL, 'Inherit', 'Inherit', NULL, 5, '0.9', 8, 0, 0),
(13, 'ImageGalleryPage', '2011-04-13 18:36:18', '2011-04-13 18:45:27', 'galeria', 'Galeria', NULL, NULL, 'Galeria', NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 5, '0.9', 14, 0, 0),
(14, 'CupPage', '2011-04-13 18:39:22', '2011-04-14 18:03:39', '2010', 'Turniej 2010', NULL, '<p style="text-align: justify;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean nec mi  vitae erat sagittis sodales eu volutpat dolor. Nam id lectus venenatis  ipsum rhoncus iaculis. Sed et nibh nisl, vel rutrum erat. Maecenas  congue scelerisque mollis. Nunc eu massa a erat viverra blandit vel in  mi. Nunc ut purus eget diam fermentum bibendum quis in risus. Mauris  suscipit blandit ante at luctus. Sed congue, mi vitae ultrices ornare,  velit felis accumsan nisi, ac placerat est enim id purus. Fusce eget sem  neque. Fusce tincidunt erat sit amet nisi vulputate hendrerit. Aliquam  vel orci quis dui vehicula rutrum.</p>\n<p style="text-align: justify;">In ultrices laoreet interdum. Aenean facilisis mauris et tortor  malesuada nec tincidunt nisl convallis. Phasellus nisi arcu, consequat  non dapibus eu, imperdiet sed nisi. Duis varius varius felis, ut  hendrerit mi viverra at. Nullam pulvinar iaculis tellus. Nunc imperdiet  eros in elit euismod vitae mollis velit posuere. Duis vel mi nisi.  Phasellus dapibus lacinia est, eget imperdiet libero lacinia ac. Nam  purus nisl, blandit non dapibus id, pretium quis nisl. Pellentesque  habitant morbi tristique senectus et netus et malesuada fames ac turpis  egestas. Pellentesque habitant morbi tristique senectus et netus et  malesuada fames ac turpis egestas. Donec vel tellus ligula. Etiam  accumsan dapibus posuere. Suspendisse eu ligula ac metus lobortis  consequat. Vestibulum ante ipsum primis in faucibus orci luctus et  ultrices posuere cubilia Curae; Quisque ut massa erat, quis egestas  velit. In vehicula purus lorem. Vivamus ac leo massa. Morbi consectetur,  augue ut pharetra fermentum, nisl odio sollicitudin tellus, quis dictum  velit justo at orci. Ut ut tortor massa.</p>\n<p style="text-align: justify;">Donec tempor tellus sed dui porttitor aliquam. Aliquam sem urna, laoreet  vel venenatis ut, aliquam a lorem. Pellentesque sed neque nec urna  rutrum accumsan eu a dui. Quisque tristique imperdiet feugiat. Fusce  lectus lorem, bibendum vel blandit nec, varius auctor velit. Morbi  blandit egestas massa et suscipit. Aliquam mauris mi, sodales ac  imperdiet a, feugiat non felis. Vestibulum ornare odio sed est posuere  et dignissim nisl euismod. Sed commodo porttitor tortor ac suscipit. In  elementum volutpat nulla et luctus. Curabitur suscipit elit a turpis  ultrices ac placerat tellus lobortis. Proin nec est tortor. In gravida  commodo commodo. Etiam in vehicula nunc. Fusce sem urna, dignissim vel  accumsan sed, euismod id mauris. Phasellus condimentum lectus et massa  tincidunt sed tempus orci faucibus. Praesent a ipsum nec orci posuere  porttitor.</p>\n<p style="text-align: justify;">Integer et turpis orci. Cras tincidunt lacinia nibh, vitae pulvinar  mauris varius in. Morbi egestas, eros tristique vehicula suscipit, odio  libero faucibus tortor, vel ornare neque justo a augue. Nulla accumsan  neque lorem, eget pulvinar erat. Praesent congue nunc a orci condimentum  quis interdum nulla volutpat. Cras sit amet tellus nulla, non aliquam  libero. Ut sit amet libero purus. Nullam auctor, odio eget porta  aliquam, lacus arcu cursus libero, non scelerisque augue justo non nibh.  Vivamus fringilla, urna non gravida molestie, metus nibh fermentum  odio, a posuere turpis enim sit amet quam. Mauris condimentum, augue  aliquam bibendum pretium, erat lacus mollis purus, et consectetur elit  quam eu odio. Mauris nec mattis felis.</p>\n<p style="text-align: justify;">Proin feugiat nunc eget metus laoreet eu dapibus urna laoreet. Cras  augue elit, sollicitudin sit amet sollicitudin non, fermentum non nunc.  Nunc pretium tempus risus in pretium. Duis euismod, diam id aliquet  convallis, mauris justo porta risus, nec accumsan lectus purus dapibus  sapien. In ullamcorper egestas justo non iaculis. Sed dolor velit,  commodo non dictum ac, tristique non felis. Morbi in leo vel sem auctor  suscipit vel auctor est. Nunc ornare cursus lectus sed viverra. Nullam  pellentesque facilisis lacus a convallis. Aenean accumsan adipiscing  dolor sed porttitor. Lorem ipsum dolor sit amet, consectetur adipiscing  elit. Donec ut condimentum odio. Sed eget tellus eu magna imperdiet  mollis id sed eros. Fusce eu odio quam, vitae pulvinar odio. Vivamus in  ante sed arcu hendrerit pulvinar vel et augue. Nulla eleifend, nisl vel  sagittis fermentum, tellus ante ultricies erat, non dapibus metus ligula  at nisl. Aliquam erat volutpat. Donec at interdum arcu. Etiam malesuada  vehicula rhoncus</p>', 'Turniej 2010', NULL, NULL, NULL, 1, 1, NULL, 0, 2, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 4, '0.9', 8, 0, 0),
(15, 'CupPage', '2011-04-13 18:40:05', '2011-04-14 18:01:17', 'regulamin', 'Regulamin', NULL, '<p style="text-align: justify;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean nec mi  vitae erat sagittis sodales eu volutpat dolor. Nam id lectus venenatis  ipsum rhoncus iaculis. Sed et nibh nisl, vel rutrum erat. Maecenas  congue scelerisque mollis. Nunc eu massa a erat viverra blandit vel in  mi. Nunc ut purus eget diam fermentum bibendum quis in risus. Mauris  suscipit blandit ante at luctus. Sed congue, mi vitae ultrices ornare,  velit felis accumsan nisi, ac placerat est enim id purus. Fusce eget sem  neque. Fusce tincidunt erat sit amet nisi vulputate hendrerit. Aliquam  vel orci quis dui vehicula rutrum.</p>\n<p style="text-align: justify;">In ultrices laoreet interdum. Aenean facilisis mauris et tortor  malesuada nec tincidunt nisl convallis. Phasellus nisi arcu, consequat  non dapibus eu, imperdiet sed nisi. Duis varius varius felis, ut  hendrerit mi viverra at. Nullam pulvinar iaculis tellus. Nunc imperdiet  eros in elit euismod vitae mollis velit posuere. Duis vel mi nisi.  Phasellus dapibus lacinia est, eget imperdiet libero lacinia ac. Nam  purus nisl, blandit non dapibus id, pretium quis nisl. Pellentesque  habitant morbi tristique senectus et netus et malesuada fames ac turpis  egestas. Pellentesque habitant morbi tristique senectus et netus et  malesuada fames ac turpis egestas. Donec vel tellus ligula. Etiam  accumsan dapibus posuere. Suspendisse eu ligula ac metus lobortis  consequat. Vestibulum ante ipsum primis in faucibus orci luctus et  ultrices posuere cubilia Curae; Quisque ut massa erat, quis egestas  velit. In vehicula purus lorem. Vivamus ac leo massa. Morbi consectetur,  augue ut pharetra fermentum, nisl odio sollicitudin tellus, quis dictum  velit justo at orci. Ut ut tortor massa.</p>\n<p style="text-align: justify;">Donec tempor tellus sed dui porttitor aliquam. Aliquam sem urna, laoreet  vel venenatis ut, aliquam a lorem. Pellentesque sed neque nec urna  rutrum accumsan eu a dui. Quisque tristique imperdiet feugiat. Fusce  lectus lorem, bibendum vel blandit nec, varius auctor velit. Morbi  blandit egestas massa et suscipit. Aliquam mauris mi, sodales ac  imperdiet a, feugiat non felis. Vestibulum ornare odio sed est posuere  et dignissim nisl euismod. Sed commodo porttitor tortor ac suscipit. In  elementum volutpat nulla et luctus. Curabitur suscipit elit a turpis  ultrices ac placerat tellus lobortis. Proin nec est tortor. In gravida  commodo commodo. Etiam in vehicula nunc. Fusce sem urna, dignissim vel  accumsan sed, euismod id mauris. Phasellus condimentum lectus et massa  tincidunt sed tempus orci faucibus. Praesent a ipsum nec orci posuere  porttitor.</p>\n<p style="text-align: justify;">Integer et turpis orci. Cras tincidunt lacinia nibh, vitae pulvinar  mauris varius in. Morbi egestas, eros tristique vehicula suscipit, odio  libero faucibus tortor, vel ornare neque justo a augue. Nulla accumsan  neque lorem, eget pulvinar erat. Praesent congue nunc a orci condimentum  quis interdum nulla volutpat. Cras sit amet tellus nulla, non aliquam  libero. Ut sit amet libero purus. Nullam auctor, odio eget porta  aliquam, lacus arcu cursus libero, non scelerisque augue justo non nibh.  Vivamus fringilla, urna non gravida molestie, metus nibh fermentum  odio, a posuere turpis enim sit amet quam. Mauris condimentum, augue  aliquam bibendum pretium, erat lacus mollis purus, et consectetur elit  quam eu odio. Mauris nec mattis felis.</p>\n<p style="text-align: justify;">Proin feugiat nunc eget metus laoreet eu dapibus urna laoreet. Cras  augue elit, sollicitudin sit amet sollicitudin non, fermentum non nunc.  Nunc pretium tempus risus in pretium. Duis euismod, diam id aliquet  convallis, mauris justo porta risus, nec accumsan lectus purus dapibus  sapien. In ullamcorper egestas justo non iaculis. Sed dolor velit,  commodo non dictum ac, tristique non felis. Morbi in leo vel sem auctor  suscipit vel auctor est. Nunc ornare cursus lectus sed viverra. Nullam  pellentesque facilisis lacus a convallis. Aenean accumsan adipiscing  dolor sed porttitor. Lorem ipsum dolor sit amet, consectetur adipiscing  elit. Donec ut condimentum odio. Sed eget tellus eu magna imperdiet  mollis id sed eros. Fusce eu odio quam, vitae pulvinar odio. Vivamus in  ante sed arcu hendrerit pulvinar vel et augue. Nulla eleifend, nisl vel  sagittis fermentum, tellus ante ultricies erat, non dapibus metus ligula  at nisl. Aliquam erat volutpat. Donec at interdum arcu. Etiam malesuada  vehicula rhoncus</p>', 'Regulamin', NULL, NULL, NULL, 1, 1, NULL, 0, 2, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 5, '0.8', 14, 0, 0),
(16, 'Page', '2011-04-14 10:46:44', '2011-04-14 10:47:42', 'zapisy', 'Zapisy', NULL, '<div id="lipsum" style="text-align: justify;">\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam volutpat,  urna vel pulvinar mollis, elit magna convallis mi, at malesuada lacus  nisi eu erat. Proin congue lobortis libero, sed mattis metus ultrices  et. Praesent sodales mi a est vestibulum volutpat. Sed nunc purus,  pulvinar et pharetra sed, viverra interdum nunc. Curabitur tincidunt,  sem consectetur facilisis vulputate, lorem ipsum convallis risus, auctor  vestibulum enim libero ut erat. Curabitur euismod tempor tincidunt.  Fusce ac magna urna. In hac habitasse platea dictumst. Maecenas  tincidunt orci diam, porta condimentum arcu. Fusce ante massa, elementum  id varius ut, euismod et erat. Morbi et quam neque, eget venenatis  dolor.</p>\n<p>Fusce dui nulla, ullamcorper sit amet aliquam at, viverra ac odio.  Vestibulum ut ipsum vel dui accumsan congue. Fusce ac ante vel lorem  adipiscing rhoncus. Donec egestas euismod mauris, non dapibus dolor  ullamcorper eget. In eu neque justo. Maecenas id diam odio. Nulla  facilisi. Vestibulum pretium est et massa adipiscing egestas. Nunc  tincidunt eros eu metus tempor a elementum dolor iaculis. Vivamus ac  orci nunc, nec dignissim lacus.</p>\n<p>Nullam magna tellus, adipiscing vitae malesuada hendrerit, ultricies sed  mi. Aenean erat ante, accumsan vel auctor non, malesuada nec dolor.  Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere  cubilia Curae; Vivamus tincidunt, dui et consequat malesuada, nisi nunc  eleifend ipsum, id mollis neque neque eget nibh. Donec sit amet  bibendum mi. Donec semper congue auctor. Nulla sed eros elit. Fusce eget  porta neque. Maecenas non massa mauris. Proin hendrerit, nunc non  egestas vestibulum, leo lacus facilisis felis, et commodo enim magna non  mi. Maecenas bibendum lacus sit amet odio placerat interdum. Aenean  eget tortor a erat mollis congue.</p>\n<p>Nulla nunc augue, gravida eget ultrices eu, interdum vel magna. Mauris  elit augue, tempus non condimentum at, aliquet sed justo. Maecenas  aliquam, tellus in tincidunt tempor, lacus nisl ornare tellus, at tempor  diam sem eget massa. Etiam fringilla gravida augue nec gravida. Aliquam  mauris augue, varius et accumsan in, tempor vel est. Fusce placerat  erat sed odio ultricies in imperdiet lorem blandit. Duis ornare tellus  id eros tempor scelerisque. Pellentesque sagittis mi aliquet metus  suscipit eu tristique enim consectetur. Aenean eros enim, placerat et  vulputate a, malesuada vel ligula. Donec consectetur dignissim tellus.  Donec dapibus nunc a purus tempus sit amet adipiscing nibh interdum.  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse ut  egestas elit. Quisque congue arcu eget lorem fermentum sit amet  elementum est porttitor. Duis placerat nulla at tortor auctor imperdiet.  Aenean fringilla, lacus sed consectetur bibendum, magna nisl laoreet  sapien, vel vehicula nisl odio at augue. Vestibulum ante ipsum primis in  faucibus orci luctus et ultrices posuere cubilia Curae; Morbi pulvinar  consequat turpis, non fringilla orci pharetra sed. Mauris a felis  libero, vel pretium risus. Suspendisse cursus eros at arcu venenatis  tempus.</p>\n<p>Aenean at elit nec tellus dignissim iaculis at vel orci. Cras porta  pretium mauris, ullamcorper dignissim sapien ullamcorper nec. Ut auctor  ligula sit amet nisl mollis vel porttitor ante sollicitudin. Curabitur  vulputate libero in nibh fringilla ac dignissim erat ultricies. Sed  tincidunt enim ut risus ultrices tempor. Etiam quis nisl nunc, ut  gravida arcu. Suspendisse hendrerit nunc vel leo lobortis auctor.  Pellentesque habitant morbi tristique senectus et netus et malesuada  fames ac turpis egestas. Donec hendrerit fermentum accumsan. Nullam a  cursus elit. Donec mauris nibh, mattis eget ultricies id, malesuada  vitae ante. Aenean vulputate consectetur cursus.</p>\n</div>', 'Zapisy', NULL, NULL, NULL, 1, 1, NULL, 0, 5, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 3, '1.0', 0, 0, 0),
(17, 'Page', '2011-04-14 10:47:50', '2011-04-14 10:58:45', 'regulamin', 'Regulamin', NULL, '<p style="text-align: justify;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam volutpat, urna vel pulvinar mollis, elit magna convallis mi, at malesuada lacus nisi eu erat. Proin congue lobortis libero, sed mattis metus ultrices et. Praesent sodales mi a est vestibulum volutpat. Sed nunc purus, pulvinar et pharetra sed, viverra interdum nunc. Curabitur tincidunt, sem consectetur facilisis vulputate, lorem ipsum convallis risus, auctor vestibulum enim libero ut erat. Curabitur euismod tempor tincidunt. Fusce ac magna urna. In hac habitasse platea dictumst. Maecenas tincidunt orci diam, porta condimentum arcu. Fusce ante massa, elementum id varius ut, euismod et erat. Morbi et quam neque, eget venenatis dolor.<br/><br/>Fusce dui nulla, ullamcorper sit amet aliquam at, viverra ac odio. Vestibulum ut ipsum vel dui accumsan congue. Fusce ac ante vel lorem adipiscing rhoncus. Donec egestas euismod mauris, non dapibus dolor ullamcorper eget. In eu neque justo. Maecenas id diam odio. Nulla facilisi. Vestibulum pretium est et massa adipiscing egestas. Nunc tincidunt eros eu metus tempor a elementum dolor iaculis. Vivamus ac orci nunc, nec dignissim lacus.<br/><br/>Nullam magna tellus, adipiscing vitae malesuada hendrerit, ultricies sed mi. Aenean erat ante, accumsan vel auctor non, malesuada nec dolor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Vivamus tincidunt, dui et consequat malesuada, nisi nunc eleifend ipsum, id mollis neque neque eget nibh. Donec sit amet bibendum mi. Donec semper congue auctor. Nulla sed eros elit. Fusce eget porta neque. Maecenas non massa mauris. Proin hendrerit, nunc non egestas vestibulum, leo lacus facilisis felis, et commodo enim magna non mi. Maecenas bibendum lacus sit amet odio placerat interdum. Aenean eget tortor a erat mollis congue.<br/><br/>Nulla nunc augue, gravida eget ultrices eu, interdum vel magna. Mauris elit augue, tempus non condimentum at, aliquet sed justo. Maecenas aliquam, tellus in tincidunt tempor, lacus nisl ornare tellus, at tempor diam sem eget massa. Etiam fringilla gravida augue nec gravida. Aliquam mauris augue, varius et accumsan in, tempor vel est. Fusce placerat erat sed odio ultricies in imperdiet lorem blandit. Duis ornare tellus id eros tempor scelerisque. Pellentesque sagittis mi aliquet metus suscipit eu tristique enim consectetur. Aenean eros enim, placerat et vulputate a, malesuada vel ligula. Donec consectetur dignissim tellus. Donec dapibus nunc a purus tempus sit amet adipiscing nibh interdum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse ut egestas elit. Quisque congue arcu eget lorem fermentum sit amet elementum est porttitor. Duis placerat nulla at tortor auctor imperdiet. Aenean fringilla, lacus sed consectetur bibendum, magna nisl laoreet sapien, vel vehicula nisl odio at augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi pulvinar consequat turpis, non fringilla orci pharetra sed. Mauris a felis libero, vel pretium risus. Suspendisse cursus eros at arcu venenatis tempus.<br/><br/>Aenean at elit nec tellus dignissim iaculis at vel orci. Cras porta pretium mauris, ullamcorper dignissim sapien ullamcorper nec. Ut auctor ligula sit amet nisl mollis vel porttitor ante sollicitudin. Curabitur vulputate libero in nibh fringilla ac dignissim erat ultricies. Sed tincidunt enim ut risus ultrices tempor. Etiam quis nisl nunc, ut gravida arcu. Suspendisse hendrerit nunc vel leo lobortis auctor. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec hendrerit fermentum accumsan. Nullam a cursus elit. Donec mauris nibh, mattis eget ultricies id, malesuada vitae ante. Aenean vulputate consectetur cursus.</p>', 'Regulamin', NULL, NULL, NULL, 1, 1, NULL, 0, 6, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 3, '1.0', 0, 0, 0),
(18, 'Page', '2011-04-14 10:48:26', '2011-04-14 10:48:41', 'partnerzy', 'Partnerzy', NULL, NULL, 'Partnerzy', NULL, NULL, NULL, 1, 1, NULL, 0, 7, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 2, '1.0', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `SiteTree_CrossSubsiteLinkTracking`
--

CREATE TABLE IF NOT EXISTS `SiteTree_CrossSubsiteLinkTracking` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `ChildID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteTreeID` (`SiteTreeID`),
  KEY `ChildID` (`ChildID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `SiteTree_CrossSubsiteLinkTracking`
--


-- --------------------------------------------------------

--
-- Table structure for table `SiteTree_EditorGroups`
--

CREATE TABLE IF NOT EXISTS `SiteTree_EditorGroups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteTreeID` (`SiteTreeID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `SiteTree_EditorGroups`
--


-- --------------------------------------------------------

--
-- Table structure for table `SiteTree_ImageTracking`
--

CREATE TABLE IF NOT EXISTS `SiteTree_ImageTracking` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `FileID` int(11) NOT NULL DEFAULT '0',
  `FieldName` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `SiteTreeID` (`SiteTreeID`),
  KEY `FileID` (`FileID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `SiteTree_ImageTracking`
--


-- --------------------------------------------------------

--
-- Table structure for table `SiteTree_LinkTracking`
--

CREATE TABLE IF NOT EXISTS `SiteTree_LinkTracking` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `ChildID` int(11) NOT NULL DEFAULT '0',
  `FieldName` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `SiteTreeID` (`SiteTreeID`),
  KEY `ChildID` (`ChildID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `SiteTree_LinkTracking`
--


-- --------------------------------------------------------

--
-- Table structure for table `SiteTree_Live`
--

CREATE TABLE IF NOT EXISTS `SiteTree_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SiteTree','Page','ImageGalleryPage','ContactPage','CupPage','HomePage','ErrorPage','RedirectorPage','VirtualPage','SliderPage') CHARACTER SET utf8 DEFAULT 'SiteTree',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `URLSegment` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `MenuTitle` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `Content` mediumtext CHARACTER SET utf8,
  `MetaTitle` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `MetaDescription` mediumtext CHARACTER SET utf8,
  `MetaKeywords` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ExtraMeta` mediumtext CHARACTER SET utf8,
  `ShowInMenus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ShowInSearch` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HomepageForDomain` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `ProvideComments` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HasBrokenFile` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HasBrokenLink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Status` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `ReportClass` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `ToDo` mediumtext CHARACTER SET utf8,
  `Version` int(11) NOT NULL DEFAULT '0',
  `Priority` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `SubsiteID` int(11) NOT NULL DEFAULT '0',
  `MasterPageID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `URLSegment` (`URLSegment`),
  KEY `ClassName` (`ClassName`),
  KEY `SubsiteID` (`SubsiteID`),
  KEY `MasterPageID` (`MasterPageID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=19 ;

--
-- Dumping data for table `SiteTree_Live`
--

INSERT INTO `SiteTree_Live` (`ID`, `ClassName`, `Created`, `LastEdited`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaTitle`, `MetaDescription`, `MetaKeywords`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `HomepageForDomain`, `ProvideComments`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `Status`, `ReportClass`, `CanViewType`, `CanEditType`, `ToDo`, `Version`, `Priority`, `ParentID`, `SubsiteID`, `MasterPageID`) VALUES
(1, 'HomePage', '2011-04-13 11:25:38', '2011-04-14 10:41:52', 'home', 'Start', NULL, '<p>Witaj w SilverStripe! To jest domyślna strona domowa. Możesz ją edytować, otwierając <a href="admin/">CMS</a>. Możesz teraz otworzyć <a href="http://doc.silverstripe.com">dokumentację dla developerów</a>, lub rozpocząć <a href="http://doc.silverstripe.com/doku.php?id=tutorials">jeden z samouczyków.</a></p>', 'Start', NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 3, '1.0', 0, 0, 0),
(2, 'Page', '2011-04-13 11:25:38', '2011-04-14 10:43:16', 'program', 'Program', NULL, '<div id="lipsum" style="text-align: justify;">\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam volutpat,  urna vel pulvinar mollis, elit magna convallis mi, at malesuada lacus  nisi eu erat. Proin congue lobortis libero, sed mattis metus ultrices  et. Praesent sodales mi a est vestibulum volutpat. Sed nunc purus,  pulvinar et pharetra sed, viverra interdum nunc. Curabitur tincidunt,  sem consectetur facilisis vulputate, lorem ipsum convallis risus, auctor  vestibulum enim libero ut erat. Curabitur euismod tempor tincidunt.  Fusce ac magna urna. In hac habitasse platea dictumst. Maecenas  tincidunt orci diam, porta condimentum arcu. Fusce ante massa, elementum  id varius ut, euismod et erat. Morbi et quam neque, eget venenatis  dolor.</p>\n<p>Fusce dui nulla, ullamcorper sit amet aliquam at, viverra ac odio.  Vestibulum ut ipsum vel dui accumsan congue. Fusce ac ante vel lorem  adipiscing rhoncus. Donec egestas euismod mauris, non dapibus dolor  ullamcorper eget. In eu neque justo. Maecenas id diam odio. Nulla  facilisi. Vestibulum pretium est et massa adipiscing egestas. Nunc  tincidunt eros eu metus tempor a elementum dolor iaculis. Vivamus ac  orci nunc, nec dignissim lacus.</p>\n<p>Nullam magna tellus, adipiscing vitae malesuada hendrerit, ultricies sed  mi. Aenean erat ante, accumsan vel auctor non, malesuada nec dolor.  Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere  cubilia Curae; Vivamus tincidunt, dui et consequat malesuada, nisi nunc  eleifend ipsum, id mollis neque neque eget nibh. Donec sit amet  bibendum mi. Donec semper congue auctor. Nulla sed eros elit. Fusce eget  porta neque. Maecenas non massa mauris. Proin hendrerit, nunc non  egestas vestibulum, leo lacus facilisis felis, et commodo enim magna non  mi. Maecenas bibendum lacus sit amet odio placerat interdum. Aenean  eget tortor a erat mollis congue.</p>\n<p>Nulla nunc augue, gravida eget ultrices eu, interdum vel magna. Mauris  elit augue, tempus non condimentum at, aliquet sed justo. Maecenas  aliquam, tellus in tincidunt tempor, lacus nisl ornare tellus, at tempor  diam sem eget massa. Etiam fringilla gravida augue nec gravida. Aliquam  mauris augue, varius et accumsan in, tempor vel est. Fusce placerat  erat sed odio ultricies in imperdiet lorem blandit. Duis ornare tellus  id eros tempor scelerisque. Pellentesque sagittis mi aliquet metus  suscipit eu tristique enim consectetur. Aenean eros enim, placerat et  vulputate a, malesuada vel ligula. Donec consectetur dignissim tellus.  Donec dapibus nunc a purus tempus sit amet adipiscing nibh interdum.  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse ut  egestas elit. Quisque congue arcu eget lorem fermentum sit amet  elementum est porttitor. Duis placerat nulla at tortor auctor imperdiet.  Aenean fringilla, lacus sed consectetur bibendum, magna nisl laoreet  sapien, vel vehicula nisl odio at augue. Vestibulum ante ipsum primis in  faucibus orci luctus et ultrices posuere cubilia Curae; Morbi pulvinar  consequat turpis, non fringilla orci pharetra sed. Mauris a felis  libero, vel pretium risus. Suspendisse cursus eros at arcu venenatis  tempus.</p>\n<p>Aenean at elit nec tellus dignissim iaculis at vel orci. Cras porta  pretium mauris, ullamcorper dignissim sapien ullamcorper nec. Ut auctor  ligula sit amet nisl mollis vel porttitor ante sollicitudin. Curabitur  vulputate libero in nibh fringilla ac dignissim erat ultricies. Sed  tincidunt enim ut risus ultrices tempor. Etiam quis nisl nunc, ut  gravida arcu. Suspendisse hendrerit nunc vel leo lobortis auctor.  Pellentesque habitant morbi tristique senectus et netus et malesuada  fames ac turpis egestas. Donec hendrerit fermentum accumsan. Nullam a  cursus elit. Donec mauris nibh, mattis eget ultricies id, malesuada  vitae ante. Aenean vulputate consectetur cursus.</p>\n</div>', 'Program', NULL, NULL, NULL, 1, 1, NULL, 0, 2, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 4, '1.0', 0, 0, 0),
(8, 'SliderPage', '2011-04-13 12:14:41', '2011-04-13 13:57:48', 'archiwum', 'Archiwum', NULL, NULL, 'Archiwum', NULL, NULL, NULL, 1, 1, NULL, 0, 9, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 3, '1.0', 0, 0, 0),
(4, 'ErrorPage', '2011-04-13 11:25:38', '2011-04-13 11:25:42', 'nie-znaleziono-strony', 'Nie znaleziono strony', NULL, '<p>Niestety, próbujesz wejść na stronę, która nie istnieje.</p><p>Sprawdź pisownię adresu URL i spróbuj ponownie.</p>', NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 3, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, 1, NULL, 0, 0, 0),
(5, 'ErrorPage', '2011-04-13 11:25:39', '2011-04-13 11:25:39', 'server-error', 'Server error', NULL, '<p>Sorry, there was a problem with handling your request.</p>', NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 4, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, 1, NULL, 0, 0, 0),
(9, 'ContactPage', '2011-04-13 13:55:12', '2011-04-20 11:41:29', 'kontakt', 'Kontakt', NULL, '<p><strong>Klub Sportowy Akademia Piłkarska Silesia</strong></p>\n<p class="leftAlone">Ul. Kościuszki 35<br/>44-100 Gliwice </p>\n<p><span class="leftAlone"><strong>silesia@apsilesia.pl</strong><br/>Michał Tofilski tel. 795-696-874<br/>Rafał Grzegorzek tel. 794-789-807</span></p>', 'Kontakt', NULL, NULL, NULL, 1, 1, NULL, 0, 10, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 21, '1.0', 0, 0, 0),
(10, 'ImageGalleryPage', '2011-04-13 13:58:42', '2011-04-14 10:49:19', 'galeria', 'Galeria', NULL, NULL, 'Galeria', NULL, NULL, NULL, 1, 1, NULL, 0, 8, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 7, '1.0', 0, 0, 0),
(13, 'ImageGalleryPage', '2011-04-13 18:36:18', '2011-04-13 18:45:27', 'galeria', 'Galeria', NULL, NULL, 'Galeria', NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 5, '0.9', 14, 0, 0),
(14, 'CupPage', '2011-04-13 18:39:22', '2011-04-14 18:03:39', '2010', 'Turniej 2010', NULL, '<p style="text-align: justify;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean nec mi  vitae erat sagittis sodales eu volutpat dolor. Nam id lectus venenatis  ipsum rhoncus iaculis. Sed et nibh nisl, vel rutrum erat. Maecenas  congue scelerisque mollis. Nunc eu massa a erat viverra blandit vel in  mi. Nunc ut purus eget diam fermentum bibendum quis in risus. Mauris  suscipit blandit ante at luctus. Sed congue, mi vitae ultrices ornare,  velit felis accumsan nisi, ac placerat est enim id purus. Fusce eget sem  neque. Fusce tincidunt erat sit amet nisi vulputate hendrerit. Aliquam  vel orci quis dui vehicula rutrum.</p>\n<p style="text-align: justify;">In ultrices laoreet interdum. Aenean facilisis mauris et tortor  malesuada nec tincidunt nisl convallis. Phasellus nisi arcu, consequat  non dapibus eu, imperdiet sed nisi. Duis varius varius felis, ut  hendrerit mi viverra at. Nullam pulvinar iaculis tellus. Nunc imperdiet  eros in elit euismod vitae mollis velit posuere. Duis vel mi nisi.  Phasellus dapibus lacinia est, eget imperdiet libero lacinia ac. Nam  purus nisl, blandit non dapibus id, pretium quis nisl. Pellentesque  habitant morbi tristique senectus et netus et malesuada fames ac turpis  egestas. Pellentesque habitant morbi tristique senectus et netus et  malesuada fames ac turpis egestas. Donec vel tellus ligula. Etiam  accumsan dapibus posuere. Suspendisse eu ligula ac metus lobortis  consequat. Vestibulum ante ipsum primis in faucibus orci luctus et  ultrices posuere cubilia Curae; Quisque ut massa erat, quis egestas  velit. In vehicula purus lorem. Vivamus ac leo massa. Morbi consectetur,  augue ut pharetra fermentum, nisl odio sollicitudin tellus, quis dictum  velit justo at orci. Ut ut tortor massa.</p>\n<p style="text-align: justify;">Donec tempor tellus sed dui porttitor aliquam. Aliquam sem urna, laoreet  vel venenatis ut, aliquam a lorem. Pellentesque sed neque nec urna  rutrum accumsan eu a dui. Quisque tristique imperdiet feugiat. Fusce  lectus lorem, bibendum vel blandit nec, varius auctor velit. Morbi  blandit egestas massa et suscipit. Aliquam mauris mi, sodales ac  imperdiet a, feugiat non felis. Vestibulum ornare odio sed est posuere  et dignissim nisl euismod. Sed commodo porttitor tortor ac suscipit. In  elementum volutpat nulla et luctus. Curabitur suscipit elit a turpis  ultrices ac placerat tellus lobortis. Proin nec est tortor. In gravida  commodo commodo. Etiam in vehicula nunc. Fusce sem urna, dignissim vel  accumsan sed, euismod id mauris. Phasellus condimentum lectus et massa  tincidunt sed tempus orci faucibus. Praesent a ipsum nec orci posuere  porttitor.</p>\n<p style="text-align: justify;">Integer et turpis orci. Cras tincidunt lacinia nibh, vitae pulvinar  mauris varius in. Morbi egestas, eros tristique vehicula suscipit, odio  libero faucibus tortor, vel ornare neque justo a augue. Nulla accumsan  neque lorem, eget pulvinar erat. Praesent congue nunc a orci condimentum  quis interdum nulla volutpat. Cras sit amet tellus nulla, non aliquam  libero. Ut sit amet libero purus. Nullam auctor, odio eget porta  aliquam, lacus arcu cursus libero, non scelerisque augue justo non nibh.  Vivamus fringilla, urna non gravida molestie, metus nibh fermentum  odio, a posuere turpis enim sit amet quam. Mauris condimentum, augue  aliquam bibendum pretium, erat lacus mollis purus, et consectetur elit  quam eu odio. Mauris nec mattis felis.</p>\n<p style="text-align: justify;">Proin feugiat nunc eget metus laoreet eu dapibus urna laoreet. Cras  augue elit, sollicitudin sit amet sollicitudin non, fermentum non nunc.  Nunc pretium tempus risus in pretium. Duis euismod, diam id aliquet  convallis, mauris justo porta risus, nec accumsan lectus purus dapibus  sapien. In ullamcorper egestas justo non iaculis. Sed dolor velit,  commodo non dictum ac, tristique non felis. Morbi in leo vel sem auctor  suscipit vel auctor est. Nunc ornare cursus lectus sed viverra. Nullam  pellentesque facilisis lacus a convallis. Aenean accumsan adipiscing  dolor sed porttitor. Lorem ipsum dolor sit amet, consectetur adipiscing  elit. Donec ut condimentum odio. Sed eget tellus eu magna imperdiet  mollis id sed eros. Fusce eu odio quam, vitae pulvinar odio. Vivamus in  ante sed arcu hendrerit pulvinar vel et augue. Nulla eleifend, nisl vel  sagittis fermentum, tellus ante ultricies erat, non dapibus metus ligula  at nisl. Aliquam erat volutpat. Donec at interdum arcu. Etiam malesuada  vehicula rhoncus</p>', 'Turniej 2010', NULL, NULL, NULL, 1, 1, NULL, 0, 2, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 4, '0.9', 8, 0, 0),
(15, 'CupPage', '2011-04-13 18:40:05', '2011-04-14 18:01:17', 'regulamin', 'Regulamin', NULL, '<p style="text-align: justify;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean nec mi  vitae erat sagittis sodales eu volutpat dolor. Nam id lectus venenatis  ipsum rhoncus iaculis. Sed et nibh nisl, vel rutrum erat. Maecenas  congue scelerisque mollis. Nunc eu massa a erat viverra blandit vel in  mi. Nunc ut purus eget diam fermentum bibendum quis in risus. Mauris  suscipit blandit ante at luctus. Sed congue, mi vitae ultrices ornare,  velit felis accumsan nisi, ac placerat est enim id purus. Fusce eget sem  neque. Fusce tincidunt erat sit amet nisi vulputate hendrerit. Aliquam  vel orci quis dui vehicula rutrum.</p>\n<p style="text-align: justify;">In ultrices laoreet interdum. Aenean facilisis mauris et tortor  malesuada nec tincidunt nisl convallis. Phasellus nisi arcu, consequat  non dapibus eu, imperdiet sed nisi. Duis varius varius felis, ut  hendrerit mi viverra at. Nullam pulvinar iaculis tellus. Nunc imperdiet  eros in elit euismod vitae mollis velit posuere. Duis vel mi nisi.  Phasellus dapibus lacinia est, eget imperdiet libero lacinia ac. Nam  purus nisl, blandit non dapibus id, pretium quis nisl. Pellentesque  habitant morbi tristique senectus et netus et malesuada fames ac turpis  egestas. Pellentesque habitant morbi tristique senectus et netus et  malesuada fames ac turpis egestas. Donec vel tellus ligula. Etiam  accumsan dapibus posuere. Suspendisse eu ligula ac metus lobortis  consequat. Vestibulum ante ipsum primis in faucibus orci luctus et  ultrices posuere cubilia Curae; Quisque ut massa erat, quis egestas  velit. In vehicula purus lorem. Vivamus ac leo massa. Morbi consectetur,  augue ut pharetra fermentum, nisl odio sollicitudin tellus, quis dictum  velit justo at orci. Ut ut tortor massa.</p>\n<p style="text-align: justify;">Donec tempor tellus sed dui porttitor aliquam. Aliquam sem urna, laoreet  vel venenatis ut, aliquam a lorem. Pellentesque sed neque nec urna  rutrum accumsan eu a dui. Quisque tristique imperdiet feugiat. Fusce  lectus lorem, bibendum vel blandit nec, varius auctor velit. Morbi  blandit egestas massa et suscipit. Aliquam mauris mi, sodales ac  imperdiet a, feugiat non felis. Vestibulum ornare odio sed est posuere  et dignissim nisl euismod. Sed commodo porttitor tortor ac suscipit. In  elementum volutpat nulla et luctus. Curabitur suscipit elit a turpis  ultrices ac placerat tellus lobortis. Proin nec est tortor. In gravida  commodo commodo. Etiam in vehicula nunc. Fusce sem urna, dignissim vel  accumsan sed, euismod id mauris. Phasellus condimentum lectus et massa  tincidunt sed tempus orci faucibus. Praesent a ipsum nec orci posuere  porttitor.</p>\n<p style="text-align: justify;">Integer et turpis orci. Cras tincidunt lacinia nibh, vitae pulvinar  mauris varius in. Morbi egestas, eros tristique vehicula suscipit, odio  libero faucibus tortor, vel ornare neque justo a augue. Nulla accumsan  neque lorem, eget pulvinar erat. Praesent congue nunc a orci condimentum  quis interdum nulla volutpat. Cras sit amet tellus nulla, non aliquam  libero. Ut sit amet libero purus. Nullam auctor, odio eget porta  aliquam, lacus arcu cursus libero, non scelerisque augue justo non nibh.  Vivamus fringilla, urna non gravida molestie, metus nibh fermentum  odio, a posuere turpis enim sit amet quam. Mauris condimentum, augue  aliquam bibendum pretium, erat lacus mollis purus, et consectetur elit  quam eu odio. Mauris nec mattis felis.</p>\n<p style="text-align: justify;">Proin feugiat nunc eget metus laoreet eu dapibus urna laoreet. Cras  augue elit, sollicitudin sit amet sollicitudin non, fermentum non nunc.  Nunc pretium tempus risus in pretium. Duis euismod, diam id aliquet  convallis, mauris justo porta risus, nec accumsan lectus purus dapibus  sapien. In ullamcorper egestas justo non iaculis. Sed dolor velit,  commodo non dictum ac, tristique non felis. Morbi in leo vel sem auctor  suscipit vel auctor est. Nunc ornare cursus lectus sed viverra. Nullam  pellentesque facilisis lacus a convallis. Aenean accumsan adipiscing  dolor sed porttitor. Lorem ipsum dolor sit amet, consectetur adipiscing  elit. Donec ut condimentum odio. Sed eget tellus eu magna imperdiet  mollis id sed eros. Fusce eu odio quam, vitae pulvinar odio. Vivamus in  ante sed arcu hendrerit pulvinar vel et augue. Nulla eleifend, nisl vel  sagittis fermentum, tellus ante ultricies erat, non dapibus metus ligula  at nisl. Aliquam erat volutpat. Donec at interdum arcu. Etiam malesuada  vehicula rhoncus</p>', 'Regulamin', NULL, NULL, NULL, 1, 1, NULL, 0, 2, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 5, '0.8', 14, 0, 0),
(16, 'Page', '2011-04-14 10:46:44', '2011-04-14 10:47:42', 'zapisy', 'Zapisy', NULL, '<div id="lipsum" style="text-align: justify;">\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam volutpat,  urna vel pulvinar mollis, elit magna convallis mi, at malesuada lacus  nisi eu erat. Proin congue lobortis libero, sed mattis metus ultrices  et. Praesent sodales mi a est vestibulum volutpat. Sed nunc purus,  pulvinar et pharetra sed, viverra interdum nunc. Curabitur tincidunt,  sem consectetur facilisis vulputate, lorem ipsum convallis risus, auctor  vestibulum enim libero ut erat. Curabitur euismod tempor tincidunt.  Fusce ac magna urna. In hac habitasse platea dictumst. Maecenas  tincidunt orci diam, porta condimentum arcu. Fusce ante massa, elementum  id varius ut, euismod et erat. Morbi et quam neque, eget venenatis  dolor.</p>\n<p>Fusce dui nulla, ullamcorper sit amet aliquam at, viverra ac odio.  Vestibulum ut ipsum vel dui accumsan congue. Fusce ac ante vel lorem  adipiscing rhoncus. Donec egestas euismod mauris, non dapibus dolor  ullamcorper eget. In eu neque justo. Maecenas id diam odio. Nulla  facilisi. Vestibulum pretium est et massa adipiscing egestas. Nunc  tincidunt eros eu metus tempor a elementum dolor iaculis. Vivamus ac  orci nunc, nec dignissim lacus.</p>\n<p>Nullam magna tellus, adipiscing vitae malesuada hendrerit, ultricies sed  mi. Aenean erat ante, accumsan vel auctor non, malesuada nec dolor.  Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere  cubilia Curae; Vivamus tincidunt, dui et consequat malesuada, nisi nunc  eleifend ipsum, id mollis neque neque eget nibh. Donec sit amet  bibendum mi. Donec semper congue auctor. Nulla sed eros elit. Fusce eget  porta neque. Maecenas non massa mauris. Proin hendrerit, nunc non  egestas vestibulum, leo lacus facilisis felis, et commodo enim magna non  mi. Maecenas bibendum lacus sit amet odio placerat interdum. Aenean  eget tortor a erat mollis congue.</p>\n<p>Nulla nunc augue, gravida eget ultrices eu, interdum vel magna. Mauris  elit augue, tempus non condimentum at, aliquet sed justo. Maecenas  aliquam, tellus in tincidunt tempor, lacus nisl ornare tellus, at tempor  diam sem eget massa. Etiam fringilla gravida augue nec gravida. Aliquam  mauris augue, varius et accumsan in, tempor vel est. Fusce placerat  erat sed odio ultricies in imperdiet lorem blandit. Duis ornare tellus  id eros tempor scelerisque. Pellentesque sagittis mi aliquet metus  suscipit eu tristique enim consectetur. Aenean eros enim, placerat et  vulputate a, malesuada vel ligula. Donec consectetur dignissim tellus.  Donec dapibus nunc a purus tempus sit amet adipiscing nibh interdum.  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse ut  egestas elit. Quisque congue arcu eget lorem fermentum sit amet  elementum est porttitor. Duis placerat nulla at tortor auctor imperdiet.  Aenean fringilla, lacus sed consectetur bibendum, magna nisl laoreet  sapien, vel vehicula nisl odio at augue. Vestibulum ante ipsum primis in  faucibus orci luctus et ultrices posuere cubilia Curae; Morbi pulvinar  consequat turpis, non fringilla orci pharetra sed. Mauris a felis  libero, vel pretium risus. Suspendisse cursus eros at arcu venenatis  tempus.</p>\n<p>Aenean at elit nec tellus dignissim iaculis at vel orci. Cras porta  pretium mauris, ullamcorper dignissim sapien ullamcorper nec. Ut auctor  ligula sit amet nisl mollis vel porttitor ante sollicitudin. Curabitur  vulputate libero in nibh fringilla ac dignissim erat ultricies. Sed  tincidunt enim ut risus ultrices tempor. Etiam quis nisl nunc, ut  gravida arcu. Suspendisse hendrerit nunc vel leo lobortis auctor.  Pellentesque habitant morbi tristique senectus et netus et malesuada  fames ac turpis egestas. Donec hendrerit fermentum accumsan. Nullam a  cursus elit. Donec mauris nibh, mattis eget ultricies id, malesuada  vitae ante. Aenean vulputate consectetur cursus.</p>\n</div>', 'Zapisy', NULL, NULL, NULL, 1, 1, NULL, 0, 5, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 3, '1.0', 0, 0, 0),
(17, 'Page', '2011-04-14 10:47:50', '2011-04-14 10:58:45', 'regulamin', 'Regulamin', NULL, '<p style="text-align: justify;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam volutpat, urna vel pulvinar mollis, elit magna convallis mi, at malesuada lacus nisi eu erat. Proin congue lobortis libero, sed mattis metus ultrices et. Praesent sodales mi a est vestibulum volutpat. Sed nunc purus, pulvinar et pharetra sed, viverra interdum nunc. Curabitur tincidunt, sem consectetur facilisis vulputate, lorem ipsum convallis risus, auctor vestibulum enim libero ut erat. Curabitur euismod tempor tincidunt. Fusce ac magna urna. In hac habitasse platea dictumst. Maecenas tincidunt orci diam, porta condimentum arcu. Fusce ante massa, elementum id varius ut, euismod et erat. Morbi et quam neque, eget venenatis dolor.<br/><br/>Fusce dui nulla, ullamcorper sit amet aliquam at, viverra ac odio. Vestibulum ut ipsum vel dui accumsan congue. Fusce ac ante vel lorem adipiscing rhoncus. Donec egestas euismod mauris, non dapibus dolor ullamcorper eget. In eu neque justo. Maecenas id diam odio. Nulla facilisi. Vestibulum pretium est et massa adipiscing egestas. Nunc tincidunt eros eu metus tempor a elementum dolor iaculis. Vivamus ac orci nunc, nec dignissim lacus.<br/><br/>Nullam magna tellus, adipiscing vitae malesuada hendrerit, ultricies sed mi. Aenean erat ante, accumsan vel auctor non, malesuada nec dolor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Vivamus tincidunt, dui et consequat malesuada, nisi nunc eleifend ipsum, id mollis neque neque eget nibh. Donec sit amet bibendum mi. Donec semper congue auctor. Nulla sed eros elit. Fusce eget porta neque. Maecenas non massa mauris. Proin hendrerit, nunc non egestas vestibulum, leo lacus facilisis felis, et commodo enim magna non mi. Maecenas bibendum lacus sit amet odio placerat interdum. Aenean eget tortor a erat mollis congue.<br/><br/>Nulla nunc augue, gravida eget ultrices eu, interdum vel magna. Mauris elit augue, tempus non condimentum at, aliquet sed justo. Maecenas aliquam, tellus in tincidunt tempor, lacus nisl ornare tellus, at tempor diam sem eget massa. Etiam fringilla gravida augue nec gravida. Aliquam mauris augue, varius et accumsan in, tempor vel est. Fusce placerat erat sed odio ultricies in imperdiet lorem blandit. Duis ornare tellus id eros tempor scelerisque. Pellentesque sagittis mi aliquet metus suscipit eu tristique enim consectetur. Aenean eros enim, placerat et vulputate a, malesuada vel ligula. Donec consectetur dignissim tellus. Donec dapibus nunc a purus tempus sit amet adipiscing nibh interdum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse ut egestas elit. Quisque congue arcu eget lorem fermentum sit amet elementum est porttitor. Duis placerat nulla at tortor auctor imperdiet. Aenean fringilla, lacus sed consectetur bibendum, magna nisl laoreet sapien, vel vehicula nisl odio at augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi pulvinar consequat turpis, non fringilla orci pharetra sed. Mauris a felis libero, vel pretium risus. Suspendisse cursus eros at arcu venenatis tempus.<br/><br/>Aenean at elit nec tellus dignissim iaculis at vel orci. Cras porta pretium mauris, ullamcorper dignissim sapien ullamcorper nec. Ut auctor ligula sit amet nisl mollis vel porttitor ante sollicitudin. Curabitur vulputate libero in nibh fringilla ac dignissim erat ultricies. Sed tincidunt enim ut risus ultrices tempor. Etiam quis nisl nunc, ut gravida arcu. Suspendisse hendrerit nunc vel leo lobortis auctor. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec hendrerit fermentum accumsan. Nullam a cursus elit. Donec mauris nibh, mattis eget ultricies id, malesuada vitae ante. Aenean vulputate consectetur cursus.</p>', 'Regulamin', NULL, NULL, NULL, 1, 1, NULL, 0, 6, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 3, '1.0', 0, 0, 0),
(18, 'Page', '2011-04-14 10:48:26', '2011-04-14 10:48:41', 'partnerzy', 'Partnerzy', NULL, NULL, 'Partnerzy', NULL, NULL, NULL, 1, 1, NULL, 0, 7, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, 2, '1.0', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `SiteTree_versions`
--

CREATE TABLE IF NOT EXISTS `SiteTree_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `WasPublished` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `AuthorID` int(11) NOT NULL DEFAULT '0',
  `PublisherID` int(11) NOT NULL DEFAULT '0',
  `ClassName` enum('SiteTree','Page','ImageGalleryPage','ContactPage','CupPage','HomePage','ErrorPage','RedirectorPage','VirtualPage','SliderPage') CHARACTER SET utf8 DEFAULT 'SiteTree',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `URLSegment` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `MenuTitle` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `Content` mediumtext CHARACTER SET utf8,
  `MetaTitle` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `MetaDescription` mediumtext CHARACTER SET utf8,
  `MetaKeywords` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ExtraMeta` mediumtext CHARACTER SET utf8,
  `ShowInMenus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ShowInSearch` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HomepageForDomain` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `ProvideComments` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HasBrokenFile` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HasBrokenLink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Status` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `ReportClass` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `ToDo` mediumtext CHARACTER SET utf8,
  `Priority` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `SubsiteID` int(11) NOT NULL DEFAULT '0',
  `MasterPageID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `AuthorID` (`AuthorID`),
  KEY `PublisherID` (`PublisherID`),
  KEY `ParentID` (`ParentID`),
  KEY `URLSegment` (`URLSegment`),
  KEY `ClassName` (`ClassName`),
  KEY `SubsiteID` (`SubsiteID`),
  KEY `MasterPageID` (`MasterPageID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=79 ;

--
-- Dumping data for table `SiteTree_versions`
--

INSERT INTO `SiteTree_versions` (`ID`, `RecordID`, `Version`, `WasPublished`, `AuthorID`, `PublisherID`, `ClassName`, `Created`, `LastEdited`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaTitle`, `MetaDescription`, `MetaKeywords`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `HomepageForDomain`, `ProvideComments`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `Status`, `ReportClass`, `CanViewType`, `CanEditType`, `ToDo`, `Priority`, `ParentID`, `SubsiteID`, `MasterPageID`) VALUES
(1, 1, 1, 1, 0, 0, 'Page', '2011-04-13 11:25:38', '2011-04-13 11:25:38', 'home', 'Strona Domowa', NULL, '<p>Witaj w SilverStripe! To jest domyślna strona domowa. Możesz ją edytować, otwierając <a href="admin/">CMS</a>. Możesz teraz otworzyć <a href="http://doc.silverstripe.com">dokumentację dla developerów</a>, lub rozpocząć <a href="http://doc.silverstripe.com/doku.php?id=tutorials">jeden z samouczyków.</a></p>', NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, NULL, 0, 0, 0),
(2, 2, 1, 1, 0, 0, 'Page', '2011-04-13 11:25:38', '2011-04-13 11:25:38', 'o-nas', 'O nas', NULL, '<p>Możesz wypełnić tę stronę własną treścią, usunąć ją i tworzyć własne strony.<br/></p>', NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 2, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, NULL, 0, 0, 0),
(3, 3, 1, 1, 0, 0, 'Page', '2011-04-13 11:25:38', '2011-04-13 11:25:38', 'kontakt', 'Kontakt', NULL, '<p>Możesz wypełnić tę stronę własną treścią, usunąć ją i tworzyć własne strony.<br/></p>', NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 3, 0, 0, 'Published', NULL, 'Inherit', 'Inherit', NULL, NULL, 0, 0, 0),
(4, 4, 1, 1, 0, 0, 'ErrorPage', '2011-04-13 11:25:38', '2011-04-13 11:25:38', 'nie-znaleziono-strony', 'Nie znaleziono strony', NULL, '<p>Niestety, próbujesz wejść na stronę, która nie istnieje.</p><p>Sprawdź pisownię adresu URL i spróbuj ponownie.</p>', NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 4, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, NULL, 0, 0, 0),
(5, 5, 1, 1, 0, 0, 'ErrorPage', '2011-04-13 11:25:39', '2011-04-13 11:25:39', 'server-error', 'Server error', NULL, '<p>Sorry, there was a problem with handling your request.</p>', NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 5, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, NULL, 0, 0, 0),
(6, 6, 1, 0, 1, 0, '', '2011-04-13 11:31:29', '2011-04-13 11:31:29', 'new-sliderpage', 'NowySliderPage', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, NULL, 3, 0, 0),
(7, 7, 1, 0, 1, 0, '', '2011-04-13 11:33:13', '2011-04-13 11:33:13', 'new-sliderpage', 'NowySliderPage', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 6, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, NULL, 0, 0, 0),
(8, 7, 2, 1, 1, 1, '', '2011-04-13 11:33:13', '2011-04-13 11:35:38', 'new-sliderpage', 'NowySliderPage', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 6, 0, 0, 'Saved (new)', NULL, 'Inherit', 'Inherit', NULL, '1.0', 0, 0, 0),
(9, 8, 1, 0, 1, 0, 'SliderPage', '2011-04-13 12:14:41', '2011-04-13 12:14:41', 'new-sliderpage', 'NowySliderPage', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 6, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, NULL, 0, 0, 0),
(10, 8, 2, 1, 1, 1, 'SliderPage', '2011-04-13 12:14:41', '2011-04-13 12:16:03', 'new-sliderpage', 'NowySliderPage', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 6, 0, 0, 'Saved (new)', NULL, 'Inherit', 'Inherit', NULL, '1.0', 0, 0, 0),
(11, 9, 1, 0, 1, 0, 'ContactPage', '2011-04-13 13:55:12', '2011-04-13 13:55:12', 'new-contactpage', 'NowyContactPage', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 7, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, NULL, 0, 0, 0),
(12, 9, 2, 1, 1, 1, 'ContactPage', '2011-04-13 13:55:12', '2011-04-13 13:55:49', 'kontakt', 'Kontakt', NULL, NULL, 'Kontakt', NULL, NULL, NULL, 1, 1, NULL, 0, 7, 0, 0, 'Saved (new)', NULL, 'Inherit', 'Inherit', NULL, '1.0', 0, 0, 0),
(13, 8, 3, 1, 1, 1, 'SliderPage', '2011-04-13 12:14:41', '2011-04-13 13:57:48', 'archiwum', 'Archiwum', NULL, NULL, 'Archiwum', NULL, NULL, NULL, 1, 1, NULL, 0, 6, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, '1.0', 0, 0, 0),
(14, 10, 1, 0, 1, 0, 'ImageGalleryPage', '2011-04-13 13:58:42', '2011-04-13 13:58:42', 'new-imagegallerypage', 'NowyImageGalleryPage', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 8, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, NULL, 0, 0, 0),
(15, 10, 2, 1, 1, 1, 'ImageGalleryPage', '2011-04-13 13:58:42', '2011-04-13 13:59:36', 'galeria', 'Galeria', NULL, NULL, 'Galeria', NULL, NULL, NULL, 1, 1, NULL, 0, 8, 0, 0, 'Saved (new)', NULL, 'Inherit', 'Inherit', NULL, '1.0', 0, 0, 0),
(16, 11, 1, 0, 1, 0, 'Page', '2011-04-13 18:36:09', '2011-04-13 18:36:09', 'nowypage', 'NowyPage', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, NULL, 8, 0, 0),
(17, 12, 1, 0, 1, 0, 'Page', '2011-04-13 18:36:10', '2011-04-13 18:36:10', 'nowypage-2', 'NowyPage', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 2, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, NULL, 8, 0, 0),
(18, 13, 1, 0, 1, 0, 'ImageGalleryPage', '2011-04-13 18:36:18', '2011-04-13 18:36:18', 'new-imagegallerypage', 'NowyImageGalleryPage', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 3, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, NULL, 8, 0, 0),
(19, 13, 2, 1, 1, 1, 'ImageGalleryPage', '2011-04-13 18:36:18', '2011-04-13 18:36:26', 'new-imagegallerypage', 'NowyImageGalleryPage', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 3, 0, 0, 'Saved (new)', NULL, 'Inherit', 'Inherit', NULL, '0.9', 8, 0, 0),
(20, 11, 2, 1, 1, 1, 'Page', '2011-04-13 18:36:09', '2011-04-13 18:36:48', 'nowypage', 'NowyPage', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, 'Saved (new)', NULL, 'Inherit', 'Inherit', NULL, '0.9', 8, 0, 0),
(21, 11, 3, 1, 1, 1, 'Page', '2011-04-13 18:36:09', '2011-04-13 18:37:59', 'regulamin', 'Regulamin', NULL, NULL, 'Regulamin', NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, '0.9', 8, 0, 0),
(22, 13, 3, 1, 1, 1, 'ImageGalleryPage', '2011-04-13 18:36:18', '2011-04-13 18:38:40', 'galeria', 'Galeria', NULL, NULL, 'Galeria', NULL, NULL, NULL, 1, 1, NULL, 0, 3, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, '0.9', 8, 0, 0),
(23, 14, 1, 0, 1, 0, 'Page', '2011-04-13 18:39:22', '2011-04-13 18:39:22', 'nowypage', 'NowyPage', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 4, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, NULL, 8, 0, 0),
(24, 14, 2, 1, 1, 1, 'Page', '2011-04-13 18:39:22', '2011-04-13 18:40:01', '2010', 'Turniej 2010', NULL, NULL, 'Turniej 2010', NULL, NULL, NULL, 1, 1, NULL, 0, 4, 0, 0, 'Saved (new)', NULL, 'Inherit', 'Inherit', NULL, '0.9', 8, 0, 0),
(25, 15, 1, 0, 1, 0, 'Page', '2011-04-13 18:40:05', '2011-04-13 18:40:05', 'nowypage', 'NowyPage', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, NULL, 14, 0, 0),
(26, 15, 2, 1, 1, 1, 'Page', '2011-04-13 18:40:05', '2011-04-13 18:40:22', 'regulamin', 'Regulamin', NULL, NULL, 'Regulamin', NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, 'Saved (new)', NULL, 'Inherit', 'Inherit', NULL, '0.8', 14, 0, 0),
(27, 12, 2, 0, 1, 0, 'Page', '2011-04-13 18:36:10', '2011-04-13 18:41:44', 'nowypage-2', 'Turniej 2009', NULL, NULL, 'Turniej 2009', NULL, NULL, NULL, 1, 1, NULL, 0, 2, 0, 0, 'Saved (new)', NULL, 'Inherit', 'Inherit', NULL, '0.9', 8, 0, 0),
(28, 12, 3, 1, 1, 1, 'Page', '2011-04-13 18:36:10', '2011-04-13 18:41:49', '2009', 'Turniej 2009', NULL, NULL, 'Turniej 2009', NULL, NULL, NULL, 1, 1, NULL, 0, 2, 0, 0, 'Saved (new)', NULL, 'Inherit', 'Inherit', NULL, '0.9', 8, 0, 0),
(29, 11, 4, 1, 1, 1, 'Page', '2011-04-13 18:36:09', '2011-04-13 18:41:59', 'regulamin', 'Regulamin', NULL, NULL, 'Regulamin', NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, '0.9', 12, 0, 0),
(30, 13, 4, 0, 1, 0, 'ImageGalleryPage', '2011-04-13 18:36:18', '2011-04-13 18:44:30', 'galeria', 'Galeria', NULL, NULL, 'Galeria', NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, '0.9', 8, 0, 0),
(31, 13, 5, 1, 1, 1, 'ImageGalleryPage', '2011-04-13 18:36:18', '2011-04-13 18:44:31', 'galeria', 'Galeria', NULL, NULL, 'Galeria', NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, '0.9', 14, 0, 0),
(32, 10, 3, 0, 1, 0, 'ImageGalleryPage', '2011-04-13 13:58:42', '2011-04-13 18:51:01', 'galeria', 'Galeria', NULL, NULL, 'Galeria', NULL, NULL, NULL, 1, 1, NULL, 0, 8, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, '1.0', 8, 0, 0),
(33, 10, 4, 0, 1, 0, 'ImageGalleryPage', '2011-04-13 13:58:42', '2011-04-13 18:51:01', 'galeria', 'Galeria', NULL, NULL, 'Galeria', NULL, NULL, NULL, 1, 1, NULL, 0, 3, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, '1.0', 8, 0, 0),
(34, 10, 5, 0, 1, 0, 'ImageGalleryPage', '2011-04-13 13:58:42', '2011-04-13 18:51:09', 'galeria', 'Galeria', NULL, NULL, 'Galeria', NULL, NULL, NULL, 1, 1, NULL, 0, 3, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, '1.0', 0, 0, 0),
(35, 10, 6, 0, 1, 0, 'ImageGalleryPage', '2011-04-13 13:58:42', '2011-04-13 18:51:09', 'galeria', 'Galeria', NULL, NULL, 'Galeria', NULL, NULL, NULL, 1, 1, NULL, 0, 6, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, '1.0', 0, 0, 0),
(36, 12, 4, 1, 1, 1, 'CupPage', '2011-04-13 18:36:10', '2011-04-13 19:03:10', '2009', 'Turniej 2009', NULL, NULL, 'Turniej 2009', NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, '0.9', 8, 0, 0),
(37, 11, 5, 1, 1, 1, 'CupPage', '2011-04-13 18:36:09', '2011-04-13 19:11:28', 'regulamin', 'Regulamin', NULL, NULL, 'Regulamin', NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, '0.9', 12, 0, 0),
(38, 14, 3, 1, 1, 1, 'CupPage', '2011-04-13 18:39:22', '2011-04-13 19:11:37', '2010', 'Turniej 2010', NULL, NULL, 'Turniej 2010', NULL, NULL, NULL, 1, 1, NULL, 0, 2, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, '0.9', 8, 0, 0),
(39, 15, 3, 1, 1, 1, 'CupPage', '2011-04-13 18:40:05', '2011-04-13 19:11:46', 'regulamin', 'Regulamin', NULL, NULL, 'Regulamin', NULL, NULL, NULL, 1, 1, NULL, 0, 2, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, '0.8', 14, 0, 0),
(40, 1, 2, 1, 1, 1, 'HomePage', '2011-04-13 11:25:38', '2011-04-13 21:00:26', 'home', 'Strona Domowa', NULL, '<p>Witaj w SilverStripe! To jest domyślna strona domowa. Możesz ją edytować, otwierając <a href="admin/">CMS</a>. Możesz teraz otworzyć <a href="http://doc.silverstripe.com">dokumentację dla developerów</a>, lub rozpocząć <a href="http://doc.silverstripe.com/doku.php?id=tutorials">jeden z samouczyków.</a></p>', NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, '1.0', 0, 0, 0),
(41, 1, 3, 1, 1, 1, 'HomePage', '2011-04-13 11:25:38', '2011-04-14 10:41:44', 'home', 'Start', NULL, '<p>Witaj w SilverStripe! To jest domyślna strona domowa. Możesz ją edytować, otwierając <a href="admin/">CMS</a>. Możesz teraz otworzyć <a href="http://doc.silverstripe.com">dokumentację dla developerów</a>, lub rozpocząć <a href="http://doc.silverstripe.com/doku.php?id=tutorials">jeden z samouczyków.</a></p>', 'Start', NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, '1.0', 0, 0, 0),
(42, 2, 2, 1, 1, 1, 'Page', '2011-04-13 11:25:38', '2011-04-14 10:42:11', 'program', 'Program', NULL, '<p>Możesz wypełnić tę stronę własną treścią, usunąć ją i tworzyć własne strony.</p>', 'Program', NULL, NULL, NULL, 1, 1, NULL, 0, 2, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, '1.0', 0, 0, 0),
(43, 2, 3, 1, 1, 1, 'Page', '2011-04-13 11:25:38', '2011-04-14 10:42:59', 'program', 'Program', NULL, '<div id="lipsum">\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam volutpat,  urna vel pulvinar mollis, elit magna convallis mi, at malesuada lacus  nisi eu erat. Proin congue lobortis libero, sed mattis metus ultrices  et. Praesent sodales mi a est vestibulum volutpat. Sed nunc purus,  pulvinar et pharetra sed, viverra interdum nunc. Curabitur tincidunt,  sem consectetur facilisis vulputate, lorem ipsum convallis risus, auctor  vestibulum enim libero ut erat. Curabitur euismod tempor tincidunt.  Fusce ac magna urna. In hac habitasse platea dictumst. Maecenas  tincidunt orci diam, porta condimentum arcu. Fusce ante massa, elementum  id varius ut, euismod et erat. Morbi et quam neque, eget venenatis  dolor.</p>\n<p>Fusce dui nulla, ullamcorper sit amet aliquam at, viverra ac odio.  Vestibulum ut ipsum vel dui accumsan congue. Fusce ac ante vel lorem  adipiscing rhoncus. Donec egestas euismod mauris, non dapibus dolor  ullamcorper eget. In eu neque justo. Maecenas id diam odio. Nulla  facilisi. Vestibulum pretium est et massa adipiscing egestas. Nunc  tincidunt eros eu metus tempor a elementum dolor iaculis. Vivamus ac  orci nunc, nec dignissim lacus.</p>\n<p>Nullam magna tellus, adipiscing vitae malesuada hendrerit, ultricies sed  mi. Aenean erat ante, accumsan vel auctor non, malesuada nec dolor.  Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere  cubilia Curae; Vivamus tincidunt, dui et consequat malesuada, nisi nunc  eleifend ipsum, id mollis neque neque eget nibh. Donec sit amet  bibendum mi. Donec semper congue auctor. Nulla sed eros elit. Fusce eget  porta neque. Maecenas non massa mauris. Proin hendrerit, nunc non  egestas vestibulum, leo lacus facilisis felis, et commodo enim magna non  mi. Maecenas bibendum lacus sit amet odio placerat interdum. Aenean  eget tortor a erat mollis congue.</p>\n<p>Nulla nunc augue, gravida eget ultrices eu, interdum vel magna. Mauris  elit augue, tempus non condimentum at, aliquet sed justo. Maecenas  aliquam, tellus in tincidunt tempor, lacus nisl ornare tellus, at tempor  diam sem eget massa. Etiam fringilla gravida augue nec gravida. Aliquam  mauris augue, varius et accumsan in, tempor vel est. Fusce placerat  erat sed odio ultricies in imperdiet lorem blandit. Duis ornare tellus  id eros tempor scelerisque. Pellentesque sagittis mi aliquet metus  suscipit eu tristique enim consectetur. Aenean eros enim, placerat et  vulputate a, malesuada vel ligula. Donec consectetur dignissim tellus.  Donec dapibus nunc a purus tempus sit amet adipiscing nibh interdum.  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse ut  egestas elit. Quisque congue arcu eget lorem fermentum sit amet  elementum est porttitor. Duis placerat nulla at tortor auctor imperdiet.  Aenean fringilla, lacus sed consectetur bibendum, magna nisl laoreet  sapien, vel vehicula nisl odio at augue. Vestibulum ante ipsum primis in  faucibus orci luctus et ultrices posuere cubilia Curae; Morbi pulvinar  consequat turpis, non fringilla orci pharetra sed. Mauris a felis  libero, vel pretium risus. Suspendisse cursus eros at arcu venenatis  tempus.</p>\n<p>Aenean at elit nec tellus dignissim iaculis at vel orci. Cras porta  pretium mauris, ullamcorper dignissim sapien ullamcorper nec. Ut auctor  ligula sit amet nisl mollis vel porttitor ante sollicitudin. Curabitur  vulputate libero in nibh fringilla ac dignissim erat ultricies. Sed  tincidunt enim ut risus ultrices tempor. Etiam quis nisl nunc, ut  gravida arcu. Suspendisse hendrerit nunc vel leo lobortis auctor.  Pellentesque habitant morbi tristique senectus et netus et malesuada  fames ac turpis egestas. Donec hendrerit fermentum accumsan. Nullam a  cursus elit. Donec mauris nibh, mattis eget ultricies id, malesuada  vitae ante. Aenean vulputate consectetur cursus.</p>\n</div>', 'Program', NULL, NULL, NULL, 1, 1, NULL, 0, 2, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, '1.0', 0, 0, 0),
(44, 2, 4, 1, 1, 1, 'Page', '2011-04-13 11:25:38', '2011-04-14 10:43:16', 'program', 'Program', NULL, '<div id="lipsum" style="text-align: justify;">\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam volutpat,  urna vel pulvinar mollis, elit magna convallis mi, at malesuada lacus  nisi eu erat. Proin congue lobortis libero, sed mattis metus ultrices  et. Praesent sodales mi a est vestibulum volutpat. Sed nunc purus,  pulvinar et pharetra sed, viverra interdum nunc. Curabitur tincidunt,  sem consectetur facilisis vulputate, lorem ipsum convallis risus, auctor  vestibulum enim libero ut erat. Curabitur euismod tempor tincidunt.  Fusce ac magna urna. In hac habitasse platea dictumst. Maecenas  tincidunt orci diam, porta condimentum arcu. Fusce ante massa, elementum  id varius ut, euismod et erat. Morbi et quam neque, eget venenatis  dolor.</p>\n<p>Fusce dui nulla, ullamcorper sit amet aliquam at, viverra ac odio.  Vestibulum ut ipsum vel dui accumsan congue. Fusce ac ante vel lorem  adipiscing rhoncus. Donec egestas euismod mauris, non dapibus dolor  ullamcorper eget. In eu neque justo. Maecenas id diam odio. Nulla  facilisi. Vestibulum pretium est et massa adipiscing egestas. Nunc  tincidunt eros eu metus tempor a elementum dolor iaculis. Vivamus ac  orci nunc, nec dignissim lacus.</p>\n<p>Nullam magna tellus, adipiscing vitae malesuada hendrerit, ultricies sed  mi. Aenean erat ante, accumsan vel auctor non, malesuada nec dolor.  Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere  cubilia Curae; Vivamus tincidunt, dui et consequat malesuada, nisi nunc  eleifend ipsum, id mollis neque neque eget nibh. Donec sit amet  bibendum mi. Donec semper congue auctor. Nulla sed eros elit. Fusce eget  porta neque. Maecenas non massa mauris. Proin hendrerit, nunc non  egestas vestibulum, leo lacus facilisis felis, et commodo enim magna non  mi. Maecenas bibendum lacus sit amet odio placerat interdum. Aenean  eget tortor a erat mollis congue.</p>\n<p>Nulla nunc augue, gravida eget ultrices eu, interdum vel magna. Mauris  elit augue, tempus non condimentum at, aliquet sed justo. Maecenas  aliquam, tellus in tincidunt tempor, lacus nisl ornare tellus, at tempor  diam sem eget massa. Etiam fringilla gravida augue nec gravida. Aliquam  mauris augue, varius et accumsan in, tempor vel est. Fusce placerat  erat sed odio ultricies in imperdiet lorem blandit. Duis ornare tellus  id eros tempor scelerisque. Pellentesque sagittis mi aliquet metus  suscipit eu tristique enim consectetur. Aenean eros enim, placerat et  vulputate a, malesuada vel ligula. Donec consectetur dignissim tellus.  Donec dapibus nunc a purus tempus sit amet adipiscing nibh interdum.  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse ut  egestas elit. Quisque congue arcu eget lorem fermentum sit amet  elementum est porttitor. Duis placerat nulla at tortor auctor imperdiet.  Aenean fringilla, lacus sed consectetur bibendum, magna nisl laoreet  sapien, vel vehicula nisl odio at augue. Vestibulum ante ipsum primis in  faucibus orci luctus et ultrices posuere cubilia Curae; Morbi pulvinar  consequat turpis, non fringilla orci pharetra sed. Mauris a felis  libero, vel pretium risus. Suspendisse cursus eros at arcu venenatis  tempus.</p>\n<p>Aenean at elit nec tellus dignissim iaculis at vel orci. Cras porta  pretium mauris, ullamcorper dignissim sapien ullamcorper nec. Ut auctor  ligula sit amet nisl mollis vel porttitor ante sollicitudin. Curabitur  vulputate libero in nibh fringilla ac dignissim erat ultricies. Sed  tincidunt enim ut risus ultrices tempor. Etiam quis nisl nunc, ut  gravida arcu. Suspendisse hendrerit nunc vel leo lobortis auctor.  Pellentesque habitant morbi tristique senectus et netus et malesuada  fames ac turpis egestas. Donec hendrerit fermentum accumsan. Nullam a  cursus elit. Donec mauris nibh, mattis eget ultricies id, malesuada  vitae ante. Aenean vulputate consectetur cursus.</p>\n</div>', 'Program', NULL, NULL, NULL, 1, 1, NULL, 0, 2, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, '1.0', 0, 0, 0),
(45, 16, 1, 0, 1, 0, 'Page', '2011-04-14 10:46:44', '2011-04-14 10:46:44', 'nowypage', 'NowyPage', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 8, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, NULL, 0, 0, 0),
(46, 16, 2, 1, 1, 1, 'Page', '2011-04-14 10:46:44', '2011-04-14 10:47:03', 'zapisy', 'Zapisy', NULL, NULL, 'Zapisy', NULL, NULL, NULL, 1, 1, NULL, 0, 8, 0, 0, 'Saved (new)', NULL, 'Inherit', 'Inherit', NULL, '1.0', 0, 0, 0),
(47, 16, 3, 1, 1, 1, 'Page', '2011-04-14 10:46:44', '2011-04-14 10:47:42', 'zapisy', 'Zapisy', NULL, '<div id="lipsum" style="text-align: justify;">\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam volutpat,  urna vel pulvinar mollis, elit magna convallis mi, at malesuada lacus  nisi eu erat. Proin congue lobortis libero, sed mattis metus ultrices  et. Praesent sodales mi a est vestibulum volutpat. Sed nunc purus,  pulvinar et pharetra sed, viverra interdum nunc. Curabitur tincidunt,  sem consectetur facilisis vulputate, lorem ipsum convallis risus, auctor  vestibulum enim libero ut erat. Curabitur euismod tempor tincidunt.  Fusce ac magna urna. In hac habitasse platea dictumst. Maecenas  tincidunt orci diam, porta condimentum arcu. Fusce ante massa, elementum  id varius ut, euismod et erat. Morbi et quam neque, eget venenatis  dolor.</p>\n<p>Fusce dui nulla, ullamcorper sit amet aliquam at, viverra ac odio.  Vestibulum ut ipsum vel dui accumsan congue. Fusce ac ante vel lorem  adipiscing rhoncus. Donec egestas euismod mauris, non dapibus dolor  ullamcorper eget. In eu neque justo. Maecenas id diam odio. Nulla  facilisi. Vestibulum pretium est et massa adipiscing egestas. Nunc  tincidunt eros eu metus tempor a elementum dolor iaculis. Vivamus ac  orci nunc, nec dignissim lacus.</p>\n<p>Nullam magna tellus, adipiscing vitae malesuada hendrerit, ultricies sed  mi. Aenean erat ante, accumsan vel auctor non, malesuada nec dolor.  Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere  cubilia Curae; Vivamus tincidunt, dui et consequat malesuada, nisi nunc  eleifend ipsum, id mollis neque neque eget nibh. Donec sit amet  bibendum mi. Donec semper congue auctor. Nulla sed eros elit. Fusce eget  porta neque. Maecenas non massa mauris. Proin hendrerit, nunc non  egestas vestibulum, leo lacus facilisis felis, et commodo enim magna non  mi. Maecenas bibendum lacus sit amet odio placerat interdum. Aenean  eget tortor a erat mollis congue.</p>\n<p>Nulla nunc augue, gravida eget ultrices eu, interdum vel magna. Mauris  elit augue, tempus non condimentum at, aliquet sed justo. Maecenas  aliquam, tellus in tincidunt tempor, lacus nisl ornare tellus, at tempor  diam sem eget massa. Etiam fringilla gravida augue nec gravida. Aliquam  mauris augue, varius et accumsan in, tempor vel est. Fusce placerat  erat sed odio ultricies in imperdiet lorem blandit. Duis ornare tellus  id eros tempor scelerisque. Pellentesque sagittis mi aliquet metus  suscipit eu tristique enim consectetur. Aenean eros enim, placerat et  vulputate a, malesuada vel ligula. Donec consectetur dignissim tellus.  Donec dapibus nunc a purus tempus sit amet adipiscing nibh interdum.  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse ut  egestas elit. Quisque congue arcu eget lorem fermentum sit amet  elementum est porttitor. Duis placerat nulla at tortor auctor imperdiet.  Aenean fringilla, lacus sed consectetur bibendum, magna nisl laoreet  sapien, vel vehicula nisl odio at augue. Vestibulum ante ipsum primis in  faucibus orci luctus et ultrices posuere cubilia Curae; Morbi pulvinar  consequat turpis, non fringilla orci pharetra sed. Mauris a felis  libero, vel pretium risus. Suspendisse cursus eros at arcu venenatis  tempus.</p>\n<p>Aenean at elit nec tellus dignissim iaculis at vel orci. Cras porta  pretium mauris, ullamcorper dignissim sapien ullamcorper nec. Ut auctor  ligula sit amet nisl mollis vel porttitor ante sollicitudin. Curabitur  vulputate libero in nibh fringilla ac dignissim erat ultricies. Sed  tincidunt enim ut risus ultrices tempor. Etiam quis nisl nunc, ut  gravida arcu. Suspendisse hendrerit nunc vel leo lobortis auctor.  Pellentesque habitant morbi tristique senectus et netus et malesuada  fames ac turpis egestas. Donec hendrerit fermentum accumsan. Nullam a  cursus elit. Donec mauris nibh, mattis eget ultricies id, malesuada  vitae ante. Aenean vulputate consectetur cursus.</p>\n</div>', 'Zapisy', NULL, NULL, NULL, 1, 1, NULL, 0, 8, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, '1.0', 0, 0, 0),
(48, 17, 1, 0, 1, 0, 'Page', '2011-04-14 10:47:50', '2011-04-14 10:47:50', 'nowypage', 'NowyPage', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 9, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, NULL, 0, 0, 0),
(49, 17, 2, 1, 1, 1, 'Page', '2011-04-14 10:47:50', '2011-04-14 10:48:16', 'regulamin', 'Regulamin', NULL, NULL, 'Regulamin', NULL, NULL, NULL, 1, 1, NULL, 0, 9, 0, 0, 'Saved (new)', NULL, 'Inherit', 'Inherit', NULL, '1.0', 0, 0, 0),
(50, 18, 1, 0, 1, 0, 'Page', '2011-04-14 10:48:26', '2011-04-14 10:48:26', 'nowypage', 'NowyPage', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 10, 0, 0, 'New page', NULL, 'Inherit', 'Inherit', NULL, NULL, 0, 0, 0),
(51, 18, 2, 1, 1, 1, 'Page', '2011-04-14 10:48:26', '2011-04-14 10:48:41', 'partnerzy', 'Partnerzy', NULL, NULL, 'Partnerzy', NULL, NULL, NULL, 1, 1, NULL, 0, 10, 0, 0, 'Saved (new)', NULL, 'Inherit', 'Inherit', NULL, '1.0', 0, 0, 0),
(52, 10, 7, 1, 1, 1, 'ImageGalleryPage', '2011-04-13 13:58:42', '2011-04-14 10:48:50', 'galeria', 'Galeria', NULL, NULL, 'Galeria', NULL, NULL, NULL, 1, 1, NULL, 0, 10, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, '1.0', 0, 0, 0),
(53, 8, 4, 0, 1, 0, 'SliderPage', '2011-04-13 12:14:41', '2011-04-14 10:48:59', 'archiwum', 'Archiwum', NULL, NULL, 'Archiwum', NULL, NULL, NULL, 1, 1, NULL, 0, 10, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, '1.0', 0, 0, 0),
(54, 9, 3, 0, 1, 0, 'ContactPage', '2011-04-13 13:55:12', '2011-04-14 10:49:06', 'kontakt', 'Kontakt', NULL, NULL, 'Kontakt', NULL, NULL, NULL, 1, 1, NULL, 0, 10, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, '1.0', 0, 0, 0),
(55, 17, 3, 1, 1, 1, 'Page', '2011-04-14 10:47:50', '2011-04-14 10:58:45', 'regulamin', 'Regulamin', NULL, '<p style="text-align: justify;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam volutpat, urna vel pulvinar mollis, elit magna convallis mi, at malesuada lacus nisi eu erat. Proin congue lobortis libero, sed mattis metus ultrices et. Praesent sodales mi a est vestibulum volutpat. Sed nunc purus, pulvinar et pharetra sed, viverra interdum nunc. Curabitur tincidunt, sem consectetur facilisis vulputate, lorem ipsum convallis risus, auctor vestibulum enim libero ut erat. Curabitur euismod tempor tincidunt. Fusce ac magna urna. In hac habitasse platea dictumst. Maecenas tincidunt orci diam, porta condimentum arcu. Fusce ante massa, elementum id varius ut, euismod et erat. Morbi et quam neque, eget venenatis dolor.<br/><br/>Fusce dui nulla, ullamcorper sit amet aliquam at, viverra ac odio. Vestibulum ut ipsum vel dui accumsan congue. Fusce ac ante vel lorem adipiscing rhoncus. Donec egestas euismod mauris, non dapibus dolor ullamcorper eget. In eu neque justo. Maecenas id diam odio. Nulla facilisi. Vestibulum pretium est et massa adipiscing egestas. Nunc tincidunt eros eu metus tempor a elementum dolor iaculis. Vivamus ac orci nunc, nec dignissim lacus.<br/><br/>Nullam magna tellus, adipiscing vitae malesuada hendrerit, ultricies sed mi. Aenean erat ante, accumsan vel auctor non, malesuada nec dolor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Vivamus tincidunt, dui et consequat malesuada, nisi nunc eleifend ipsum, id mollis neque neque eget nibh. Donec sit amet bibendum mi. Donec semper congue auctor. Nulla sed eros elit. Fusce eget porta neque. Maecenas non massa mauris. Proin hendrerit, nunc non egestas vestibulum, leo lacus facilisis felis, et commodo enim magna non mi. Maecenas bibendum lacus sit amet odio placerat interdum. Aenean eget tortor a erat mollis congue.<br/><br/>Nulla nunc augue, gravida eget ultrices eu, interdum vel magna. Mauris elit augue, tempus non condimentum at, aliquet sed justo. Maecenas aliquam, tellus in tincidunt tempor, lacus nisl ornare tellus, at tempor diam sem eget massa. Etiam fringilla gravida augue nec gravida. Aliquam mauris augue, varius et accumsan in, tempor vel est. Fusce placerat erat sed odio ultricies in imperdiet lorem blandit. Duis ornare tellus id eros tempor scelerisque. Pellentesque sagittis mi aliquet metus suscipit eu tristique enim consectetur. Aenean eros enim, placerat et vulputate a, malesuada vel ligula. Donec consectetur dignissim tellus. Donec dapibus nunc a purus tempus sit amet adipiscing nibh interdum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse ut egestas elit. Quisque congue arcu eget lorem fermentum sit amet elementum est porttitor. Duis placerat nulla at tortor auctor imperdiet. Aenean fringilla, lacus sed consectetur bibendum, magna nisl laoreet sapien, vel vehicula nisl odio at augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi pulvinar consequat turpis, non fringilla orci pharetra sed. Mauris a felis libero, vel pretium risus. Suspendisse cursus eros at arcu venenatis tempus.<br/><br/>Aenean at elit nec tellus dignissim iaculis at vel orci. Cras porta pretium mauris, ullamcorper dignissim sapien ullamcorper nec. Ut auctor ligula sit amet nisl mollis vel porttitor ante sollicitudin. Curabitur vulputate libero in nibh fringilla ac dignissim erat ultricies. Sed tincidunt enim ut risus ultrices tempor. Etiam quis nisl nunc, ut gravida arcu. Suspendisse hendrerit nunc vel leo lobortis auctor. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec hendrerit fermentum accumsan. Nullam a cursus elit. Donec mauris nibh, mattis eget ultricies id, malesuada vitae ante. Aenean vulputate consectetur cursus.</p>', 'Regulamin', NULL, NULL, NULL, 1, 1, NULL, 0, 6, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, '1.0', 0, 0, 0),
(56, 9, 4, 1, 1, 1, 'ContactPage', '2011-04-13 13:55:12', '2011-04-14 13:16:49', 'kontakt', 'Kontakt', NULL, '<p>\n</p><div class="googlemaps config={''mapstyle'':1,''coords'':''50.295013,18.6520316'',''zoom'':13,''hud'':2}" style="background: none repeat scroll 0% 0% #d3d3d3; width: 300px; height: 300px; float: left;"> </div>\n', 'Kontakt', NULL, NULL, NULL, 1, 1, NULL, 0, 10, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, '1.0', 0, 0, 0),
(57, 9, 5, 1, 1, 1, 'ContactPage', '2011-04-13 13:55:12', '2011-04-14 13:20:07', 'kontakt', 'Kontakt', NULL, '<p class="leftAlone"><strong>Klub Sportowy Akademia Piłkarska Silesia</strong><br/>Ul. Kościuszki 35<br/>44-100 Gliwice </p>\n<p><span class="leftAlone"><strong>silesia@apsilesia.pl</strong><br/>Michał Tofilski tel. 795-696-874<br/>Rafał Grzegorzek tel. 794-789-807</span></p>\n<div class="googlemaps config={''mapstyle'':1,''coords'':''50.295013,18.6520316'',''zoom'':13,''hud'':2}" style="background: none repeat scroll 0% 0% #d3d3d3; width: 300px; height: 300px; float: left;"> </div>', 'Kontakt', NULL, NULL, NULL, 1, 1, NULL, 0, 10, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, '1.0', 0, 0, 0),
(58, 9, 6, 1, 1, 1, 'ContactPage', '2011-04-13 13:55:12', '2011-04-14 13:39:16', 'kontakt', 'Kontakt', NULL, '<p class="leftAlone"><strong>Klub Sportowy Akademia Piłkarska Silesia</strong><br/>Ul. Kościuszki 35<br/>44-100 Gliwice </p>\n<p><span class="leftAlone"><strong>silesia@apsilesia.pl</strong><br/>Michał Tofilski tel. 795-696-874<br/>Rafał Grzegorzek tel. 794-789-807</span></p>\n<div class="googlemaps config={''mapstyle'':1,''coords'':''50.295013,18.6520316'',''zoom'':13,''hud'':2}" style="background: none repeat scroll 0% 0% #d3d3d3; width: 300px; height: 300px; float: left; text-align: right;"> </div>', 'Kontakt', NULL, NULL, NULL, 1, 1, NULL, 0, 10, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, '1.0', 0, 0, 0),
(59, 9, 7, 1, 1, 1, 'ContactPage', '2011-04-13 13:55:12', '2011-04-14 13:42:45', 'kontakt', 'Kontakt', NULL, '<p class="leftAlone"><strong>Klub Sportowy Akademia Piłkarska Silesia</strong><br/>Ul. Kościuszki 35<br/>44-100 Gliwice </p>\n<p><span class="leftAlone"><strong>silesia@apsilesia.pl</strong><br/>Michał Tofilski tel. 795-696-874<br/>Rafał Grzegorzek tel. 794-789-807</span></p>', 'Kontakt', NULL, NULL, NULL, 1, 1, NULL, 0, 10, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, '1.0', 0, 0, 0),
(60, 9, 8, 1, 1, 1, 'ContactPage', '2011-04-13 13:55:12', '2011-04-14 13:53:22', 'kontakt', 'Kontakt', NULL, '<p class="leftAlone"><strong>Klub Sportowy Akademia Piłkarska Silesia</strong><br/>Ul. Kościuszki 35<br/>44-100 Gliwice </p>\n<p><span class="leftAlone"><strong>silesia@apsilesia.pl</strong><br/>Michał Tofilski tel. 795-696-874<br/>Rafał Grzegorzek tel. 794-789-807\n<div class="googlemaps config={''mapstyle'':1,''coords'':''50.295013,18.6520316'',''zoom'':13,''hud'':2}" style="background: none repeat scroll 0% 0% #d3d3d3; width: 350px; height: 350px; float: left;"> </div>\n<br/></span></p>', 'Kontakt', NULL, NULL, NULL, 1, 1, NULL, 0, 10, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, '1.0', 0, 0, 0),
(61, 9, 9, 1, 1, 1, 'ContactPage', '2011-04-13 13:55:12', '2011-04-14 13:54:30', 'kontakt', 'Kontakt', NULL, '<p class="leftAlone"><strong>Klub Sportowy Akademia Piłkarska Silesia</strong><br/>Ul. Kościuszki 35<br/>44-100 Gliwice </p>\n<p><span class="leftAlone"><strong>silesia@apsilesia.pl</strong><br/>Michał Tofilski tel. 795-696-874<br/>Rafał Grzegorzek tel. 794-789-807</span></p>\n<p><span class="leftAlone">\n<div class="googlemaps config={''mapstyle'':1,''coords'':''50.295013,18.6520316'',''zoom'':13,''hud'':2}" style="background: none repeat scroll 0% 0% #d3d3d3; width: 300px; height: 300px; float: left;"> </div>\n<br/></span></p>\n<p> </p>\n<p> </p>', 'Kontakt', NULL, NULL, NULL, 1, 1, NULL, 0, 10, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, '1.0', 0, 0, 0),
(62, 9, 10, 1, 1, 1, 'ContactPage', '2011-04-13 13:55:12', '2011-04-14 13:55:41', 'kontakt', 'Kontakt', NULL, '<p class="leftAlone"><strong>Klub Sportowy Akademia Piłkarska Silesia</strong><br/>Ul. Kościuszki 35<br/>44-100 Gliwice </p>\n<p><span class="leftAlone"><strong>silesia@apsilesia.pl</strong><br/>Michał Tofilski tel. 795-696-874<br/>Rafał Grzegorzek tel. 794-789-807</span></p>\n<p><span class="leftAlone"> </span></p>\n<div class="googlemaps config={''mapstyle'':1,''coords'':''50.295013,18.6520316'',''zoom'':13,''hud'':2}" style="background: none repeat scroll 0% 0% #d3d3d3; width: 300px; height: 300px; float: left;"> </div>\n<p> </p>\n<p> </p>\n<p> </p>\n<p> </p>\n<p> </p>\n<p> </p>\n<p> </p>\n<p> </p>\n<p> </p>\n<p> </p>\n<p>\n</p><hr/>', 'Kontakt', NULL, NULL, NULL, 1, 1, NULL, 0, 10, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, '1.0', 0, 0, 0),
(63, 9, 11, 1, 1, 1, 'ContactPage', '2011-04-13 13:55:12', '2011-04-14 13:56:14', 'kontakt', 'Kontakt', NULL, '<p class="leftAlone"><strong>Klub Sportowy Akademia Piłkarska Silesia</strong><br/>Ul. Kościuszki 35<br/>44-100 Gliwice </p>\n<p><span class="leftAlone"><strong>silesia@apsilesia.pl</strong><br/>Michał Tofilski tel. 795-696-874<br/>Rafał Grzegorzek tel. 794-789-807</span></p>\n<p><span class="leftAlone"> </span></p>\n<div class="googlemaps config={''mapstyle'':1,''coords'':''50.295013,18.6520316'',''zoom'':13,''hud'':2}" style="background: none repeat scroll 0% 0% #d3d3d3; width: 300px; height: 300px; float: left;"> </div>\n<p> </p>\n<p> </p>\n<p> </p>\n<p> </p>\n<p> </p>\n<p> </p>\n<p> </p>\n<p> </p>\n<p> </p>', 'Kontakt', NULL, NULL, NULL, 1, 1, NULL, 0, 10, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, '1.0', 0, 0, 0),
(64, 9, 12, 1, 1, 1, 'ContactPage', '2011-04-13 13:55:12', '2011-04-14 13:59:39', 'kontakt', 'Kontakt', NULL, '<p class="leftAlone"><strong>Klub Sportowy Akademia Piłkarska Silesia</strong><br/>Ul. Kościuszki 35<br/>44-100 Gliwice </p>\n<p><span class="leftAlone"><strong>silesia@apsilesia.pl</strong><br/>Michał Tofilski tel. 795-696-874<br/>Rafał Grzegorzek tel. 794-789-807</span></p>\n<p><span class="leftAlone"> </span></p>\n<div class="googlemaps config={''mapstyle'':1,''coords'':''50.295013,18.6520316'',''zoom'':13,''hud'':2}" style="background: none repeat scroll 0% 0% white; width: 300px; height: 300px; float: left; padding: 6px; border: 1px 2px 2px 1px solid #dddddd #aaaaaa #aaaaaa #dddddd;"> </div>', 'Kontakt', NULL, NULL, NULL, 1, 1, NULL, 0, 10, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, '1.0', 0, 0, 0),
(65, 9, 13, 1, 1, 1, 'ContactPage', '2011-04-13 13:55:12', '2011-04-14 14:26:58', 'kontakt', 'Kontakt', NULL, '<h1><strong>Klub Sportowy Akademia Piłkarska Silesia</strong></h1>\n<p class="leftAlone">Ul. Kościuszki 35<br/>44-100 Gliwice </p>\n<p><span class="leftAlone"><strong>silesia@apsilesia.pl</strong><br/>Michał Tofilski tel. 795-696-874<br/>Rafał Grzegorzek tel. 794-789-807</span></p>\n<p><span class="leftAlone"> </span></p>\n<div class="googlemaps config={''mapstyle'':1,''coords'':''50.295013,18.6520316'',''zoom'':13,''hud'':2}" style="background: none repeat scroll 0% 0% white; width: 300px; height: 300px; float: left; padding: 6px;"> </div>', 'Kontakt', NULL, NULL, NULL, 1, 1, NULL, 0, 10, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, '1.0', 0, 0, 0),
(66, 9, 14, 1, 1, 1, 'ContactPage', '2011-04-13 13:55:12', '2011-04-14 14:27:31', 'kontakt', 'Kontakt', NULL, '<h2><strong>Klub Sportowy Akademia Piłkarska Silesia</strong></h2>\n<p class="leftAlone">Ul. Kościuszki 35<br/>44-100 Gliwice </p>\n<p><span class="leftAlone"><strong>silesia@apsilesia.pl</strong><br/>Michał Tofilski tel. 795-696-874<br/>Rafał Grzegorzek tel. 794-789-807</span></p>\n<p><span class="leftAlone"> </span></p>\n<div class="googlemaps config={''mapstyle'':1,''coords'':''50.295013,18.6520316'',''zoom'':13,''hud'':2}" style="background: none repeat scroll 0% 0% white; width: 300px; height: 300px; float: left; padding: 6px;"> </div>', 'Kontakt', NULL, NULL, NULL, 1, 1, NULL, 0, 10, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, '1.0', 0, 0, 0),
(67, 9, 15, 1, 1, 1, 'ContactPage', '2011-04-13 13:55:12', '2011-04-14 14:28:23', 'kontakt', 'Kontakt', NULL, '<h3><strong>Klub Sportowy Akademia Piłkarska Silesia</strong></h3>\n<p class="leftAlone">Ul. Kościuszki 35<br/>44-100 Gliwice </p>\n<p><span class="leftAlone"><strong>silesia@apsilesia.pl</strong><br/>Michał Tofilski tel. 795-696-874<br/>Rafał Grzegorzek tel. 794-789-807</span></p>\n<p><span class="leftAlone"> </span></p>\n<div class="googlemaps config={''mapstyle'':1,''coords'':''50.295013,18.6520316'',''zoom'':13,''hud'':2}" style="background: none repeat scroll 0% 0% white; width: 300px; height: 300px; float: left; padding: 6px;"> </div>', 'Kontakt', NULL, NULL, NULL, 1, 1, NULL, 0, 10, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, '1.0', 0, 0, 0),
(68, 9, 16, 1, 1, 1, 'ContactPage', '2011-04-13 13:55:12', '2011-04-14 14:28:45', 'kontakt', 'Kontakt', NULL, '<h4><strong>Klub Sportowy Akademia Piłkarska Silesia</strong></h4>\n<p class="leftAlone">Ul. Kościuszki 35<br/>44-100 Gliwice </p>\n<p><span class="leftAlone"><strong>silesia@apsilesia.pl</strong><br/>Michał Tofilski tel. 795-696-874<br/>Rafał Grzegorzek tel. 794-789-807</span></p>\n<p><span class="leftAlone"> </span></p>\n<div class="googlemaps config={''mapstyle'':1,''coords'':''50.295013,18.6520316'',''zoom'':13,''hud'':2}" style="background: none repeat scroll 0% 0% white; width: 300px; height: 300px; float: left; padding: 6px;"> </div>', 'Kontakt', NULL, NULL, NULL, 1, 1, NULL, 0, 10, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, '1.0', 0, 0, 0),
(69, 9, 17, 1, 1, 1, 'ContactPage', '2011-04-13 13:55:12', '2011-04-14 14:29:07', 'kontakt', 'Kontakt', NULL, '<h5><strong>Klub Sportowy Akademia Piłkarska Silesia</strong></h5>\n<p class="leftAlone">Ul. Kościuszki 35<br/>44-100 Gliwice </p>\n<p><span class="leftAlone"><strong>silesia@apsilesia.pl</strong><br/>Michał Tofilski tel. 795-696-874<br/>Rafał Grzegorzek tel. 794-789-807</span></p>\n<p><span class="leftAlone"> </span></p>\n<div class="googlemaps config={''mapstyle'':1,''coords'':''50.295013,18.6520316'',''zoom'':13,''hud'':2}" style="background: none repeat scroll 0% 0% white; width: 300px; height: 300px; float: left; padding: 6px;"> </div>', 'Kontakt', NULL, NULL, NULL, 1, 1, NULL, 0, 10, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, '1.0', 0, 0, 0),
(70, 9, 18, 1, 1, 1, 'ContactPage', '2011-04-13 13:55:12', '2011-04-14 14:30:20', 'kontakt', 'Kontakt', NULL, '<p>Klub Sportowy Akademia Piłkarska Silesia</p>\n<p class="leftAlone">Ul. Kościuszki 35<br/>44-100 Gliwice </p>\n<p><span class="leftAlone"><strong>silesia@apsilesia.pl</strong><br/>Michał Tofilski tel. 795-696-874<br/>Rafał Grzegorzek tel. 794-789-807</span></p>\n<p><span class="leftAlone"> </span></p>\n<div class="googlemaps config={''mapstyle'':1,''coords'':''50.295013,18.6520316'',''zoom'':13,''hud'':2}" style="background: none repeat scroll 0% 0% white; width: 300px; height: 300px; float: left; padding: 6px;"> </div>', 'Kontakt', NULL, NULL, NULL, 1, 1, NULL, 0, 10, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, '1.0', 0, 0, 0),
(71, 9, 19, 1, 1, 1, 'ContactPage', '2011-04-13 13:55:12', '2011-04-14 14:30:29', 'kontakt', 'Kontakt', NULL, '<p><strong>Klub Sportowy Akademia Piłkarska Silesia</strong></p>\n<p class="leftAlone">Ul. Kościuszki 35<br/>44-100 Gliwice </p>\n<p><span class="leftAlone"><strong>silesia@apsilesia.pl</strong><br/>Michał Tofilski tel. 795-696-874<br/>Rafał Grzegorzek tel. 794-789-807</span></p>\n<p><span class="leftAlone"> </span></p>\n<div class="googlemaps config={''mapstyle'':1,''coords'':''50.295013,18.6520316'',''zoom'':13,''hud'':2}" style="background: none repeat scroll 0% 0% white; width: 300px; height: 300px; float: left; padding: 6px;"> </div>', 'Kontakt', NULL, NULL, NULL, 1, 1, NULL, 0, 10, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, '1.0', 0, 0, 0),
(72, 15, 4, 1, 1, 1, 'CupPage', '2011-04-13 18:40:05', '2011-04-14 18:01:03', 'regulamin', 'Regulamin', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean nec mi  vitae erat sagittis sodales eu volutpat dolor. Nam id lectus venenatis  ipsum rhoncus iaculis. Sed et nibh nisl, vel rutrum erat. Maecenas  congue scelerisque mollis. Nunc eu massa a erat viverra blandit vel in  mi. Nunc ut purus eget diam fermentum bibendum quis in risus. Mauris  suscipit blandit ante at luctus. Sed congue, mi vitae ultrices ornare,  velit felis accumsan nisi, ac placerat est enim id purus. Fusce eget sem  neque. Fusce tincidunt erat sit amet nisi vulputate hendrerit. Aliquam  vel orci quis dui vehicula rutrum.</p>\n<p>In ultrices laoreet interdum. Aenean facilisis mauris et tortor  malesuada nec tincidunt nisl convallis. Phasellus nisi arcu, consequat  non dapibus eu, imperdiet sed nisi. Duis varius varius felis, ut  hendrerit mi viverra at. Nullam pulvinar iaculis tellus. Nunc imperdiet  eros in elit euismod vitae mollis velit posuere. Duis vel mi nisi.  Phasellus dapibus lacinia est, eget imperdiet libero lacinia ac. Nam  purus nisl, blandit non dapibus id, pretium quis nisl. Pellentesque  habitant morbi tristique senectus et netus et malesuada fames ac turpis  egestas. Pellentesque habitant morbi tristique senectus et netus et  malesuada fames ac turpis egestas. Donec vel tellus ligula. Etiam  accumsan dapibus posuere. Suspendisse eu ligula ac metus lobortis  consequat. Vestibulum ante ipsum primis in faucibus orci luctus et  ultrices posuere cubilia Curae; Quisque ut massa erat, quis egestas  velit. In vehicula purus lorem. Vivamus ac leo massa. Morbi consectetur,  augue ut pharetra fermentum, nisl odio sollicitudin tellus, quis dictum  velit justo at orci. Ut ut tortor massa.</p>\n<p>Donec tempor tellus sed dui porttitor aliquam. Aliquam sem urna, laoreet  vel venenatis ut, aliquam a lorem. Pellentesque sed neque nec urna  rutrum accumsan eu a dui. Quisque tristique imperdiet feugiat. Fusce  lectus lorem, bibendum vel blandit nec, varius auctor velit. Morbi  blandit egestas massa et suscipit. Aliquam mauris mi, sodales ac  imperdiet a, feugiat non felis. Vestibulum ornare odio sed est posuere  et dignissim nisl euismod. Sed commodo porttitor tortor ac suscipit. In  elementum volutpat nulla et luctus. Curabitur suscipit elit a turpis  ultrices ac placerat tellus lobortis. Proin nec est tortor. In gravida  commodo commodo. Etiam in vehicula nunc. Fusce sem urna, dignissim vel  accumsan sed, euismod id mauris. Phasellus condimentum lectus et massa  tincidunt sed tempus orci faucibus. Praesent a ipsum nec orci posuere  porttitor.</p>\n<p>Integer et turpis orci. Cras tincidunt lacinia nibh, vitae pulvinar  mauris varius in. Morbi egestas, eros tristique vehicula suscipit, odio  libero faucibus tortor, vel ornare neque justo a augue. Nulla accumsan  neque lorem, eget pulvinar erat. Praesent congue nunc a orci condimentum  quis interdum nulla volutpat. Cras sit amet tellus nulla, non aliquam  libero. Ut sit amet libero purus. Nullam auctor, odio eget porta  aliquam, lacus arcu cursus libero, non scelerisque augue justo non nibh.  Vivamus fringilla, urna non gravida molestie, metus nibh fermentum  odio, a posuere turpis enim sit amet quam. Mauris condimentum, augue  aliquam bibendum pretium, erat lacus mollis purus, et consectetur elit  quam eu odio. Mauris nec mattis felis.</p>\n<p>Proin feugiat nunc eget metus laoreet eu dapibus urna laoreet. Cras  augue elit, sollicitudin sit amet sollicitudin non, fermentum non nunc.  Nunc pretium tempus risus in pretium. Duis euismod, diam id aliquet  convallis, mauris justo porta risus, nec accumsan lectus purus dapibus  sapien. In ullamcorper egestas justo non iaculis. Sed dolor velit,  commodo non dictum ac, tristique non felis. Morbi in leo vel sem auctor  suscipit vel auctor est. Nunc ornare cursus lectus sed viverra. Nullam  pellentesque facilisis lacus a convallis. Aenean accumsan adipiscing  dolor sed porttitor. Lorem ipsum dolor sit amet, consectetur adipiscing  elit. Donec ut condimentum odio. Sed eget tellus eu magna imperdiet  mollis id sed eros. Fusce eu odio quam, vitae pulvinar odio. Vivamus in  ante sed arcu hendrerit pulvinar vel et augue. Nulla eleifend, nisl vel  sagittis fermentum, tellus ante ultricies erat, non dapibus metus ligula  at nisl. Aliquam erat volutpat. Donec at interdum arcu. Etiam malesuada  vehicula rhoncus</p>', 'Regulamin', NULL, NULL, NULL, 1, 1, NULL, 0, 2, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, '0.8', 14, 0, 0);
INSERT INTO `SiteTree_versions` (`ID`, `RecordID`, `Version`, `WasPublished`, `AuthorID`, `PublisherID`, `ClassName`, `Created`, `LastEdited`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaTitle`, `MetaDescription`, `MetaKeywords`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `HomepageForDomain`, `ProvideComments`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `Status`, `ReportClass`, `CanViewType`, `CanEditType`, `ToDo`, `Priority`, `ParentID`, `SubsiteID`, `MasterPageID`) VALUES
(73, 15, 5, 1, 1, 1, 'CupPage', '2011-04-13 18:40:05', '2011-04-14 18:01:15', 'regulamin', 'Regulamin', NULL, '<p style="text-align: justify;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean nec mi  vitae erat sagittis sodales eu volutpat dolor. Nam id lectus venenatis  ipsum rhoncus iaculis. Sed et nibh nisl, vel rutrum erat. Maecenas  congue scelerisque mollis. Nunc eu massa a erat viverra blandit vel in  mi. Nunc ut purus eget diam fermentum bibendum quis in risus. Mauris  suscipit blandit ante at luctus. Sed congue, mi vitae ultrices ornare,  velit felis accumsan nisi, ac placerat est enim id purus. Fusce eget sem  neque. Fusce tincidunt erat sit amet nisi vulputate hendrerit. Aliquam  vel orci quis dui vehicula rutrum.</p>\n<p style="text-align: justify;">In ultrices laoreet interdum. Aenean facilisis mauris et tortor  malesuada nec tincidunt nisl convallis. Phasellus nisi arcu, consequat  non dapibus eu, imperdiet sed nisi. Duis varius varius felis, ut  hendrerit mi viverra at. Nullam pulvinar iaculis tellus. Nunc imperdiet  eros in elit euismod vitae mollis velit posuere. Duis vel mi nisi.  Phasellus dapibus lacinia est, eget imperdiet libero lacinia ac. Nam  purus nisl, blandit non dapibus id, pretium quis nisl. Pellentesque  habitant morbi tristique senectus et netus et malesuada fames ac turpis  egestas. Pellentesque habitant morbi tristique senectus et netus et  malesuada fames ac turpis egestas. Donec vel tellus ligula. Etiam  accumsan dapibus posuere. Suspendisse eu ligula ac metus lobortis  consequat. Vestibulum ante ipsum primis in faucibus orci luctus et  ultrices posuere cubilia Curae; Quisque ut massa erat, quis egestas  velit. In vehicula purus lorem. Vivamus ac leo massa. Morbi consectetur,  augue ut pharetra fermentum, nisl odio sollicitudin tellus, quis dictum  velit justo at orci. Ut ut tortor massa.</p>\n<p style="text-align: justify;">Donec tempor tellus sed dui porttitor aliquam. Aliquam sem urna, laoreet  vel venenatis ut, aliquam a lorem. Pellentesque sed neque nec urna  rutrum accumsan eu a dui. Quisque tristique imperdiet feugiat. Fusce  lectus lorem, bibendum vel blandit nec, varius auctor velit. Morbi  blandit egestas massa et suscipit. Aliquam mauris mi, sodales ac  imperdiet a, feugiat non felis. Vestibulum ornare odio sed est posuere  et dignissim nisl euismod. Sed commodo porttitor tortor ac suscipit. In  elementum volutpat nulla et luctus. Curabitur suscipit elit a turpis  ultrices ac placerat tellus lobortis. Proin nec est tortor. In gravida  commodo commodo. Etiam in vehicula nunc. Fusce sem urna, dignissim vel  accumsan sed, euismod id mauris. Phasellus condimentum lectus et massa  tincidunt sed tempus orci faucibus. Praesent a ipsum nec orci posuere  porttitor.</p>\n<p style="text-align: justify;">Integer et turpis orci. Cras tincidunt lacinia nibh, vitae pulvinar  mauris varius in. Morbi egestas, eros tristique vehicula suscipit, odio  libero faucibus tortor, vel ornare neque justo a augue. Nulla accumsan  neque lorem, eget pulvinar erat. Praesent congue nunc a orci condimentum  quis interdum nulla volutpat. Cras sit amet tellus nulla, non aliquam  libero. Ut sit amet libero purus. Nullam auctor, odio eget porta  aliquam, lacus arcu cursus libero, non scelerisque augue justo non nibh.  Vivamus fringilla, urna non gravida molestie, metus nibh fermentum  odio, a posuere turpis enim sit amet quam. Mauris condimentum, augue  aliquam bibendum pretium, erat lacus mollis purus, et consectetur elit  quam eu odio. Mauris nec mattis felis.</p>\n<p style="text-align: justify;">Proin feugiat nunc eget metus laoreet eu dapibus urna laoreet. Cras  augue elit, sollicitudin sit amet sollicitudin non, fermentum non nunc.  Nunc pretium tempus risus in pretium. Duis euismod, diam id aliquet  convallis, mauris justo porta risus, nec accumsan lectus purus dapibus  sapien. In ullamcorper egestas justo non iaculis. Sed dolor velit,  commodo non dictum ac, tristique non felis. Morbi in leo vel sem auctor  suscipit vel auctor est. Nunc ornare cursus lectus sed viverra. Nullam  pellentesque facilisis lacus a convallis. Aenean accumsan adipiscing  dolor sed porttitor. Lorem ipsum dolor sit amet, consectetur adipiscing  elit. Donec ut condimentum odio. Sed eget tellus eu magna imperdiet  mollis id sed eros. Fusce eu odio quam, vitae pulvinar odio. Vivamus in  ante sed arcu hendrerit pulvinar vel et augue. Nulla eleifend, nisl vel  sagittis fermentum, tellus ante ultricies erat, non dapibus metus ligula  at nisl. Aliquam erat volutpat. Donec at interdum arcu. Etiam malesuada  vehicula rhoncus</p>', 'Regulamin', NULL, NULL, NULL, 1, 1, NULL, 0, 2, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, '0.8', 14, 0, 0),
(74, 11, 6, 1, 1, 1, 'CupPage', '2011-04-13 18:36:09', '2011-04-14 18:02:21', 'regulamin', 'Regulamin', NULL, '<p style="text-align: justify;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean nec mi  vitae erat sagittis sodales eu volutpat dolor. Nam id lectus venenatis  ipsum rhoncus iaculis. Sed et nibh nisl, vel rutrum erat. Maecenas  congue scelerisque mollis. Nunc eu massa a erat viverra blandit vel in  mi. Nunc ut purus eget diam fermentum bibendum quis in risus. Mauris  suscipit blandit ante at luctus. Sed congue, mi vitae ultrices ornare,  velit felis accumsan nisi, ac placerat est enim id purus. Fusce eget sem  neque. Fusce tincidunt erat sit amet nisi vulputate hendrerit. Aliquam  vel orci quis dui vehicula rutrum.</p>\n<p style="text-align: justify;">In ultrices laoreet interdum. Aenean facilisis mauris et tortor  malesuada nec tincidunt nisl convallis. Phasellus nisi arcu, consequat  non dapibus eu, imperdiet sed nisi. Duis varius varius felis, ut  hendrerit mi viverra at. Nullam pulvinar iaculis tellus. Nunc imperdiet  eros in elit euismod vitae mollis velit posuere. Duis vel mi nisi.  Phasellus dapibus lacinia est, eget imperdiet libero lacinia ac. Nam  purus nisl, blandit non dapibus id, pretium quis nisl. Pellentesque  habitant morbi tristique senectus et netus et malesuada fames ac turpis  egestas. Pellentesque habitant morbi tristique senectus et netus et  malesuada fames ac turpis egestas. Donec vel tellus ligula. Etiam  accumsan dapibus posuere. Suspendisse eu ligula ac metus lobortis  consequat. Vestibulum ante ipsum primis in faucibus orci luctus et  ultrices posuere cubilia Curae; Quisque ut massa erat, quis egestas  velit. In vehicula purus lorem. Vivamus ac leo massa. Morbi consectetur,  augue ut pharetra fermentum, nisl odio sollicitudin tellus, quis dictum  velit justo at orci. Ut ut tortor massa.</p>\n<p style="text-align: justify;">Donec tempor tellus sed dui porttitor aliquam. Aliquam sem urna, laoreet  vel venenatis ut, aliquam a lorem. Pellentesque sed neque nec urna  rutrum accumsan eu a dui. Quisque tristique imperdiet feugiat. Fusce  lectus lorem, bibendum vel blandit nec, varius auctor velit. Morbi  blandit egestas massa et suscipit. Aliquam mauris mi, sodales ac  imperdiet a, feugiat non felis. Vestibulum ornare odio sed est posuere  et dignissim nisl euismod. Sed commodo porttitor tortor ac suscipit. In  elementum volutpat nulla et luctus. Curabitur suscipit elit a turpis  ultrices ac placerat tellus lobortis. Proin nec est tortor. In gravida  commodo commodo. Etiam in vehicula nunc. Fusce sem urna, dignissim vel  accumsan sed, euismod id mauris. Phasellus condimentum lectus et massa  tincidunt sed tempus orci faucibus. Praesent a ipsum nec orci posuere  porttitor.</p>\n<p style="text-align: justify;">Integer et turpis orci. Cras tincidunt lacinia nibh, vitae pulvinar  mauris varius in. Morbi egestas, eros tristique vehicula suscipit, odio  libero faucibus tortor, vel ornare neque justo a augue. Nulla accumsan  neque lorem, eget pulvinar erat. Praesent congue nunc a orci condimentum  quis interdum nulla volutpat. Cras sit amet tellus nulla, non aliquam  libero. Ut sit amet libero purus. Nullam auctor, odio eget porta  aliquam, lacus arcu cursus libero, non scelerisque augue justo non nibh.  Vivamus fringilla, urna non gravida molestie, metus nibh fermentum  odio, a posuere turpis enim sit amet quam. Mauris condimentum, augue  aliquam bibendum pretium, erat lacus mollis purus, et consectetur elit  quam eu odio. Mauris nec mattis felis.</p>\n<p style="text-align: justify;">Proin feugiat nunc eget metus laoreet eu dapibus urna laoreet. Cras  augue elit, sollicitudin sit amet sollicitudin non, fermentum non nunc.  Nunc pretium tempus risus in pretium. Duis euismod, diam id aliquet  convallis, mauris justo porta risus, nec accumsan lectus purus dapibus  sapien. In ullamcorper egestas justo non iaculis. Sed dolor velit,  commodo non dictum ac, tristique non felis. Morbi in leo vel sem auctor  suscipit vel auctor est. Nunc ornare cursus lectus sed viverra. Nullam  pellentesque facilisis lacus a convallis. Aenean accumsan adipiscing  dolor sed porttitor. Lorem ipsum dolor sit amet, consectetur adipiscing  elit. Donec ut condimentum odio. Sed eget tellus eu magna imperdiet  mollis id sed eros. Fusce eu odio quam, vitae pulvinar odio. Vivamus in  ante sed arcu hendrerit pulvinar vel et augue. Nulla eleifend, nisl vel  sagittis fermentum, tellus ante ultricies erat, non dapibus metus ligula  at nisl. Aliquam erat volutpat. Donec at interdum arcu. Etiam malesuada  vehicula rhoncus</p>', 'Regulamin', NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, '0.9', 12, 0, 0),
(75, 12, 5, 1, 1, 1, 'CupPage', '2011-04-13 18:36:10', '2011-04-14 18:03:29', '2009', 'Turniej 2009', NULL, '<p style="text-align: justify;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean nec mi  vitae erat sagittis sodales eu volutpat dolor. Nam id lectus venenatis  ipsum rhoncus iaculis. Sed et nibh nisl, vel rutrum erat. Maecenas  congue scelerisque mollis. Nunc eu massa a erat viverra blandit vel in  mi. Nunc ut purus eget diam fermentum bibendum quis in risus. Mauris  suscipit blandit ante at luctus. Sed congue, mi vitae ultrices ornare,  velit felis accumsan nisi, ac placerat est enim id purus. Fusce eget sem  neque. Fusce tincidunt erat sit amet nisi vulputate hendrerit. Aliquam  vel orci quis dui vehicula rutrum.</p>\n<p style="text-align: justify;">In ultrices laoreet interdum. Aenean facilisis mauris et tortor  malesuada nec tincidunt nisl convallis. Phasellus nisi arcu, consequat  non dapibus eu, imperdiet sed nisi. Duis varius varius felis, ut  hendrerit mi viverra at. Nullam pulvinar iaculis tellus. Nunc imperdiet  eros in elit euismod vitae mollis velit posuere. Duis vel mi nisi.  Phasellus dapibus lacinia est, eget imperdiet libero lacinia ac. Nam  purus nisl, blandit non dapibus id, pretium quis nisl. Pellentesque  habitant morbi tristique senectus et netus et malesuada fames ac turpis  egestas. Pellentesque habitant morbi tristique senectus et netus et  malesuada fames ac turpis egestas. Donec vel tellus ligula. Etiam  accumsan dapibus posuere. Suspendisse eu ligula ac metus lobortis  consequat. Vestibulum ante ipsum primis in faucibus orci luctus et  ultrices posuere cubilia Curae; Quisque ut massa erat, quis egestas  velit. In vehicula purus lorem. Vivamus ac leo massa. Morbi consectetur,  augue ut pharetra fermentum, nisl odio sollicitudin tellus, quis dictum  velit justo at orci. Ut ut tortor massa.</p>\n<p style="text-align: justify;">Donec tempor tellus sed dui porttitor aliquam. Aliquam sem urna, laoreet  vel venenatis ut, aliquam a lorem. Pellentesque sed neque nec urna  rutrum accumsan eu a dui. Quisque tristique imperdiet feugiat. Fusce  lectus lorem, bibendum vel blandit nec, varius auctor velit. Morbi  blandit egestas massa et suscipit. Aliquam mauris mi, sodales ac  imperdiet a, feugiat non felis. Vestibulum ornare odio sed est posuere  et dignissim nisl euismod. Sed commodo porttitor tortor ac suscipit. In  elementum volutpat nulla et luctus. Curabitur suscipit elit a turpis  ultrices ac placerat tellus lobortis. Proin nec est tortor. In gravida  commodo commodo. Etiam in vehicula nunc. Fusce sem urna, dignissim vel  accumsan sed, euismod id mauris. Phasellus condimentum lectus et massa  tincidunt sed tempus orci faucibus. Praesent a ipsum nec orci posuere  porttitor.</p>\n<p style="text-align: justify;">Integer et turpis orci. Cras tincidunt lacinia nibh, vitae pulvinar  mauris varius in. Morbi egestas, eros tristique vehicula suscipit, odio  libero faucibus tortor, vel ornare neque justo a augue. Nulla accumsan  neque lorem, eget pulvinar erat. Praesent congue nunc a orci condimentum  quis interdum nulla volutpat. Cras sit amet tellus nulla, non aliquam  libero. Ut sit amet libero purus. Nullam auctor, odio eget porta  aliquam, lacus arcu cursus libero, non scelerisque augue justo non nibh.  Vivamus fringilla, urna non gravida molestie, metus nibh fermentum  odio, a posuere turpis enim sit amet quam. Mauris condimentum, augue  aliquam bibendum pretium, erat lacus mollis purus, et consectetur elit  quam eu odio. Mauris nec mattis felis.</p>\n<p style="text-align: justify;">Proin feugiat nunc eget metus laoreet eu dapibus urna laoreet. Cras  augue elit, sollicitudin sit amet sollicitudin non, fermentum non nunc.  Nunc pretium tempus risus in pretium. Duis euismod, diam id aliquet  convallis, mauris justo porta risus, nec accumsan lectus purus dapibus  sapien. In ullamcorper egestas justo non iaculis. Sed dolor velit,  commodo non dictum ac, tristique non felis. Morbi in leo vel sem auctor  suscipit vel auctor est. Nunc ornare cursus lectus sed viverra. Nullam  pellentesque facilisis lacus a convallis. Aenean accumsan adipiscing  dolor sed porttitor. Lorem ipsum dolor sit amet, consectetur adipiscing  elit. Donec ut condimentum odio. Sed eget tellus eu magna imperdiet  mollis id sed eros. Fusce eu odio quam, vitae pulvinar odio. Vivamus in  ante sed arcu hendrerit pulvinar vel et augue. Nulla eleifend, nisl vel  sagittis fermentum, tellus ante ultricies erat, non dapibus metus ligula  at nisl. Aliquam erat volutpat. Donec at interdum arcu. Etiam malesuada  vehicula rhoncus</p>', 'Turniej 2009', NULL, NULL, NULL, 1, 1, NULL, 0, 1, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, '0.9', 8, 0, 0),
(76, 14, 4, 1, 1, 1, 'CupPage', '2011-04-13 18:39:22', '2011-04-14 18:03:39', '2010', 'Turniej 2010', NULL, '<p style="text-align: justify;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean nec mi  vitae erat sagittis sodales eu volutpat dolor. Nam id lectus venenatis  ipsum rhoncus iaculis. Sed et nibh nisl, vel rutrum erat. Maecenas  congue scelerisque mollis. Nunc eu massa a erat viverra blandit vel in  mi. Nunc ut purus eget diam fermentum bibendum quis in risus. Mauris  suscipit blandit ante at luctus. Sed congue, mi vitae ultrices ornare,  velit felis accumsan nisi, ac placerat est enim id purus. Fusce eget sem  neque. Fusce tincidunt erat sit amet nisi vulputate hendrerit. Aliquam  vel orci quis dui vehicula rutrum.</p>\n<p style="text-align: justify;">In ultrices laoreet interdum. Aenean facilisis mauris et tortor  malesuada nec tincidunt nisl convallis. Phasellus nisi arcu, consequat  non dapibus eu, imperdiet sed nisi. Duis varius varius felis, ut  hendrerit mi viverra at. Nullam pulvinar iaculis tellus. Nunc imperdiet  eros in elit euismod vitae mollis velit posuere. Duis vel mi nisi.  Phasellus dapibus lacinia est, eget imperdiet libero lacinia ac. Nam  purus nisl, blandit non dapibus id, pretium quis nisl. Pellentesque  habitant morbi tristique senectus et netus et malesuada fames ac turpis  egestas. Pellentesque habitant morbi tristique senectus et netus et  malesuada fames ac turpis egestas. Donec vel tellus ligula. Etiam  accumsan dapibus posuere. Suspendisse eu ligula ac metus lobortis  consequat. Vestibulum ante ipsum primis in faucibus orci luctus et  ultrices posuere cubilia Curae; Quisque ut massa erat, quis egestas  velit. In vehicula purus lorem. Vivamus ac leo massa. Morbi consectetur,  augue ut pharetra fermentum, nisl odio sollicitudin tellus, quis dictum  velit justo at orci. Ut ut tortor massa.</p>\n<p style="text-align: justify;">Donec tempor tellus sed dui porttitor aliquam. Aliquam sem urna, laoreet  vel venenatis ut, aliquam a lorem. Pellentesque sed neque nec urna  rutrum accumsan eu a dui. Quisque tristique imperdiet feugiat. Fusce  lectus lorem, bibendum vel blandit nec, varius auctor velit. Morbi  blandit egestas massa et suscipit. Aliquam mauris mi, sodales ac  imperdiet a, feugiat non felis. Vestibulum ornare odio sed est posuere  et dignissim nisl euismod. Sed commodo porttitor tortor ac suscipit. In  elementum volutpat nulla et luctus. Curabitur suscipit elit a turpis  ultrices ac placerat tellus lobortis. Proin nec est tortor. In gravida  commodo commodo. Etiam in vehicula nunc. Fusce sem urna, dignissim vel  accumsan sed, euismod id mauris. Phasellus condimentum lectus et massa  tincidunt sed tempus orci faucibus. Praesent a ipsum nec orci posuere  porttitor.</p>\n<p style="text-align: justify;">Integer et turpis orci. Cras tincidunt lacinia nibh, vitae pulvinar  mauris varius in. Morbi egestas, eros tristique vehicula suscipit, odio  libero faucibus tortor, vel ornare neque justo a augue. Nulla accumsan  neque lorem, eget pulvinar erat. Praesent congue nunc a orci condimentum  quis interdum nulla volutpat. Cras sit amet tellus nulla, non aliquam  libero. Ut sit amet libero purus. Nullam auctor, odio eget porta  aliquam, lacus arcu cursus libero, non scelerisque augue justo non nibh.  Vivamus fringilla, urna non gravida molestie, metus nibh fermentum  odio, a posuere turpis enim sit amet quam. Mauris condimentum, augue  aliquam bibendum pretium, erat lacus mollis purus, et consectetur elit  quam eu odio. Mauris nec mattis felis.</p>\n<p style="text-align: justify;">Proin feugiat nunc eget metus laoreet eu dapibus urna laoreet. Cras  augue elit, sollicitudin sit amet sollicitudin non, fermentum non nunc.  Nunc pretium tempus risus in pretium. Duis euismod, diam id aliquet  convallis, mauris justo porta risus, nec accumsan lectus purus dapibus  sapien. In ullamcorper egestas justo non iaculis. Sed dolor velit,  commodo non dictum ac, tristique non felis. Morbi in leo vel sem auctor  suscipit vel auctor est. Nunc ornare cursus lectus sed viverra. Nullam  pellentesque facilisis lacus a convallis. Aenean accumsan adipiscing  dolor sed porttitor. Lorem ipsum dolor sit amet, consectetur adipiscing  elit. Donec ut condimentum odio. Sed eget tellus eu magna imperdiet  mollis id sed eros. Fusce eu odio quam, vitae pulvinar odio. Vivamus in  ante sed arcu hendrerit pulvinar vel et augue. Nulla eleifend, nisl vel  sagittis fermentum, tellus ante ultricies erat, non dapibus metus ligula  at nisl. Aliquam erat volutpat. Donec at interdum arcu. Etiam malesuada  vehicula rhoncus</p>', 'Turniej 2010', NULL, NULL, NULL, 1, 1, NULL, 0, 2, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, '0.9', 8, 0, 0),
(77, 9, 20, 1, 1, 1, 'ContactPage', '2011-04-13 13:55:12', '2011-04-20 11:41:02', 'kontakt', 'Kontakt', NULL, '<p><strong>Klub Sportowy Akademia Piłkarska Silesia</strong></p>\n<p class="leftAlone">Ul. Kościuszki 35<br/>44-100 Gliwice </p>\n<p><span class="leftAlone"><strong>silesia@apsilesia.pl</strong><br/>Michał Tofilski tel. 795-696-874<br/>Rafał Grzegorzek tel. 794-789-807</span></p>', 'Kontakt', NULL, NULL, NULL, 1, 1, NULL, 0, 10, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, '1.0', 0, 0, 0),
(78, 9, 21, 1, 1, 1, 'ContactPage', '2011-04-13 13:55:12', '2011-04-20 11:41:29', 'kontakt', 'Kontakt', NULL, '<p><strong>Klub Sportowy Akademia Piłkarska Silesia</strong></p>\n<p class="leftAlone">Ul. Kościuszki 35<br/>44-100 Gliwice </p>\n<p><span class="leftAlone"><strong>silesia@apsilesia.pl</strong><br/>Michał Tofilski tel. 795-696-874<br/>Rafał Grzegorzek tel. 794-789-807</span></p>', 'Kontakt', NULL, NULL, NULL, 1, 1, NULL, 0, 10, 0, 0, 'Saved (update)', NULL, 'Inherit', 'Inherit', NULL, '1.0', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `SiteTree_ViewerGroups`
--

CREATE TABLE IF NOT EXISTS `SiteTree_ViewerGroups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteTreeID` (`SiteTreeID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `SiteTree_ViewerGroups`
--


-- --------------------------------------------------------

--
-- Table structure for table `SliderPage`
--

CREATE TABLE IF NOT EXISTS `SliderPage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `effect` enum('sliceDown','sliceDownLeft','sliceUp','sliceUpLeft','sliceUpDown','sliceUpDownLeft','fold','fade','random') CHARACTER SET utf8 DEFAULT 'random',
  `slices` int(11) NOT NULL DEFAULT '15',
  `animSpeed` int(11) NOT NULL DEFAULT '500',
  `pauseTime` int(11) NOT NULL DEFAULT '3000',
  `startSlide` int(11) NOT NULL DEFAULT '0',
  `directionNav` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `directionNavHide` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `controlNav` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `controlNavThumbs` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `keyboardNav` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pauseOnHover` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `manualAdvance` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `captionOpacity` decimal(2,1) NOT NULL DEFAULT '0.8',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `SliderPage`
--

INSERT INTO `SliderPage` (`ID`, `effect`, `slices`, `animSpeed`, `pauseTime`, `startSlide`, `directionNav`, `directionNavHide`, `controlNav`, `controlNavThumbs`, `keyboardNav`, `pauseOnHover`, `manualAdvance`, `captionOpacity`) VALUES
(8, 'random', 15, 500, 3000, 0, 0, 0, 0, 0, 0, 0, 0, '0.8');

-- --------------------------------------------------------

--
-- Table structure for table `SliderPage_Live`
--

CREATE TABLE IF NOT EXISTS `SliderPage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `effect` enum('sliceDown','sliceDownLeft','sliceUp','sliceUpLeft','sliceUpDown','sliceUpDownLeft','fold','fade','random') CHARACTER SET utf8 DEFAULT 'random',
  `slices` int(11) NOT NULL DEFAULT '15',
  `animSpeed` int(11) NOT NULL DEFAULT '500',
  `pauseTime` int(11) NOT NULL DEFAULT '3000',
  `startSlide` int(11) NOT NULL DEFAULT '0',
  `directionNav` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `directionNavHide` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `controlNav` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `controlNavThumbs` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `keyboardNav` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pauseOnHover` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `manualAdvance` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `captionOpacity` decimal(2,1) NOT NULL DEFAULT '0.8',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `SliderPage_Live`
--

INSERT INTO `SliderPage_Live` (`ID`, `effect`, `slices`, `animSpeed`, `pauseTime`, `startSlide`, `directionNav`, `directionNavHide`, `controlNav`, `controlNavThumbs`, `keyboardNav`, `pauseOnHover`, `manualAdvance`, `captionOpacity`) VALUES
(8, 'random', 15, 500, 3000, 0, 0, 0, 0, 0, 0, 0, 0, '0.8');

-- --------------------------------------------------------

--
-- Table structure for table `SliderPage_versions`
--

CREATE TABLE IF NOT EXISTS `SliderPage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `effect` enum('sliceDown','sliceDownLeft','sliceUp','sliceUpLeft','sliceUpDown','sliceUpDownLeft','fold','fade','random') CHARACTER SET utf8 DEFAULT 'random',
  `slices` int(11) NOT NULL DEFAULT '15',
  `animSpeed` int(11) NOT NULL DEFAULT '500',
  `pauseTime` int(11) NOT NULL DEFAULT '3000',
  `startSlide` int(11) NOT NULL DEFAULT '0',
  `directionNav` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `directionNavHide` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `controlNav` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `controlNavThumbs` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `keyboardNav` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pauseOnHover` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `manualAdvance` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `captionOpacity` decimal(2,1) NOT NULL DEFAULT '0.8',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `SliderPage_versions`
--

INSERT INTO `SliderPage_versions` (`ID`, `RecordID`, `Version`, `effect`, `slices`, `animSpeed`, `pauseTime`, `startSlide`, `directionNav`, `directionNavHide`, `controlNav`, `controlNavThumbs`, `keyboardNav`, `pauseOnHover`, `manualAdvance`, `captionOpacity`) VALUES
(1, 8, 1, 'random', 15, 500, 3000, 0, 0, 0, 0, 0, 0, 0, 0, '0.8'),
(2, 8, 2, 'random', 15, 500, 3000, 0, 0, 0, 0, 0, 0, 0, 0, '0.8'),
(3, 8, 3, 'random', 15, 500, 3000, 0, 0, 0, 0, 0, 0, 0, 0, '0.8'),
(4, 8, 4, 'random', 15, 500, 3000, 0, 0, 0, 0, 0, 0, 0, 0, '0.8');

-- --------------------------------------------------------

--
-- Table structure for table `SliderPanel`
--

CREATE TABLE IF NOT EXISTS `SliderPanel` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SliderPanel') CHARACTER SET utf8 DEFAULT 'SliderPanel',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Title` mediumtext CHARACTER SET utf8,
  `Tagline` mediumtext CHARACTER SET utf8,
  `SliderPageID` int(11) NOT NULL DEFAULT '0',
  `PanelImageID` int(11) NOT NULL DEFAULT '0',
  `PanelLinkID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SliderPageID` (`SliderPageID`),
  KEY `PanelImageID` (`PanelImageID`),
  KEY `PanelLinkID` (`PanelLinkID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `SliderPanel`
--

INSERT INTO `SliderPanel` (`ID`, `ClassName`, `Created`, `LastEdited`, `Title`, `Tagline`, `SliderPageID`, `PanelImageID`, `PanelLinkID`) VALUES
(3, 'SliderPanel', '2011-04-13 13:15:57', '2011-04-22 19:49:01', 'Turniej na Katowickim Rynku 2009r.', '2009', 8, 41, 1),
(4, 'SliderPanel', '2011-04-13 13:16:25', '2011-04-22 19:48:50', 'Dzień Dziecka 2010r.', '2010', 8, 40, 1),
(5, 'SliderPanel', '2011-04-13 13:17:30', '2011-04-13 13:17:30', '2008', '2008', 8, 11, 1);

-- --------------------------------------------------------

--
-- Table structure for table `VirtualPage`
--

CREATE TABLE IF NOT EXISTS `VirtualPage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VersionID` int(11) NOT NULL DEFAULT '0',
  `CopyContentFromID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `CopyContentFromID` (`CopyContentFromID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `VirtualPage`
--


-- --------------------------------------------------------

--
-- Table structure for table `VirtualPage_Live`
--

CREATE TABLE IF NOT EXISTS `VirtualPage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VersionID` int(11) NOT NULL DEFAULT '0',
  `CopyContentFromID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `CopyContentFromID` (`CopyContentFromID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `VirtualPage_Live`
--


-- --------------------------------------------------------

--
-- Table structure for table `VirtualPage_versions`
--

CREATE TABLE IF NOT EXISTS `VirtualPage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `VersionID` int(11) NOT NULL DEFAULT '0',
  `CopyContentFromID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `CopyContentFromID` (`CopyContentFromID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `VirtualPage_versions`
--


-- --------------------------------------------------------

--
-- Table structure for table `Widget`
--

CREATE TABLE IF NOT EXISTS `Widget` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Widget') CHARACTER SET utf8 DEFAULT 'Widget',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Sort` int(11) NOT NULL DEFAULT '0',
  `Enabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `Widget`
--


-- --------------------------------------------------------

--
-- Table structure for table `WidgetArea`
--

CREATE TABLE IF NOT EXISTS `WidgetArea` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('WidgetArea') CHARACTER SET utf8 DEFAULT 'WidgetArea',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `WidgetArea`
--

