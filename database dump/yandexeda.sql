-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2023 at 08:11 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yandexeda`
--

-- --------------------------------------------------------

--
-- Table structure for table `basket`
--

CREATE TABLE `basket` (
  `id` int(11) NOT NULL,
  `price` varchar(100) DEFAULT NULL,
  `picture` varchar(500) DEFAULT NULL,
  `product_title` varchar(100) DEFAULT NULL,
  `weight` varchar(50) DEFAULT NULL,
  `restaurant` varchar(100) DEFAULT NULL,
  `counter` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) DEFAULT NULL,
  `price` varchar(20) DEFAULT NULL,
  `picture` varchar(1000) DEFAULT NULL,
  `product_title` varchar(200) DEFAULT NULL,
  `weight` varchar(50) DEFAULT NULL,
  `title_picture` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `price`, `picture`, `product_title`, `weight`, `title_picture`) VALUES
(5, '1,43 руб.', 'https://eda.yandex/images/3506707/97bb66368e50dc3673a99b70193bc1c2-216x188.jpeg', 'Бонаква вода без газа', '500 мл', 'https://eda.yandex/images/3581687/b7c14a2a8c5242e6db81216110fb50cb-1100x825.jpg'),
(5, '1,43 руб.', 'https://eda.yandex/images/3472725/ed5cd72e2f8e5a761523d4203965be2f-216x188.jpeg', 'БонАква сильногазированная', '500 мл', 'https://eda.yandex/images/3581687/b7c14a2a8c5242e6db81216110fb50cb-1100x825.jpg'),
(5, '1,43 руб.', 'https://eda.yandex/images/3506804/d7ed2fc64d8eed15f8ea8ebe08735531-216x188.jpeg', 'БонАква газированная', '500 мл', 'https://eda.yandex/images/3581687/b7c14a2a8c5242e6db81216110fb50cb-1100x825.jpg'),
(5, '1,30 руб.', 'https://eda.yandex/images/3813301/6e34faa0814934681682bc26bdea8841-216x188.jpeg', 'Лук маринованный', '50 г', 'https://eda.yandex/images/3581687/b7c14a2a8c5242e6db81216110fb50cb-1100x825.jpg'),
(5, '1,30 руб.', 'https://eda.yandex/images/3337779/4a56755e8de9bc97de0271aa775d6378-216x188.jpeg', 'Имбирь маринованный', '50 г', 'https://eda.yandex/images/3581687/b7c14a2a8c5242e6db81216110fb50cb-1100x825.jpg'),
(5, '1,30 руб.', 'https://eda.yandex/images/3735503/c8dc6b14960f2cab22acaec718c58145-216x188.jpeg', 'Морковь пряная', '50 г', 'https://eda.yandex/images/3581687/b7c14a2a8c5242e6db81216110fb50cb-1100x825.jpg'),
(5, '1,30 руб.', 'https://eda.yandex/images/3513074/0cef9d7de49c52c1b35bc3768df20eec-216x188.jpeg', 'Перец халапеньо', '50 г', 'https://eda.yandex/images/3581687/b7c14a2a8c5242e6db81216110fb50cb-1100x825.jpg'),
(5, '1,30 руб.', 'https://eda.yandex/images/3569651/8e07ced2076cf83e6cbbb5428766ca46-216x188.jpeg', 'Сыр твердый', '50 г', 'https://eda.yandex/images/3581687/b7c14a2a8c5242e6db81216110fb50cb-1100x825.jpg'),
(5, '1,30 руб.', 'https://eda.yandex/images/3538649/2e6e470f68f4159205f047beb9647111-216x188.jpeg', 'Шампиньоны', '50 г', 'https://eda.yandex/images/3581687/b7c14a2a8c5242e6db81216110fb50cb-1100x825.jpg'),
(5, '2,50 руб.', 'https://eda.yandex/images/3538649/f70a5f13349950afec1db4c19c576ac2-216x188.jpeg', 'Мясо куриное', '50 г', 'https://eda.yandex/images/3581687/b7c14a2a8c5242e6db81216110fb50cb-1100x825.jpg'),
(5, '1,30 руб.', 'https://eda.yandex/images/3512826/887bad5d702effbc400941f729be0f75-216x188.jpeg', 'Колбаски Охотничьи', '35 г', 'https://eda.yandex/images/3581687/b7c14a2a8c5242e6db81216110fb50cb-1100x825.jpg'),
(5, '2 руб.', 'https://eda.yandex/images/3337779/0471ced37adea70b01127481bd6b2e19-216x188.jpeg', 'Картофель фри', '50 г', 'https://eda.yandex/images/3581687/b7c14a2a8c5242e6db81216110fb50cb-1100x825.jpg'),
(5, '0,90 руб.', 'https://avatars.mds.yandex.net/get-bunker/50064/d72205e544198b757690858b7cf6245b7d8df050/orig', 'Лаваш', '110 г', 'https://eda.yandex/images/3581687/b7c14a2a8c5242e6db81216110fb50cb-1100x825.jpg'),
(5, '2,60 руб.', 'https://avatars.mds.yandex.net/get-bunker/50064/d72205e544198b757690858b7cf6245b7d8df050/orig', 'Сыр Крем-чиз', '50 г', 'https://eda.yandex/images/3581687/b7c14a2a8c5242e6db81216110fb50cb-1100x825.jpg'),
(5, '45,70 руб.', 'https://eda.yandex/images/3502800/12cef54a5f1340c09924258cdc2282da-216x188.jpeg', 'Сет №1', '1,63 кг', 'https://eda.yandex/images/3581687/b7c14a2a8c5242e6db81216110fb50cb-1100x825.jpg'),
(5, '36,90 руб.', 'https://avatars.mds.yandex.net/get-bunker/50064/d72205e544198b757690858b7cf6245b7d8df050/orig', 'Сет №2', '1,68 кг', 'https://eda.yandex/images/3581687/b7c14a2a8c5242e6db81216110fb50cb-1100x825.jpg'),
(5, '4 руб.', 'https://eda.yandex/images/3439028/6e37d20850fe2112fe6ee7bfeb14fd2c-216x188.jpeg', 'Картофель фри', '100 г', 'https://eda.yandex/images/3581687/b7c14a2a8c5242e6db81216110fb50cb-1100x825.jpg'),
(5, '5 руб.', 'https://eda.yandex/images/3541746/f5ad34df24b79ce0fae029abe0c72abe-216x188.jpeg', 'Луковые кольца', '100 г', 'https://eda.yandex/images/3581687/b7c14a2a8c5242e6db81216110fb50cb-1100x825.jpg'),
(5, '5,50 руб.', 'https://eda.yandex/images/3377781/f4b6535b11ce795ebf9dadb42456fbf6-216x188.jpeg', 'Наггетсы куриные', '100 г', 'https://eda.yandex/images/3581687/b7c14a2a8c5242e6db81216110fb50cb-1100x825.jpg'),
(5, '7,80 руб.', 'https://eda.yandex/images/3436037/0194a36cb3d84968b8932bf8cb24fbd1-216x188.jpeg', 'Кордон Блю', '230 г', 'https://eda.yandex/images/3581687/b7c14a2a8c5242e6db81216110fb50cb-1100x825.jpg'),
(5, '10,50 руб.', 'https://eda.yandex/images/3529621/541ffafd84846ad41f165e53a03d69d5-216x188.jpeg', 'Бургер Классик', '230 г', 'https://eda.yandex/images/3581687/b7c14a2a8c5242e6db81216110fb50cb-1100x825.jpg'),
(5, '11,10 руб.', 'https://eda.yandex/images/3507668/3bdf55a301278ee5b53083f41918786c-216x188.jpeg', 'Чизбургер Классик', '230 г', 'https://eda.yandex/images/3581687/b7c14a2a8c5242e6db81216110fb50cb-1100x825.jpg'),
(5, '10,50 руб.', 'https://eda.yandex/images/3506707/b7f141e6a89658a534d9abf925d8fc81-216x188.jpeg', 'Донер Бургер', '227 г', 'https://eda.yandex/images/3581687/b7c14a2a8c5242e6db81216110fb50cb-1100x825.jpg'),
(5, '11,10 руб.', 'https://eda.yandex/images/3809330/9d323c0319f2cfae06a06aeaa2964ea4-216x188.jpeg', 'Донер бургер с сыром', '247 г', 'https://eda.yandex/images/3581687/b7c14a2a8c5242e6db81216110fb50cb-1100x825.jpg'),
(5, '16,90 руб.', 'https://eda.yandex/images/3529621/b22cb38894c44a1f9e2f554bdc4288e8-216x188.jpeg', 'Биг Бургер', '344 г', 'https://eda.yandex/images/3581687/b7c14a2a8c5242e6db81216110fb50cb-1100x825.jpg'),
(5, '11,70 руб.', 'https://eda.yandex/images/3667559/374d29bf10f1ddbb442e18a85ca408f5-216x188.jpeg', 'Бунито шаурма', '450 г', 'https://eda.yandex/images/3581687/b7c14a2a8c5242e6db81216110fb50cb-1100x825.jpg'),
(5, '15,60 руб.', 'https://eda.yandex/images/3667559/374d29bf10f1ddbb442e18a85ca408f5-216x188.jpeg', 'Бунито шаурма', '600 г', 'https://eda.yandex/images/3581687/b7c14a2a8c5242e6db81216110fb50cb-1100x825.jpg'),
(5, '11,70 руб.', 'https://eda.yandex/images/3583862/c07f9b6da05b778d6f5b3ae6857a1039-216x188.jpeg', 'Гирос шаурма', '450 г', 'https://eda.yandex/images/3581687/b7c14a2a8c5242e6db81216110fb50cb-1100x825.jpg'),
(5, '15,60 руб.', 'https://eda.yandex/images/3583862/c07f9b6da05b778d6f5b3ae6857a1039-216x188.jpeg', 'Гирос Шаурма', '600 г', 'https://eda.yandex/images/3581687/b7c14a2a8c5242e6db81216110fb50cb-1100x825.jpg'),
(5, '10,40 руб.', 'https://eda.yandex/images/3518584/e81a27eda0666091dd92943b36a08e8c-216x188.jpeg', 'Классическая шаурма', '400 г', 'https://eda.yandex/images/3581687/b7c14a2a8c5242e6db81216110fb50cb-1100x825.jpg'),
(5, '14,30 руб.', 'https://eda.yandex/images/3518584/e81a27eda0666091dd92943b36a08e8c-216x188.jpeg', 'Классическая шаурма', '600 г', 'https://eda.yandex/images/3581687/b7c14a2a8c5242e6db81216110fb50cb-1100x825.jpg'),
(5, '12,40 руб.', 'https://eda.yandex/images/2794391/45726d9036894d346d6c5e97ea28145d-216x188.jpeg', 'Мюнхен шаурма', '450 г', 'https://eda.yandex/images/3581687/b7c14a2a8c5242e6db81216110fb50cb-1100x825.jpg'),
(5, '16,90 руб.', 'https://eda.yandex/images/2794391/45726d9036894d346d6c5e97ea28145d-216x188.jpeg', 'Мюнхен Шаурма', '600 г', 'https://eda.yandex/images/3581687/b7c14a2a8c5242e6db81216110fb50cb-1100x825.jpg'),
(5, '13 руб.', 'https://eda.yandex/images/3401132/6ee40bde9b5b98893679a3d99ddcd744-216x188.jpeg', 'Нью-Джерси шаурма', '450 г', 'https://eda.yandex/images/3581687/b7c14a2a8c5242e6db81216110fb50cb-1100x825.jpg'),
(5, '16,90 руб.', 'https://eda.yandex/images/3508859/6ee40bde9b5b98893679a3d99ddcd744-216x188.jpeg', 'Нью-Джерси шаурма', '600 г', 'https://eda.yandex/images/3581687/b7c14a2a8c5242e6db81216110fb50cb-1100x825.jpg'),
(5, '10,40 руб.', 'https://eda.yandex/images/2394388/649a3d9694dfbb223699bf437dd90295-216x188.jpeg', 'Баварский хот-дог', '350 г', 'https://eda.yandex/images/3581687/b7c14a2a8c5242e6db81216110fb50cb-1100x825.jpg'),
(5, '11,70 руб.', 'https://eda.yandex/images/2050703/20df1589ae179ffd6a1847e553dca346-216x188.jpeg', 'Имбирь шаурма', '450 г', 'https://eda.yandex/images/3581687/b7c14a2a8c5242e6db81216110fb50cb-1100x825.jpg'),
(5, '15,60 руб.', 'https://eda.yandex/images/2796335/20df1589ae179ffd6a1847e553dca346-216x188.jpeg', 'Имбирь шаурма', '600 г', 'https://eda.yandex/images/3581687/b7c14a2a8c5242e6db81216110fb50cb-1100x825.jpg'),
(5, '11,70 руб.', 'https://eda.yandex/images/3490902/8e580b6675967da636ec1ced23c01892-216x188.jpeg', 'Сырная шаурма', '450 г', 'https://eda.yandex/images/3581687/b7c14a2a8c5242e6db81216110fb50cb-1100x825.jpg'),
(5, '15,60 руб.', 'https://eda.yandex/images/3507668/8e580b6675967da636ec1ced23c01892-216x188.jpeg', 'Сырная Шаурма', '600 г', 'https://eda.yandex/images/3581687/b7c14a2a8c5242e6db81216110fb50cb-1100x825.jpg'),
(6, '12,90 руб.', 'https://eda.yandex/images/3506804/cbb7d77866964d1a866e5812c4ff8094-216x188.jpeg', 'Чука салат с ореховым соусом', '130 г', 'https://eda.yandex/images/1380298/ad1749a8dbc40594e81c614a71a5c258-1100x825.jpg'),
(6, '19,90 руб.', 'https://eda.yandex/images/3770794/ffec4553b2cf4dac8bf8f0ad73e75fde-216x188.jpeg', 'Поке с лососем', '325 г', 'https://eda.yandex/images/1380298/ad1749a8dbc40594e81c614a71a5c258-1100x825.jpg'),
(6, '16,90 руб.', 'https://eda.yandex/images/2796335/e43f842a3e774761bdface973c433220-216x188.jpeg', 'Поке Вегетарианский', '340 г', 'https://eda.yandex/images/1380298/ad1749a8dbc40594e81c614a71a5c258-1100x825.jpg'),
(6, '17,90 руб.', 'https://eda.yandex/images/2783965/de33ab7e1f8e4ddbadb7b636ae045a2d-216x188.jpeg', 'Поке с креветкой', '330 г', 'https://eda.yandex/images/1380298/ad1749a8dbc40594e81c614a71a5c258-1100x825.jpg'),
(6, '3,90 руб.', 'https://eda.yandex/images/3502800/f886b96826934a1286a979c67e95f5d5-216x188.jpeg', 'Рис Гохан', '100 г', 'https://eda.yandex/images/1380298/ad1749a8dbc40594e81c614a71a5c258-1100x825.jpg'),
(6, '8,90 руб.', 'https://eda.yandex/images/3583862/738540f09c2e4a48b45833150a512f3b-216x188.jpeg', 'Мисо суп', '300 г', 'https://eda.yandex/images/1380298/ad1749a8dbc40594e81c614a71a5c258-1100x825.jpg'),
(6, '19,90 руб.', 'https://eda.yandex/images/3534679/aaf3d0b0eae045b8a1e6f0a85c720841-216x188.jpeg', 'Суп Том Ям острый', '300 г', 'https://eda.yandex/images/1380298/ad1749a8dbc40594e81c614a71a5c258-1100x825.jpg'),
(6, '14,90 руб.', 'https://eda.yandex/images/3772784/c40e808a33dc493e84709efad1dd18e1-216x188.jpeg', 'Рис с курицей', '320 г', 'https://eda.yandex/images/1380298/ad1749a8dbc40594e81c614a71a5c258-1100x825.jpg'),
(6, '12,90 руб.', 'https://eda.yandex/images/3521394/3cea5f58f95b40e49fcedec73fc3f0c6-216x188.jpeg', 'Рис с овощами', '320 г', 'https://eda.yandex/images/1380298/ad1749a8dbc40594e81c614a71a5c258-1100x825.jpg'),
(6, '16,90 руб.', 'https://eda.yandex/images/3502800/00e2662a950246d3afe1d5af182c835e-216x188.jpeg', 'Удон с креветкой и курицей в Чили', '300 г', 'https://eda.yandex/images/1380298/ad1749a8dbc40594e81c614a71a5c258-1100x825.jpg'),
(6, '19,90 руб.', 'https://eda.yandex/images/3490335/cf1ffcd5a1c64700be502d4201385b22-216x188.jpeg', 'Удон с морепродуктами под китайским соусом', '300 г', 'https://eda.yandex/images/1380298/ad1749a8dbc40594e81c614a71a5c258-1100x825.jpg'),
(6, '12,90 руб.', 'https://eda.yandex/images/3725642/aa06061b178d49b6b7f857e83eecdd94-216x188.jpeg', 'Удон с овощами под соусом терияки', '300 г', 'https://eda.yandex/images/1380298/ad1749a8dbc40594e81c614a71a5c258-1100x825.jpg'),
(6, '14,90 руб.', 'https://eda.yandex/images/3816972/32989a28cfd740d893344390ae70fc15-216x188.jpeg', 'Удон с курицей под соусом терияки', '300 г', 'https://eda.yandex/images/1380298/ad1749a8dbc40594e81c614a71a5c258-1100x825.jpg'),
(6, '16,90 руб.', 'https://eda.yandex/images/3595156/cd5e2f08525b872911559dc8b9a50317-216x188.jpeg', 'Филадельфия лайт сяке', '210 г', 'https://eda.yandex/images/1380298/ad1749a8dbc40594e81c614a71a5c258-1100x825.jpg'),
(6, '16,90 руб.', 'https://eda.yandex/images/3798638/f007a4f78002c0d08c7577e0e023a5b8-216x188.jpeg', 'Филадельфия лайт сяке с авокадо', '210 г', 'https://eda.yandex/images/1380298/ad1749a8dbc40594e81c614a71a5c258-1100x825.jpg'),
(6, '16,90 руб.', 'https://eda.yandex/images/2370127/334ea242c27f58294b93d770d6d47dac-216x188.jpeg', 'Филадельфия Эби в кунжуте', '220 г', 'https://eda.yandex/images/1380298/ad1749a8dbc40594e81c614a71a5c258-1100x825.jpg'),
(6, '22,90 руб.', 'https://eda.yandex/images/3337779/9bd4195ef074b24370644fce532e9c50-216x188.jpeg', 'Филадельфия эби', '230 г', 'https://eda.yandex/images/1380298/ad1749a8dbc40594e81c614a71a5c258-1100x825.jpg'),
(6, '16,90 руб.', 'https://eda.yandex/images/3106738/5eb4792e6e06a4bf015f33afef7b5b42-216x188.jpeg', 'Лава с лососем', '200 г', 'https://eda.yandex/images/1380298/ad1749a8dbc40594e81c614a71a5c258-1100x825.jpg'),
(6, '8,90 руб.', 'https://eda.yandex/images/1962206/56620b0bc5b4328ed36d9cf35c408414-216x188.jpeg', 'Лава с крабом', '200 г', 'https://eda.yandex/images/1380298/ad1749a8dbc40594e81c614a71a5c258-1100x825.jpg'),
(6, '16,90 руб.', 'https://eda.yandex/images/3569651/050f3ed9a251fdb52da326ea143b7095-216x188.jpeg', 'Бонито маки', '190 г', 'https://eda.yandex/images/1380298/ad1749a8dbc40594e81c614a71a5c258-1100x825.jpg'),
(6, '16,90 руб.', 'https://eda.yandex/images/3518584/66f74a85db02a2783b80cd6e1ceb4acb-216x188.jpeg', 'Креветка с тунцом', '210 г', 'https://eda.yandex/images/1380298/ad1749a8dbc40594e81c614a71a5c258-1100x825.jpg'),
(6, '22,90 руб.', 'https://eda.yandex/images/3725642/f669171d941bc65f93a681bde771e5af-216x188.jpeg', 'Радуга', '240 г', 'https://eda.yandex/images/1380298/ad1749a8dbc40594e81c614a71a5c258-1100x825.jpg'),
(6, '22,90 руб.', 'https://eda.yandex/images/2794391/d59d6183074a48c785907a48aa1ef455-216x188.jpeg', 'Филадельфия классика', '250 г', 'https://eda.yandex/images/1380298/ad1749a8dbc40594e81c614a71a5c258-1100x825.jpg'),
(6, '12,90 руб.', 'https://eda.yandex/images/3514991/304cdf4bbafb486a92ec6bcf5e52980b-216x188.jpeg', 'Футомаки чикен', '250 г', 'https://eda.yandex/images/1380298/ad1749a8dbc40594e81c614a71a5c258-1100x825.jpg'),
(6, '8,90 руб.', 'https://eda.yandex/images/3580810/d4184690e0f443b8ba347a606ee3f183-216x188.jpeg', 'Футомаки ясай', '220 г', 'https://eda.yandex/images/1380298/ad1749a8dbc40594e81c614a71a5c258-1100x825.jpg'),
(6, '16,90 руб.', 'https://eda.yandex/images/3709189/b3ee0693dd3744129c32aaf33f7b1ffd-216x188.jpeg', 'Сезам с тунцом', '230 г', 'https://eda.yandex/images/1380298/ad1749a8dbc40594e81c614a71a5c258-1100x825.jpg'),
(6, '16,90 руб.', 'https://eda.yandex/images/3436037/9f96c7817d944904988e9aebb9d298f4-216x188.jpeg', 'Футомаки сяке', '250 г', 'https://eda.yandex/images/1380298/ad1749a8dbc40594e81c614a71a5c258-1100x825.jpg'),
(6, '16,90 руб.', 'https://eda.yandex/images/3593277/77f02ea3a2174dc9b154fe0170f1bfa5-216x188.jpeg', 'Калифорния лайт Краб-микс', '205 г', 'https://eda.yandex/images/1380298/ad1749a8dbc40594e81c614a71a5c258-1100x825.jpg'),
(6, '22,90 руб.', 'https://eda.yandex/images/2050703/539e599281c84f45a6ae68167581a416-216x188.jpeg', 'Филадельфия унаги', '225 г', 'https://eda.yandex/images/1380298/ad1749a8dbc40594e81c614a71a5c258-1100x825.jpg'),
(6, '22,90 руб.', 'https://eda.yandex/images/3593277/259a8bc8c7a74667aa8967304813e82a-216x188.jpeg', 'Филадельфия сяке', '250 г', 'https://eda.yandex/images/1380298/ad1749a8dbc40594e81c614a71a5c258-1100x825.jpg'),
(6, '22,90 руб.', 'https://eda.yandex/images/3816972/ef1848378b4b46cfab655cd11697d1d3-216x188.jpeg', 'Филадельфия магуро', '250 г', 'https://eda.yandex/images/1380298/ad1749a8dbc40594e81c614a71a5c258-1100x825.jpg'),
(6, '16,90 руб.', 'https://eda.yandex/images/3456802/41f7abf8ecd24404aecc7df2529794b2-216x188.jpeg', 'Филадельфия сяке в кунжуте', '215 г', 'https://eda.yandex/images/1380298/ad1749a8dbc40594e81c614a71a5c258-1100x825.jpg'),
(6, '16,90 руб.', 'https://eda.yandex/images/3709189/bcd8c1a903774cfa973b33d23bbaf56e-216x188.jpeg', 'Сяке авокадо', '190 г', 'https://eda.yandex/images/1380298/ad1749a8dbc40594e81c614a71a5c258-1100x825.jpg'),
(7, '9,50 руб.', 'https://eda.yandex/images/2394388/d8d552efd8bd4f51b0ecf163c4e71e88-216x188.jpeg', 'Пад Си Ю', '300 г', 'https://eda.yandex/images/1368744/9692b438240283cf696faaf18d64f84f-1100x825.jpg'),
(7, '16,50 руб.', 'https://eda.yandex/images/3749380/ded7f37efe641d8d755fe3e56e8f265f-216x188.jpeg', 'Пад Тай с креветками', '320 г', 'https://eda.yandex/images/1368744/9692b438240283cf696faaf18d64f84f-1100x825.jpg'),
(7, '12,50 руб.', 'https://eda.yandex/images/3401132/ed7e384f65a224c652df0c7c5edd0422-216x188.jpeg', 'Пад Тай с тофу', '320 г', 'https://eda.yandex/images/1368744/9692b438240283cf696faaf18d64f84f-1100x825.jpg'),
(7, '13,50 руб.', 'https://eda.yandex/images/3508859/a365074c99c7f8718fc98f7f1703c48c-216x188.jpeg', 'Пад Тай с курицей', '320 г', 'https://eda.yandex/images/1368744/9692b438240283cf696faaf18d64f84f-1100x825.jpg'),
(7, '17 руб.', 'https://eda.yandex/images/2353725/ff0eded2ada8ff6bd4a5ff82d7d4b083-216x188.jpeg', 'Лапша по-сингапурски', '400 г', 'https://eda.yandex/images/1368744/9692b438240283cf696faaf18d64f84f-1100x825.jpg'),
(7, '12,50 руб.', 'https://eda.yandex/images/3808326/694abaabf386c23ec1bd05c689b8ff95-216x188.jpeg', 'Карбонара по-азиатски', '270 г', 'https://eda.yandex/images/1368744/9692b438240283cf696faaf18d64f84f-1100x825.jpg'),
(7, '10 руб.', 'https://eda.yandex/images/3490902/19460bcaaed123b8ad55f90df71ab2ce-216x188.jpeg', 'Орандж чикен на рисе', '320 г', 'https://eda.yandex/images/1368744/9692b438240283cf696faaf18d64f84f-1100x825.jpg'),
(7, '13 руб.', 'https://eda.yandex/images/2050703/cd02076d178848feb733e88d0b119abc-216x188.jpeg', 'Свинина с ананасом', '310 г', 'https://eda.yandex/images/1368744/9692b438240283cf696faaf18d64f84f-1100x825.jpg'),
(7, '13 руб.', 'https://eda.yandex/images/3593277/103cb7a12229278c2d86513843251529-216x188.jpeg', 'Курица гунбао на рисе', '350 г', 'https://eda.yandex/images/1368744/9692b438240283cf696faaf18d64f84f-1100x825.jpg'),
(7, '13 руб.', 'https://eda.yandex/images/3790679/38f011b1aef1bf82a232bdbe307458f8-216x188.jpeg', 'Говядина по-пекински на рисе', '350 г', 'https://eda.yandex/images/1368744/9692b438240283cf696faaf18d64f84f-1100x825.jpg'),
(7, '11,50 руб.', 'https://eda.yandex/images/2353725/80831946f3ee3a25a28024497596ba43-216x188.jpeg', 'Курица в соусе из чёрного перца на рисе', '350 г', 'https://eda.yandex/images/1368744/9692b438240283cf696faaf18d64f84f-1100x825.jpg'),
(7, '13,50 руб.', 'https://eda.yandex/images/3538649/9d258978cc6350ff1973dfb2535b44b9-216x188.jpeg', 'Утка по-сычуаньски', '350 г', 'https://eda.yandex/images/1368744/9692b438240283cf696faaf18d64f84f-1100x825.jpg'),
(7, '9 руб.', 'https://eda.yandex/images/3401132/c0f834e2cb024b678d571e01d9b66345-216x188.jpeg', 'Чикен попкорн в кисло-сладком соусе', '150 г', 'https://eda.yandex/images/1368744/9692b438240283cf696faaf18d64f84f-1100x825.jpg'),
(7, '9 руб.', 'https://eda.yandex/images/3534679/a964b90e2fb04940b5da297ce97eb03c-216x188.jpeg', 'Чикен попкорн в соусе терияки', '150 г', 'https://eda.yandex/images/1368744/9692b438240283cf696faaf18d64f84f-1100x825.jpg'),
(7, '9,50 руб.', 'https://eda.yandex/images/3569651/1f9c40f9a63c4b97a6f68da55611f706-216x188.jpeg', 'Мидии в кляре', '100 г', 'https://eda.yandex/images/1368744/9692b438240283cf696faaf18d64f84f-1100x825.jpg'),
(7, '9 руб.', 'https://eda.yandex/images/3436037/2e06a8de06bb43659a80246740d3d534-216x188.jpeg', 'Сырные медальоны с халапеньо', '90 г', 'https://eda.yandex/images/1368744/9692b438240283cf696faaf18d64f84f-1100x825.jpg'),
(7, '12 руб.', 'https://eda.yandex/images/3735503/4f1fe7e01e7e4a3b96bd681b53e71f75-216x188.jpeg', 'Кольца кальмаров в темпуре', '100 г', 'https://eda.yandex/images/1368744/9692b438240283cf696faaf18d64f84f-1100x825.jpg'),
(7, '11,50 руб.', 'https://eda.yandex/images/3529621/318178ea07237ecde8acba2e7603c66d-216x188.jpeg', 'Гедза с уткой', '100 г', 'https://eda.yandex/images/1368744/9692b438240283cf696faaf18d64f84f-1100x825.jpg'),
(7, '9,50 руб.', 'https://eda.yandex/images/3749380/411b8fa035e75898b5b4f5f996aaac7b-216x188.jpeg', 'Гёдза с курицей', '100 г', 'https://eda.yandex/images/1368744/9692b438240283cf696faaf18d64f84f-1100x825.jpg'),
(7, '9,50 руб.', 'https://eda.yandex/images/3770794/d6e65dce06c5f26ed78abed5e774a7dc-216x188.jpeg', 'Гёдза с креветками', '70 г', 'https://eda.yandex/images/1368744/9692b438240283cf696faaf18d64f84f-1100x825.jpg'),
(7, '11,50 руб.', 'https://eda.yandex/images/3512182/cd4c392898024d88a816b6d14aa1912b-216x188.jpeg', 'Фо-бо с говядиной', '600 г', 'https://eda.yandex/images/1368744/9692b438240283cf696faaf18d64f84f-1100x825.jpg'),
(7, '12,50 руб.', 'https://eda.yandex/images/3725642/dd403aa8814f4d37991ffc21036d8cff-216x188.jpeg', 'Рамен с курицей', '570 г', 'https://eda.yandex/images/1368744/9692b438240283cf696faaf18d64f84f-1100x825.jpg'),
(7, '12,50 руб.', 'https://eda.yandex/images/3436037/5bd7d49fd8cea9c4ec77f8da6b2b55fe-216x188.jpeg', 'Тайский суп Том Ям', '300 г', 'https://eda.yandex/images/1368744/9692b438240283cf696faaf18d64f84f-1100x825.jpg'),
(7, '5 руб.', 'https://eda.yandex/images/3702558/0615f1b3f5f5001d65a42393e45d3809-216x188.jpeg', 'Мисо-суп с тофу', '250 г', 'https://eda.yandex/images/1368744/9692b438240283cf696faaf18d64f84f-1100x825.jpg'),
(7, '19,50 руб.', 'https://eda.yandex/images/3439028/f0296e1f650553a7b1489dd8a8ccbbf9-216x188.jpeg', 'Королевский Том Ям с креветками', '500 г', 'https://eda.yandex/images/1368744/9692b438240283cf696faaf18d64f84f-1100x825.jpg'),
(7, '15,50 руб.', 'https://eda.yandex/images/3439767/8de3b75c689743cb81476511dec63149-216x188.jpeg', 'Креветки в соусе том ям с рисовой лапшой', '300 г', 'https://eda.yandex/images/1368744/9692b438240283cf696faaf18d64f84f-1100x825.jpg'),
(7, '14 руб.', 'https://eda.yandex/images/3770794/bce923d095c64bf196df11c6ce9c3a4c-216x188.jpeg', 'Лосось в сливочном соусе с лапшой удон', '300 г', 'https://eda.yandex/images/1368744/9692b438240283cf696faaf18d64f84f-1100x825.jpg'),
(7, '11,50 руб.', 'https://eda.yandex/images/3593277/b1348c7230048bb8f397cf6cc3ac0470-216x188.jpeg', 'Курица в соусе терияки с лапшой удон', '300 г', 'https://eda.yandex/images/1368744/9692b438240283cf696faaf18d64f84f-1100x825.jpg'),
(7, '12,50 руб.', 'https://eda.yandex/images/3513074/1c9d8ba76cfafd3c52e78be0e7b09f52-216x188.jpeg', 'Свинина в кисло-сладком соусе с лапшой удон', '300 г', 'https://eda.yandex/images/1368744/9692b438240283cf696faaf18d64f84f-1100x825.jpg'),
(7, '14,50 руб.', 'https://eda.yandex/images/3507285/228369d8c9e45d5d528a3e43aa3a124a-216x188.jpeg', 'Морепродукты в кисло-сладком соусе с чернильной лапшой', '300 г', 'https://eda.yandex/images/1368744/9692b438240283cf696faaf18d64f84f-1100x825.jpg'),
(7, '15,50 руб.', 'https://eda.yandex/images/3550919/277245bc0802d356bf3196ba4dd1bc82-216x188.jpeg', 'Креветки в устричном соусе с лапшой соба', '300 г', 'https://eda.yandex/images/1368744/9692b438240283cf696faaf18d64f84f-1100x825.jpg'),
(7, '11,50 руб.', 'https://eda.yandex/images/3521394/2d8e79ff8d08d4f9eeefa6acb94f43f3-216x188.jpeg', 'Курица в соусе карри со шпинатной лапшой', '300 г', 'https://eda.yandex/images/1368744/9692b438240283cf696faaf18d64f84f-1100x825.jpg'),
(7, '13 руб.', 'https://eda.yandex/images/3528285/0e8bb1e98124aba75301d4069a09e3ad-216x188.jpeg', 'Говядина в перечном соусе с лапшой удон', '300 г', 'https://eda.yandex/images/1368744/9692b438240283cf696faaf18d64f84f-1100x825.jpg'),
(7, '13 руб.', 'https://eda.yandex/images/3596693/fcc24b34e08e95f443931d89379ddcce-216x188.jpeg', 'Говядина в азиатском чили с яичной лапшой', '300 г', 'https://eda.yandex/images/1368744/9692b438240283cf696faaf18d64f84f-1100x825.jpg'),
(7, '13,50 руб.', 'https://eda.yandex/images/3521394/791ddfa5233a7713c9ba0687019ee7b9-216x188.jpeg', 'Утка в соусе по-пекински со стеклянной лапшой', '300 г', 'https://eda.yandex/images/1368744/9692b438240283cf696faaf18d64f84f-1100x825.jpg'),
(7, '7 руб.', 'https://eda.yandex/images/3472725/9bf45bac480446a58f59f29960d08768-216x188.jpeg', 'Детский вок с курицей', '220 г', 'https://eda.yandex/images/1368744/9692b438240283cf696faaf18d64f84f-1100x825.jpg'),
(7, '9 руб.', 'https://eda.yandex/images/3435765/6e0f14bc57236c5c2fb4a3ce0ed3769f-216x188.jpeg', 'Детское комбо', '225 г', 'https://eda.yandex/images/1368744/9692b438240283cf696faaf18d64f84f-1100x825.jpg'),
(7, '5 руб.', 'https://eda.yandex/images/3456802/92e8954c548b33d5b5377f2fb1848b22-216x188.jpeg', 'Картошка фри', '100 г', 'https://eda.yandex/images/1368744/9692b438240283cf696faaf18d64f84f-1100x825.jpg'),
(7, '4 руб.', 'https://eda.yandex/images/3569651/c243377c1223ba135f53e0c505d1cc00-216x188.jpeg', 'Морковные палочки', '80 г', 'https://eda.yandex/images/1368744/9692b438240283cf696faaf18d64f84f-1100x825.jpg'),
(7, '5,50 руб.', 'https://eda.yandex/images/3749380/72b6670c65499aaba3b747c921516ec7-216x188.jpeg', 'Наггетсы из курочки', '100 г', 'https://eda.yandex/images/1368744/9692b438240283cf696faaf18d64f84f-1100x825.jpg'),
(1, '35 руб.', 'https://eda.yandex/images/2783965/5734faf6ec3a93c6a9b8da9c6dc91161-216x188.jpg', 'Гранд чизбургер сет', '709 г', 'https://eda.yandex/images/3569651/7b38925111a4e7f63d5ff7b86eb50177-1100x825.jpg'),
(1, '33 руб.', 'https://eda.yandex/images/2353725/556fa407afae6af62a884746d129b01a-216x188.jpg', 'Двойной Чизбургер Сет', '689 г', 'https://eda.yandex/images/3569651/7b38925111a4e7f63d5ff7b86eb50177-1100x825.jpg'),
(1, '37,10 руб.', 'https://eda.yandex/images/3506707/1398368fbb8dec5c171cb0717334c3df-216x188.jpg', 'Фреш сет', '923 г', 'https://eda.yandex/images/3569651/7b38925111a4e7f63d5ff7b86eb50177-1100x825.jpg'),
(1, '35,10 руб.', 'https://eda.yandex/images/3550919/4664e5994b743af2bd22e3443e155cde-216x188.jpg', 'Чикен сет', '805 г', 'https://eda.yandex/images/3569651/7b38925111a4e7f63d5ff7b86eb50177-1100x825.jpg'),
(1, '12 руб.', 'https://eda.yandex/images/3583862/18dc88ba796fa0eee2713fe6daff51cb-216x188.jpg', 'Кидс Мил', '500 г', 'https://eda.yandex/images/3569651/7b38925111a4e7f63d5ff7b86eb50177-1100x825.jpg'),
(1, '12,60 руб.', 'https://eda.yandex/images/3581687/e27e2073e97c36c3656fc414d684c900-216x188.jpg', 'Биг Бургер', '350 г', 'https://eda.yandex/images/3569651/7b38925111a4e7f63d5ff7b86eb50177-1100x825.jpg'),
(1, '16,90 руб.', 'https://eda.yandex/images/3580810/79147992a7ab63a8c7ca08e3f0984f4b-216x188.jpg', 'Двойной Биг Бургер', '460 г', 'https://eda.yandex/images/3569651/7b38925111a4e7f63d5ff7b86eb50177-1100x825.jpg'),
(1, '12,60 руб.', 'https://eda.yandex/images/3667559/edfa78bdfd2c87123c44a6e5d294c417-216x188.jpg', 'Двойной Гранд чизбургер', '290 г', 'https://eda.yandex/images/3569651/7b38925111a4e7f63d5ff7b86eb50177-1100x825.jpg'),
(1, '8,80 руб.', 'https://eda.yandex/images/3596693/123d852af3033d9eca0d95828384ab8a-216x188.jpg', 'Биф Онион Бургер', '210 г', 'https://eda.yandex/images/3569651/7b38925111a4e7f63d5ff7b86eb50177-1100x825.jpg'),
(1, '8,50 руб.', 'https://eda.yandex/images/3439028/195dc2ca94b502400b1e397181821c4c-216x188.jpg', 'Чикен Онион Бургер', '224 г', 'https://eda.yandex/images/3569651/7b38925111a4e7f63d5ff7b86eb50177-1100x825.jpg'),
(1, '9,60 руб.', 'https://eda.yandex/images/3749380/d6548d6750417f18b4142bb94381d932-216x188.jpg', 'Чикен Тейсти Джуниор', '254 г', 'https://eda.yandex/images/3569651/7b38925111a4e7f63d5ff7b86eb50177-1100x825.jpg'),
(1, '9,60 руб.', 'https://eda.yandex/images/2353725/44b164a1bc3bb54656dfbe2c37857057-216x188.jpg', 'Тройной чизбургер', '213 г', 'https://eda.yandex/images/3569651/7b38925111a4e7f63d5ff7b86eb50177-1100x825.jpg'),
(1, '9,50 руб.', 'https://eda.yandex/images/3580810/4011663061022513d055de9510fc6453-216x188.jpg', 'Двойной Фиш Бургер', '190 г', 'https://eda.yandex/images/3569651/7b38925111a4e7f63d5ff7b86eb50177-1100x825.jpg'),
(1, '8,60 руб.', 'https://eda.yandex/images/3106738/2be14343216668bbb86d2e880fea6634-216x188.jpg', 'Гранд чизбургер', '205 г', 'https://eda.yandex/images/3569651/7b38925111a4e7f63d5ff7b86eb50177-1100x825.jpg'),
(1, '9,90 руб.', 'https://eda.yandex/images/3521394/252bf6421dc0e12bf56582805519ed6c-216x188.jpg', 'Фреш Де Люкс', '223 г', 'https://eda.yandex/images/3569651/7b38925111a4e7f63d5ff7b86eb50177-1100x825.jpg'),
(1, '8,10 руб.', 'https://eda.yandex/images/3377781/25f8b46dbd0e3d7352a5cdbe1a540651-216x188.jpg', 'Чикен Де Люкс', '243 г', 'https://eda.yandex/images/3569651/7b38925111a4e7f63d5ff7b86eb50177-1100x825.jpg'),
(1, '8,10 руб.', 'https://eda.yandex/images/3806466/6b94fe180d93f202978fa4b9b117d626-216x188.jpg', 'Фиш Бургер', '130 г', 'https://eda.yandex/images/3569651/7b38925111a4e7f63d5ff7b86eb50177-1100x825.jpg'),
(1, '7,80 руб.', 'https://eda.yandex/images/3595381/7e91566ce3debd21fcf41fb95d990c08-216x188.jpg', 'Чикен Классик', '190 г', 'https://eda.yandex/images/3569651/7b38925111a4e7f63d5ff7b86eb50177-1100x825.jpg'),
(1, '7,30 руб.', 'https://eda.yandex/images/3506804/7ebd0fd5d9767db6f95935015233bd92-216x188.jpg', 'Двойной чизбургер', '164 г', 'https://eda.yandex/images/3569651/7b38925111a4e7f63d5ff7b86eb50177-1100x825.jpg'),
(1, '8,90 руб.', 'https://eda.yandex/images/3528150/be961d1405a5a3f52a40c6bc59f3027e-216x188.jpg', 'Чикен Фреш Де Люкс', '244 г', 'https://eda.yandex/images/3569651/7b38925111a4e7f63d5ff7b86eb50177-1100x825.jpg'),
(1, '4,70 руб.', 'https://eda.yandex/images/3541746/ac489d30043aa793d9a7245b3496c0a8-216x188.jpg', 'Тейсти Чикен Гриль', '167 г', 'https://eda.yandex/images/3569651/7b38925111a4e7f63d5ff7b86eb50177-1100x825.jpg'),
(1, '4,70 руб.', 'https://eda.yandex/images/3772784/a052d2b784d493d7b45521fa9684a8b9-216x188.jpg', 'Чикен Гриль', '161 г', 'https://eda.yandex/images/3569651/7b38925111a4e7f63d5ff7b86eb50177-1100x825.jpg'),
(1, '3,70 руб.', 'https://eda.yandex/images/3491582/74d3b39404ec813c5d57a53e9d21f12c-216x188.jpg', 'Чикенбургер', '130 г', 'https://eda.yandex/images/3569651/7b38925111a4e7f63d5ff7b86eb50177-1100x825.jpg'),
(1, '3,70 руб.', 'https://eda.yandex/images/3106738/98b35b820b9437e7ff02a44ab0e0a040-216x188.jpg', 'Чизбургер', '112 г', 'https://eda.yandex/images/3569651/7b38925111a4e7f63d5ff7b86eb50177-1100x825.jpg'),
(1, '3,30 руб.', 'https://eda.yandex/images/3529908/15bb8f995832f709d5b3c64e372fa7ac-216x188.jpg', 'Гамбургер', '98 г', 'https://eda.yandex/images/3569651/7b38925111a4e7f63d5ff7b86eb50177-1100x825.jpg'),
(1, '4,20 руб.', 'https://eda.yandex/images/3790679/a404610a9c098bba63d98abf42354fa9-216x188.jpg', 'Тост с ветчиной', '96 г', 'https://eda.yandex/images/3569651/7b38925111a4e7f63d5ff7b86eb50177-1100x825.jpg'),
(1, '3,40 руб.', 'https://eda.yandex/images/2783965/aded9c92930813628b219f712f514fef-216x188.jpg', 'Тост с сыром', '76 г', 'https://eda.yandex/images/3569651/7b38925111a4e7f63d5ff7b86eb50177-1100x825.jpg'),
(1, '10,20 руб.', 'https://eda.yandex/images/3529908/b1e2e875851d66ccb657c315d3ff5eb5-216x188.jpg', 'Биф Тейсти Ролл', '244 г', 'https://eda.yandex/images/3569651/7b38925111a4e7f63d5ff7b86eb50177-1100x825.jpg'),
(1, '9,20 руб.', 'https://eda.yandex/images/2415806/08e193ed63276f82ea7086501f95b2d2-216x188.jpg', 'Цезарь Ролл', '201 г', 'https://eda.yandex/images/3569651/7b38925111a4e7f63d5ff7b86eb50177-1100x825.jpg'),
(1, '7 руб.', 'https://eda.yandex/images/3525402/7392313623937be9a5116a6c54cbff1c-216x188.jpg', 'Наггетсы 7', '105 г', 'https://eda.yandex/images/3569651/7b38925111a4e7f63d5ff7b86eb50177-1100x825.jpg'),
(1, '9,20 руб.', 'https://eda.yandex/images/3749380/825429996e913a4d7f83e4b1d770955f-216x188.jpg', 'Наггетсы 10', '150 г', 'https://eda.yandex/images/3569651/7b38925111a4e7f63d5ff7b86eb50177-1100x825.jpg'),
(1, '15,60 руб.', 'https://eda.yandex/images/3490335/752507d27441d261832e4f7a7c296a62-216x188.jpg', 'Наггетсы 20', '300 г', 'https://eda.yandex/images/3569651/7b38925111a4e7f63d5ff7b86eb50177-1100x825.jpg'),
(1, '5,90 руб.', 'https://eda.yandex/images/3595513/8f2a0b47bf5a30f110070dc3458fd8e3-216x188.jpg', 'Стрипсы 3 шт', '107 г', 'https://eda.yandex/images/3569651/7b38925111a4e7f63d5ff7b86eb50177-1100x825.jpg'),
(1, '8,30 руб.', 'https://eda.yandex/images/3541746/cdab3d740a7551cd6a7bfd97527cd31f-216x188.jpg', 'Стрипсы 5 шт', '178 г', 'https://eda.yandex/images/3569651/7b38925111a4e7f63d5ff7b86eb50177-1100x825.jpg'),
(1, '10,50 руб.', 'https://eda.yandex/images/3808326/b2fad20a70b6589e3ec76eaae4976eb1-216x188.jpg', 'Стрипсы 7 шт', '249 г', 'https://eda.yandex/images/3569651/7b38925111a4e7f63d5ff7b86eb50177-1100x825.jpg'),
(1, '5 руб.', 'https://eda.yandex/images/3525402/7392313623937be9a5116a6c54cbff1c-216x188.jpg', 'Наггетсы 5', '75 г', 'https://eda.yandex/images/3569651/7b38925111a4e7f63d5ff7b86eb50177-1100x825.jpg'),
(1, '18,50 руб.', 'https://eda.yandex/images/3770794/6e010b4302a1263b7def5689dd939ee2-216x188.jpg', 'Большой Снэк-бокс', '644 г', 'https://eda.yandex/images/3569651/7b38925111a4e7f63d5ff7b86eb50177-1100x825.jpg'),
(1, '10,40 руб.', 'https://eda.yandex/images/3772784/b78a37c6b05d1b7b6d2e80522280b992-216x188.jpg', 'Снэк-бокс', '322 г', 'https://eda.yandex/images/3569651/7b38925111a4e7f63d5ff7b86eb50177-1100x825.jpg'),
(1, '5,70 руб.', 'https://eda.yandex/images/3806023/eba268c065b40aa8fd2e7714869dce10-216x188.jpg', 'Куриные крылышки 3шт', '158 г', 'https://eda.yandex/images/3569651/7b38925111a4e7f63d5ff7b86eb50177-1100x825.jpg'),
(1, '9 руб.', 'https://eda.yandex/images/3420935/7b8f7e932a030dae9cb12fe291dc3048-216x188.jpg', 'Куриные крылышки 5шт', '263 г', 'https://eda.yandex/images/3569651/7b38925111a4e7f63d5ff7b86eb50177-1100x825.jpg'),
(1, '11,30 руб.', 'https://eda.yandex/images/3735503/6eb5ca6183f359134cbe8279c8e2ea5c-216x188.jpg', 'Куриные крылышки 7шт', '368 г', 'https://eda.yandex/images/3569651/7b38925111a4e7f63d5ff7b86eb50177-1100x825.jpg'),
(2, '43 руб.', 'https://eda.yandex/images/3805363/93506d24dca981a50381b85bd47f9c5c-216x188.jpg', 'Баскет S сет', '1,874 кг', 'https://eda.yandex/images/3772784/363315778e80282c639d899dfc8819e4-1100x825.jpg'),
(2, '39 руб.', 'https://eda.yandex/images/3435765/8c70721538bf596c4a9853691cfad29a-216x188.jpg', 'Твистер де Люкс сет', '1,855 кг', 'https://eda.yandex/images/3772784/363315778e80282c639d899dfc8819e4-1100x825.jpg'),
(2, '27 руб.', 'https://eda.yandex/images/3580810/b25a62433ab28688df10bde7dd83d19d-216x188.jpg', 'Семейное комбо NEW', '993 г', 'https://eda.yandex/images/3772784/363315778e80282c639d899dfc8819e4-1100x825.jpg'),
(2, '15,90 руб.', 'https://eda.yandex/images/3531870/60d27c4512363a4e4849a5c207732c92-216x188.jpg', 'Сандерс комбо', '745 г', 'https://eda.yandex/images/3772784/363315778e80282c639d899dfc8819e4-1100x825.jpg'),
(2, '16,90 руб.', 'https://eda.yandex/images/2353725/bfb0d0a09e56a87fa9c96fb8a6a4372a-216x188.jpg', 'Сандерс Де Люкс комбо', '773 г', 'https://eda.yandex/images/3772784/363315778e80282c639d899dfc8819e4-1100x825.jpg'),
(2, '19,40 руб.', 'https://eda.yandex/images/2796335/9117e2c75faa6ab1d39bbad2cf4a8840-216x188.jpg', 'Биг Сандерс комбо', '922 г', 'https://eda.yandex/images/3772784/363315778e80282c639d899dfc8819e4-1100x825.jpg'),
(2, '40 руб.', 'https://eda.yandex/images/3595156/59432ab5e6d984dc6eef2fc08c17bd2f-216x188.jpg', 'Фреш сет', '', 'https://eda.yandex/images/3772784/363315778e80282c639d899dfc8819e4-1100x825.jpg'),
(2, '72 руб.', 'https://eda.yandex/images/3667559/912dff80231914a48a7dc558aa716856-216x188.jpg', 'Шеф сет', '', 'https://eda.yandex/images/3772784/363315778e80282c639d899dfc8819e4-1100x825.jpg'),
(2, '36 руб.', 'https://eda.yandex/images/3798638/11c7357a1c417bb9fd52bea51b3c24a0-216x188.jpg', 'Сандерс Бокс сет', '1,967 кг', 'https://eda.yandex/images/3772784/363315778e80282c639d899dfc8819e4-1100x825.jpg'),
(2, '26,60 руб.', 'https://eda.yandex/images/2796335/2817ca1abe7098c336032f56cbd0853a-216x188.jpg', 'Баскет M 18 крыльев и 3 соуса', '450 г', 'https://eda.yandex/images/3772784/363315778e80282c639d899dfc8819e4-1100x825.jpg'),
(2, '32,80 руб.', 'https://eda.yandex/images/3595156/a3a178a23a25ddb84e6698db3b62fb83-216x188.jpg', 'Баскет L 26 крыльев и 3 соуса', '650 г', 'https://eda.yandex/images/3772784/363315778e80282c639d899dfc8819e4-1100x825.jpg'),
(2, '23,70 руб.', 'https://eda.yandex/images/3506804/e2ff0ea36039f53d3e8bfadd63c3a702-216x188.jpg', 'Баскет Дуэт Оригинальный и 3 соуса', '504 г', 'https://eda.yandex/images/3772784/363315778e80282c639d899dfc8819e4-1100x825.jpg'),
(2, '23,70 руб.', 'https://eda.yandex/images/3506804/e2ff0ea36039f53d3e8bfadd63c3a702-216x188.jpg', 'Баскет Дуэт Острый и 3 соуса', '492 г', 'https://eda.yandex/images/3772784/363315778e80282c639d899dfc8819e4-1100x825.jpg'),
(2, '18,30 руб.', 'https://eda.yandex/images/3518584/9a780cad3c35ec21deec06df130c340c-216x188.jpg', 'Баскет S 12 крыльев', '300 г', 'https://eda.yandex/images/3772784/363315778e80282c639d899dfc8819e4-1100x825.jpg'),
(2, '11 руб.', 'https://eda.yandex/images/3490902/1c9d8faf4146072e91556cd18dabeaa2-216x188.jpg', 'Сандерс Бокс', '313 г', 'https://eda.yandex/images/3772784/363315778e80282c639d899dfc8819e4-1100x825.jpg'),
(2, '22 руб.', 'https://eda.yandex/images/2796335/f6c81a6c0d79534c575f8127a19e6f4c-216x188.jpeg', 'Оригинальный Баскет', '585 г', 'https://eda.yandex/images/3772784/363315778e80282c639d899dfc8819e4-1100x825.jpg'),
(2, '10,20 руб.', 'https://eda.yandex/images/3378693/48c7c976064a464002437c7947ebcfda-216x188.jpeg', 'Микс Бокс', '170 г', 'https://eda.yandex/images/3772784/363315778e80282c639d899dfc8819e4-1100x825.jpg'),
(2, '8,60 руб.', 'https://eda.yandex/images/3513074/449691d690bc64afd9eb3e76d1e46680-216x188.jpeg', 'Наггетс Бокс', '180 г', 'https://eda.yandex/images/3772784/363315778e80282c639d899dfc8819e4-1100x825.jpg'),
(2, '9,90 руб.', 'https://eda.yandex/images/3502800/f79b32e36f3ab08812d4298dcca34c2c-216x188.jpeg', 'Бургер Сандерс оригинальный', '212 г', 'https://eda.yandex/images/3772784/363315778e80282c639d899dfc8819e4-1100x825.jpg'),
(2, '9,90 руб.', 'https://eda.yandex/images/3502800/f79b32e36f3ab08812d4298dcca34c2c-216x188.jpeg', 'Бургер Сандерс острый', '209 г', 'https://eda.yandex/images/3772784/363315778e80282c639d899dfc8819e4-1100x825.jpg'),
(2, '10,90 руб.', 'https://eda.yandex/images/3528285/88376dab997a3e895b3ae53303a48517-216x188.jpeg', 'Бургер Сандерс Де люкс оригинальный', '240 г', 'https://eda.yandex/images/3772784/363315778e80282c639d899dfc8819e4-1100x825.jpg'),
(2, '10,90 руб.', 'https://eda.yandex/images/3528285/88376dab997a3e895b3ae53303a48517-216x188.jpeg', 'Бургер Сандерс Де люкс острый', '237 г', 'https://eda.yandex/images/3772784/363315778e80282c639d899dfc8819e4-1100x825.jpg'),
(2, '12,90 руб.', 'https://eda.yandex/images/3770794/4785386f15b58b395c86d97945938275-216x188.jpeg', 'Сандерс БИГ бургер оригинальный', '305 г', 'https://eda.yandex/images/3772784/363315778e80282c639d899dfc8819e4-1100x825.jpg'),
(2, '12,90 руб.', 'https://eda.yandex/images/3595381/1e9ac4e7056d1bf289ec926856c677f4-216x188.jpeg', 'Бургер БИГ Сандерс Острый', '272 г', 'https://eda.yandex/images/3772784/363315778e80282c639d899dfc8819e4-1100x825.jpg'),
(2, '6,50 руб.', 'https://eda.yandex/images/2783965/89ae15007f7bfd0cb1ba175790d4d2e9-216x188.jpeg', 'Чизбургер Де Люкс', '175 г', 'https://eda.yandex/images/3772784/363315778e80282c639d899dfc8819e4-1100x825.jpg'),
(2, '7,90 руб.', 'https://eda.yandex/images/3702558/1babc6a690ca49c893efe0c0482ab690-216x188.jpg', 'Шефбургер Де Люкс острый', '201 г', 'https://eda.yandex/images/3772784/363315778e80282c639d899dfc8819e4-1100x825.jpg'),
(2, '5,50 руб.', 'https://eda.yandex/images/3682162/e97be9a880ed94a5ef8e9011f51f199e-216x188.jpeg', 'Шефбургер Джуниор Оригинальный', '174 г', 'https://eda.yandex/images/3772784/363315778e80282c639d899dfc8819e4-1100x825.jpg'),
(2, '5,50 руб.', 'https://eda.yandex/images/3709189/b01f20dcd94255100b5bdb6d6afde2db-216x188.jpeg', 'Шефбургер Джуниор Острый', '161 г', 'https://eda.yandex/images/3772784/363315778e80282c639d899dfc8819e4-1100x825.jpg'),
(2, '6,90 руб.', 'https://eda.yandex/images/3595513/b1210926df73a6bb703ac6da739eff7d-216x188.jpg', 'Шефбургер Оригинальный', '163 г', 'https://eda.yandex/images/3772784/363315778e80282c639d899dfc8819e4-1100x825.jpg'),
(2, '6,90 руб.', 'https://eda.yandex/images/3472725/900c2e9d0b80822a827d32666a2546bc-216x188.jpeg', 'Шефбургер Острый', '156 г', 'https://eda.yandex/images/3772784/363315778e80282c639d899dfc8819e4-1100x825.jpg'),
(2, '7,90 руб.', 'https://eda.yandex/images/3377781/5c8ea6851b9ccc5d2ae84cdd78837d78-216x188.jpeg', 'Шефбургер Де Люкс', '182 г', 'https://eda.yandex/images/3772784/363315778e80282c639d899dfc8819e4-1100x825.jpg'),
(2, '9,40 руб.', 'https://eda.yandex/images/3709189/43cb4f4762ac026ac70da611e91434a9-216x188.jpeg', 'Твистер де Люкс Оригинальный', '203 г', 'https://eda.yandex/images/3772784/363315778e80282c639d899dfc8819e4-1100x825.jpg'),
(2, '9,40 руб.', 'https://eda.yandex/images/3735503/d9dc2551986ec669a6d23eeec5b47bac-216x188.jpeg', 'Твистер де Люкс Острый', '203 г', 'https://eda.yandex/images/3772784/363315778e80282c639d899dfc8819e4-1100x825.jpg'),
(2, '10,90 руб.', 'https://eda.yandex/images/1380298/0676406723a673a33ac6f6377161b351-216x188.jpeg', 'Боксмастер Оригинальный', '242 г', 'https://eda.yandex/images/3772784/363315778e80282c639d899dfc8819e4-1100x825.jpg'),
(2, '10,90 руб.', 'https://eda.yandex/images/1380298/0676406723a673a33ac6f6377161b351-216x188.jpeg', 'Боксмастер Острый', '242 г', 'https://eda.yandex/images/3772784/363315778e80282c639d899dfc8819e4-1100x825.jpg'),
(2, '8,90 руб.', 'https://eda.yandex/images/3518584/22f967ffb2934101c67cd037881cc200-216x188.jpeg', 'Твистер Оригинальный', '193 г', 'https://eda.yandex/images/3772784/363315778e80282c639d899dfc8819e4-1100x825.jpg'),
(2, '8,90 руб.', 'https://eda.yandex/images/3518584/22f967ffb2934101c67cd037881cc200-216x188.jpeg', 'Твистер Острый', '193 г', 'https://eda.yandex/images/3772784/363315778e80282c639d899dfc8819e4-1100x825.jpg'),
(2, '5,10 руб.', 'https://eda.yandex/images/2796335/388ebbb2bd889778f81a4a42bf5773f4-216x188.jpeg', 'Твистер Джуниор', '156 г', 'https://eda.yandex/images/3772784/363315778e80282c639d899dfc8819e4-1100x825.jpg'),
(2, '6,70 руб.', 'https://eda.yandex/images/2806911/093dc276c0e57564dbcb1a853f9c2b0f-216x188.jpg', 'Две ножки Оригинальные', '152 г', 'https://eda.yandex/images/3772784/363315778e80282c639d899dfc8819e4-1100x825.jpg'),
(2, '6,70 руб.', 'https://eda.yandex/images/2806911/093dc276c0e57564dbcb1a853f9c2b0f-216x188.jpg', 'Две ножки Острые', '168 г', 'https://eda.yandex/images/3772784/363315778e80282c639d899dfc8819e4-1100x825.jpg'),
(2, '8,70 руб.', 'https://eda.yandex/images/3512182/d96cfff1a84900d07d3827f066883534-216x188.jpg', 'Три ножки Оригинальные', '228 г', 'https://eda.yandex/images/3772784/363315778e80282c639d899dfc8819e4-1100x825.jpg'),
(2, '8,70 руб.', 'https://eda.yandex/images/3512182/d96cfff1a84900d07d3827f066883534-216x188.jpg', 'Три ножки Острые', '252 г', 'https://eda.yandex/images/3772784/363315778e80282c639d899dfc8819e4-1100x825.jpg'),
(2, '11,20 руб.', 'https://eda.yandex/images/3378693/7d6bd1920e31c2c5d1eeb30d73aedab3-216x188.jpg', 'Четыре ножки Оригинальные', '304 г', 'https://eda.yandex/images/3772784/363315778e80282c639d899dfc8819e4-1100x825.jpg'),
(3, '11,40 руб.', 'https://eda.yandex/images/2415806/775d36305379e3ecb5f3d6fbd6d9464e-216x188.jpeg', 'Пита Чесночная', '400 г', 'https://eda.yandex/images/3106738/564a2a481c3719fd8404f7e671375cc7-1100x825.jpg'),
(3, '11,40 руб.', 'https://eda.yandex/images/3439028/b9731904ba1ba4e6cf5631619bce29c5-216x188.jpeg', 'Пита карри', '400 г', 'https://eda.yandex/images/3106738/564a2a481c3719fd8404f7e671375cc7-1100x825.jpg'),
(3, '12,60 руб.', 'https://eda.yandex/images/3805363/1ee5ed4ee4da4c4650996b883d31f755-216x188.jpeg', 'Пита барбекю', '400 г', 'https://eda.yandex/images/3106738/564a2a481c3719fd8404f7e671375cc7-1100x825.jpg'),
(3, '12,60 руб.', 'https://eda.yandex/images/3583740/aa2b7222592a4759eaa3355e98911d5d-216x188.jpeg', 'Пита омлет чесночная', '400 г', 'https://eda.yandex/images/3106738/564a2a481c3719fd8404f7e671375cc7-1100x825.jpg'),
(3, '12,60 руб.', 'https://eda.yandex/images/1380298/b82b45aa95b6370f486cf94eb7e731f8-216x188.jpeg', 'Пита чили чесночная', '400 г', 'https://eda.yandex/images/3106738/564a2a481c3719fd8404f7e671375cc7-1100x825.jpg'),
(3, '12,60 руб.', 'https://eda.yandex/images/2794391/13b5aeedd67e4cae89babcada0130ea8-216x188.jpeg', 'Пита чили карри', '400 г', 'https://eda.yandex/images/3106738/564a2a481c3719fd8404f7e671375cc7-1100x825.jpg'),
(3, '12,60 руб.', 'https://eda.yandex/images/3593277/6f51663134374dcea7bc9ff02747ffaa-216x188.jpeg', 'Пита омлет карри', '400 г', 'https://eda.yandex/images/3106738/564a2a481c3719fd8404f7e671375cc7-1100x825.jpg'),
(3, '5 руб.', 'https://eda.yandex/images/3439028/a9a3fd9411ec437195708936772a8e82-216x188.jpeg', 'Картофель фри', '120 г', 'https://eda.yandex/images/3106738/564a2a481c3719fd8404f7e671375cc7-1100x825.jpg'),
(3, '12 руб.', 'https://eda.yandex/images/3813301/d310db20012cb64ec99f9b9a4cf993b1-216x188.jpeg', 'Грильбургер Xl фирменный', '330 г', 'https://eda.yandex/images/3106738/564a2a481c3719fd8404f7e671375cc7-1100x825.jpg'),
(3, '13,20 руб.', 'https://eda.yandex/images/3439028/12005653c73e19bb57e666f5da905cc0-216x188.jpeg', 'Грильбургер Xl барбекю', '330 г', 'https://eda.yandex/images/3106738/564a2a481c3719fd8404f7e671375cc7-1100x825.jpg'),
(3, '12,60 руб.', 'https://eda.yandex/images/3595513/33ec8e6a5a4fc490675d00b08a672837-216x188.jpeg', 'Грильбургер Xl чили', '330 г', 'https://eda.yandex/images/3106738/564a2a481c3719fd8404f7e671375cc7-1100x825.jpg'),
(3, '12,60 руб.', 'https://eda.yandex/images/3813301/d310db20012cb64ec99f9b9a4cf993b1-216x188.jpeg', 'Грильбургер Xl омлет', '300 г', 'https://eda.yandex/images/3106738/564a2a481c3719fd8404f7e671375cc7-1100x825.jpg'),
(3, '13,20 руб.', 'https://eda.yandex/images/3568095/57daaeff0dae4c97b00ba4e05e279139-216x188.jpeg', 'Грильбургер Xl тейсти', '330 г', 'https://eda.yandex/images/3106738/564a2a481c3719fd8404f7e671375cc7-1100x825.jpg'),
(3, '12,60 руб.', 'https://eda.yandex/images/3529908/6327ce3e2acf43ac8af553c5214944b0-216x188.jpeg', 'Грильбургер Xl кунжутный', '330 г', 'https://eda.yandex/images/3106738/564a2a481c3719fd8404f7e671375cc7-1100x825.jpg'),
(3, '13,20 руб.', 'https://eda.yandex/images/3518584/2dba0cabe7e77d7f003928bdf2c53bfa-216x188.jpeg', 'Гриль-кебаб Чесночный', '600 г', 'https://eda.yandex/images/3106738/564a2a481c3719fd8404f7e671375cc7-1100x825.jpg'),
(3, '9,60 руб.', 'https://eda.yandex/images/3507668/0b74b99978501991e0c207a2d0729f5a-216x188.jpeg', 'Гриль-кебаб Карри', '450 г', 'https://eda.yandex/images/3106738/564a2a481c3719fd8404f7e671375cc7-1100x825.jpg'),
(3, '13,20 руб.', 'https://eda.yandex/images/3507668/8f78ab7a5f3c688cf12267c5b46de87c-216x188.jpeg', 'Гриль-кебаб Карри', '600 г', 'https://eda.yandex/images/3106738/564a2a481c3719fd8404f7e671375cc7-1100x825.jpg'),
(3, '10,80 руб.', 'https://eda.yandex/images/3507668/8f78ab7a5f3c688cf12267c5b46de87c-216x188.jpeg', 'Гриль-кебаб премиум чесночный', '450 г', 'https://eda.yandex/images/3106738/564a2a481c3719fd8404f7e671375cc7-1100x825.jpg'),
(3, '14,40 руб.', 'https://eda.yandex/images/3507668/8f78ab7a5f3c688cf12267c5b46de87c-216x188.jpeg', 'Гриль-кебаб кунжутный', '600 г', 'https://eda.yandex/images/3106738/564a2a481c3719fd8404f7e671375cc7-1100x825.jpg'),
(3, '10,80 руб.', 'https://eda.yandex/images/3512182/8f78ab7a5f3c688cf12267c5b46de87c-216x188.jpeg', 'Гриль-кебаб Барбекю', '450 г', 'https://eda.yandex/images/3106738/564a2a481c3719fd8404f7e671375cc7-1100x825.jpg'),
(3, '14,40 руб.', 'https://eda.yandex/images/3507668/8f78ab7a5f3c688cf12267c5b46de87c-216x188.jpeg', 'Гриль-кебаб Барбекю', '600 г', 'https://eda.yandex/images/3106738/564a2a481c3719fd8404f7e671375cc7-1100x825.jpg'),
(3, '10,80 руб.', 'https://eda.yandex/images/3507668/8f78ab7a5f3c688cf12267c5b46de87c-216x188.jpeg', 'Гриль-кебаб Чили чесночный', '450 г', 'https://eda.yandex/images/3106738/564a2a481c3719fd8404f7e671375cc7-1100x825.jpg'),
(3, '14,40 руб.', 'https://eda.yandex/images/3507668/8f78ab7a5f3c688cf12267c5b46de87c-216x188.jpeg', 'Гриль-кебаб Чили чесночный', '600 г', 'https://eda.yandex/images/3106738/564a2a481c3719fd8404f7e671375cc7-1100x825.jpg'),
(3, '10,80 руб.', 'https://eda.yandex/images/3507668/8f78ab7a5f3c688cf12267c5b46de87c-216x188.jpeg', 'Гриль-кебаб Сырный', '450 г', 'https://eda.yandex/images/3106738/564a2a481c3719fd8404f7e671375cc7-1100x825.jpg'),
(3, '14,40 руб.', 'https://eda.yandex/images/3507668/8f78ab7a5f3c688cf12267c5b46de87c-216x188.jpeg', 'Гриль-кебаб Сырный', '600 г', 'https://eda.yandex/images/3106738/564a2a481c3719fd8404f7e671375cc7-1100x825.jpg'),
(3, '10,80 руб.', 'https://eda.yandex/images/3507668/8f78ab7a5f3c688cf12267c5b46de87c-216x188.jpeg', 'Гриль-кебаб Грибной', '450 г', 'https://eda.yandex/images/3106738/564a2a481c3719fd8404f7e671375cc7-1100x825.jpg'),
(3, '8,40 руб.', 'https://eda.yandex/images/3507668/8f78ab7a5f3c688cf12267c5b46de87c-216x188.jpeg', 'Гриль-кебаб Вегетарианский', '400 г', 'https://eda.yandex/images/3106738/564a2a481c3719fd8404f7e671375cc7-1100x825.jpg'),
(3, '7,20 руб.', 'https://eda.yandex/images/3770794/5527c5052fb536317840142803b643e0-216x188.jpeg', 'Гриль-кебаб Гриль-дог', '300 г', 'https://eda.yandex/images/3106738/564a2a481c3719fd8404f7e671375cc7-1100x825.jpg'),
(3, '9,60 руб.', 'https://eda.yandex/images/3770794/5527c5052fb536317840142803b643e0-216x188.jpeg', 'Гриль-кебаб Гриль-дог', '350 г', 'https://eda.yandex/images/3106738/564a2a481c3719fd8404f7e671375cc7-1100x825.jpg'),
(3, '9,60 руб.', 'https://eda.yandex/images/3507668/8f78ab7a5f3c688cf12267c5b46de87c-216x188.jpeg', 'Гриль-кебаб чесночный', '450 г', 'https://eda.yandex/images/3106738/564a2a481c3719fd8404f7e671375cc7-1100x825.jpg'),
(3, '14,40 руб.', 'https://eda.yandex/images/3547279/60a47ad3e87844c98b6ab3ee4d09fc9b-216x188.jpeg', 'Гриль-кебаб премиум карри', '600 г', 'https://eda.yandex/images/3106738/564a2a481c3719fd8404f7e671375cc7-1100x825.jpg'),
(3, '10,80 руб.', 'https://eda.yandex/images/3547279/ab0a85d1a8a144ea8204806c4701c08b-216x188.jpeg', 'Гриль кебаб премиум карри', '450 г', 'https://eda.yandex/images/3106738/564a2a481c3719fd8404f7e671375cc7-1100x825.jpg'),
(3, '10,80 руб.', 'https://eda.yandex/images/2794391/ba6a271c58f84b9e8e28e61877344d31-216x188.jpeg', 'Гриль-кебаб тейсти', '450 г', 'https://eda.yandex/images/3106738/564a2a481c3719fd8404f7e671375cc7-1100x825.jpg'),
(3, '10,80 руб.', 'https://eda.yandex/images/3435765/6b9d99e6191e4472a163a9496665fd9b-216x188.jpeg', 'Гриль-кебаб Чили карри', '450 г', 'https://eda.yandex/images/3106738/564a2a481c3719fd8404f7e671375cc7-1100x825.jpg'),
(3, '14,40 руб.', 'https://eda.yandex/images/3709189/b430ad04f559406bacc38488135e5b84-216x188.jpeg', 'Гриль-кебаб Чили карри', '600 г', 'https://eda.yandex/images/3106738/564a2a481c3719fd8404f7e671375cc7-1100x825.jpg'),
(3, '10,80 руб.', 'https://eda.yandex/images/3502800/e8063e758dc4413e94083819ff6748d0-216x188.jpeg', 'Гриль-кебаб Кунжутный', '450 г', 'https://eda.yandex/images/3106738/564a2a481c3719fd8404f7e671375cc7-1100x825.jpg');
INSERT INTO `products` (`id`, `price`, `picture`, `product_title`, `weight`, `title_picture`) VALUES
(3, '14,40 руб.', 'https://eda.yandex/images/3507668/8f78ab7a5f3c688cf12267c5b46de87c-216x188.jpeg', 'Гриль-кебаб Грибной', '600 г', 'https://eda.yandex/images/3106738/564a2a481c3719fd8404f7e671375cc7-1100x825.jpg'),
(3, '14,40 руб.', 'https://eda.yandex/images/3531870/03ea7b9e014b4f389ee6bbbf36170792-216x188.jpeg', 'Гриль-кебаб премиум чесночный соус', '600 г', 'https://eda.yandex/images/3106738/564a2a481c3719fd8404f7e671375cc7-1100x825.jpg'),
(4, '20,99 руб.', 'https://eda.yandex/images/3507668/1b6527f0e9c20e57fe08da18348dcab2-216x188.png', 'Тоскана', '385 г', 'https://eda.yandex/images/3772784/82e0bff0f851056f517d5f34b29dcb40-1100x825.jpeg'),
(4, '20,99 руб.', 'https://eda.yandex/images/3581687/be28f378d651a8712bca578fcc28faec-216x188.png', '5 Сыров', '345 г', 'https://eda.yandex/images/3772784/82e0bff0f851056f517d5f34b29dcb40-1100x825.jpeg'),
(4, '18,49 руб.', 'https://eda.yandex/images/3439767/0c660668e8aede30d2f8f5579bf0d58e-216x188.png', 'Спайси', '380 г', 'https://eda.yandex/images/3772784/82e0bff0f851056f517d5f34b29dcb40-1100x825.jpeg'),
(4, '18,49 руб.', 'https://eda.yandex/images/3805363/0930e2ac575d70b59d976313bc2895fb-216x188.png', 'Цыпленок Доминатор', '400 г', 'https://eda.yandex/images/3772784/82e0bff0f851056f517d5f34b29dcb40-1100x825.jpeg'),
(4, '20,99 руб.', 'https://eda.yandex/images/3725642/57fcec13db015c47fe027cc4533286ef-216x188.png', 'Креветки с ананасами', '395 г', 'https://eda.yandex/images/3772784/82e0bff0f851056f517d5f34b29dcb40-1100x825.jpeg'),
(4, '18,49 руб.', 'https://eda.yandex/images/3439028/341729069e6b6e7bf4ef226120456f0c-216x188.png', 'Гавайская', '405 г', 'https://eda.yandex/images/3772784/82e0bff0f851056f517d5f34b29dcb40-1100x825.jpeg'),
(4, '20,99 руб.', 'https://eda.yandex/images/3805363/fa68a9cd987819a38a04a8199d8a8c08-216x188.png', 'Чикен Карри', '425 г', 'https://eda.yandex/images/3772784/82e0bff0f851056f517d5f34b29dcb40-1100x825.jpeg'),
(4, '22,99 руб.', 'https://eda.yandex/images/3770794/a1862fb5adab0625d1d54b2fc06191b7-216x188.png', 'Доминос Фирменная', '455 г', 'https://eda.yandex/images/3772784/82e0bff0f851056f517d5f34b29dcb40-1100x825.jpeg'),
(4, '22,99 руб.', 'https://eda.yandex/images/3595513/a2822167c3b3eb419201608ef0b223fd-216x188.png', 'Мюнхенская', '390 г', 'https://eda.yandex/images/3772784/82e0bff0f851056f517d5f34b29dcb40-1100x825.jpeg'),
(4, '18,49 руб.', 'https://eda.yandex/images/3596693/a76888c6b1bef2ffbdb1914d91ad7921-216x188.png', 'Говядина BURGER', '405 г', 'https://eda.yandex/images/3772784/82e0bff0f851056f517d5f34b29dcb40-1100x825.jpeg'),
(4, '22,99 руб.', 'https://eda.yandex/images/3595381/2ae6d33c61764793e2791f89d477f87d-216x188.png', 'Экстраваганzzа', '450 г', 'https://eda.yandex/images/3772784/82e0bff0f851056f517d5f34b29dcb40-1100x825.jpeg'),
(4, '20,99 руб.', 'https://eda.yandex/images/3784951/d3776e9a2d224cb2a6256988d9a6bbde-216x188.png', 'Супер Пепперони', '410 г', 'https://eda.yandex/images/3772784/82e0bff0f851056f517d5f34b29dcb40-1100x825.jpeg'),
(4, '18,49 руб.', 'https://eda.yandex/images/3106738/497c080ca33ae072fe6b294c5cc3e872-216x188.png', 'Пепперони Блюз', '350 г', 'https://eda.yandex/images/3772784/82e0bff0f851056f517d5f34b29dcb40-1100x825.jpeg'),
(4, '18,49 руб.', 'https://eda.yandex/images/3337779/4b04880823174ac0ec0a4741f007a2dd-216x188.png', 'Карбонара', '360 г', 'https://eda.yandex/images/3772784/82e0bff0f851056f517d5f34b29dcb40-1100x825.jpeg'),
(4, '18,49 руб.', 'https://eda.yandex/images/2415806/639fdce0d9d300a8cb839e75aeeddadf-216x188.png', 'Барбекю', '385 г', 'https://eda.yandex/images/3772784/82e0bff0f851056f517d5f34b29dcb40-1100x825.jpeg'),
(4, '13,99 руб.', 'https://eda.yandex/images/3529621/41f02a779803f167b75759cb1bb91348-216x188.png', 'Баварская', '380 г', 'https://eda.yandex/images/3772784/82e0bff0f851056f517d5f34b29dcb40-1100x825.jpeg'),
(4, '20,99 руб.', 'https://eda.yandex/images/3454897/bc9c3bffc42bdb2cf127ee723c14065d-216x188.png', 'Гипнотика', '410 г', 'https://eda.yandex/images/3772784/82e0bff0f851056f517d5f34b29dcb40-1100x825.jpeg'),
(4, '13,99 руб.', 'https://eda.yandex/images/3702558/59916217704ce23c5854cc6b82ffc6ae-216x188.png', 'Фермерская', '385 г', 'https://eda.yandex/images/3772784/82e0bff0f851056f517d5f34b29dcb40-1100x825.jpeg'),
(4, '18,49 руб.', 'https://eda.yandex/images/3609085/4c218ae240251405790f6a42ec080448-216x188.png', 'Прованс', '380 г', 'https://eda.yandex/images/3772784/82e0bff0f851056f517d5f34b29dcb40-1100x825.jpeg'),
(4, '22,99 руб.', 'https://eda.yandex/images/3483997/f682e034fc11874c35f319e710a48332-216x188.png', 'Митzzа', '430 г', 'https://eda.yandex/images/3772784/82e0bff0f851056f517d5f34b29dcb40-1100x825.jpeg'),
(4, '8,99 руб.', 'https://eda.yandex/images/3813301/8c607c9945a72d134ca7a439c9cba731-216x188.png', 'Овощная', '380 г', 'https://eda.yandex/images/3772784/82e0bff0f851056f517d5f34b29dcb40-1100x825.jpeg'),
(4, '18,49 руб.', 'https://eda.yandex/images/3596693/d5872c89fc7b388cb9bbdbc6b4ff4021-216x188.png', 'Грибная с голубым сыром', '390 г', 'https://eda.yandex/images/3772784/82e0bff0f851056f517d5f34b29dcb40-1100x825.jpeg'),
(4, '18,49 руб.', 'https://eda.yandex/images/3490902/b152504e49db369f189aca751cb51844-216x188.png', 'Чеддерони', '385 г', 'https://eda.yandex/images/3772784/82e0bff0f851056f517d5f34b29dcb40-1100x825.jpeg'),
(4, '20,99 руб.', 'https://eda.yandex/images/3813301/333ba022ea7a14011d8f5b678886d827-216x188.png', 'Мит&Чиз', '390 г', 'https://eda.yandex/images/3772784/82e0bff0f851056f517d5f34b29dcb40-1100x825.jpeg'),
(4, '28,49 руб.', 'https://eda.yandex/images/3609085/7179a32a2a222b624f4aa3b20ff4a672-216x188.png', '4 Сезона', '425 г', 'https://eda.yandex/images/3772784/82e0bff0f851056f517d5f34b29dcb40-1100x825.jpeg'),
(4, '30,49 руб.', 'https://eda.yandex/images/3749380/8393688caad0b7b16e2bd717abc07c11-216x188.png', 'Пепперони Делюкс 100', '645 г', 'https://eda.yandex/images/3772784/82e0bff0f851056f517d5f34b29dcb40-1100x825.jpeg'),
(4, '20,99 руб.', 'https://eda.yandex/images/3595513/2652db4d0957531950245246c86dcb26-216x188.png', 'Хот Кебаб', '395 г', 'https://eda.yandex/images/3772784/82e0bff0f851056f517d5f34b29dcb40-1100x825.jpeg'),
(4, '20,99 руб.', 'https://eda.yandex/images/3806023/fb46bd221f50816f80fe3feca76df7fc-216x188.png', 'Кинг Кебаб', '410 г', 'https://eda.yandex/images/3772784/82e0bff0f851056f517d5f34b29dcb40-1100x825.jpeg'),
(4, '10,99 руб.', 'https://eda.yandex/images/3490902/a0407af0f52f76d29811f7a2749bd0ef-216x188.png', 'Sausage тортилья Италия', '235 г', 'https://eda.yandex/images/3772784/82e0bff0f851056f517d5f34b29dcb40-1100x825.jpeg'),
(4, '10,99 руб.', 'https://eda.yandex/images/3808326/2fdc138724bc38b5652a6c823574f904-216x188.png', 'Sausage тортилья Бавария', '240 г', 'https://eda.yandex/images/3772784/82e0bff0f851056f517d5f34b29dcb40-1100x825.jpeg'),
(4, '12,49 руб.', 'https://eda.yandex/images/3596693/3d46ca4a2b99ea5a3a725710346df04a-216x188.png', 'Крылышки острые', '195 г', 'https://eda.yandex/images/3772784/82e0bff0f851056f517d5f34b29dcb40-1100x825.jpeg'),
(4, '12,49 руб.', 'https://eda.yandex/images/3508859/49c62b098f487e88247618c40c57b215-216x188.png', 'Куриные Крылышки', '180 г', 'https://eda.yandex/images/3772784/82e0bff0f851056f517d5f34b29dcb40-1100x825.jpeg'),
(4, '12,49 руб.', 'https://eda.yandex/images/3583862/6dd7b89c501d78f11fc1423fb9389f62-216x188.png', 'Крылышки барбекю', '195 г', 'https://eda.yandex/images/3772784/82e0bff0f851056f517d5f34b29dcb40-1100x825.jpeg'),
(4, '14,49 руб.', 'https://eda.yandex/images/3512182/8c06ef9480ed76f3782fc7f2eb7160f1-216x188.png', 'Куриное филе', '190 г', 'https://eda.yandex/images/3772784/82e0bff0f851056f517d5f34b29dcb40-1100x825.jpeg'),
(4, '7,99 руб.', 'https://eda.yandex/images/3583862/5f9495b091344e53c94d53cc0402fc12-216x188.png', 'Картофельные Дольки', '195 г', 'https://eda.yandex/images/3772784/82e0bff0f851056f517d5f34b29dcb40-1100x825.jpeg'),
(4, '5,99 руб.', 'https://eda.yandex/images/2415806/4ad3dd1d9ae8b31bafda22a10851cfb1-216x188.png', 'Картофель Фри из печи', '120 г', 'https://eda.yandex/images/3772784/82e0bff0f851056f517d5f34b29dcb40-1100x825.jpeg'),
(4, '5,99 руб.', 'https://eda.yandex/images/3512826/847dc1d77558d2267528f7ff5541f94b-216x188.png', 'Драники', '96 г', 'https://eda.yandex/images/3772784/82e0bff0f851056f517d5f34b29dcb40-1100x825.jpeg'),
(4, '9,99 руб.', 'https://eda.yandex/images/3593277/5bb6d31505b5352f69c3f513f632e182-216x188.png', 'Хлебец с беконом и халапеньо', '415 г', 'https://eda.yandex/images/3772784/82e0bff0f851056f517d5f34b29dcb40-1100x825.jpeg'),
(4, '9,99 руб.', 'https://eda.yandex/images/3808326/27e1d78610b7ed0d7156b2664b325338-216x188.png', 'Хлебец с сырной начинкой', '375 г', 'https://eda.yandex/images/3772784/82e0bff0f851056f517d5f34b29dcb40-1100x825.jpeg'),
(4, '4,99 руб.', 'https://eda.yandex/images/3538649/6de3062627a8f2c20787bf1dde955b8f-216x188.png', 'Пармезан байтс', '165 г', 'https://eda.yandex/images/3772784/82e0bff0f851056f517d5f34b29dcb40-1100x825.jpeg'),
(4, '9,99 руб.', 'https://eda.yandex/images/3508185/0327355393263cbab41b57a5db34c97e-216x188.png', 'Хлебец со шпинатом и фетой', '395 г', 'https://eda.yandex/images/3772784/82e0bff0f851056f517d5f34b29dcb40-1100x825.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `id` int(11) NOT NULL,
  `picture` varchar(1000) DEFAULT NULL,
  `product_name` varchar(200) DEFAULT NULL,
  `rating` varchar(50) DEFAULT NULL,
  `reviews` varchar(50) DEFAULT NULL,
  `event` varchar(50) DEFAULT NULL,
  `delivery_time` varchar(50) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`id`, `picture`, `product_name`, `rating`, `reviews`, `event`, `delivery_time`, `category`) VALUES
(1, 'https://eda.yandex/images/3569651/7b38925111a4e7f63d5ff7b86eb50177-450x300.jpg', 'Mak.by', '4.9 Отлично', '(200+)', 'Бесплатная доставка', '25 – 35 мин', 'burgers'),
(2, 'https://eda.yandex/images/3772784/363315778e80282c639d899dfc8819e4-450x300.jpg', 'KFC', '5.0 Отлично', '(200+)', 'Бесплатная доставка', '20 – 30 мин', 'burgers'),
(3, 'https://eda.yandex/images/3106738/564a2a481c3719fd8404f7e671375cc7-450x300.jpg', 'Grill Kebab', '4.9 Отлично', '(200+)', 'Бесплатная доставка', '20 – 30 мин', 'burgers'),
(4, 'https://eda.yandex/images/3772784/82e0bff0f851056f517d5f34b29dcb40-450x300.jpeg', 'Доминос пицца', '4.4', '(200+)', 'Бесплатная доставка', '35 – 45 мин', 'pizza'),
(5, 'https://eda.yandex/images/3581687/b7c14a2a8c5242e6db81216110fb50cb-450x300.jpg', 'Tasty Food', '4.8 Хорошо', '(200+)', 'Бесплатная доставка', '20 – 30 мин', 'sushi'),
(6, 'https://eda.yandex/images/1380298/ad1749a8dbc40594e81c614a71a5c258-450x300.jpg', 'Sushi Master', '4.8 Хорошо', '(200+)', 'Бесплатная доставка', '45 – 55 мин', 'sushi'),
(7, 'https://eda.yandex/images/1368744/9692b438240283cf696faaf18d64f84f-450x300.jpg', 'Pad Thai', '4.8 Хорошо', '(200+)', 'Бесплатная доставка', '35 – 45 мин', 'sushi'),
(8, 'https://eda.yandex/images/3528285/51cf887a2168c349b68277147557bd6a-450x300.jpg', 'Art food', '4.8 Хорошо', '(200+)', 'Бесплатная доставка', '40 – 50 мин', 'burgers'),
(9, 'https://eda.yandex/images/3595156/bc19fb92adf3f31015c049690b5714a0-450x300.jpg', 'МАМА ДОМА', '4.9 Отлично', '(200+)', 'Бесплатная доставка', '25 – 35 мин', 'pizza'),
(10, 'https://eda.yandex/images/2394388/9bd809f1d07660eb2c2de68e0ad07ee6-450x300.jpg', 'Doner King', '4.7 Хорошо', '(146)', 'Бесплатная доставка', '25 – 35 мин', 'burgers'),
(11, 'https://eda.yandex/images/1370147/2cbafc8733fd918bf1cc7476b0a18b15-450x300.jpg', 'Маруми', '4.8 Хорошо', '(166)', 'Бесплатная доставка', '30 – 40 мин', 'sushi'),
(12, 'https://eda.yandex/images/3490902/5ce3a8059f71e9de916f6a0c7eabe5ad-450x300.jpg', 'Burger King', '4.9 Отлично', '(200+)', 'Бесплатная доставка', '30 – 40 мин', 'burgers'),
(13, 'https://eda.yandex/images/3514991/d734ca4c7b5ebaa28232c805735b22bd-450x300.jpg', 'Doner Time', '4.8 Хорошо', '(200+)', 'Бесплатная доставка', '25 – 35 мин', 'burgers'),
(14, 'https://eda.yandex/images/3504598/4e97a14c5fdee9a9dc1f85ca21717e3c-450x300.jpg', 'Grill Eat', '4.8 Хорошо', '(200+)', 'Бесплатная доставка', '20 – 30 мин', 'burgers'),
(15, 'https://eda.yandex/images/3435765/701bb0c860694d069fc734dc8a591475-450x300.jpg', 'PON-PUSHKA', '4.9 Отлично', '(200+)', 'Бесплатная доставка', '30 – 40 мин', 'pizza'),
(16, 'https://eda.yandex/images/3596693/cae2bbb8c7ff19c079261616acc927cc-450x300.jpg', 'Salateira', '4.8 Хорошо', '(200+)', 'Бесплатная доставка', '75 – 85 мин', 'wok'),
(17, 'https://eda.yandex/images/3806466/806daccdfd0d165bcc80b22a417e5e8b-450x300.jpg', 'Easy Soup', '4.8 Хорошо', '(200+)', 'Бесплатная доставка', '25 – 35 мин', 'wok'),
(18, 'https://eda.yandex/images/3502490/58e8889e826e42854488000a6f40f833-450x300.jpg', 'Пицца Темпо', '4.9 Отлично', '(200+)', 'Бесплатная доставка', '60 – 70 мин', NULL),
(19, 'https://eda.yandex/images/3506804/0f910023bcf0d6e2dc9724f34fbeeca4-450x300.jpg', 'Sushi House', '4.7 Хорошо', '(200+)', 'Бесплатная доставка', '35 – 45 мин', NULL),
(20, 'https://eda.yandex/images/3531870/ea020211e7c858eac95493771ec21e44-450x300.jpg', 'Пекарня-кондитерская Тьерри', '4.9 Отлично', '(200+)', 'Бесплатная доставка', '25 – 35 мин', NULL),
(21, 'https://eda.yandex/images/3585205/670a5dcbc733c56c893d36afc12562ca-450x300.jpg', 'Васильки', '4.8 Хорошо', '(200+)', 'Бесплатная доставка', '70 – 80 мин', NULL),
(22, 'https://eda.yandex/images/2050703/06cae899e2677b4b217b207405ed0c12-450x300.jpg', 'Мистер Пабло', '4.8 Хорошо', '(200+)', 'Бесплатная доставка', '20 – 30 мин', NULL),
(23, 'https://eda.yandex/images/3435765/af56f373454e3b3e6210904558b7b745-450x300.jpg', 'Шаурма Гуру', '4.6', '(185)', 'Бесплатная доставка', '30 – 40 мин', NULL),
(24, 'https://eda.yandex/images/3491582/9fd9a850803fab83c39ce7705ad32fa2-450x300.jpg', 'Хинкальня', '4.7 Хорошо', '(200+)', 'Бесплатная доставка', '50 – 60 мин', NULL),
(25, 'https://eda.yandex/images/1380298/092dbceb46f36503f7802c756d643a31-450x300.jpg', 'Noodles', '4.9 Отлично', '(200+)', 'Бесплатная доставка', '40 – 50 мин', NULL),
(26, 'https://eda.yandex/images/3709189/d0ef1e591ab03877d050b7989b5666cd-450x300.jpg', 'Хинкали-КО', '4.7 Хорошо', '(197)', 'Бесплатная доставка', '40 – 50 мин', NULL),
(27, 'https://eda.yandex/images/3513074/6df40db875411f20f32ce1be35ae9814-450x300.jpg', 'Шаурмания', '4.8 Хорошо', '(200+)', 'Бесплатная доставка', '25 – 35 мин', NULL),
(28, 'https://eda.yandex/images/3538649/96370b4cea3331595beb2d863d818f77-450x300.jpg', 'Cofix', '4.4', '(82)', 'Бесплатная доставка', '25 – 35 мин', NULL),
(29, 'https://eda.yandex/images/3809330/4a981bd5221569dc2f101f0d58ff5f53-450x300.jpg', 'Dener Shell', '4.7 Хорошо', '(200+)', 'Бесплатная доставка', '30 – 40 мин', NULL),
(30, 'https://eda.yandex/images/1387779/a8f582cc370d4f108dbf9f6fc6b7f325-450x300.jpg', 'Gan Bei', '4.8 Хорошо', '(200+)', 'Бесплатная доставка', '45 – 55 мин', NULL),
(31, 'https://eda.yandex/images/3772784/0ded7ae202942bd2a58136b37425f5e3-450x300.jpg', 'UMAMI Neobistro', '4.9 Отлично', '(200+)', 'Бесплатная доставка', '30 – 40 мин', NULL),
(32, 'https://eda.yandex/images/1370147/fe8bb04fc608761122995e186f51ec21-450x300.jpg', 'Poke Bowl', '4.7 Хорошо', '(200+)', 'Бесплатная доставка', '35 – 45 мин', NULL),
(33, 'https://eda.yandex/images/3456802/098690c0db11220888908fd2649279f9-450x300.jpg', 'Веселый Кебаб', '4.8 Хорошо', '(200+)', 'Бесплатная доставка', '25 – 35 мин', NULL),
(34, 'https://eda.yandex/images/3770794/df71121e888e19bacf5f3c402ee3f98d-450x300.jpg', 'Тифлисъ', '4.8 Хорошо', '(200+)', 'Бесплатная доставка', '40 – 50 мин', NULL),
(35, 'https://eda.yandex/images/3569651/05dccbb88c0a67db02b0f353c9cbd53f-450x300.jpg', 'PON-PIZZA', '4.9 Отлично', '(200+)', 'Бесплатная доставка', '35 – 45 мин', NULL),
(36, 'https://eda.yandex/images/2394388/992262b6818fd602bd7b682b5fbf202a-450x300.jpg', 'Burger Bro', '4.8 Хорошо', '(200+)', 'Бесплатная доставка', '25 – 35 мин', NULL),
(37, 'https://eda.yandex/images/3534679/a63bbaba7acbf91fb1ed3c336f2223b6-450x300.jpg', 'Formosa Bubble Tea', '4.8 Хорошо', '(200+)', 'Бесплатная доставка', '25 – 35 мин', NULL),
(38, 'https://eda.yandex/images/3521394/e1cd345ed0bd78c8e7a4003d48adb150-450x300.jpg', 'ButterBro Bistro', 'Мало оценок', '', 'Бесплатная доставка', '45 – 55 мин', NULL),
(39, 'https://eda.yandex/images/3806466/46438bcc94313c549ccec2dc6663f6d6-450x300.jpg', 'Gruzin.by', '4.6', '(200+)', 'Бесплатная доставка', '35 – 45 мин', NULL),
(40, 'https://eda.yandex/images/3439028/4299749f7c8e2a1f4acfbd8578ca9cb9-450x300.jpg', 'На компанию от Sushi House', '4.8 Хорошо', '(80)', 'Бесплатная доставка', '40 – 50 мин', NULL),
(41, 'https://eda.yandex/images/2050703/f1452408d419066d4d844acf82932091-450x300.jpg', 'Terra', '4.9 Отлично', '(200+)', 'Бесплатная доставка', '70 – 80 мин', NULL),
(42, 'https://eda.yandex/images/3456802/4eed4bde2b5672b3920eb50dd6eebe96-450x300.jpg', 'Hotfix', '4.8 Хорошо', '(17)', 'Бесплатная доставка', '25 – 35 мин', NULL),
(43, 'https://eda.yandex/images/3781088/ec31e145d633fa73dcda19ec29a82c5f-450x300.jpg', 'Безупречная чебуречная', '5.0 Отлично', '(21)', 'Бесплатная доставка', '35 – 45 мин', NULL),
(44, 'https://eda.yandex/images/3504598/1afa1282664ecd0e728122149e3c9fb5-450x300.jpg', 'Шаурма по-бакински', '4.8 Хорошо', '(200+)', 'Бесплатная доставка', '25 – 35 мин', NULL),
(45, 'https://eda.yandex/images/3583740/8d5d85ac5d3057340a23d46dace3c727-450x300.jpg', 'На компанию от Шашлычок', '4.8 Хорошо', '(200+)', 'Бесплатная доставка', '35 – 45 мин', NULL),
(46, 'https://eda.yandex/images/3581687/84d028f2d3c767b3a8cac0f733276315-450x300.jpg', 'V Lаваше', '4.4', '(200+)', 'Бесплатная доставка', '20 – 30 мин', NULL),
(47, 'https://eda.yandex/images/1380157/bbdd4d98fa56a3fce7d2383c5dd529f8-450x300.jpg', 'У холостяка', '4.9 Отлично', '(200+)', 'Бесплатная доставка', '30 – 40 мин', NULL),
(48, 'https://eda.yandex/images/3593277/3aa25c0dcaccf727a882fa933089d8f0-450x300.jpg', 'Salad drive', '4.8 Хорошо', '(57)', 'Бесплатная доставка', '30 – 40 мин', NULL),
(49, 'https://eda.yandex/images/3806023/1b5b36b75c8e44de67bad54d44754862-450x300.jpg', 'Lotus Bubble Tea', '4.7 Хорошо', '(51)', 'Бесплатная доставка', '25 – 35 мин', NULL),
(50, 'https://eda.yandex/images/2750126/ec0d4ea24df4076513a21c1c52e69d82-450x300.jpg', 'Tea\'n', '5.0 Отлично', '(200+)', 'Бесплатная доставка', '40 – 50 мин', NULL),
(51, 'https://eda.yandex/images/1368744/b68aa9b4eb38eb17adb569542338dc05-450x300.jpg', 'Тан Чао Express', '4.9 Отлично', '(200+)', 'Бесплатная доставка', '30 – 40 мин', NULL),
(52, 'https://eda.yandex/images/1368744/56ae731d22e8c037e73c1dcf910551e7-450x300.jpg', 'Comida Mexicana', '4.8 Хорошо', '(200+)', 'Бесплатная доставка', '35 – 45 мин', NULL),
(53, 'https://eda.yandex/images/1370147/2a593a540e45820156c3c58038af8520-450x300.jpg', 'Pasta Fresca', '4.6', '(200+)', 'Бесплатная доставка', '30 – 40 мин', NULL),
(54, 'https://eda.yandex/images/3377781/7cc55946ea3ed4ee8cf27fc1eb5f087c-450x300.jpg', 'Уха из петуха', 'Новый', '', 'Бесплатная доставка', '25 – 35 мин', NULL),
(55, 'https://eda.yandex/images/3593277/9d6d9f8233300e85878891fe1fd550d9-450x300.jpg', 'Kinza', '4.5', '(154)', 'Бесплатная доставка', '30 – 40 мин', NULL),
(56, 'https://eda.yandex/images/3483997/35e404a49b94510ff96c7d8bc9d17fec-450x300.jpg', 'Крафтовая шаурма', '4.6', '(200+)', 'Бесплатная доставка', '25 – 35 мин', NULL),
(57, 'https://eda.yandex/images/3770794/65764f7a9878938d2482131a601a1e57-450x300.jpg', 'Батуми', '4.6', '(156)', 'Бесплатная доставка', '45 – 55 мин', NULL),
(58, 'https://eda.yandex/images/1368744/3352b0010333dedb61c542e27aad9ca7-450x300.jpg', 'Крамбамбуля', '4.9 Отлично', '(200+)', 'Бесплатная доставка', '35 – 45 мин', NULL),
(59, 'https://eda.yandex/images/3595381/0a06e2e8f46d9efa6a43d68cc8607f56-450x300.jpg', 'City Sushi', '4.7 Хорошо', '(200+)', 'Бесплатная доставка', '70 – 80 мин', NULL),
(60, 'https://eda.yandex/images/3682162/0486f4298fcfa13ee3dc4513659f8fd4-450x300.jpg', 'Чайхана Бангалор', '4.9 Отлично', '(200+)', 'Бесплатная доставка', '60 – 70 мин', NULL),
(61, 'https://eda.yandex/images/3528150/a1b962fbe92a0e8affa04061fb957935-450x300.jpg', 'Kebab Town', '4.8 Хорошо', '(111)', 'Бесплатная доставка', '25 – 35 мин', NULL),
(62, 'https://eda.yandex/images/3420935/1e4c847f29ee48cbb9c57c25438e0c86-450x300.jpg', 'MC Doner', '4.6', '(200+)', 'Бесплатная доставка', '30 – 40 мин', NULL),
(63, 'https://eda.yandex/images/3507285/265e764326d1721ed9c3c204d8134ba7-450x300.jpg', 'Kimo Doner', 'Мало оценок', '', 'Бесплатная доставка', '30 – 40 мин', NULL),
(64, 'https://eda.yandex/images/1368744/cda5286311321c8805305757eeae7552-450x300.jpg', 'Golden Coffee', '4.8 Хорошо', '(126)', 'Бесплатная доставка', '40 – 50 мин', NULL),
(65, 'https://eda.yandex/images/3439028/f3087d0ac911752eee88b3b8f4bfefff-450x300.jpg', 'Кебаб по-сирийски', '4.9 Отлично', '(200+)', 'Бесплатная доставка', '30 – 40 мин', NULL),
(66, 'https://eda.yandex/images/3770794/12baaec86187cca306826e356b13caea-450x300.jpg', 'Ariana Kebab', '4.8 Хорошо', '(81)', 'Бесплатная доставка', '25 – 35 мин', NULL),
(67, 'https://eda.yandex/images/2794391/28390cc39e7d6212b36bc3809fcd822d-450x300.jpg', 'Мясной ресторан Beef & Fire', '4.6', '(200+)', 'Бесплатная доставка', '45 – 55 мин', NULL),
(68, 'https://eda.yandex/images/3547279/1ec381f360af13669ca7963fbde37f74-450x300.jpg', 'ЧебурекМи на Сурганова', '4.8 Хорошо', '(188)', 'Бесплатная доставка', '30 – 40 мин', NULL),
(69, 'https://eda.yandex/images/3813301/517b61c19b3a8102a72ad8b86229c547-450x300.jpg', 'Cube Cafe', '4.8 Хорошо', '(200+)', 'Бесплатная доставка', '60 – 70 мин', NULL),
(70, 'https://eda.yandex/images/3749380/4ddb7a9daf05486cae8a219375c48623-450x300.jpg', 'Veg Harmony Cafe', '4.9 Отлично', '(200+)', 'Бесплатная доставка', '30 – 40 мин', NULL),
(71, 'https://eda.yandex/images/1380298/570743836ef91bda6931482a42ea97b2-450x300.jpg', 'На углях', '4.7 Хорошо', '(200+)', 'Бесплатная доставка', '40 – 50 мин', NULL),
(72, 'https://eda.yandex/images/3595513/53b1f7480269017b10f317c1b65c8d5b-450x300.jpg', 'Гости', '4.4', '(61)', 'Бесплатная доставка', '50 – 60 мин', NULL),
(73, 'https://eda.yandex/images/1368744/3bfa687f746a7ccaeca1f7780b6dda25-450x300.jpg', 'Эль-Буррито', '4.5', '(200+)', 'Бесплатная доставка', '30 – 40 мин', NULL),
(74, 'https://eda.yandex/images/2415806/693f46bc8540b9bd92b48cf11a656198-450x300.JPG', 'Ресторан-пивоварня Друзья', '4.8 Хорошо', '(200+)', 'Бесплатная доставка', '45 – 55 мин', NULL),
(75, 'https://eda.yandex/images/1380298/268697026c6dde588b5d0ff8105ab21f-450x300.jpg', 'Усадьба', '4.9 Отлично', '(162)', 'Бесплатная доставка', '45 – 55 мин', NULL),
(76, 'https://eda.yandex/images/2750126/cb894151280d41ea9dcc3da256d71c36-450x300.jpg', 'Юджын крабс', '4.9 Отлично', '(38)', 'Бесплатная доставка', '100 – 110 мин', NULL),
(77, 'https://eda.yandex/images/3534679/2461a7ae85a81882f21f02c7bff11d91-450x300.jpg', 'Вареник', '4.8 Хорошо', '(72)', 'Бесплатная доставка', '40 – 50 мин', NULL),
(78, 'https://eda.yandex/images/3507668/18f6325a927c80d6f0ee2de496d30c68-450x300.jpg', 'Griller', '5.0 Отлично', '(200+)', 'Бесплатная доставка', '30 – 40 мин', NULL),
(79, 'https://eda.yandex/images/1380157/cbdff600f58a3e6434e3d89ad4171e63-450x300.jpg', 'Miss Li', '4.8 Хорошо', '(200+)', 'Бесплатная доставка', '40 – 50 мин', NULL),
(80, 'https://eda.yandex/images/1380157/57415dc5473088e1d679b9ac5aa6cedb-450x300.jpg', 'Sabroso Латинобургер', '4.9 Отлично', '(200+)', 'Бесплатная доставка', '35 – 45 мин', NULL),
(81, 'https://eda.yandex/images/3337779/90b470c6099b92f77d2082a554696a36-450x300.jpg', 'Dialoghi', '4.8 Хорошо', '(157)', 'Бесплатная доставка', '30 – 40 мин', NULL),
(82, 'https://eda.yandex/images/2353725/2e59e126ffd3825c9804ba786ed533a1-450x300.JPG', 'Love & Waffles', '4.7 Хорошо', '(89)', 'Бесплатная доставка', '25 – 35 мин', NULL),
(83, 'https://eda.yandex/images/3337779/bfc8dee280cc8d64a288f11340974e41-450x300.jpg', 'Лисья нора', '4.7 Хорошо', '(155)', 'Бесплатная доставка', '40 – 50 мин', NULL),
(84, 'https://eda.yandex/images/3514991/c0129f351d0645579b17a779989b472e-450x300.jpg', 'Прошуттерия', '4.2', '(119)', 'Бесплатная доставка', '35 – 45 мин', NULL),
(85, 'https://eda.yandex/images/1380157/5ea6024ac482f9a6007fb93a9ed516f3-450x300.jpg', 'Lidbeer Bar Светлы', '4.8 Хорошо', '(200+)', 'Бесплатная доставка', '35 – 45 мин', NULL),
(86, 'https://eda.yandex/images/1370147/6a9e7b0eb21b7d1a9a39392395df0231-450x300.jpg', 'Сказочный замок', '4.8 Хорошо', '(180)', 'Бесплатная доставка', '25 – 35 мин', NULL),
(87, 'https://eda.yandex/images/3435765/2eab2667e91c6584ed088b9896c06b35-450x300.jpg', 'На компанию от Шашлычок', '4.7 Хорошо', '(60)', 'Бесплатная доставка', '45 – 55 мин', NULL),
(88, 'https://eda.yandex/images/3702558/0898fb9b1da9a1eb468551d25c389f77-450x300.jpg', 'Пышечная 8', '4.9 Отлично', '(200+)', 'Бесплатная доставка', '20 – 30 мин', NULL),
(89, 'https://eda.yandex/images/2796335/e6d808bb93d3e041458e1e83c60cf0c6-450x300.jpg', 'Yellow SLON', '4.9 Отлично', '(34)', 'Бесплатная доставка', '40 – 50 мин', NULL),
(90, 'https://eda.yandex/images/3583862/f29b44a51368768fe0209763d0431e1d-450x300.jpg', 'Nravizza', '4.9 Отлично', '(85)', 'Бесплатная доставка', '35 – 45 мин', NULL),
(91, 'https://eda.yandex/images/3507668/223a1105d23d748ea86071a4d983e4ba-450x300.jpg', 'Суши весла Take Away', '5.0 Отлично', '(30)', 'Бесплатная доставка', '40 – 50 мин', NULL),
(92, 'https://eda.yandex/images/3583740/7fead6b8d318f6ec0737d9ba286db6b0-450x300.jpg', 'Мука', '4.9 Отлично', '(200+)', 'Бесплатная доставка', '30 – 40 мин', NULL),
(93, 'https://eda.yandex/images/2353725/226cfa9d915d521f2705f12b7a76ef20-450x300.jpg', 'На компанию от Мясной ресторан Beef & Fire', '4.6', '(38)', 'Бесплатная доставка', '50 – 60 мин', NULL),
(94, 'https://eda.yandex/images/1380157/0b7469022dcb64f5120b248e6e9447a0-450x300.jpg', 'ШКВАРКИ', '4.5', '(35)', 'Бесплатная доставка', '45 – 55 мин', NULL),
(95, 'https://eda.yandex/images/1380157/89080075f74ad80743ec55ab491a237c-450x300.jpg', 'Мираж', '4.7 Хорошо', '(200+)', 'Бесплатная доставка', '30 – 40 мин', NULL),
(96, 'https://eda.yandex/images/3568095/7009520c5e7d1412250f249f26be994b-450x300.jpg', 'Om Namo', '4.9 Отлично', '(200+)', 'Бесплатная доставка', '30 – 40 мин', NULL),
(97, 'https://eda.yandex/images/3724421/45d51e7e89d6a31f5328c1702da0fb30-450x300.jpg', 'ХотDонер', '4.8 Хорошо', '(99)', 'Бесплатная доставка', '35 – 45 мин', NULL),
(98, 'https://eda.yandex/images/3534679/72e503b63678127e1b7cef703ed684df-450x300.jpg', 'My Sushi', '4.8 Хорошо', '(200+)', 'Бесплатная доставка', '30 – 40 мин', NULL),
(99, 'https://eda.yandex/images/3805363/60d2d3cd3f3fb723046a734641f32262-450x300.png', 'Paul', '4.8 Хорошо', '(200+)', 'Бесплатная доставка', '25 – 35 мин', NULL),
(100, 'https://eda.yandex/images/2415806/9ea27fbbf6d297075fc5fd38f62fc56b-450x300.jpeg', 'Кондитерская Золотой Гребешок', '4.9 Отлично', '(20)', 'Бесплатная доставка', '40 – 50 мин', NULL),
(101, 'https://eda.yandex/images/3435765/cb3d4febbeef1e43cb29daa502fab83e-450x300.jpg', 'Benedict', '4.9 Отлично', '(200+)', 'Бесплатная доставка', '35 – 45 мин', NULL),
(102, 'https://eda.yandex/images/1368744/c9c683b508196954d2e06609dc531398-450x300.jpg', 'Hosper Hops Pub', '4.8 Хорошо', '(125)', 'Бесплатная доставка', '40 – 50 мин', NULL),
(103, 'https://eda.yandex/images/3513074/22381c990a540ea98bbe581ee9954768-450x300.jpg', 'Nuahule', '4.7 Хорошо', '(200+)', 'Бесплатная доставка', '40 – 50 мин', NULL),
(104, 'https://eda.yandex/images/3435765/13f55e217eea684bd9f20a4587da6c85-450x300.jpg', 'Bierkeller', '4.9 Отлично', '(42)', 'Бесплатная доставка', '35 – 45 мин', NULL),
(105, 'https://eda.yandex/images/3528150/0b900a0543c81e7875eab6c1cd081172-450x300.jpg', 'Soup Culture', '4.5', '(44)', 'Бесплатная доставка', '30 – 40 мин', NULL),
(106, 'https://eda.yandex/images/3798638/2a1084db71df0b48cffcb79ea19f923f-450x300.jpg', 'Hayat', '4.9 Отлично', '(200+)', 'Бесплатная доставка', '30 – 40 мин', NULL),
(107, 'https://eda.yandex/images/3514991/db3cec454bf714618e400a0979fb3d27-450x300.jpg', 'На компанию от Чайхана Бангалор', '5.0 Отлично', '(27)', 'Бесплатная доставка', '45 – 55 мин', NULL),
(108, 'https://eda.yandex/images/3583740/a8d9aff029d1d5bce6766f29947cde42-450x300.jpeg', 'Очаг драйв', '4.5', '(200+)', 'Бесплатная доставка', '70 – 80 мин', NULL),
(109, 'https://eda.yandex/images/3547279/ea0f8462a5925036732272125ea85c79-450x300.jpg', 'HookahPlace', '4.7 Хорошо', '(44)', 'Бесплатная доставка', '60 – 70 мин', NULL),
(110, 'https://eda.yandex/images/3502490/90e73a46d1e0310bb9c6613a6625dc90-450x300.jpg', 'Sushi Set', '4.7 Хорошо', '(170)', 'Бесплатная доставка', '30 – 40 мин', NULL),
(111, 'https://eda.yandex/images/3569651/24c0de04e218161aafc165dbf7badb20-450x300.jpg', 'Tokyo Sushi', '4.7 Хорошо', '(200+)', 'Бесплатная доставка', '40 – 50 мин', NULL),
(112, 'https://eda.yandex/images/3528285/f4d95837763b0c4dfc8ee07c3d77c133-450x300.jpg', 'Деливио', '4.6', '(200+)', 'Бесплатная доставка', '40 – 50 мин', NULL),
(113, 'https://eda.yandex/images/3472725/4fc6b6ded8bbc410df6e48800de15260-450x300.jpg', 'КофеБлинная Crepes shop', '4.8 Хорошо', '(125)', 'Бесплатная доставка', '40 – 50 мин', NULL),
(114, 'https://eda.yandex/images/1380157/c519dd21c7e81bed28b5abe6b4e61af1-450x300.jpg', 'Black Velvet', '4.3', '(19)', 'Бесплатная доставка', '35 – 45 мин', NULL),
(115, 'https://eda.yandex/images/1387779/a98af4f7a35d1516b5bb7a7f7804b42f-450x300.jpg', 'Братский гриль', '4.6', '(37)', 'Бесплатная доставка', '25 – 35 мин', NULL),
(116, 'https://eda.yandex/images/3813301/ffd3e9071e4beb4cd94fc160c0be11d0-450x300.jpg', 'The Diсkens', 'Мало оценок', '', 'Бесплатная доставка', '30 – 40 мин', NULL),
(117, 'https://eda.yandex/images/2415806/81b183cfcafc4a0c77c56b0f95850d63-450x300.jpg', 'Бакинский Бульвар', '4.5', '(14)', 'Бесплатная доставка', '40 – 50 мин', NULL),
(118, 'https://eda.yandex/images/3506707/60ad6439d004c1194643acdd6cc92d0e-450x300.jpg', 'Monkey Gang', '4.9 Отлично', '(200+)', 'Бесплатная доставка', '30 – 40 мин', NULL),
(119, 'https://eda.yandex/images/3808326/3e48d7bc2e74fe239d42bf14f6ca25d4-450x300.jpg', 'Zizo Doner', '4.8 Хорошо', '(200+)', 'Бесплатная доставка', '25 – 35 мин', NULL),
(120, 'https://eda.yandex/images/3774488/03c0a01233dad643426b08fe08387b93-450x300.jpg', 'PizzaRest', '4.8 Хорошо', '(200+)', 'Бесплатная доставка', '30 – 40 мин', NULL),
(121, 'https://eda.yandex/images/3456802/5ce4e7a009c846478f49cd38b2779c6f-450x300.jpg', 'Галерея суши', 'Мало оценок', '', 'Бесплатная доставка', '50 – 60 мин', NULL),
(122, 'https://eda.yandex/images/3518584/51f7b5db610157ca06f6c5d8081895de-450x300.jpg', 'На компанию от Gan Bei', '5.0 Отлично', '(13)', 'Бесплатная доставка', '50 – 60 мин', NULL),
(123, 'https://eda.yandex/images/3798638/30c4ef3c3bbdf4ee974811f174c11e78-450x300.jpg', 'Little Armenia', '4.4', '(19)', 'Бесплатная доставка', '50 – 60 мин', NULL),
(124, 'https://eda.yandex/images/3491582/011c24039d4f20b290940f4283cc3244-450x300.jpg', 'The Суши', '4.8 Хорошо', '(179)', 'Бесплатная доставка', '40 – 50 мин', NULL),
(125, 'https://eda.yandex/images/2750126/e290a380275229722195701f22833998-450x300.jpg', 'Турецкие сладости от Вахаб ага', '4.9 Отлично', '(51)', 'Бесплатная доставка', '30 – 40 мин', NULL),
(126, 'https://eda.yandex/images/3507285/a17fa9901e779076806a0f0a8595c785-450x300.jpg', 'Гвоздь', '4.8 Хорошо', '(76)', 'Бесплатная доставка', '35 – 45 мин', NULL),
(127, 'https://eda.yandex/images/3585205/9f20486b34696bc9d63e00f7afe4c4f7-450x300.jpg', 'На компанию от My Sushi', 'Мало оценок', '', 'Бесплатная доставка', '25 – 35 мин', NULL),
(128, 'https://eda.yandex/images/3749380/af05bc9c79aa4b3ffb59e1bcda7eb652-450x300.jpg', 'ПиццаМания', '4.8 Хорошо', '(106)', 'Бесплатная доставка', '40 – 50 мин', NULL),
(129, 'https://eda.yandex/images/3702558/b894150f3730afebd5e14ecbb162a626-450x300.jpg', 'Olivo', 'Мало оценок', '', 'Бесплатная доставка', '50 – 60 мин', NULL),
(130, 'https://eda.yandex/images/1370147/0448ec6268335d1fda6618c93c97588e-450x300.jpg', 'Березка', '3.9', '(200+)', 'Бесплатная доставка', '50 – 60 мин', NULL),
(131, 'https://eda.yandex/images/3709189/ab2f7e5418436655e93f9128e8fc27aa-450x300.jpg', 'BulbaFrites', '4.8 Хорошо', '(200+)', 'Бесплатная доставка', '45 – 55 мин', NULL),
(132, 'https://eda.yandex/images/3528285/a1ffc1d3082dd63dbb90d3a863292736-450x300.jpg', 'Street Chef Grill', '4.7 Хорошо', '(200+)', 'Бесплатная доставка', '35 – 45 мин', NULL),
(133, 'https://eda.yandex/images/1380298/b07b38e4bf7d82c15efac37cd399a7aa-450x300.jpg', 'Pasta Deli', '4.5', '(76)', 'Бесплатная доставка', '45 – 55 мин', NULL),
(134, 'https://eda.yandex/images/3508859/feff9cdff404f68d2419ca4e49f66979-450x300.jpg', 'Pizza mia', '4.6', '(32)', 'Бесплатная доставка', '35 – 45 мин', NULL),
(135, 'https://eda.yandex/images/1380298/d369cc9a05ba260207739955858ff482-450x300.jpg', 'Gardu Bardakas', '4.4', '(17)', 'Бесплатная доставка', '40 – 50 мин', NULL),
(136, 'https://eda.yandex/images/3490335/7e4e270ef4681c9b464c72e783b4b7e7-450x300.jpeg', 'DROVA', '4.7 Хорошо', '(200+)', 'Бесплатная доставка', '45 – 55 мин', NULL),
(137, 'https://eda.yandex/images/3568095/814043c36a5421b51ebb89e8b59f4d4d-450x300.jpg', 'Счастливый день', '4.9 Отлично', '(143)', 'Бесплатная доставка', '40 – 50 мин', NULL),
(138, 'https://eda.yandex/images/1368744/4b1faf2e9eb02131d92b63260f697fa4-450x300.jpg', 'Мир Пиццы', '4.9 Отлично', '(75)', 'Бесплатная доставка', '25 – 35 мин', NULL),
(139, 'https://eda.yandex/images/3513074/77c2526fbcc4cfde6d51773e0f0892af-450x300.jpg', 'Крипта', '4.8 Хорошо', '(125)', 'Бесплатная доставка', '30 – 40 мин', NULL),
(140, 'https://eda.yandex/images/3502728/99031baec11be8af7ee8e9b410d56695-450x300.jpg', 'Ostrowok Азии', '4.6', '(200+)', 'Бесплатная доставка', '30 – 40 мин', NULL),
(141, 'https://eda.yandex/images/1380157/9c5884ebf011565b7b18c19257ac97b0-450x300.jpg', 'Грузинский уголок', '4.6', '(63)', 'Бесплатная доставка', '40 – 50 мин', NULL),
(142, 'https://eda.yandex/images/3502728/91afd1e8bc0ef9d34bbe442e65da5b8b-450x300.jpg', 'На компанию от Griller', 'Мало оценок', '', 'Бесплатная доставка', '45 – 55 мин', NULL),
(143, 'https://eda.yandex/images/1380298/f239f0eb2aa7c38642d49b3120555284-450x300.jpg', 'Пиросмани', '4.8 Хорошо', '(101)', 'Бесплатная доставка', '50 – 60 мин', NULL),
(144, 'https://eda.yandex/images/3208959/5146973a9e70637876cac7aea6a78faf-450x300.jpg', 'На компанию от ресторана-пивоварни Друзья', 'Мало оценок', '', 'Бесплатная доставка', '50 – 60 мин', NULL),
(145, 'https://eda.yandex/images/3106738/8973f417a1237653b115eab59ec8b47f-450x300.jpg', 'На компанию от Comida Mexicana', 'Мало оценок', '', 'Бесплатная доставка', '50 – 60 мин', NULL),
(146, 'https://eda.yandex/images/3580810/94bba538cb2d81071768346d6c7d0ab8-450x300.jpg', 'Лаочэн', '4.4', '(18)', 'Бесплатная доставка', '50 – 60 мин', NULL),
(147, 'https://eda.yandex/images/1368744/1216c14275573648b40a16b2bc8f5e14-450x300.jpg', 'Eclair delicious', 'Мало оценок', '', 'Бесплатная доставка', '40 – 50 мин', NULL),
(148, 'https://eda.yandex/images/1370147/a0db64834ce175cc9288dea3d5c869ec-450x300.jpg', 'Комедия', 'Мало оценок', '', 'Бесплатная доставка', '50 – 60 мин', NULL),
(149, 'https://eda.yandex/images/1368744/561b45e2547ba105571d1c0354640fee-450x300.jpg', 'JT Bar', 'Мало оценок', '', 'Бесплатная доставка', '50 – 60 мин', NULL),
(150, 'https://eda.yandex/images/3528150/900f6749f111f0b802c3b582271a07d3-450x300.jpg', 'Ресторация Сундук', 'Мало оценок', '', 'Бесплатная доставка', '50 – 60 мин', NULL),
(151, 'https://eda.yandex/images/3735503/40f7be847ac09da3bda4af65847dd89b-450x300.jpg', 'Грандхолл', 'Мало оценок', '', 'Бесплатная доставка', '50 – 60 мин', NULL),
(152, 'https://eda.yandex/images/3547279/8c5a1a2837008aba39e711d5a29cf7b2-450x300.jpg', 'На компанию от Bierkeller', 'Мало оценок', '', 'Бесплатная доставка', '50 – 60 мин', NULL),
(153, 'https://eda.yandex/images/3491582/7a20dc5b5495454833cb4e90d827222c-450x300.jpg', 'На компанию от Sushi Set', 'Мало оценок', '', 'Бесплатная доставка', '45 – 55 мин', NULL),
(154, 'https://eda.yandex/images/1380298/e9856d4710c2bd1bbc50b7f79c0a2604-450x300.jpg', 'Eatery', '3.9', '(200+)', 'Бесплатная доставка', '30 – 40 мин', NULL),
(155, 'https://eda.yandex/images/3595381/6f064a8b5f11f0719a4da88908aa7f03-450x300.jpg', 'Lidbeer Bar Легенда', '4.8 Хорошо', '(22)', 'Бесплатная доставка', '50 – 60 мин', NULL),
(156, 'https://eda.yandex/images/1380157/3a0f2aa2fa064e0dba48bb97af7c69b4-450x300.jpg', 'Panda Cook', 'Мало оценок', '', 'Бесплатная доставка', '45 – 55 мин', NULL),
(157, 'https://eda.yandex/images/1380157/6c0ef6a19fa43472cd632be5902e8c0b-450x300.jpg', 'Скиф', 'Мало оценок', '', 'Бесплатная доставка', '50 – 60 мин', NULL),
(158, 'https://eda.yandex/images/3401132/22058bb92d354310859ae702e70d691d-450x300.jpg', 'На компанию от Appetito', 'Мало оценок', '', 'Бесплатная доставка', '50 – 60 мин', NULL),
(159, 'https://eda.yandex/images/3490335/0584a8344db08ac964f13f8b4e42e87d-450x300.jpg', 'На компанию от Easy Soup', 'Мало оценок', '', 'Бесплатная доставка', '45 – 55 мин', NULL),
(160, 'https://eda.yandex/images/1368744/0233875b72051fb970b14dd7826d13cb-450x300.jpg', 'Lidbeer 1876', '4.4', '(11)', 'Бесплатная доставка', '40 – 50 мин', NULL),
(161, 'https://eda.yandex/images/3709189/06cbea98467acdd1a51e55c93d6fa6d2-450x300.jpg', 'Коляда', 'Мало оценок', '', 'Бесплатная доставка', '50 – 60 мин', NULL),
(162, 'https://eda.yandex/images/1380298/75c60c2f47232fc1af5161614835a80c-450x300.jpg', 'Prime Time', 'Мало оценок', '', 'Бесплатная доставка', '45 – 55 мин', NULL),
(163, 'https://eda.yandex/images/1368744/7878b6aefe9f9fd56574da3673d3a2e8-450x300.jpg', 'Mavi Cafe', 'Мало оценок', '', 'Бесплатная доставка', '40 – 50 мин', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `basket`
--
ALTER TABLE `basket`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD KEY `id` (`id`);

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `basket`
--
ALTER TABLE `basket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`id`) REFERENCES `restaurants` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
