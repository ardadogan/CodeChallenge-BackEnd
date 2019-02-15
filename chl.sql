-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 13 Şub 2019, 20:42:26
-- Sunucu sürümü: 10.1.31-MariaDB
-- PHP Sürümü: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `chl`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` int(10) NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lng` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `phone`, `address`, `lat`, `lng`, `created_by`, `start_date`, `end_date`, `created_at`, `updated_at`) VALUES
(42, 'Test 6 Customer', 'test@test6.com', 1234567890, 'test test 6', '51.62427076088133', '0.10718613222661588', '13', '2019-02-14 12:00:00', '2019-02-13 10:56:36', '2019-02-13 07:57:10', '2019-02-13 07:57:10'),
(47, 'test 7', 'test@test7.com', 1234567890, 'testtt', '51.3853539071814', '-0.11048049374994662', '13', '2019-02-14 09:46:13', '2019-02-14 12:43:47', '2019-02-13 08:30:19', '2019-02-13 08:30:19'),
(48, 'jkjkj', 'kjkjkjk@jgjg.com', 1234567890, 'dagadg', '51.69441950454096', '0.05597739771428678', '13', '2019-02-14 16:56:55', '2019-02-14 17:34:35', '2019-02-13 14:06:12', '2019-02-13 14:06:12'),
(50, 'asjkfhaksjfh', 'a@a.com', 1234567890, 'asssq', '51.69157307479787', '0.03943353251042936', '13', '2019-02-13 17:51:52', '2019-02-13 18:23:36', '2019-02-13 14:53:05', '2019-02-13 14:53:05');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_02_08_140643_create_customer_table', 2);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('002b4bfc3f206d904608738d76547c237631bf4b99b89375fe172b357325acca3eed21253fb6b42f', 17, 1, 'MyApp', '[]', 0, '2019-02-09 19:28:07', '2019-02-09 19:28:07', '2020-02-09 22:28:07'),
('04eeb3e17e00e7e5fa8a35295a8e5b1d630a7358d07c9ab574247f3ecad444bbb32ff2707bdd9d1a', 9, 1, 'MyApp', '[]', 0, '2019-02-08 13:25:58', '2019-02-08 13:25:58', '2020-02-08 16:25:58'),
('0ae698c213864638db4ad865973ee4b70a49d3331796a16958324eeabfba4c87fcdec09851b46774', 9, 1, 'MyApp', '[]', 0, '2019-02-08 10:50:53', '2019-02-08 10:50:53', '2020-02-08 13:50:53'),
('0eeeb00907962ea9b85f570948dcfb0da281d5d9794183221c9eaaef4b20e7d5cd6749ceed8d5a0e', 9, 1, 'MyApp', '[]', 0, '2019-02-08 09:30:43', '2019-02-08 09:30:43', '2020-02-08 12:30:43'),
('1117f7f3621910f9b0233651c5d7e6eb6b75d47a1a34ed12d6d083c1f0b2479d4ddfcb41e75fb2d9', 9, 1, 'MyApp', '[]', 0, '2019-02-08 09:32:48', '2019-02-08 09:32:48', '2020-02-08 12:32:48'),
('142ca406cbf3790ebd46077bcdfd77a90f8a9d859abba312e6f8159ebf3182c10f9273d9b7077edb', 7, 1, 'MyApp', '[]', 0, '2019-02-08 07:55:22', '2019-02-08 07:55:22', '2020-02-08 10:55:22'),
('14a21510849a900b178447cdc6db21c5fa513c09aaa75ff9fb4df7443b29121d44cc8d6f018ced0c', 9, 1, 'MyApp', '[]', 0, '2019-02-08 09:41:22', '2019-02-08 09:41:22', '2020-02-08 12:41:22'),
('153a3f8a5336547a4035dd13feccfe15c625045a688521723c62b29ea9a5469d4b5951ba5ae8a481', 9, 1, 'MyApp', '[]', 0, '2019-02-09 16:02:38', '2019-02-09 16:02:38', '2020-02-09 19:02:38'),
('15800f22d1d641680295b79efcd6943c7b21870ddd7162f613d4630c6a4842cf792bb94dd2479648', 15, 1, 'MyApp', '[]', 0, '2019-02-09 19:40:35', '2019-02-09 19:40:35', '2020-02-09 22:40:35'),
('15cf5a3214717da65a0c6d27a139d9f5bc8c306c9b371f82c76bce15f365665664aae7f06025d7b6', 15, 1, 'MyApp', '[]', 0, '2019-02-09 19:15:50', '2019-02-09 19:15:50', '2020-02-09 22:15:50'),
('15e86939c056c2c50066da6008826aa25f33c3a528f136771e6b075bae5e9a414395a3b0975cb2b6', 9, 1, 'MyApp', '[]', 0, '2019-02-08 09:41:23', '2019-02-08 09:41:23', '2020-02-08 12:41:23'),
('19817798d8837518524bb40dd81150a1fc25fe1e1ac4ea6d8a4cdc664b4a411b2be1a2c22d0621e4', 9, 1, 'MyApp', '[]', 0, '2019-02-08 10:53:22', '2019-02-08 10:53:22', '2020-02-08 13:53:22'),
('1af0bd2e7ffb49dec1864c49fb4f629400b2afcd779fe9fb28af5ba7256cd0bf454467f265275a8c', 9, 1, 'MyApp', '[]', 0, '2019-02-08 09:44:01', '2019-02-08 09:44:01', '2020-02-08 12:44:01'),
('1b2df7e1bae0566dbe9db35e7bbde1036f663f70ae2611b556c6cb4aa6b39a33dfb07d423f71b300', 9, 1, 'MyApp', '[]', 0, '2019-02-08 10:36:51', '2019-02-08 10:36:51', '2020-02-08 13:36:51'),
('1bd1f0501f36768a77a5f2377a22ea8756c53790c61110105a873be1e40b4f0713f89befc7522a99', 9, 1, 'MyApp', '[]', 0, '2019-02-08 08:31:59', '2019-02-08 08:31:59', '2020-02-08 11:31:59'),
('1bf0190fae3d08e172f28b7882ac120b303697768768986173e28bb3136402384b30296101f7af81', 9, 1, 'MyApp', '[]', 0, '2019-02-08 13:21:01', '2019-02-08 13:21:01', '2020-02-08 16:21:01'),
('1fd8eb38d8fa6c5549d537aaa5fd9c3fdbed2ddae942fba62a3ba60ce5ab848868171e696678cb8e', 9, 1, 'MyApp', '[]', 0, '2019-02-08 13:20:22', '2019-02-08 13:20:22', '2020-02-08 16:20:22'),
('205942eed63fb849dde0f270447e17f462c00acfb3f119ec4487c1446fe26c7bcf18a65d5d1f3156', 9, 1, 'MyApp', '[]', 0, '2019-02-08 13:41:21', '2019-02-08 13:41:21', '2020-02-08 16:41:21'),
('255e39a4d7ebca3085d085bb05b4a1ec6b2c882ef80b0c046078db61e51f966f120a5c293f239eb4', 8, 1, 'MyApp', '[]', 0, '2019-02-08 08:00:18', '2019-02-08 08:00:18', '2020-02-08 11:00:18'),
('25bb61663723f9a8aef9dce5fe99af9d62d64a9aaf8e295878a2de6dc204bd0bfae3844f4b548387', 9, 1, 'MyApp', '[]', 0, '2019-02-08 09:48:13', '2019-02-08 09:48:13', '2020-02-08 12:48:13'),
('2ba69caf8091b13d37d36b3d4dc70bba946741edff294568e571f664a502abf6c378980eda090b17', 9, 1, 'MyApp', '[]', 0, '2019-02-08 09:41:22', '2019-02-08 09:41:22', '2020-02-08 12:41:22'),
('2db2b5f53089250301e7b58d3aa87b11eb42cc5899ef773c37d6c568b6cef541d14fff6336cd2f27', 9, 1, 'MyApp', '[]', 0, '2019-02-08 11:02:21', '2019-02-08 11:02:21', '2020-02-08 14:02:21'),
('3dc28324b080950a7642ebbbc8e9a9bf93776455247c5d17adb8640c0d35da5e82950cf5af2a9bcb', 9, 1, 'MyApp', '[]', 0, '2019-02-08 10:14:56', '2019-02-08 10:14:56', '2020-02-08 13:14:56'),
('3e958f8467d06f18d74f6f58116c10e7dc94115ce772045c9360b10e78c1b124dc464d02e20f7c4d', 17, 1, 'MyApp', '[]', 0, '2019-02-09 19:25:52', '2019-02-09 19:25:52', '2020-02-09 22:25:52'),
('4003bd722053dc8d65fa00ef775526db057930fb57f4c83c2cc38a7f67dac6aa1d0c6d6fd7e224c2', 14, 1, 'MyApp', '[]', 0, '2019-02-09 19:12:42', '2019-02-09 19:12:42', '2020-02-09 22:12:42'),
('429b22fb745e4e0a102da4a1145ec1127ee8c329ac2c10421ca1bbc63ec2d7bd77e2a2d72a1428fe', 9, 1, 'MyApp', '[]', 0, '2019-02-08 18:23:02', '2019-02-08 18:23:02', '2020-02-08 21:23:02'),
('42aacaa326b45d28f8239503cc196f73c4de1fe0493f734a439cd0e6703108497432e274e4f56c21', 9, 1, 'MyApp', '[]', 0, '2019-02-08 13:45:01', '2019-02-08 13:45:01', '2020-02-08 16:45:01'),
('4a55207db679a26bbe7cb425e0fbab91ab6146c3255c5a1b6d4248cfd4d03ba1dbf87f9b9a2e0046', 9, 1, 'MyApp', '[]', 0, '2019-02-08 13:21:33', '2019-02-08 13:21:33', '2020-02-08 16:21:33'),
('4adc4bbfc45341ac2cbf3465a716a09e288aef4ebecc36e958679ccd783947ba01579a35c5056fd2', 14, 1, 'MyApp', '[]', 0, '2019-02-09 19:11:17', '2019-02-09 19:11:17', '2020-02-09 22:11:17'),
('4afa8bbaae370b424674adc091c6343f46e6b25df88d7e14edaad6fce0933f593e4e895b208a8d5a', 9, 1, 'MyApp', '[]', 0, '2019-02-08 10:09:36', '2019-02-08 10:09:36', '2020-02-08 13:09:36'),
('4c1b1359067975ed0d41baf0f38af5dff4200ec75796a5211f9476edb6921a1b1fb3df08d590d4c1', 9, 1, 'MyApp', '[]', 0, '2019-02-08 10:49:11', '2019-02-08 10:49:11', '2020-02-08 13:49:11'),
('4c3d8c6453b3f086698e4e685d8355cbfa8dbc03586a95613e97c32f8cfe1cfefdf697b1652a7400', 13, 1, 'MyApp', '[]', 0, '2019-02-09 19:07:38', '2019-02-09 19:07:38', '2020-02-09 22:07:38'),
('4cf433b67846ae6fabf81b7cfc3a2dd9fab554717b35fcd8c17cd18d9cd138317feed952a25dbaf8', 9, 1, 'MyApp', '[]', 0, '2019-02-08 13:41:05', '2019-02-08 13:41:05', '2020-02-08 16:41:05'),
('4d1350f9de90f6d7919aa088e47dffb3c306c1990ab7609b7abe2f325feba238cf1f635b3ff7d852', 9, 1, 'MyApp', '[]', 0, '2019-02-09 18:27:15', '2019-02-09 18:27:15', '2020-02-09 21:27:15'),
('4ef048c3ba8222dce02f6f1afd58dd87149a501010232750d2f383b89cc2f881649288c4d479aead', 9, 1, 'MyApp', '[]', 0, '2019-02-08 09:47:00', '2019-02-08 09:47:00', '2020-02-08 12:47:00'),
('4f2030044e413c3a37878bd09ed589b74b6ab46f73999636a597272962d963659fa6669bc1ffef17', 9, 1, 'MyApp', '[]', 0, '2019-02-08 13:31:00', '2019-02-08 13:31:00', '2020-02-08 16:31:00'),
('525643c55ae1ba206f174efd5b68b2fec95f81af40e2dabd5157b35608fddb78d9ae8b07567a8f7e', 13, 1, 'MyApp', '[]', 0, '2019-02-09 19:04:26', '2019-02-09 19:04:26', '2020-02-09 22:04:26'),
('52d3f4da7d536c3a04d12df53430738c1630cf3ef46dfb0153c795d44801b57225eaf59fd03c30ea', 9, 1, 'MyApp', '[]', 0, '2019-02-08 09:31:12', '2019-02-08 09:31:12', '2020-02-08 12:31:12'),
('54f9b63957e9baf354dbe80d93306168fdb16e676fe0cba6461d51b0c483922e4642c661a322453b', 9, 1, 'MyApp', '[]', 0, '2019-02-08 09:41:19', '2019-02-08 09:41:19', '2020-02-08 12:41:19'),
('5797737c16d101222afe21c977c3f9232542cf27423aae19c2c0f37ccc85144a3707f97193edeea1', 9, 1, 'MyApp', '[]', 0, '2019-02-08 10:36:11', '2019-02-08 10:36:11', '2020-02-08 13:36:11'),
('5eccb382d6b7721d17939810e4e797ab78dc5c968b5b0af1e8796c97fe5ca967fa959b634d2b74b4', 9, 1, 'MyApp', '[]', 0, '2019-02-08 09:47:22', '2019-02-08 09:47:22', '2020-02-08 12:47:22'),
('6031dbfb03d2e64154944e365d94a360c4d0522bd397075f7b2d98442d0386fd1f9ec67f17c5db99', 9, 1, 'MyApp', '[]', 0, '2019-02-08 10:13:06', '2019-02-08 10:13:06', '2020-02-08 13:13:06'),
('61d87625a882285417d505f3761b14bdb06c2f5934c91a0acbc1806c7c86fb8fcffc5111b6cdfcef', 23, 1, 'MyApp', '[]', 0, '2019-02-11 09:25:06', '2019-02-11 09:25:06', '2020-02-11 12:25:06'),
('61f0d5d007fee462a50a33a61fd605d469a954af97cfb52d65968bd6c93092c05004718f7a4bd33c', 9, 1, 'MyApp', '[]', 0, '2019-02-08 10:25:01', '2019-02-08 10:25:01', '2020-02-08 13:25:01'),
('625c353404d4279c8b06b99c4e7bac27f5a31c63c324d19062c017b0018edd40e8c759f97fab8ae0', 9, 1, 'MyApp', '[]', 0, '2019-02-09 16:22:20', '2019-02-09 16:22:20', '2020-02-09 19:22:20'),
('6401a9726971e7ba5f2890be9e2825106735fe33ed2994f664ba6ede614f7b5f38428d3112cd365b', 15, 1, 'MyApp', '[]', 0, '2019-02-09 19:38:21', '2019-02-09 19:38:21', '2020-02-09 22:38:21'),
('6569a3d20ce51d84577d2e30ae031df35b7668c1e0099e6fe3690d5edf7bbb4a78e6f8721c64ed5d', 9, 1, 'MyApp', '[]', 0, '2019-02-08 09:41:22', '2019-02-08 09:41:22', '2020-02-08 12:41:22'),
('673999c02e350f9cc06ed1722151f5425020e3d9615ae6e45ebebf26e09fdfae4db091094f5e502a', 9, 1, 'MyApp', '[]', 0, '2019-02-08 08:31:35', '2019-02-08 08:31:35', '2020-02-08 11:31:35'),
('67e97199a317e98d08ee15a4a3678c6b9cc39dc9de7aa013cc8300a50fd3346de8cfd0f7d84f34b5', 9, 1, 'MyApp', '[]', 0, '2019-02-08 13:44:05', '2019-02-08 13:44:05', '2020-02-08 16:44:05'),
('6d37f4a965a5bb759841115ac8f0dc8905c9269f2b217c4d20b3affe344beb766ac0c63964bba250', 18, 1, 'MyApp', '[]', 0, '2019-02-11 08:51:11', '2019-02-11 08:51:11', '2020-02-11 11:51:11'),
('6ec37c915d4b7d3f3949fb41b43dbc3f9b184c8920fde8dcaf9d2db817e5168544cd37442db84f09', 8, 1, 'MyApp', '[]', 0, '2019-02-08 08:06:31', '2019-02-08 08:06:31', '2020-02-08 11:06:31'),
('6f9efd6fae3de71e1fedbba1a0fde9982043611d32df67b7d3d148e144a45adbd08b10cc1a6fe037', 9, 1, 'MyApp', '[]', 0, '2019-02-08 09:54:48', '2019-02-08 09:54:48', '2020-02-08 12:54:48'),
('70eaf83320b3a9f8c42e05e1044c2a0128fa9b15fcfb64a8793c0d4a2cac98a346beb966f258f9f9', 10, 1, 'MyApp', '[]', 0, '2019-02-08 13:33:40', '2019-02-08 13:33:40', '2020-02-08 16:33:40'),
('7271e6fe05135305f0b8d56fad1c83c52f198dda9dd354c8d530016c4e4c73af3cd128229a907df2', 9, 1, 'MyApp', '[]', 0, '2019-02-08 09:43:01', '2019-02-08 09:43:01', '2020-02-08 12:43:01'),
('727f76d3f02c5c2b2c5c0c929fb96e70c00fb7290d8adb71120b54403f35df3be666e3c97516cdb3', 9, 1, 'MyApp', '[]', 0, '2019-02-08 09:50:43', '2019-02-08 09:50:43', '2020-02-08 12:50:43'),
('7529703a5fbd6dedee3eeebb4892b202bf2f11f3c4e50f0584d62084e4c087a71c480705f7da6294', 9, 1, 'MyApp', '[]', 0, '2019-02-08 10:13:30', '2019-02-08 10:13:30', '2020-02-08 13:13:30'),
('762c4137def525b1e1594a765e3da4b76a35ea797384d6d0c21d69a0a467f2db0ebeff377395aa13', 15, 1, 'MyApp', '[]', 0, '2019-02-09 19:39:54', '2019-02-09 19:39:54', '2020-02-09 22:39:54'),
('76d534bdc6861dacbb1383524a0e4445b6c4225f4a8d7db6ed691298ad386d2ee236cc825a860966', 9, 1, 'MyApp', '[]', 0, '2019-02-08 10:10:08', '2019-02-08 10:10:08', '2020-02-08 13:10:08'),
('79923681538234a4fbd60451466f58cb960971f6ce371f762426c110175b7a445806513ded7e3df5', 15, 1, 'MyApp', '[]', 0, '2019-02-09 19:38:49', '2019-02-09 19:38:49', '2020-02-09 22:38:49'),
('7aa8e673794b5dbd516a23bb02fe48bbf2e5f13582dfd5a70aaebcbccd679e76074c3b0c3897033e', 15, 1, 'MyApp', '[]', 0, '2019-02-09 19:34:45', '2019-02-09 19:34:45', '2020-02-09 22:34:45'),
('7ab70255a4db2df0dfd49fae8fa1a6d7838cf394d60a142b6b4d021108b98f315f8a00c517d9dfdd', 9, 1, 'MyApp', '[]', 0, '2019-02-08 09:42:38', '2019-02-08 09:42:38', '2020-02-08 12:42:38'),
('7b2070c7d36efec5bc6affb0df31421d308a5c122dee3781aa0cf8122b0f822546b32dfeced19f85', 9, 1, 'MyApp', '[]', 0, '2019-02-08 09:43:40', '2019-02-08 09:43:40', '2020-02-08 12:43:40'),
('7de18dcc0ab10e7f4e16c428e9ff68dce7d8ff9adde88108561715fa1c1e8e19b7ffe134b380af78', 1, 1, 'MyApp', '[]', 0, '2019-02-07 17:33:30', '2019-02-07 17:33:30', '2020-02-07 20:33:30'),
('806b76e8f12d7a1939f74b271bc9a08b50ec5e0e142d46c7f67a8fd3e93f196716be4328aa57a5e3', 16, 1, 'MyApp', '[]', 0, '2019-02-09 19:23:22', '2019-02-09 19:23:22', '2020-02-09 22:23:22'),
('81bacaf86396258a44e3a8d60a057a0715caca33263e0160102c000a93d0e7c2801ced9128a5decb', 24, 1, 'MyApp', '[]', 0, '2019-02-11 09:23:08', '2019-02-11 09:23:08', '2020-02-11 12:23:08'),
('88811990d38e956ad51f1b30cc04f56fb764ff5cfd291f2898b2a3a57f18835b102e6c46184b1b08', 9, 1, 'MyApp', '[]', 0, '2019-02-09 18:30:45', '2019-02-09 18:30:45', '2020-02-09 21:30:45'),
('88f9ec3ee791f9cfc3951f675718ef2ec60fda1da17453a931d3ffeb0eda1d188887fae8a8787206', 13, 1, 'MyApp', '[]', 0, '2019-02-11 07:51:37', '2019-02-11 07:51:37', '2020-02-11 10:51:37'),
('8a17cdb0ebd5d7de919bb0dd54f3714e9fae3da8adeaf386ba0c450b4311d48431f15982fc7ff4b8', 9, 1, 'MyApp', '[]', 0, '2019-02-08 09:31:46', '2019-02-08 09:31:46', '2020-02-08 12:31:46'),
('8ad0c7dbf3de4e4e72975e1b36568f3ee5335acba188b443b8e6d2a231f017bbf79cce98c1ce91b5', 9, 1, 'MyApp', '[]', 0, '2019-02-08 09:34:13', '2019-02-08 09:34:13', '2020-02-08 12:34:13'),
('8df45cc7d6b31b39ef6ca6bb4f726311bc30a37375091adc1d4c5086d4e837b3a3b59f915e4d5f03', 15, 1, 'MyApp', '[]', 0, '2019-02-09 19:41:38', '2019-02-09 19:41:38', '2020-02-09 22:41:38'),
('8f7af1496527ff7722b07166e78c1fa2ce24b1c494bf15defe07e15d8305f67ede7fe669de8a2ade', 5, 1, 'MyApp', '[]', 0, '2019-02-07 17:44:08', '2019-02-07 17:44:08', '2020-02-07 20:44:08'),
('8f91ffda4f05b24ce1f8c0df1b175835369ede9596d740614f775a8313dc7c0e5f23500e2af42936', 9, 1, 'MyApp', '[]', 0, '2019-02-08 09:42:30', '2019-02-08 09:42:30', '2020-02-08 12:42:30'),
('8fbe917670c0caa613f32718ef3f36ffe11a55abfb87e49c93b092b908cf378789334dce56e75f40', 5, 1, 'MyApp', '[]', 0, '2019-02-07 17:46:01', '2019-02-07 17:46:01', '2020-02-07 20:46:01'),
('907dd8f8b73eef9a39e8fc81662fc71b174fe399e5bc67ecb0f2cf86908c9ffb2eba26c4075297a8', 9, 1, 'MyApp', '[]', 0, '2019-02-08 09:48:35', '2019-02-08 09:48:35', '2020-02-08 12:48:35'),
('9083d6692ac6e90a4cbb33b89168289cd83b06d6635d47223edc7e3d2ad402cef47a8f2416b145e7', 9, 1, 'MyApp', '[]', 0, '2019-02-08 09:30:20', '2019-02-08 09:30:20', '2020-02-08 12:30:20'),
('90a289832f7b29ad232d820a2e42572d86ca888a8345f21af3b579d62b7f409b59b473afd26cf505', 9, 1, 'MyApp', '[]', 0, '2019-02-08 09:53:08', '2019-02-08 09:53:08', '2020-02-08 12:53:08'),
('90ba1eb0704388cb1ec92617c5127f439b36a0762cd1d6c9ae368b9509ada77aa7d4d3b130bc8b99', 9, 1, 'MyApp', '[]', 0, '2019-02-09 18:26:32', '2019-02-09 18:26:32', '2020-02-09 21:26:32'),
('919bdbe69f9622a225611db5db7216779efb565218209df72490d47aafb624584e7e77d2739352c2', 9, 1, 'MyApp', '[]', 0, '2019-02-08 11:51:00', '2019-02-08 11:51:00', '2020-02-08 14:51:00'),
('91fb37c064b0da138c7ff9688c9094775b56884bd3a62236549e9e5c42382e07a850f234d43e28e3', 9, 1, 'MyApp', '[]', 0, '2019-02-09 18:29:53', '2019-02-09 18:29:53', '2020-02-09 21:29:53'),
('949ce7b9c5ad5e3c01db74926d216564973064fadaf009a43486c4178a29efb66aca68402ee3256b', 9, 1, 'MyApp', '[]', 0, '2019-02-08 13:28:45', '2019-02-08 13:28:45', '2020-02-08 16:28:45'),
('953b1636ba28e30ebb7160298a0f3f8c1cd55656d1763344eea9ad7cc1ee47eb7a537e8a34fb4c77', 9, 1, 'MyApp', '[]', 0, '2019-02-08 09:41:18', '2019-02-08 09:41:18', '2020-02-08 12:41:18'),
('96d3d9822465e2b9ee7b33809e29fd751635c878f7671e6919eb5150c9ff7003be362b13f0479d22', 23, 1, 'MyApp', '[]', 0, '2019-02-11 09:20:00', '2019-02-11 09:20:00', '2020-02-11 12:20:00'),
('96dc96770bd07b4761d88772f3f55ce3416a9002d64e428bc2fb6b4ff7c8473f0c8453a578c39107', 8, 1, 'MyApp', '[]', 0, '2019-02-08 08:07:05', '2019-02-08 08:07:05', '2020-02-08 11:07:05'),
('98ae64a7e2a14b9a215c434d075c7eeb90754a3392f0b0f4f42e5059feac7e5ce35df04df2a261a6', 9, 1, 'MyApp', '[]', 0, '2019-02-08 13:44:37', '2019-02-08 13:44:37', '2020-02-08 16:44:37'),
('9a264846057e5a2d08c318c354c755a7d751403278bd755f47fa0f07566ba34498e810a14a91c35c', 16, 1, 'MyApp', '[]', 0, '2019-02-09 19:22:35', '2019-02-09 19:22:35', '2020-02-09 22:22:35'),
('9b3e73e6acebf10fec74a2fc24c475ba4442f753631222b245458866d10f15be3b29e0a61fb2839c', 23, 1, 'MyApp', '[]', 0, '2019-02-11 09:24:48', '2019-02-11 09:24:48', '2020-02-11 12:24:48'),
('9dcbf17693b9307be7a42cfe0a5d222dd7d066e1d6c0df6ca9cf88e450bb66f6488e467d73d1b872', 9, 1, 'MyApp', '[]', 0, '2019-02-09 18:25:46', '2019-02-09 18:25:46', '2020-02-09 21:25:46'),
('9e3668fdf20e4ebae77f0ffbc13646a9a198e30c24b0a8d21b99875fe2b107ce54ac02cda06a0260', 9, 1, 'MyApp', '[]', 0, '2019-02-09 18:33:31', '2019-02-09 18:33:31', '2020-02-09 21:33:31'),
('9fd9be1f82728db6eefc9856b44d3c5ed1b1c4ef819149d14d6249d711f5208b0447da8a9d9783e0', 15, 1, 'MyApp', '[]', 0, '2019-02-09 19:16:35', '2019-02-09 19:16:35', '2020-02-09 22:16:35'),
('a1ae7ff3d39a5b12d6bd025b23049441707cd5859224f4c61a14920903521fd411fba11468c07017', 9, 1, 'MyApp', '[]', 0, '2019-02-08 10:10:08', '2019-02-08 10:10:08', '2020-02-08 13:10:08'),
('a23e31ca006eb4e2cee2de543ed3e784a99dea9bb685f669b42e11cfe3c7b00176d70190b4896fe4', 9, 1, 'MyApp', '[]', 0, '2019-02-08 09:33:16', '2019-02-08 09:33:16', '2020-02-08 12:33:16'),
('a387a8962537037b8e6c3a166a34a851ad4c511c635a7c5b33f836a1b4190c25b97a32caa92957a4', 9, 1, 'MyApp', '[]', 0, '2019-02-08 10:29:44', '2019-02-08 10:29:44', '2020-02-08 13:29:44'),
('a47f029b0098dfc50c9b214c5bd6b0b65831a7bc8d7c7788f13ed2041d611a47525ca99a1ada3788', 15, 1, 'MyApp', '[]', 0, '2019-02-09 19:43:27', '2019-02-09 19:43:27', '2020-02-09 22:43:27'),
('a4bf22482ec13643e08a53db002d84cd46c8b0e2d3471863dff6657ca9011b5a42a1411a967f7590', 9, 1, 'MyApp', '[]', 0, '2019-02-08 13:24:07', '2019-02-08 13:24:07', '2020-02-08 16:24:07'),
('a9722610faa2c74d4c3c91cdb9b528b0805d56dc46c13912913a8770571882dc31380aaab542a63f', 12, 1, 'MyApp', '[]', 0, '2019-02-09 17:17:50', '2019-02-09 17:17:50', '2020-02-09 20:17:50'),
('aa4fec4c9be78e96b1c30b8e164cc1bfc22e104bf15b0fc0a14e017c94dbf9a97ad3850cd0ebd7dc', 9, 1, 'MyApp', '[]', 0, '2019-02-08 10:58:39', '2019-02-08 10:58:39', '2020-02-08 13:58:39'),
('adc0c54e82839dcc842a0225575266d4185d8a052c06e9c10e58604a43cbc00fb0a01c410263a6db', 11, 1, 'MyApp', '[]', 0, '2019-02-08 13:34:19', '2019-02-08 13:34:19', '2020-02-08 16:34:19'),
('af95776158dd2b9799ed2e222c31b486ccfae451145b493fe2a68556b5299dc27c2663006d753868', 9, 1, 'MyApp', '[]', 0, '2019-02-09 16:22:22', '2019-02-09 16:22:22', '2020-02-09 19:22:22'),
('b0cefdd52889a389a99b9a452e5a12d900a0c253adf3b0f8efd0842dfbb25bf2e864588168a2e5e2', 9, 1, 'MyApp', '[]', 0, '2019-02-08 11:46:36', '2019-02-08 11:46:36', '2020-02-08 14:46:36'),
('b106abbacf9b445d66560881bb4b08c00e90fd58698862bc45f4cc93897feb4fba8939b50393e1eb', 9, 1, 'MyApp', '[]', 0, '2019-02-08 09:30:23', '2019-02-08 09:30:23', '2020-02-08 12:30:23'),
('b154a35bd34b65086a1d5af5afd113f44c8ff150fb8018dbb73d5a530c5d3b3b63119cbcefe4c7bb', 9, 1, 'MyApp', '[]', 0, '2019-02-08 10:49:39', '2019-02-08 10:49:39', '2020-02-08 13:49:39'),
('b15f32d61ecf377d1bb8065fdaf9fb0233fb3af10d0fdf86671b5052dbf38880873452af5540d34a', 15, 1, 'MyApp', '[]', 0, '2019-02-09 19:36:29', '2019-02-09 19:36:29', '2020-02-09 22:36:29'),
('b337ca4dc25321fe6fac64eaa954be5db20ff4c3f2158a2b1373e7e14f918f59369b2aa4a267f87b', 13, 1, 'MyApp', '[]', 0, '2019-02-11 07:51:39', '2019-02-11 07:51:39', '2020-02-11 10:51:39'),
('b4c18ec01e3f8efcfc56a9079ab8069bbde408dbb4ffa3de94f4d59e59cab1b6c1ba936d91911d0e', 21, 1, 'MyApp', '[]', 0, '2019-02-11 09:19:01', '2019-02-11 09:19:01', '2020-02-11 12:19:01'),
('b505ce897e665f974ac28c45378cbae58abc8b774f59bf3c02a15cf36d945ecfde5b2146e44bdd0a', 9, 1, 'MyApp', '[]', 0, '2019-02-08 10:35:44', '2019-02-08 10:35:44', '2020-02-08 13:35:44'),
('baa5c8b9c00c6214d21b70686647c69ceec5099f704f61d66b3461c4286ba3965a587cb70442ff1e', 13, 1, 'MyApp', '[]', 0, '2019-02-11 09:25:17', '2019-02-11 09:25:17', '2020-02-11 12:25:17'),
('bc91f56b4cb3bfa93760a2a2c326a5778fc6a60c5335dec277000726bce31b22f9038e783bfd8996', 13, 1, 'MyApp', '[]', 0, '2019-02-13 11:45:25', '2019-02-13 11:45:25', '2020-02-13 14:45:25'),
('bd40ab252bf42aaec21f4dbf8be9e21c33aace1a2fec566e1658aad09b17b45c4d97c7fdd6c6a469', 9, 1, 'MyApp', '[]', 0, '2019-02-08 10:48:25', '2019-02-08 10:48:25', '2020-02-08 13:48:25'),
('bea8fce1e33821375f8d3ae2630221754ee9a2dc4ef55f2d2d8fac09bb7b2eaedc1f13c260bb2f71', 9, 1, 'MyApp', '[]', 0, '2019-02-08 13:26:24', '2019-02-08 13:26:24', '2020-02-08 16:26:24'),
('bfcdc313e973d7b52b25560602e6313ad85663565fea40812d3da9f18cdcf1b58de9446145ed8c95', 9, 1, 'MyApp', '[]', 0, '2019-02-08 10:17:25', '2019-02-08 10:17:25', '2020-02-08 13:17:25'),
('c2c74551c5c8949cfe782bb6efa358689efbe35525a4f06ef9124756a03f386f7ac33c842e18da6e', 13, 1, 'MyApp', '[]', 0, '2019-02-13 04:02:25', '2019-02-13 04:02:25', '2020-02-13 07:02:25'),
('c3abcb57279a61368be9521d35e8f60d373493f98af9d2f44004e94bd16387b0e31a5b5c1f901507', 15, 1, 'MyApp', '[]', 0, '2019-02-09 19:35:34', '2019-02-09 19:35:34', '2020-02-09 22:35:34'),
('c4561f72ab52c0ad4f777f2ca2fa6d1b189718b78659fe000fd42ef2867848676b166ee88ae6cf61', 9, 1, 'MyApp', '[]', 0, '2019-02-08 09:39:52', '2019-02-08 09:39:52', '2020-02-08 12:39:52'),
('c5491730ae191f2c9ea52bddbf3126132a8cbca1ce51888748840d4aebd03ac2920dbef919bc09b0', 9, 1, 'MyApp', '[]', 0, '2019-02-08 10:51:23', '2019-02-08 10:51:23', '2020-02-08 13:51:23'),
('c560d15e0d18ddd8205d87d6d74dce8a9c44423703ed12bffea1496aeefad2b1b2e76a987c19a45e', 13, 1, 'MyApp', '[]', 0, '2019-02-12 05:06:06', '2019-02-12 05:06:06', '2020-02-12 08:06:06'),
('c5e8f3c1cc5147957a613e116f1b0200a6debbe92eda376ffdb43ca3cd5da7624388650d71930234', 9, 1, 'MyApp', '[]', 0, '2019-02-08 11:49:38', '2019-02-08 11:49:38', '2020-02-08 14:49:38'),
('cfa415041b20fae2ed272209607929c9474f34e63168079e523c861b3a57c1140b7cd4a5df608353', 9, 1, 'MyApp', '[]', 0, '2019-02-08 09:41:21', '2019-02-08 09:41:21', '2020-02-08 12:41:21'),
('cfdb65d7e8e15f05a34926306b0b5eabc89c160e86e8ff9c7feef17772c48c70fc5366bb515c40ee', 9, 1, 'MyApp', '[]', 0, '2019-02-08 10:03:04', '2019-02-08 10:03:04', '2020-02-08 13:03:04'),
('d0651fcf897220b392098a7e5a95e84baf6e037127b67e00fb867fb99db4d40a0d17c5018dd5eb54', 9, 1, 'MyApp', '[]', 0, '2019-02-09 18:25:23', '2019-02-09 18:25:23', '2020-02-09 21:25:23'),
('d4971bc8fb3d4b9d81903bc8e6e9c2db21b2c223d51f65f12dc48057ee7e981c958377770280d5e4', 9, 1, 'MyApp', '[]', 0, '2019-02-08 08:32:58', '2019-02-08 08:32:58', '2020-02-08 11:32:58'),
('d4aba194d534b27de0b277f3084ae99197827001ceda47cee65d1dd831624970a9879aebb325259f', 15, 1, 'MyApp', '[]', 0, '2019-02-09 19:30:41', '2019-02-09 19:30:41', '2020-02-09 22:30:41'),
('d5c83bcf63004176e8ff876ce6031e22f07585c85304012fa612fb28da7d32fcd48646640f4df5b5', 6, 1, 'MyApp', '[]', 0, '2019-02-08 05:59:07', '2019-02-08 05:59:07', '2020-02-08 08:59:07'),
('d6cde1cdb514307a36fbd62cc23bf9c24a1dd838bda39f981c7650654626e48511c75275012da669', 18, 1, 'MyApp', '[]', 0, '2019-02-11 08:49:50', '2019-02-11 08:49:50', '2020-02-11 11:49:50'),
('d792e0393dbe673e4b68365b11537144a7ad563c37ea6b34aa8a922a14c79a81cebe7dde76edca3f', 15, 1, 'MyApp', '[]', 0, '2019-02-09 19:34:19', '2019-02-09 19:34:19', '2020-02-09 22:34:19'),
('d80ac3503b1841aad5658c5004fdc9558aec9c9d2dac0f464fd4414d7baede16cab41652a924f03d', 13, 1, 'MyApp', '[]', 0, '2019-02-11 09:24:57', '2019-02-11 09:24:57', '2020-02-11 12:24:57'),
('dc91c12552c43eadb56cf318f19ede61d4f10d0fa5cb70ba15e5e9a2445045720325e983a24db310', 13, 1, 'MyApp', '[]', 0, '2019-02-09 19:01:30', '2019-02-09 19:01:30', '2020-02-09 22:01:30'),
('dca5512134e3c62a511526b972fcf832f079527c191b1524544a27d875120555169644b6cc7288c9', 9, 1, 'MyApp', '[]', 0, '2019-02-08 10:01:58', '2019-02-08 10:01:58', '2020-02-08 13:01:58'),
('dcd9cae5e75045a60b348ccb35e64632cc3a8845fa531f5c27208139e0a8727c3c4875fe35939efb', 9, 1, 'MyApp', '[]', 0, '2019-02-08 13:55:18', '2019-02-08 13:55:18', '2020-02-08 16:55:18'),
('e3a962b3136b78af2b0ce184cfb66fce7be9d50a9b84bc2340ac48b550d9d7b12d66824cb809412c', 4, 1, 'MyApp', '[]', 0, '2019-02-07 17:41:24', '2019-02-07 17:41:24', '2020-02-07 20:41:24'),
('e593d10fc575a942e3de8c836c9889dd2d50c034d513ff46900fb92d53522f17b2ec0cb572ec38d6', 9, 1, 'MyApp', '[]', 0, '2019-02-08 09:39:20', '2019-02-08 09:39:20', '2020-02-08 12:39:20'),
('e73915c4bfbfc9be86bcffb3fefa972c239ca0001ae231ccaa9aff28bd1d76e09f7d6fe0d6792c90', 15, 1, 'MyApp', '[]', 0, '2019-02-09 19:41:14', '2019-02-09 19:41:14', '2020-02-09 22:41:14'),
('e7964c4699f55539808c8bb1150f9fea9a26b9933e964dd558d7e13bff77d1ee1ed4a35120fb8a72', 9, 1, 'MyApp', '[]', 0, '2019-02-08 17:32:35', '2019-02-08 17:32:35', '2020-02-08 20:32:35'),
('e979085387dea15111ffccb5f6a5b837f843a71b6b0bd18f4e47235a650b063edafee234acf87fb3', 13, 1, 'MyApp', '[]', 0, '2019-02-11 09:15:34', '2019-02-11 09:15:34', '2020-02-11 12:15:34'),
('e9a63928f2974cf2f053abd92fcbe8ceb5eca1a8c455fa8c93f92e82337debd36d6142e7e9efe6d3', 9, 1, 'MyApp', '[]', 0, '2019-02-08 09:41:23', '2019-02-08 09:41:23', '2020-02-08 12:41:23'),
('eb0c1fd45afff3353b3d43300d511d502e4637c9b69686b38807a6f1f266154781fc56eb341e0daf', 13, 1, 'MyApp', '[]', 0, '2019-02-12 05:06:26', '2019-02-12 05:06:26', '2020-02-12 08:06:26'),
('eb40bf97b6a2ad113f438ff6e04092e14c7ef87ea06fb50749d9e17d23b5cd78ba3cd0e08f54f9b4', 9, 1, 'MyApp', '[]', 0, '2019-02-08 10:48:04', '2019-02-08 10:48:04', '2020-02-08 13:48:04'),
('ed570046bd71e8d7f74bb2b3f56631dbfe349fb677e3e56a74317457bf4eff8a889310ee6a05db2b', 6, 1, 'MyApp', '[]', 0, '2019-02-08 05:59:48', '2019-02-08 05:59:48', '2020-02-08 08:59:48'),
('ed5f456e11b96f90187019b61800584a8404b01adcf554507a47e7d10575f4d4f400885465cc53ab', 9, 1, 'MyApp', '[]', 0, '2019-02-08 09:42:30', '2019-02-08 09:42:30', '2020-02-08 12:42:30'),
('edf10b330b927fde5d9092d63900f4dae14a9b65f445fb0cf17a192b9d52b6d2f6aa0497b1be7961', 9, 1, 'MyApp', '[]', 0, '2019-02-08 11:49:05', '2019-02-08 11:49:05', '2020-02-08 14:49:05'),
('eee0e22b7f01812c4076336491c945b03cc21c28fc387d90d710f5da2a5b0d06d0d5a27c6b26f296', 22, 1, 'MyApp', '[]', 0, '2019-02-11 09:19:40', '2019-02-11 09:19:40', '2020-02-11 12:19:40'),
('f69a6c35662685f0c9025dde34b6a0aff62bd87ae446708ac10ac50c6ade93bb13da7df6961c65e9', 9, 1, 'MyApp', '[]', 0, '2019-02-08 11:48:11', '2019-02-08 11:48:11', '2020-02-08 14:48:11'),
('f778c4a05478b569d14e79753fcaba4453ab9e5c0249f0db23bd3de18f0a30fa360a3b2eef7ccfc3', 9, 1, 'MyApp', '[]', 0, '2019-02-08 13:30:26', '2019-02-08 13:30:26', '2020-02-08 16:30:26'),
('f833c5033a908084d57700e2f1739cc0adc837e5a0593b9f9c6d45aad696e5c211a69d63cf40db68', 9, 1, 'MyApp', '[]', 0, '2019-02-08 10:36:12', '2019-02-08 10:36:12', '2020-02-08 13:36:12'),
('fa2fc49bc90ed9b9917aee1d70dbbdff778b05998ccc834f7acdadb223c1ba4cf3562be99c8fe114', 15, 1, 'MyApp', '[]', 0, '2019-02-09 19:34:48', '2019-02-09 19:34:48', '2020-02-09 22:34:48'),
('fb123f244d481f162c2bab644224188e623d8bdd66e04e8c444122fdd35cda6f456183e468f4b855', 9, 1, 'MyApp', '[]', 0, '2019-02-08 13:46:03', '2019-02-08 13:46:03', '2020-02-08 16:46:03'),
('fb28064a60a68a1248cac5e0d065cc8919f7a7c692e67a60339229b8a5af74349cd255650448a316', 15, 1, 'MyApp', '[]', 0, '2019-02-09 19:42:25', '2019-02-09 19:42:25', '2020-02-09 22:42:25'),
('ff513133af24e1f053194fb078befd49d6606db14cf4808abafbff582c3ddd38e8aaa97684be520d', 8, 1, 'MyApp', '[]', 0, '2019-02-08 07:58:48', '2019-02-08 07:58:48', '2020-02-08 10:58:48');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'IURwr2pjaZC1J2tgiiKDcGAoaksMwJ4xKvWcgZwH', 'http://localhost', 1, 0, 0, '2019-02-07 17:04:26', '2019-02-07 17:04:26'),
(2, NULL, 'Laravel Password Grant Client', 'mpWaX7VOSCSGYKSHcNpd5b9ID2criLy3r1aMSZd7', 'http://localhost', 0, 1, 0, '2019-02-07 17:04:26', '2019-02-07 17:04:26');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2019-02-07 17:04:26', '2019-02-07 17:04:26');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(13, 'User1', 'user@user.com', '$2y$10$8y9bJutliEX804135lhuBewsF.vjCiVrx7Tarrdk2lAus55T0HCva', NULL, '2019-02-09 19:01:30', '2019-02-09 19:01:30'),
(14, 'user2', 'user2@user2.com', '$2y$10$GJJKebB42.zVyhSVidfQkOz2wZuCQJi2pnf2erdYTi1IIQlNoftey', NULL, '2019-02-09 19:11:17', '2019-02-09 19:11:17'),
(15, 'murat', 'mg@mg.com', '$2y$10$i47xyYIW23kKDVscCl/GKevoGMSCzWDQMQrt4czm99iKKExTXvxyW', NULL, '2019-02-09 19:15:50', '2019-02-09 19:15:50'),
(16, 'muratcim', 'muratim@murat.com', '$2y$10$fmmuA9wIFD8omGZJ77nhhe0Y/cKVgOy1BaGkZudyvRjpNk32xGOhi', NULL, '2019-02-09 19:22:35', '2019-02-09 19:22:35'),
(17, 'hadimurat', 'hadimurat@murat.com', '$2y$10$I4BvlhH.Hd2ImosZUVb6MuT9jlJNJTD1RTeHTXMXnQg9Gl4.yDqF.', NULL, '2019-02-09 19:25:52', '2019-02-09 19:25:52'),
(18, 'Fatih', 'fatih@fatih.com', '$2y$10$mrVpdCyylHVm/qA4c2LD5.ztLRdNsy.oXabLrVG1Pv2kzGi.OEl1a', NULL, '2019-02-11 08:49:50', '2019-02-11 08:49:50'),
(23, 'arda', 'arda@arda.com', '$2y$10$EGu8wOZefr0XFM6ztU3mV.TgH35SuESc/wS4K8W0Vwk5JY.xNlijK', NULL, '2019-02-11 09:20:00', '2019-02-11 09:20:00'),
(24, 'okan', 'okan@okan.com', '$2y$10$0segIKfH8cHteDmhVIL0S.ioP49.vdaZuDQOVi9xpmaaMHKRgWivO', NULL, '2019-02-11 09:23:08', '2019-02-11 09:23:08');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Tablo için indeksler `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Tablo için indeksler `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Tablo için indeksler `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Tablo için indeksler `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Tablo için AUTO_INCREMENT değeri `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Tablo için AUTO_INCREMENT değeri `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
