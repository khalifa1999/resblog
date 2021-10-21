-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 21 oct. 2021 à 19:48
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `blog_admin_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `banner_posts`
--

DROP TABLE IF EXISTS `banner_posts`;
CREATE TABLE IF NOT EXISTS `banner_posts` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` int(10) UNSIGNED NOT NULL,
  `status` varchar(40) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `title` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `banner_posts`
--

INSERT INTO `banner_posts` (`id`, `title`, `status`) VALUES
(1, 1, 'active');

-- --------------------------------------------------------

--
-- Structure de la table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
CREATE TABLE IF NOT EXISTS `blogs` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(190) NOT NULL,
  `tags` varchar(40) NOT NULL,
  `content` text NOT NULL,
  `photo` varchar(50) NOT NULL,
  `posted` varchar(40) NOT NULL,
  `date` date DEFAULT NULL,
  `author` varchar(40) DEFAULT NULL,
  `category` varchar(40) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category` (`category`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `tags`, `content`, `photo`, `posted`, `date`, `author`, `category`) VALUES
(9, 'Fumio Kishida takes office', 'Japan', '<div class=\"el__embedded el__embedded--fullwidth\" style=\"position: relative; width: 780px; z-index: 0; color: rgb(38, 38, 38); font-family: CNN, &quot;Helvetica Neue&quot;, Helvetica, Arial, Utkal, sans-serif; font-size: 15px; background-color: rgb(254, 254, 254);\"><div class=\"el__image--fullwidth js__image--fullwidth\" style=\"clear: both; margin-bottom: 20px; margin-top: 20px; width: 780px;\"><div class=\"media__caption el__gallery_image-title\" style=\"padding: 0px 5px 5px; -webkit-font-smoothing: antialiased; font-size: 1.06667rem; line-height: 1.5; margin: 30px 0px 0px; color: rgb(89, 89, 89); position: relative;\"><div class=\"element-raw appearance-fullwidth\">Fumio Kishida is applauded after being elected as Japan\'s new Prime Minister at the lower house of parliament in Tokyo on October 4.</div></div></div></div><div class=\"zn-body__paragraph\" data-paragraph-id=\"paragraph_D9C48837-D392-0248-6A9D-49B29EC40C61\" style=\"margin-bottom: 15px; font-family: CNN, &quot;Helvetica Neue&quot;, Helvetica, Arial, Utkal, sans-serif; -webkit-font-smoothing: antialiased; font-size: 1.2rem; line-height: 1.66667; margin-right: 0px; color: rgb(38, 38, 38); background-color: rgb(254, 254, 254);\"></div><div class=\"zn-body__paragraph\" data-paragraph-id=\"paragraph_5AC493C1-8445-4CE0-BB74-49A5F09C5663\" style=\"margin-bottom: 15px; font-family: CNN, &quot;Helvetica Neue&quot;, Helvetica, Arial, Utkal, sans-serif; -webkit-font-smoothing: antialiased; font-size: 1.2rem; line-height: 1.66667; margin-right: 0px; color: rgb(38, 38, 38); background-color: rgb(254, 254, 254);\">His first major test will be the next general election, in which he\'ll be the face of a party that\'s been criticized for its handling of the pandemic under Suga.</div><div class=\"zn-body__paragraph\" data-paragraph-id=\"paragraph_710AE00B-363C-3EC0-7A36-4998AC7A2250\" style=\"margin-bottom: 15px; font-family: CNN, &quot;Helvetica Neue&quot;, Helvetica, Arial, Utkal, sans-serif; -webkit-font-smoothing: antialiased; font-size: 1.2rem; line-height: 1.66667; margin-right: 0px; color: rgb(38, 38, 38); background-color: rgb(254, 254, 254);\">\"He\'s not going to be a TV star. He\'s not going to capture the imagination of the average Japanese person. But the Japanese people want stability and security, and I think he will be able to provide that,\" said Keith Henry, president of political risk and business consulting firm Asia Strategy.</div>', '99619300_1634223766.jpg', 'publish', '2021-10-14', 'admin', '7'),
(10, 'China could be ready to mount a \'full-scale\' invasion of Taiwan by 2025, island\'s defense minister says', 'China', '<div class=\"el__leafmedia el__leafmedia--sourced-paragraph\" style=\"color: rgb(38, 38, 38); font-family: CNN, &quot;Helvetica Neue&quot;, Helvetica, Arial, Utkal, sans-serif; font-size: 15px; background-color: rgb(254, 254, 254);\"><p class=\"zn-body__paragraph speakable\" data-paragraph-id=\"paragraph_69D6E5A6-5001-B0C3-50E4-5443A3FF3D0A\" style=\"margin-bottom: 15px; -webkit-font-smoothing: antialiased; font-size: 1.2rem; line-height: 1.66667;\"><cite class=\"el-editorial-source\" style=\"font-family: CNN, &quot;Helvetica Neue&quot;, Verdana, Geneva, sans-serif; font-style: normal; font-weight: 700;\">(CNN)</cite>China could be capable of mounting a \"full-scale\" invasion of Taiwan by 2025, the island\'s defense minister said Wednesday -- days after record numbers of Chinese warplanes flew into Taiwan\'s air defense zone.</p></div><div class=\"zn-body__paragraph\" data-paragraph-id=\"paragraph_BB42134B-20C1-669E-8FFD-54932F631BF9\" style=\"margin-bottom: 15px; font-family: CNN, &quot;Helvetica Neue&quot;, Helvetica, Arial, Utkal, sans-serif; -webkit-font-smoothing: antialiased; font-size: 1.2rem; line-height: 1.66667; margin-right: 0px; color: rgb(38, 38, 38); background-color: rgb(254, 254, 254);\">\"With regards to staging an attack on Taiwan, they currently have the ability. But [China] has to pay the price,\" Chiu Kuo-cheng, the defense minister, told Taiwanese journalists on Wednesday.</div><div class=\"zn-body__paragraph\" data-paragraph-id=\"paragraph_C80D5914-992E-24EA-3EA9-545C01E3C0B4\" style=\"margin-bottom: 15px; font-family: CNN, &quot;Helvetica Neue&quot;, Helvetica, Arial, Utkal, sans-serif; -webkit-font-smoothing: antialiased; font-size: 1.2rem; line-height: 1.66667; margin-right: 0px; color: rgb(38, 38, 38); background-color: rgb(254, 254, 254);\">But he said that by 2025, that price will be lower -- and China will be able to mount a \"full-scale\" invasion.</div><div class=\"zn-body__paragraph\" data-paragraph-id=\"paragraph_C80D5914-992E-24EA-3EA9-545C01E3C0B4\" style=\"margin-bottom: 15px; font-family: CNN, &quot;Helvetica Neue&quot;, Helvetica, Arial, Utkal, sans-serif; -webkit-font-smoothing: antialiased; font-size: 1.2rem; line-height: 1.66667; margin-right: 0px; color: rgb(38, 38, 38); background-color: rgb(254, 254, 254);\"><div class=\"zn-body__paragraph\" data-paragraph-id=\"paragraph_8B5F992A-A13F-D8DD-02C9-546855E6DEA7\" style=\"margin-bottom: 15px; -webkit-font-smoothing: antialiased; font-size: 1.2rem; line-height: 1.66667; margin-right: 0px;\">At a parliament meeting Wednesday, Chiu described cross-strait military tensions as \"the most serious\" in more than 40 years since he joined the military, Taiwan\'s official Central News Agency (CNA) reported.</div><div class=\"zn-body__read-all\" style=\"font-size: 15px;\"><div class=\"zn-body__paragraph\" data-paragraph-id=\"paragraph_4A417E32-C4B0-DB98-57AD-54673CF4D7EC\" style=\"margin-bottom: 15px; -webkit-font-smoothing: antialiased; font-size: 1.2rem; line-height: 1.66667; margin-right: 0px;\">At the meeting, the Taiwan military submitted a report to lawmakers saying China\'s anti-intervention and blockade capabilities around the Taiwan Strait will become mature by 2025, according to CNA.</div><div class=\"zn-body__paragraph\" data-paragraph-id=\"paragraph_F969727E-1BD0-ED94-4AD3-5467CEBAC0CD\" style=\"margin-bottom: 15px; -webkit-font-smoothing: antialiased; font-size: 1.2rem; line-height: 1.66667; margin-right: 0px;\">The lawmakers also reviewed an $8.6 billion special defense budget for homemade weapons, including missiles and warships.</div></div></div><div class=\"zn-body__paragraph\" data-paragraph-id=\"paragraph_C80D5914-992E-24EA-3EA9-545C01E3C0B4\" style=\"margin-bottom: 15px; font-family: CNN, &quot;Helvetica Neue&quot;, Helvetica, Arial, Utkal, sans-serif; -webkit-font-smoothing: antialiased; font-size: 1.2rem; line-height: 1.66667; margin-right: 0px; color: rgb(38, 38, 38); background-color: rgb(254, 254, 254);\"><br></div><div class=\"zn-body__paragraph\" data-paragraph-id=\"paragraph_C80D5914-992E-24EA-3EA9-545C01E3C0B4\" style=\"margin-bottom: 15px; font-family: CNN, &quot;Helvetica Neue&quot;, Helvetica, Arial, Utkal, sans-serif; -webkit-font-smoothing: antialiased; font-size: 1.2rem; line-height: 1.66667; margin-right: 0px; color: rgb(38, 38, 38); background-color: rgb(254, 254, 254);\"><br></div>', '61740400_1634224004.jpg', 'publish', '2021-10-14', 'admin', '7'),
(11, 'Tesla: Elon Musk says company headquarters will move to Texas', 'Tesla', '<div data-component=\"text-block\" class=\"ssrcss-uf6wea-RichTextComponentWrapper e1xue1i86\" style=\"margin: 1rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: ReithSans, Helvetica, Arial, freesans, sans-serif; vertical-align: baseline; max-width: 36.25rem; color: rgb(63, 63, 66);\"><div class=\"ssrcss-18snukc-RichTextContainer e5tfeyi1\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; overflow-wrap: break-word;\"><p class=\"ssrcss-1q0x1qg-Paragraph eq5iqo00\" style=\"margin-bottom: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><b class=\"ssrcss-hmf8ql-BoldText e5tfeyi3\" style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Tesla has announced it will move its company headquarters to Texas from California.</b></p></div></div><div data-component=\"text-block\" class=\"ssrcss-uf6wea-RichTextComponentWrapper e1xue1i86\" style=\"margin: 1rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: ReithSans, Helvetica, Arial, freesans, sans-serif; vertical-align: baseline; max-width: 36.25rem; color: rgb(63, 63, 66);\"><div class=\"ssrcss-18snukc-RichTextContainer e5tfeyi1\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; overflow-wrap: break-word;\"><p class=\"ssrcss-1q0x1qg-Paragraph eq5iqo00\" style=\"margin-bottom: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">Chief executive Elon Musk announced the move at the electric carmaker\'s annual shareholders\' meeting in Austin.</p></div></div><div data-component=\"text-block\" class=\"ssrcss-uf6wea-RichTextComponentWrapper e1xue1i86\" style=\"margin: 1rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: ReithSans, Helvetica, Arial, freesans, sans-serif; vertical-align: baseline; max-width: 36.25rem; color: rgb(63, 63, 66);\"><div class=\"ssrcss-18snukc-RichTextContainer e5tfeyi1\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; overflow-wrap: break-word;\"><p class=\"ssrcss-1q0x1qg-Paragraph eq5iqo00\" style=\"margin-bottom: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">Mr Musk had fallen out with local politicians in Alameda county, California, the location of a key Tesla factory, over its Covid response.</p></div></div><div data-component=\"text-block\" class=\"ssrcss-uf6wea-RichTextComponentWrapper e1xue1i86\" style=\"margin: 1rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: ReithSans, Helvetica, Arial, freesans, sans-serif; vertical-align: baseline; max-width: 36.25rem; color: rgb(63, 63, 66);\"><div class=\"ssrcss-18snukc-RichTextContainer e5tfeyi1\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; overflow-wrap: break-word;\"><p class=\"ssrcss-1q0x1qg-Paragraph eq5iqo00\" style=\"margin-bottom: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">He gave several reasons for the move, telling shareholders its Californian factory in Fremont was \"jammed\".</p></div></div><div data-component=\"text-block\" class=\"ssrcss-uf6wea-RichTextComponentWrapper e1xue1i86\" style=\"margin: 1rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: ReithSans, Helvetica, Arial, freesans, sans-serif; vertical-align: baseline; max-width: 36.25rem; color: rgb(63, 63, 66);\"><div class=\"ssrcss-18snukc-RichTextContainer e5tfeyi1\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; overflow-wrap: break-word;\"><p class=\"ssrcss-1q0x1qg-Paragraph eq5iqo00\" style=\"margin-bottom: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">California was also a difficult place for his employees to find affordable housing, he told shareholders.</p></div></div><div data-component=\"text-block\" class=\"ssrcss-uf6wea-RichTextComponentWrapper e1xue1i86\" style=\"margin: 1rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: ReithSans, Helvetica, Arial, freesans, sans-serif; vertical-align: baseline; max-width: 36.25rem; color: rgb(63, 63, 66);\"><div class=\"ssrcss-18snukc-RichTextContainer e5tfeyi1\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; overflow-wrap: break-word;\"><p class=\"ssrcss-1q0x1qg-Paragraph eq5iqo00\" style=\"margin-bottom: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">\"There\'s a limit to how big you can scale it in the Bay Area. In Austin our factory is like five minutes from the airport, 15 minutes from downtown,\" he said.</p></div></div>', '14363900_1634224207.jpg', 'publish', '2021-10-14', 'admin', '8'),
(12, 'Bitcoin: Bank deputy calls for urgent crypto regulation', 'Bitcoin', '<div data-component=\"text-block\" class=\"ssrcss-uf6wea-RichTextComponentWrapper e1xue1i86\" style=\"margin: 1rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: ReithSans, Helvetica, Arial, freesans, sans-serif; vertical-align: baseline; max-width: 36.25rem; color: rgb(63, 63, 66);\"><div class=\"ssrcss-18snukc-RichTextContainer e5tfeyi1\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; overflow-wrap: break-word;\"><p class=\"ssrcss-1q0x1qg-Paragraph eq5iqo00\" style=\"margin-bottom: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><b class=\"ssrcss-hmf8ql-BoldText e5tfeyi3\" style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Cryptocurrencies need regulation as a \"matter of urgency\", according to Bank of England deputy governor Sir Jon Cunliffe.</b></p></div></div><div data-component=\"text-block\" class=\"ssrcss-uf6wea-RichTextComponentWrapper e1xue1i86\" style=\"margin: 1rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: ReithSans, Helvetica, Arial, freesans, sans-serif; vertical-align: baseline; max-width: 36.25rem; color: rgb(63, 63, 66);\"><div class=\"ssrcss-18snukc-RichTextContainer e5tfeyi1\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; overflow-wrap: break-word;\"><p class=\"ssrcss-1q0x1qg-Paragraph eq5iqo00\" style=\"margin-bottom: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">Crypto technologies do not pose a risk to financial stability at the moment, he said.<span style=\"font-family: inherit; font-size: inherit; font-style: inherit; font-variant-ligatures: inherit; font-variant-caps: inherit; font-weight: inherit;\">A future cryptocurrency collapse could spread through markets, he warned.</span></p><div data-component=\"text-block\" class=\"ssrcss-uf6wea-RichTextComponentWrapper e1xue1i86\" style=\"margin: 1rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; max-width: 36.25rem;\"><div class=\"ssrcss-18snukc-RichTextContainer e5tfeyi1\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; overflow-wrap: break-word;\"><p class=\"ssrcss-1q0x1qg-Paragraph eq5iqo00\" style=\"margin-bottom: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">A severe fall in the value of crypto-assets - for example, to zero - could force investors who have taken on debt with brokers to have to find cash to pay them.</p></div></div><div data-component=\"text-block\" class=\"ssrcss-uf6wea-RichTextComponentWrapper e1xue1i86\" style=\"margin: 1rem 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline; max-width: 36.25rem;\"><div class=\"ssrcss-18snukc-RichTextContainer e5tfeyi1\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; overflow-wrap: break-word;\"><p class=\"ssrcss-1q0x1qg-Paragraph eq5iqo00\" style=\"margin-bottom: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">\"Similarly, there is the possibility of contagion,\" he said. \"A large fall in crypto valuations could affect investor risk sentiment more broadly, causing investors to sell other assets that are judged to be risky and those perceived to have a similar investor base.</p></div></div></div></div>', '32902800_1634226179.jpg', 'publish', '2021-10-14', 'admin', '7'),
(15, 'Planet Squid Gam', 'Korea', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Miller Text&quot;, Georgia, serif; font-size: 18px;\">Netflix’s ability to turn non-English-language shows into worldwide hits is nothing new, with series such as&nbsp;</span><em style=\"box-sizing: inherit; -webkit-font-smoothing: antialiased; text-rendering: optimizelegibility; color: rgb(0, 0, 0); font-family: &quot;Miller Text&quot;, Georgia, serif; font-size: 18px;\">Narcos, Dark, La Casa de Papel (Money Heist)</em><span style=\"color: rgb(0, 0, 0); font-family: &quot;Miller Text&quot;, Georgia, serif; font-size: 18px;\">, and&nbsp;</span><em style=\"box-sizing: inherit; -webkit-font-smoothing: antialiased; text-rendering: optimizelegibility; color: rgb(0, 0, 0); font-family: &quot;Miller Text&quot;, Georgia, serif; font-size: 18px;\">Elite</em><span style=\"color: rgb(0, 0, 0); font-family: &quot;Miller Text&quot;, Georgia, serif; font-size: 18px;\">&nbsp;all breaking out in big ways over the past five years. But those triumphs are starting to pale next to the emerging success of&nbsp;</span><em style=\"box-sizing: inherit; -webkit-font-smoothing: antialiased; text-rendering: optimizelegibility; color: rgb(0, 0, 0); font-family: &quot;Miller Text&quot;, Georgia, serif; font-size: 18px;\">Squid Game</em><span style=\"color: rgb(0, 0, 0); font-family: &quot;Miller Text&quot;, Georgia, serif; font-size: 18px;\">, a hugely addictive dystopian drama from South Korea that, barely two weeks after its premiere, has become a massive social-media phenom — and the No. 1 show on the streamer’s popularity charts in 90 countries, including the United States. Just how big is it? Netflix co-CEO Ted Sarandos&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Miller Text&quot;, Georgia, serif; font-size: 18px;\">this week predicting that writer-director Hwang Dong-hyuk’s creation might soon dethrone&nbsp;</span><em style=\"box-sizing: inherit; -webkit-font-smoothing: antialiased; text-rendering: optimizelegibility; color: rgb(0, 0, 0); font-family: &quot;Miller Text&quot;, Georgia, serif; font-size: 18px;\">Bridgerton</em><span style=\"color: rgb(0, 0, 0); font-family: &quot;Miller Text&quot;, Georgia, serif; font-size: 18px;\">&nbsp;and&nbsp;</span><em style=\"box-sizing: inherit; -webkit-font-smoothing: antialiased; text-rendering: optimizelegibility; color: rgb(0, 0, 0); font-family: &quot;Miller Text&quot;, Georgia, serif; font-size: 18px;\">The Witcher&nbsp;</em><span style=\"color: rgb(0, 0, 0); font-family: &quot;Miller Text&quot;, Georgia, serif; font-size: 18px;\">as the platform’s most sampled original series launch&nbsp;</span><em style=\"box-sizing: inherit; -webkit-font-smoothing: antialiased; text-rendering: optimizelegibility; color: rgb(0, 0, 0); font-family: &quot;Miller Text&quot;, Georgia, serif; font-size: 18px;\">ever.</em><br>', '14522800_1634226894.jpg', 'publish', '2021-10-14', 'admin', '6'),
(16, 'France wins UEFA Nations League as VAR decision leaves Spain frustrated', 'France', '<div class=\"el__leafmedia el__leafmedia--sourced-paragraph\" style=\"color: rgb(38, 38, 38); font-family: CNN, &quot;Helvetica Neue&quot;, Helvetica, Arial, Utkal, sans-serif; font-size: 15px; background-color: rgb(254, 254, 254);\"><p class=\"zn-body__paragraph speakable\" data-paragraph-id=\"paragraph_2FB7C080-356D-7B44-4628-6EB6A5E79F91\" style=\"margin-bottom: 15px; -webkit-font-smoothing: antialiased; font-size: 1.2rem; line-height: 1.66667;\"><cite class=\"el-editorial-source\" style=\"font-family: CNN, &quot;Helvetica Neue&quot;, Verdana, Geneva, sans-serif; font-style: normal; font-weight: 700;\">(CNN)</cite>France came from behind to defeat Spain and claim the UEFA Nations League on Sunday thanks to goals from Karim Benzema and Kylian Mbappé.</p></div><div class=\"zn-body__paragraph\" data-paragraph-id=\"paragraph_C34CC08E-EA1A-AC76-3ED6-6EBAC711056F\" style=\"margin-bottom: 15px; font-family: CNN, &quot;Helvetica Neue&quot;, Helvetica, Arial, Utkal, sans-serif; -webkit-font-smoothing: antialiased; font-size: 1.2rem; line-height: 1.66667; margin-right: 0px; color: rgb(38, 38, 38); background-color: rgb(254, 254, 254);\">The 2-1 victory at the San Siro in Milan sees France become the second country to win the Nations League as Spain\'s players were left frustrated by Mbappé\'s contentious winner.</div><div class=\"zn-body__paragraph\" data-paragraph-id=\"paragraph_812E8F23-050D-C869-1369-6EC119563E64\" style=\"margin-bottom: 15px; font-family: CNN, &quot;Helvetica Neue&quot;, Helvetica, Arial, Utkal, sans-serif; -webkit-font-smoothing: antialiased; font-size: 1.2rem; line-height: 1.66667; margin-right: 0px; color: rgb(38, 38, 38); background-color: rgb(254, 254, 254);\">Mikel Oyarzabal had opened the scoring in the second half when he finished off Sergio Busquets\' pass, but France equalized moments later as Karim Benzema fired a wonderful, curling shot into the top corner past Unai Simón.</div><ul class=\"cn cn-list-hierarchical-xs cn--idx-4 cn-zoneAdContainer\" data-layout=\"list-hierarchical-xs\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; list-style: none; color: rgb(38, 38, 38); font-family: CNN, &quot;Helvetica Neue&quot;, Helvetica, Arial, Utkal, sans-serif; font-size: 15px; background-color: rgb(254, 254, 254);\"></ul><div class=\"zn-body__paragraph\" data-paragraph-id=\"paragraph_FD4D62E7-A518-DE8A-A6F0-6EC9440A6554\" style=\"margin-bottom: 15px; font-family: CNN, &quot;Helvetica Neue&quot;, Helvetica, Arial, Utkal, sans-serif; -webkit-font-smoothing: antialiased; font-size: 1.2rem; line-height: 1.66667; margin-right: 0px; color: rgb(38, 38, 38); background-color: rgb(254, 254, 254);\">Then with 10 minutes remaining, Mbappé got behind Spain\'s defensive line and calmly finished past Simón -- a goal that was allowed to stand following a video assistant referee (VAR) review.</div>', '52972400_1634227579.jpg', 'publish', '2021-10-14', 'admin', '9'),
(17, 'Wales international David Brooks, 24, reveals cancer diagnosis', 'David Brooks', '<div class=\"el__leafmedia el__leafmedia--sourced-paragraph\" style=\"color: rgb(38, 38, 38); font-family: CNN, &quot;Helvetica Neue&quot;, Helvetica, Arial, Utkal, sans-serif; font-size: 15px; background-color: rgb(254, 254, 254);\"><div class=\"el__leafmedia el__leafmedia--sourced-paragraph\"><p class=\"zn-body__paragraph speakable\" data-paragraph-id=\"paragraph_4B8B5F8F-E78A-303D-4B73-7A6BDB5DE8F9\" style=\"margin-bottom: 15px; -webkit-font-smoothing: antialiased; font-size: 1.2rem; line-height: 1.66667;\"><cite class=\"el-editorial-source\" style=\"font-family: CNN, &quot;Helvetica Neue&quot;, Verdana, Geneva, sans-serif; font-style: normal; font-weight: 700;\">(CNN)</cite>Wales international David Brooks has revealed he\'s been diagnosed with stage two Hodgkin Lymphoma.</p></div><div class=\"zn-body__paragraph\" data-paragraph-id=\"paragraph_375FE488-B9BF-5EA9-58CD-7A6CA0750750\" style=\"margin-bottom: 15px; -webkit-font-smoothing: antialiased; font-size: 1.2rem; line-height: 1.66667; margin-right: 0px;\">The 24-year-old, who currently plays for Bournemouth in the second tier of English football, posted a message on Twitter Wednesday saying he will start treatment next week.</div><ul class=\"cn cn-list-hierarchical-xs cn--idx-4 cn-zoneAdContainer\" data-layout=\"list-hierarchical-xs\" style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; list-style: none;\"></ul><div class=\"zn-body__paragraph\" data-paragraph-id=\"paragraph_DA35C61F-D71C-7086-4501-7A8BC99B7772\" style=\"margin-bottom: 15px; -webkit-font-smoothing: antialiased; font-size: 1.2rem; line-height: 1.66667; margin-right: 0px;\">Lymphoma is a form of cancer that affects the lymph system, or \"tissues and organs that produce, store, and carry white blood cells that fight infections,\" according to the US Centers for Disease Control and Prevention.</div><div class=\"zn-body__read-all\"><div class=\"zn-body__paragraph\" data-paragraph-id=\"paragraph_EC5CF3C2-C010-993A-8565-7A70AC5159D8\" style=\"margin-bottom: 15px; -webkit-font-smoothing: antialiased; font-size: 1.2rem; line-height: 1.66667; margin-right: 0px;\">\"Although this has come as a shock to myself and my family, the prognosis is a positive one and I am confident that I will make a full recovery and be back playing as soon as possible,\" added Brooks.</div><div class=\"zn-body__paragraph\" data-paragraph-id=\"paragraph_97D1ED1D-E781-8EB3-6958-7A6FEB6E3B53\" style=\"margin-bottom: 15px; -webkit-font-smoothing: antialiased; font-size: 1.2rem; line-height: 1.66667; margin-right: 0px;\">Brooks, who played in the English Premier League before Bournemouth\'s relegation in 2020, and who is considered one of his country\'s most promising talents, withdrew from the Wales squad through illness last week.</div><div class=\"zn-body__paragraph\" data-paragraph-id=\"paragraph_4E09B680-682D-83C0-0EF4-7A7199714C7C\" style=\"margin-bottom: 15px; -webkit-font-smoothing: antialiased; font-size: 1.2rem; line-height: 1.66667; margin-right: 0px;\">He thanked the medical staff for spotting potential symptoms and for the doctors who diagnosed him.</div><div class=\"zn-body__paragraph\" data-paragraph-id=\"paragraph_90F02504-24F4-35FF-E978-7A725E020B90\" style=\"margin-bottom: 15px; -webkit-font-smoothing: antialiased; font-size: 1.2rem; line-height: 1.66667; margin-right: 0px;\">\"I\'d like to show my appreciation to the doctors, nurses, consultants and staff who have been treating me for their professionalism, warmth and understanding during this period,\" he added.</div><div class=\"zn-body__paragraph\" data-paragraph-id=\"paragraph_FBCC4962-09CF-C4B8-BA68-7A725EF68F62\" style=\"margin-bottom: 15px; -webkit-font-smoothing: antialiased; font-size: 1.2rem; line-height: 1.66667; margin-right: 0px;\">\"I want to thank everyone at the Football Association of Wales because without the swift attention of their medical team we may not have detected the illness.</div><div class=\"zn-body__paragraph\" data-paragraph-id=\"paragraph_8A04652F-6812-6A64-0CDD-7A725EF68220\" style=\"margin-bottom: 15px; -webkit-font-smoothing: antialiased; font-size: 1.2rem; line-height: 1.66667; margin-right: 0px;\">\"I\'d also like to say thank you to AFC Bournemouth for all of their support and assistance this past week.\"</div></div></div>', '47459900_1634227792.jpg', 'publish', '2021-10-14', 'admin', '9');

-- --------------------------------------------------------

--
-- Structure de la table `blog_categories`
--

DROP TABLE IF EXISTS `blog_categories`;
CREATE TABLE IF NOT EXISTS `blog_categories` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `name`) VALUES
(6, 'entertainment'),
(7, 'politics'),
(8, 'business'),
(9, 'Sports');

-- --------------------------------------------------------

--
-- Structure de la table `editors_choice`
--

DROP TABLE IF EXISTS `editors_choice`;
CREATE TABLE IF NOT EXISTS `editors_choice` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `blog` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog` (`blog`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `editors_choice`
--

INSERT INTO `editors_choice` (`id`, `blog`) VALUES
(4, 9),
(5, 11);

-- --------------------------------------------------------

--
-- Structure de la table `links`
--

DROP TABLE IF EXISTS `links`;
CREATE TABLE IF NOT EXISTS `links` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `facebook` varchar(40) DEFAULT NULL,
  `twitter` varchar(40) DEFAULT NULL,
  `googleplus` varchar(40) DEFAULT NULL,
  `pinterest` varchar(40) DEFAULT NULL,
  `dribble` varchar(40) DEFAULT NULL,
  `comments_script` text,
  `sharing_script` text,
  `javascript` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `links`
--

INSERT INTO `links` (`id`, `facebook`, `twitter`, `googleplus`, `pinterest`, `dribble`, `comments_script`, `sharing_script`, `javascript`) VALUES
(1, 'http://www.facebook.com', 'http://www.twitter.com', 'http://www.plus.google.com', 'http://www.pinterest.com', 'http://www.dribble.com', '<div class=\"fb-comments container\" data-href=\"http://www.uoecu.org/newsview.php?id=<?php echo $row[\'id\'];?>\" data-numposts=\"20\" width=\"100%\"></div>', '<div class=\"addthis_sharing_toolbox\"></div>', '<script>(function(d, s, id) {\r\n		var js, fjs = d.getElementsByTagName(s)[0];\r\n		if (d.getElementById(id)) return;\r\n		js = d.createElement(s); js.id = id;\r\n		js.src = \'https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.11&appId=298807240601869\';\r\n		fjs.parentNode.insertBefore(js, fjs);\r\n	}(document, \'script\', \'facebook-jssdk\'));</script>\r\n<script type=\"text/javascript\" src=\"//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-57587edcb1479678\"></script>');

-- --------------------------------------------------------

--
-- Structure de la table `membership_grouppermissions`
--

DROP TABLE IF EXISTS `membership_grouppermissions`;
CREATE TABLE IF NOT EXISTS `membership_grouppermissions` (
  `permissionID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `groupID` int(11) DEFAULT NULL,
  `tableName` varchar(100) DEFAULT NULL,
  `allowInsert` tinyint(4) DEFAULT NULL,
  `allowView` tinyint(4) NOT NULL DEFAULT '0',
  `allowEdit` tinyint(4) NOT NULL DEFAULT '0',
  `allowDelete` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`permissionID`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `membership_grouppermissions`
--

INSERT INTO `membership_grouppermissions` (`permissionID`, `groupID`, `tableName`, `allowInsert`, `allowView`, `allowEdit`, `allowDelete`) VALUES
(5, 2, 'banner_posts', 1, 3, 3, 3),
(32, 3, 'titles', 0, 0, 0, 0),
(33, 3, 'links', 0, 0, 0, 0),
(34, 3, 'blog_categories', 0, 3, 0, 0),
(35, 3, 'blogs', 1, 1, 1, 1),
(36, 3, 'editors_choice', 0, 0, 0, 0),
(42, 1, 'titles', 0, 0, 0, 0),
(43, 1, 'links', 0, 0, 0, 0),
(44, 1, 'blog_categories', 0, 0, 0, 0),
(45, 1, 'blogs', 0, 0, 0, 0),
(46, 1, 'editors_choice', 0, 0, 0, 0),
(52, 2, 'titles', 1, 3, 3, 3),
(53, 2, 'links', 1, 3, 3, 3),
(54, 2, 'blog_categories', 1, 3, 3, 3),
(55, 2, 'blogs', 1, 3, 3, 3),
(56, 2, 'editors_choice', 1, 3, 3, 3);

-- --------------------------------------------------------

--
-- Structure de la table `membership_groups`
--

DROP TABLE IF EXISTS `membership_groups`;
CREATE TABLE IF NOT EXISTS `membership_groups` (
  `groupID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `description` text,
  `allowSignup` tinyint(4) DEFAULT NULL,
  `needsApproval` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`groupID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `membership_groups`
--

INSERT INTO `membership_groups` (`groupID`, `name`, `description`, `allowSignup`, `needsApproval`) VALUES
(1, 'anonymous', 'Anonymous group created automatically on 2021-10-18', 0, 0),
(2, 'Admins', 'Admin group created automatically on 2021-10-21', 0, 1),
(3, 'authors', 'contains all the guest authors', 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `membership_userpermissions`
--

DROP TABLE IF EXISTS `membership_userpermissions`;
CREATE TABLE IF NOT EXISTS `membership_userpermissions` (
  `permissionID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `memberID` varchar(20) NOT NULL,
  `tableName` varchar(100) DEFAULT NULL,
  `allowInsert` tinyint(4) DEFAULT NULL,
  `allowView` tinyint(4) NOT NULL DEFAULT '0',
  `allowEdit` tinyint(4) NOT NULL DEFAULT '0',
  `allowDelete` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`permissionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `membership_userrecords`
--

DROP TABLE IF EXISTS `membership_userrecords`;
CREATE TABLE IF NOT EXISTS `membership_userrecords` (
  `recID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tableName` varchar(100) DEFAULT NULL,
  `pkValue` varchar(255) DEFAULT NULL,
  `memberID` varchar(20) DEFAULT NULL,
  `dateAdded` bigint(20) UNSIGNED DEFAULT NULL,
  `dateUpdated` bigint(20) UNSIGNED DEFAULT NULL,
  `groupID` int(11) DEFAULT NULL,
  PRIMARY KEY (`recID`),
  UNIQUE KEY `tableName_pkValue` (`tableName`,`pkValue`),
  KEY `pkValue` (`pkValue`),
  KEY `tableName` (`tableName`),
  KEY `memberID` (`memberID`),
  KEY `groupID` (`groupID`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `membership_userrecords`
--

INSERT INTO `membership_userrecords` (`recID`, `tableName`, `pkValue`, `memberID`, `dateAdded`, `dateUpdated`, `groupID`) VALUES
(1, 'titles', '1', 'admin', 1524766759, 1634221189, 2),
(2, 'links', '1', 'admin', 1524766827, 1524878963, 2),
(9, 'banner_posts', '1', 'admin', 1524779492, 1524779492, 2),
(13, 'editors_choice', '1', 'admin', 1524799889, 1524799889, 2),
(14, 'editors_choice', '2', 'admin', 1524799903, 1524799903, 2),
(17, 'blog_categories', '6', 'etemesi', 1524858044, 1524858044, 3),
(18, 'blog_categories', '7', 'admin', 1634221363, 1634221363, 2),
(19, 'blog_categories', '8', 'admin', 1634221378, 1634221409, 2),
(21, 'editors_choice', '3', 'admin', 1634222668, 1634222668, 2),
(23, 'blogs', '9', 'admin', 1634223633, 1634223767, 2),
(24, 'blogs', '10', 'admin', 1634224004, 1634224004, 2),
(25, 'blogs', '11', 'admin', 1634224207, 1634224207, 2),
(26, 'blogs', '12', 'admin', 1634226179, 1634226179, 2),
(29, 'blogs', '15', 'admin', 1634226894, 1634226894, 2),
(30, 'blog_categories', '9', 'admin', 1634226957, 1634226957, 2),
(31, 'blogs', '16', 'admin', 1634227579, 1634227579, 2),
(32, 'blogs', '17', 'admin', 1634227792, 1634227792, 2),
(33, 'editors_choice', '4', 'admin', 1634227878, 1634227878, 2),
(34, 'editors_choice', '5', 'admin', 1634227890, 1634227890, 2);

-- --------------------------------------------------------

--
-- Structure de la table `membership_users`
--

DROP TABLE IF EXISTS `membership_users`;
CREATE TABLE IF NOT EXISTS `membership_users` (
  `memberID` varchar(20) NOT NULL,
  `passMD5` varchar(40) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `signupDate` date DEFAULT NULL,
  `groupID` int(10) UNSIGNED DEFAULT NULL,
  `isBanned` tinyint(4) DEFAULT NULL,
  `isApproved` tinyint(4) DEFAULT NULL,
  `custom1` text,
  `custom2` text,
  `custom3` text,
  `custom4` text,
  `comments` text,
  `pass_reset_key` varchar(100) DEFAULT NULL,
  `pass_reset_expiry` int(10) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`memberID`),
  KEY `groupID` (`groupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `membership_users`
--

INSERT INTO `membership_users` (`memberID`, `passMD5`, `email`, `signupDate`, `groupID`, `isBanned`, `isApproved`, `custom1`, `custom2`, `custom3`, `custom4`, `comments`, `pass_reset_key`, `pass_reset_expiry`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 'khalifa@gmail.com', '2021-10-14', 2, 0, 1, NULL, NULL, NULL, NULL, 'Admin member created automatically on 2018-04-26\nRecord updated automatically on 2018-04-27', NULL, NULL),
('guest', NULL, NULL, '2021-10-14', 1, 0, 1, NULL, NULL, NULL, NULL, 'Anonymous member created automatically on 2021-10-14', NULL, NULL),
('khali', 'e7247759c1633c0f9f1485f3690294a9', 'khalifaniamadio@gmail.com', '2021-10-14', 3, 0, 1, 'Khalifa Mamadou niamadio', 'zac mbao', 'dakar', '775675316', 'member signed up through the registration form.', NULL, NULL),
('khalifa', '7e29b033790cb4764de4165652ced5b5', 'khalifaniamadio@gmail.com', '2021-10-21', 3, 0, 1, 'Khalifa Mamadou niamadio', 'zac mbao', 'dakar', '775675316', 'member signed up through the registration form.', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `page_hits`
--

DROP TABLE IF EXISTS `page_hits`;
CREATE TABLE IF NOT EXISTS `page_hits` (
  `page` varchar(255) NOT NULL,
  `count` int(11) DEFAULT NULL,
  PRIMARY KEY (`page`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `page_hits`
--

INSERT INTO `page_hits` (`page`, `count`) VALUES
('Benefits of livig in this world', 6),
('Bitcoin: Bank deputy calls for urgent crypto regulation', 2),
('France wins UEFA Nations League as VAR decision leaves Spain frustrated', 3),
('Fumio Kishida takes office', 7),
('Planet Squid Gam', 2),
('rrgg', 1),
('Tesla: Elon Musk says company headquarters will move to Texas', 7),
('The challanges of being a writter', 6),
('The future of web developement on earth', 19),
('The subtle art of not giving a fuck-Mark Manson', 23),
('Wales international David Brooks, 24, reveals cancer diagnosis', 3),
('Why i ventured into writting as a proffesion', 2);

-- --------------------------------------------------------

--
-- Structure de la table `titles`
--

DROP TABLE IF EXISTS `titles`;
CREATE TABLE IF NOT EXISTS `titles` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `website_name` varchar(40) DEFAULT NULL,
  `tagline` varchar(40) DEFAULT NULL,
  `icon` varchar(40) DEFAULT NULL,
  `keywords` varchar(220) DEFAULT NULL,
  `short_description` varchar(200) DEFAULT NULL,
  `bannertext1` varchar(150) DEFAULT NULL,
  `bannertext2` varchar(150) DEFAULT NULL,
  `bannertext3` varchar(150) DEFAULT NULL,
  `bannertext4` varchar(150) DEFAULT NULL,
  `detailed_description` text,
  `address` varchar(40) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  `phone` varchar(40) DEFAULT NULL,
  `googlemap` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `titles`
--

INSERT INTO `titles` (`id`, `website_name`, `tagline`, `icon`, `keywords`, `short_description`, `bannertext1`, `bannertext2`, `bannertext3`, `bannertext4`, `detailed_description`, `address`, `email`, `phone`, `googlemap`) VALUES
(1, 'Responsive Blog', 'Blogging For Passion', '18139400_1634221189.jpg', 'blog,tech blog,tricks,hacks,technology news,fantastic blog', 'With K-A-P get news 24/7', 'With K-A-P get news 24/7', 'Latest news about your favorites celebs', 'Politics and world affairs', 'Science and technology', 'This is a blog and content management system,You can easily setup your blog and customize it according to your needs.It is easy to use and manage.Multiple users can signup and be able contribute content.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Dakar, SN', 'khalifa@gmail.com', '771391661', 'https://maps.google.com/maps?q=DAKAR&t=k&z=13&ie=UTF8&iwloc=&output=embed');

-- --------------------------------------------------------

--
-- Structure de la table `visitor_info`
--

DROP TABLE IF EXISTS `visitor_info`;
CREATE TABLE IF NOT EXISTS `visitor_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(255) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `time_accessed` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `visitor_info`
--

INSERT INTO `visitor_info` (`id`, `ip_address`, `user_agent`, `time_accessed`) VALUES
(1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 16:26:52'),
(2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 16:27:01'),
(3, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 16:27:40'),
(4, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 16:27:55'),
(5, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 16:28:01'),
(6, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 16:28:12'),
(7, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 16:28:19'),
(8, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 16:28:22'),
(9, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 16:28:29'),
(10, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 16:28:32'),
(11, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 16:28:35'),
(12, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 16:28:38'),
(13, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 16:29:05'),
(14, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 16:29:09'),
(15, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 16:29:18'),
(16, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 16:29:25'),
(17, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 16:29:28'),
(18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 16:29:51'),
(19, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 16:29:57'),
(20, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 16:30:00'),
(21, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 16:30:07'),
(22, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 16:30:15'),
(23, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 16:39:41'),
(24, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 16:40:41'),
(25, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 16:41:27'),
(26, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 17:26:10'),
(27, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 17:27:34'),
(28, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 17:28:20'),
(29, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 17:28:42'),
(30, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 17:30:26'),
(31, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 17:30:38'),
(32, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 17:30:41'),
(33, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 17:30:43'),
(34, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 17:30:45'),
(35, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 17:30:48'),
(36, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 17:30:51'),
(37, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 17:30:53'),
(38, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 17:30:56'),
(39, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 17:30:59'),
(40, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 17:32:02'),
(41, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 17:32:05'),
(42, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 17:32:07'),
(43, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 17:32:10'),
(44, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 19:08:04'),
(45, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 19:08:14'),
(46, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 21:43:06'),
(47, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 21:47:01'),
(48, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 21:47:08'),
(49, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 21:48:58'),
(50, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 21:49:18'),
(51, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-27 22:22:28'),
(52, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-28 01:41:41'),
(53, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-28 01:43:58'),
(54, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', '2018-04-28 01:46:23'),
(55, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36', '2021-10-14 13:15:20'),
(56, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36', '2021-10-14 13:30:19'),
(57, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36', '2021-10-14 15:00:44'),
(58, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36', '2021-10-14 15:01:51'),
(59, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36', '2021-10-14 15:02:50'),
(60, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36', '2021-10-14 15:03:10'),
(61, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36', '2021-10-14 15:10:39'),
(62, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36', '2021-10-14 15:50:55'),
(63, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36', '2021-10-14 15:54:59'),
(64, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36', '2021-10-14 16:06:28'),
(65, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36', '2021-10-14 16:10:02'),
(66, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36', '2021-10-14 16:10:30'),
(67, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36', '2021-10-14 16:11:42'),
(68, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36', '2021-10-14 16:12:05'),
(69, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36', '2021-10-14 16:25:11'),
(70, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36', '2021-10-14 16:25:17'),
(71, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36', '2021-10-14 19:45:24'),
(72, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36', '2021-10-14 19:45:33'),
(73, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36', '2021-10-14 19:45:47'),
(74, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36', '2021-10-14 19:46:30'),
(75, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36', '2021-10-14 19:47:05'),
(76, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36', '2021-10-14 19:47:31'),
(77, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36', '2021-10-15 10:41:38'),
(78, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36', '2021-10-15 10:42:28'),
(79, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36', '2021-10-20 14:02:46'),
(80, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36', '2021-10-20 14:07:51'),
(81, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36', '2021-10-21 19:37:59');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
