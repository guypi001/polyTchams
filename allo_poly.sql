-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 21, 2022 at 01:48 AM
-- Server version: 5.7.24
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `allo_poly`
--

-- --------------------------------------------------------

--
-- Table structure for table `document`
--

CREATE TABLE `document` (
  `file_id` int(11) NOT NULL,
  `unique_id` int(255) NOT NULL,
  `user_id` int(255) NOT NULL,
  `file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `document`
--

INSERT INTO `document` (`file_id`, `unique_id`, `user_id`, `file`) VALUES
(1, 905058523, 985461926, '1626089953'),
(2, 905058523, 985461926, '1626091318Capture d’écran (7).png'),
(3, 905058523, 985461926, '1626091627Capture d’écran (8).png'),
(4, 905058523, 985461926, '1626091670Capture d’écran (8).png'),
(5, 905058523, 985461926, '1626092024Capture d’écran (13).png'),
(6, 905058523, 985461926, '1626092088Capture d’écran (13).png'),
(7, 905058523, 985461926, '1626097243Capture d’écran (13).png'),
(8, 905058523, 985461926, '1626097371Capture d’écran (13).png'),
(9, 905058523, 985461926, '1626097382Capture d’écran (13).png'),
(10, 905058523, 985461926, '1626097651Capture d’écran (13).png'),
(11, 905058523, 985461926, '1626101263Capture d’écran (13).png'),
(12, 905058523, 985461926, '1626101288Capture d’écran (13).png'),
(13, 701711168, 298405318, '1626280276Capture d’écran (8).png'),
(14, 701711168, 298405318, '1626280724Chapitre 1.pdf'),
(15, 701711168, 298405318, '1626297396emetteurFM.pdf'),
(16, 298405318, 380579581, '1626349876sparkler-4629347_1920.jpg'),
(17, 380579581, 298405318, '1626351537finalBe_elf.pdf'),
(18, 298405318, 380579581, '1626352097Guy_Aboi-CV.pdf'),
(19, 380579581, 298405318, '1626352214betypon.pdf'),
(20, 298405318, 380579581, '162635231851ad570629e24138911ed063adb09247.mp4'),
(21, 241142913, 1161307014, '16327748999557afba1980410487f930a7d0963988.mp4'),
(22, 1234461826, 1631322295, '1635278926IMG-20211021-WA0038.jpg'),
(23, 1631322295, 1234461826, '1635278929Screenshot_20211026_191530_com.android.chrome.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `msg_id` int(11) NOT NULL,
  `incoming_msg_id` int(255) NOT NULL,
  `outgoing_msg_id` int(255) NOT NULL,
  `msg` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`msg_id`, `incoming_msg_id`, `outgoing_msg_id`, `msg`) VALUES
(1, 298405318, 905058523, 'jjdhwhkb'),
(2, 298405318, 905058523, 'dfgfgf'),
(3, 298405318, 905058523, 'sdgg'),
(4, 298405318, 905058523, 'ggfg'),
(5, 298405318, 905058523, '6467686864'),
(6, 298405318, 905058523, '73676766'),
(7, 298405318, 905058523, '6473666266'),
(8, 298405318, 905058523, '7975746a7479676a'),
(9, 298405318, 905058523, '2d5c275c2728c3a8c3a828'),
(10, 298405318, 905058523, '6466676466'),
(11, 298405318, 905058523, '686868'),
(12, 298405318, 905058523, '5c27'),
(13, 298405318, 905058523, '6467686468'),
(14, 298405318, 905058523, '727272'),
(15, 298405318, 905058523, 'f09f989920f09f989a20f09f989b20f09f989d20f09f989c'),
(16, 905058523, 298405318, 'f09f988220f09f988220'),
(17, 905058523, 298405318, '47666368'),
(18, 905058523, 298405318, '58207662'),
(19, 905058523, 298405318, 'f09f988220f09f9882205465737420'),
(20, 298405318, 701711168, '7579677579'),
(21, 118950328, 298405318, 'f09f988220f09f98822047636362'),
(22, 701711168, 298405318, 'f09f988220f09f9882204767626a'),
(23, 298405318, 701711168, '6e6c6b6e6e'),
(24, 701711168, 298405318, '4766626b6b7676e29891efb88f'),
(25, 701711168, 298405318, '4a6520745c27616920666169732070617276656e697220756e2066696368696572202120f09f9598'),
(26, 701711168, 298405318, '5c275c2720'),
(27, 701711168, 298405318, '43c3b474c3a92073656e7369626c6520f09f9882'),
(28, 298405318, 701711168, '4a5c276169207675206d65726369'),
(29, 380579581, 298405318, '426f6e6a6f757220'),
(30, 298405318, 380579581, '436f6d6d656e74207475207661733f'),
(31, 380579581, 298405318, '4269656e20f09f918d'),
(32, 298405318, 380579581, '547520617320656e766f79c3a9206c6120766964c3a96f'),
(33, 380579581, 298405318, '4f756920766173207920'),
(34, 298405318, 380579581, '4f4b'),
(35, 380579581, 298405318, '4a5c2761692070617320656e76696520646520766f7573207061726c6572206d6f6e736965757220616c6c6f5f706f6c7920666f6e6374696f6e6e65207472c3a873206269656e206a652073756973206865757265757820646520766f697220c3a76120f09f998fe29da4efb88f'),
(36, 298405318, 380579581, '427261766f2121'),
(37, 298405318, 380579581, '555050524f206465206c5c27616e2070726f636861696e2076616c6964c3a9'),
(38, 123920717, 873372759, '596f2063e2809965737420636f6d6d656e7420'),
(39, 123920717, 873372759, '596f2063e2809965737420636f6d6d656e7420'),
(40, 873372759, 123920717, '4f4b206f756920'),
(41, 241142913, 1161307014, '676a6b6a686c6b686c'),
(42, 1161307014, 241142913, 'f09f988220'),
(43, 1161307014, 241142913, '477368'),
(44, 1161307014, 632488469, '686868686868'),
(45, 1631322295, 1234461826, '596f2074617065747465'),
(46, 1234461826, 1631322295, '53616c757420'),
(47, 1631322295, 1234461826, '52'),
(48, 1234461826, 1631322295, '486569'),
(49, 1631322295, 1234461826, '5461'),
(50, 241142913, 1234461826, '53616c7574'),
(51, 298405318, 118950328, '6f6b'),
(52, 1226376585, 562927557, '426f6e6a6f7572'),
(53, 562927557, 1226376585, '48656c6c6f'),
(54, 1226376585, 1455622186, '426f6e6a6f7572');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `unique_id` int(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `unique_id`, `fname`, `lname`, `email`, `password`, `img`, `status`) VALUES
(1, 298405318, 'Guypi', 'ABOI ', 'guyaboic@gmail.com', '221f3f07335be81b8b7b230216cbb7b6', '1625427185Screenshot_20210704_071921_com.snapchat.android.jpg', 'Active now'),
(2, 118950328, 'Guy', 'ABOI', 'guy-parfait.aboi18@inphb.ci', 'bf0391072b9bb165324cf7f53977c673', '16254275924.jpg', 'Active now'),
(3, 1467796106, 'wilfried', 'voila', 'dddd@gmail.com', 'dd4b21e9ef71e1291183a46b913ae6f2', '1625767524thank-you-hero[1].png', 'Active now'),
(4, 985461926, 'Joelle ', 'Acho', 'Achojoelle8@gmail.com', '6bf834ecefcb6256b35ee24fb35f9af3', '162576776020210118_123432.jpg', 'Active now'),
(5, 1292853077, 'idsgkh', 'hidsflkh', 'hoidfih@uzefhu.com', '39fd4e97a671ace0565afca5ab98ec4a', '1625834717IMG_20190305_154743.jpg', 'Active now'),
(6, 320373651, 'rthht', 'gfdfd', 'dsgsdg@gffg.gfu', '6cc4b9a0764c5525fa1baac3a966d813', '1625938870IMG_20190305_162444_6.jpg', 'Active now'),
(7, 160080811, 'fyiiug', 'hipih', 'o_uggugu@ib.jvhj', '277b947c9c887f38704cd4efeff6bed8', '1625963932IMG_20190212_081130.jpg', 'Active now'),
(8, 905058523, 'ythg', 'gfd', 'dfhhdg@gffg.vbg', 'fc21fc078d44e5c8685ac7de8553d5c1', '1626089755Capture d’écran (2).png', 'Active now'),
(9, 207451856, 'pkfdpk,,k', 'lkdfkld', 'kdk@dh.sdgy', '646ea6097b361a4cf9703e70efe543d1', '1626172652arduinouno_r3_front.jpg', 'Active now'),
(10, 701711168, 'grgfh', 'ftufj', 'fygi@xbc.fcg', '86eeddca14ddfce5418a64c23418d5ea', '1626210338stepper_motor_devre_bb02.png', 'Active now'),
(11, 380579581, 'Koffi', 'Charles', 'koffi@gmail.com', 'f2a4966f5a9d6725f47a7ffb523ab5d0', '1626349228IMG_1543.jpg', 'Active now'),
(12, 873372759, 'Edgard ', 'Aboi', 'Edgardaboi@gmail.com', '712d2d1d4f51681546edad123b9b4da1', '1628286989image.jpg', 'Active now'),
(13, 123920717, 'Ygg', 'Ccbj', 'Gghh@hh.ciok', '37928464fe5c171a77608f69cc0a5e40', '1628287083Screenshot_20210805_190112_com.whatsapp.jpg', 'Active now'),
(14, 241142913, 'Guy', 'Aboii', 'guyaboic@gmail.cv', '221f3f07335be81b8b7b230216cbb7b6', '1632774380Screenshot_20210924_090454_com.whatsapp.jpg', 'Active now'),
(15, 1161307014, 'g', 'tyert', 'zrtte@dfh.czeg', '04d06c662dea24e590d25c6037b1aa23', '1632774493Capture d’écran (10).png', 'Active now'),
(16, 632488469, 'abb', 'agg', 'dfhhdf@dfhg.bb', '9f2fefb0ac774b812053ef86c021761a', '1635111262Capture d’écran (5).png', 'Active now'),
(17, 1234461826, 'NAGASAKI', 'INOSUKE', 'ednew02@gmail.com', '0fbce6c74ff376d18cb352e7fdc6273b', '1635278584todo_aoi_20009.jpg', 'Active now'),
(18, 1631322295, 'Almamy ', 'DOUKOURE ', 'almadoukoure@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '1635278814Screenshot_20211015_001151_com.android.chrome.jpg', 'Offline now'),
(19, 1226376585, 'BARRY', 'ALIOU', 'alioubary20@gmail.com', '22465636bdd61f27ca5f5f1018360a09', '1643796777Albar.png', 'Active now'),
(20, 562927557, 'Almamy', 'Doukouré', 'Almamy@gmail.cop', '25f9e794323b453885f5181f1b624d0b', '1643797111Screenshot_20211206-193331_FMWhatsApp.jpg', 'Offline now'),
(21, 1540070098, 'Koman ', 'ABOI ', 'guypi@guypi.com', '96edbd97856bd2d738a0c96168c29d06', '1643797228Screenshot_20220128_130058_com.whatsapp.jpg', 'Active now'),
(22, 1455622186, 'DOUKOURE ', 'Aly', 'almo@gmail.com', '25f9e794323b453885f5181f1b624d0b', '16437973211643695445350.jpg', 'Active now');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `document`
--
ALTER TABLE `document`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`msg_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `document`
--
ALTER TABLE `document`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
