-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 10, 2023 at 11:57 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `internship_task`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_12_10_042010_create_posts_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `image`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, '/placeholder.png', 'Et provident ipsa saepe quia deleniti quod harum occaecati ut repellendus ducimus vitae ratione.', 'Ullam quod et laborum nulla sint ut. Id officiis facere saepe alias incidunt. Et quas labore deleniti beatae laborum minus. Qui praesentium corrupti ad deserunt aperiam ullam ut eaque. Sunt cum ut sapiente quam possimus. Modi officiis sunt ullam soluta dolorum aut eum. Aliquid aut modi sint et. Voluptatum deleniti aut autem ad. Ut non et beatae quidem dolorum aut et. Similique temporibus numquam excepturi architecto quo. Maiores vel magni explicabo quo omnis voluptatem nam.', '2023-12-10 04:44:01', '2023-12-10 04:44:01'),
(2, 1, '/placeholder.png', 'Repudiandae assumenda est sit dolore temporibus quod provident omnis voluptatem ipsam aut.', 'Molestiae laborum eligendi et aspernatur nisi sed. Architecto in quasi a alias rerum odit. Labore esse ipsam officiis eligendi est. Et dolorem dolorem nihil. Sunt error quibusdam est qui sint. Et enim quia voluptas exercitationem debitis. Consectetur omnis quaerat itaque culpa adipisci. Animi eum incidunt et veniam. Et sequi expedita cum vel dolore quasi. Eligendi qui non quidem aut dolores facilis.', '2023-12-10 04:44:01', '2023-12-10 04:44:01'),
(3, 1, '/placeholder.png', 'Rerum fugit rerum aut velit aspernatur vel nam quo.', 'Voluptas voluptas facilis sequi esse impedit. Quisquam alias laborum expedita ratione voluptate eos. Dolorem unde recusandae eos rem error natus. At sunt vitae sint veritatis nam necessitatibus aut. Fugit autem praesentium mollitia minima dolor. Ratione hic dolores deleniti quia error voluptatem ratione. Cumque provident quam minima rerum. Nemo aliquid in earum aperiam laborum officia.', '2023-12-10 04:44:01', '2023-12-10 04:44:01'),
(4, 1, '/placeholder.png', 'Et tempore voluptate nostrum dolor corporis minus porro ut itaque voluptas cumque.', 'Quibusdam error sint assumenda facere et vel maxime iure. Doloribus quia ut ad. Et nisi accusamus earum iure saepe. Ut voluptas et illo porro aperiam rerum quia. Et et reiciendis voluptatibus atque assumenda eius. Tempora sunt quis eveniet aut earum et quae qui. Occaecati temporibus expedita laborum exercitationem adipisci architecto recusandae. Saepe sunt ut omnis. Et possimus placeat voluptatibus. Eum magnam omnis voluptas voluptatum ducimus.', '2023-12-10 04:44:01', '2023-12-10 04:44:01'),
(5, 1, '/placeholder.png', 'Tenetur excepturi non nemo ex quis nam facere doloremque illo.', 'Maiores eum voluptas eos error provident in. Minus nam rerum qui quo et qui minima. Rem et optio et accusamus et. Ipsam dicta consectetur nemo perspiciatis. Modi consequatur occaecati sed dolor. Aut perferendis et perferendis accusamus nobis. In magnam mollitia ut ex aspernatur qui quia autem. Vel amet et officia et excepturi vel sed. Voluptate ut voluptas libero quia consequuntur. Quas ut ut est iusto. Ad at ratione occaecati aut quis voluptates illo.', '2023-12-10 04:44:01', '2023-12-10 04:44:01'),
(6, 1, '/placeholder.png', 'Distinctio nam et tenetur id voluptatem et officiis ut.', 'Corrupti a dolorem molestias et. Tempora inventore vel nisi distinctio occaecati. Quam doloribus nemo saepe. Repellendus eveniet nobis itaque fugit. Et et est facere et vel ea libero. Dolore excepturi maxime sit quis. Quia vitae corrupti aut ad ea. Dolorem illum porro quibusdam iusto similique dolor repudiandae. Ad sint excepturi ad commodi repellat fugit atque qui. Beatae alias qui animi corrupti. Similique nihil maiores nostrum quia natus qui eius. Laudantium quidem ad rerum animi quidem.', '2023-12-10 04:44:01', '2023-12-10 04:44:01'),
(7, 1, '/placeholder.png', 'Ipsam eaque ut aut et pariatur aut repudiandae delectus pariatur.', 'Et sed dolor nobis tempore nihil eligendi. Unde neque non qui non. Tempore voluptatem placeat consequatur. Error assumenda quae placeat. Necessitatibus officia quasi sint explicabo distinctio. Praesentium dolores error tenetur sunt dolore enim quod. Voluptatem dolores nihil qui voluptas necessitatibus est in cum. Atque eius aliquid velit est reprehenderit vitae eos.', '2023-12-10 04:44:01', '2023-12-10 04:44:01'),
(8, 1, '/placeholder.png', 'Porro aut quia est ut voluptatem ipsam vero.', 'Quia et quia voluptatum saepe. Quis tempora dolor ea. Quia fuga perspiciatis in et sed tempore ducimus. Tempore reiciendis accusantium et quia saepe dignissimos ea. Velit quod ipsa est expedita est quaerat. Qui quibusdam non est eligendi est quia. Dolor iure error esse esse optio eveniet. Earum ipsa vitae quas velit officiis.', '2023-12-10 04:44:01', '2023-12-10 04:44:01'),
(9, 1, '/placeholder.png', 'Corrupti quas natus exercitationem reiciendis asperiores quos at assumenda vitae enim quis est.', 'Voluptatum perferendis et et eaque et pariatur excepturi aliquam. Omnis dolor dolorem alias dolorem velit quidem omnis consectetur. Sed laborum doloribus iusto dolorem consequuntur magnam. Tempore doloribus quaerat id repellat expedita beatae. Expedita sint maxime non eligendi id rerum optio. Quis rem est omnis. Aut velit ab at et consequatur est enim.', '2023-12-10 04:44:01', '2023-12-10 04:44:01'),
(10, 1, '/placeholder.png', 'Reiciendis quia voluptatem ut corporis id explicabo.', 'Rerum illum earum quam quo quis numquam. At qui laboriosam molestiae ut temporibus unde similique. Tempore vero et nihil perferendis. Odit voluptatem perferendis et eos dolor. Ab veritatis et amet velit ea. Occaecati et quae soluta libero voluptas ipsa. Ad saepe harum alias similique sint ut ipsum. Eius optio dolor dolores. Magni veritatis molestias totam sint eos et illo.', '2023-12-10 04:44:01', '2023-12-10 04:44:01'),
(11, 1, '/placeholder.png', 'Porro libero cum molestiae repellat voluptatem ex dolorum quia.', 'Voluptas ut omnis corrupti quis atque facilis excepturi voluptatibus. Iusto qui velit veniam eligendi. Et dolorem quidem sapiente. Voluptatem est non voluptatem saepe. Voluptas iusto mollitia aut molestiae laborum et tenetur. Doloremque qui repudiandae suscipit sint quia dolorem pariatur. Consequatur tempora voluptatem illum dolorem sequi voluptas error. Enim ea eos vero. Sint consequatur laborum ratione dolores ut consequatur aliquid qui. Explicabo est qui ducimus qui.', '2023-12-10 04:44:01', '2023-12-10 04:44:01'),
(12, 1, '/placeholder.png', 'Aut exercitationem minus ratione ipsa iusto blanditiis tempora qui quae molestiae.', 'Sunt quis enim in id nihil id illum. Aut numquam aliquam vitae quas. Beatae et vitae quidem qui enim velit. Molestiae qui minus vero dolores numquam. Nihil enim ut rerum aspernatur doloremque. Ut laudantium assumenda qui assumenda illo ex. Quo ducimus facilis vel qui. Maiores non sint totam eveniet. Aut vero dolorem totam id. Assumenda iste voluptatum ad voluptatem ut et animi.', '2023-12-10 04:44:01', '2023-12-10 04:44:01'),
(13, 1, '/placeholder.png', 'Voluptatum suscipit assumenda adipisci ducimus officiis fugit et vel aut ut.', 'Quia maiores et ab dicta unde. Aliquam temporibus vitae optio et esse. Voluptates quia aliquam voluptate repellat. Et unde ex sit qui et ullam quos neque. Doloribus qui assumenda consequatur quam doloribus. Sit repellendus magnam consequatur maxime corporis qui. Facere ut unde sit doloribus mollitia qui. Ratione rem vel asperiores pariatur error. Repellat velit voluptatem laudantium. Odio pariatur fugiat est hic similique suscipit minus.', '2023-12-10 04:44:01', '2023-12-10 04:44:01'),
(14, 1, '/placeholder.png', 'Nesciunt illum ullam accusamus ratione aut iure amet et voluptas voluptatem libero inventore.', 'Porro excepturi suscipit et facilis debitis officia. Perspiciatis nostrum vel voluptas eaque sed ea. Fugit temporibus alias nam facilis aspernatur expedita. Cum a provident sunt adipisci nisi dolores eaque. Quia ducimus et neque voluptatibus ipsam perspiciatis id. Illum aut modi doloribus quam ipsum nulla. Quod et consequatur non eveniet ut voluptates pariatur quo. Sed nisi aliquam sit hic ullam nihil officiis possimus.', '2023-12-10 04:44:01', '2023-12-10 04:44:01'),
(15, 1, '/placeholder.png', 'Corporis ut nemo quia ipsum aut exercitationem dolor corrupti dolorem.', 'Voluptas provident dolores in aliquid. Quam voluptas dicta iste voluptatibus est qui fugiat quo. Omnis corrupti quidem est perspiciatis. Dicta esse voluptate aspernatur consequatur nam sit illo. Non assumenda similique at. Nesciunt quia voluptatibus quae aut. Voluptas sit qui aut velit nihil. Nihil harum voluptatem cupiditate. Repellat voluptatem sunt officia labore et et dolores iusto. Ut aut nostrum consequatur omnis. Qui atque aspernatur ipsa.', '2023-12-10 04:44:01', '2023-12-10 04:44:01'),
(16, 1, '/placeholder.png', 'Quas qui eos veritatis voluptas vero dolorem veniam nesciunt sed fugit.', 'Repellat natus neque impedit. Nesciunt praesentium non veritatis ut. Inventore aut fugit tempore sit. Rem animi autem a dolore numquam. Porro nihil velit ut voluptatem natus voluptatum accusamus. Iusto cumque aut ratione et quis ex dolores non. Nemo deleniti est rerum enim. Tempora beatae quibusdam dolorem quibusdam error. Ut sunt sequi fuga fugit beatae delectus. Consequuntur possimus vero earum.', '2023-12-10 04:44:01', '2023-12-10 04:44:01'),
(17, 1, '/placeholder.png', 'Dignissimos nobis aperiam adipisci adipisci odio laboriosam impedit sunt laboriosam quia aut est sequi.', 'Voluptatem laborum dolor voluptas nobis. Ab est magnam dolores quidem. Animi amet cum similique ea. Dolor hic fugiat non impedit dolores aut mollitia voluptas. Nulla commodi facere minima enim quia. Maxime enim molestias quidem et natus ut. Aut atque optio blanditiis aspernatur optio. Blanditiis nihil quae natus soluta quasi illo sit. Quae quas vitae accusantium qui quo autem ut. Voluptates aut excepturi et nobis eius id.', '2023-12-10 04:44:01', '2023-12-10 04:44:01'),
(18, 1, '/placeholder.png', 'Quam qui corrupti magnam qui quas placeat.', 'Dolores tenetur atque enim qui. Voluptas amet at rem. Numquam illo et sunt repellat sit. Non eos et nulla non. Commodi ut et id. Exercitationem asperiores vero eum quibusdam fugit debitis. Facilis explicabo sed ut et. Rerum sint voluptatem sit dolor voluptatem et dolorum amet. Architecto iusto rerum possimus saepe commodi facilis recusandae aut. Est sit mollitia in est nostrum. Laborum cum eum impedit labore voluptatem. Corrupti sequi illo nobis incidunt ut eum facere.', '2023-12-10 04:44:01', '2023-12-10 04:44:01'),
(19, 1, '/placeholder.png', 'Et aliquam assumenda aut qui magnam error perferendis accusantium harum blanditiis voluptas est reprehenderit.', 'Vero et ea explicabo blanditiis commodi enim dolorem suscipit. Est esse voluptate rerum repudiandae. Enim unde rerum delectus beatae. Voluptates ea in ut quas natus suscipit. Labore aliquid id voluptas. Natus et laborum tempore consequuntur vero. Voluptas aut sed ea magnam. Ratione quia provident incidunt officiis iusto et a eaque. Aut nam repellat tenetur voluptates tenetur delectus praesentium.', '2023-12-10 04:44:01', '2023-12-10 04:44:01'),
(20, 1, '/placeholder.png', 'Praesentium accusamus dolores quam illum accusamus omnis explicabo.', 'Autem reprehenderit quis natus sint. Dolorum tenetur illum vero quia est debitis sed. Aliquam et sint porro vero. Nihil quia culpa maiores aperiam error facilis tempora. Doloribus quis sint et voluptatum laboriosam aperiam id. Iste voluptas qui officiis nemo et quis in. Dolorem eligendi voluptatibus sint et saepe. Rem corporis incidunt pariatur tempore aut inventore quo deserunt. Qui et atque non. Et quos et doloremque dolores laboriosam qui.', '2023-12-10 04:44:01', '2023-12-10 04:44:01'),
(21, 1, '/placeholder.png', 'Tempore assumenda aut ullam et eaque repudiandae.', 'Iusto laudantium non velit magnam et et iste. Maiores totam accusantium nobis deleniti ut. Commodi quisquam ea incidunt qui eos. In soluta doloribus beatae sed quas atque quod. Voluptatum est odio vitae asperiores. Consequatur quos explicabo aperiam accusantium. Eveniet eius saepe accusantium possimus consequatur. Soluta sunt et eum nihil dolores.', '2023-12-10 04:44:01', '2023-12-10 04:44:01'),
(22, 1, '/placeholder.png', 'Architecto atque aliquam facilis nesciunt non consectetur ut veritatis pariatur.', 'Rem odit fuga unde repellat nisi eum. Quis animi tempore ut non ab praesentium. Aut enim possimus occaecati eius. Possimus animi occaecati maxime in doloremque recusandae amet sint. Labore qui qui voluptas. Deleniti officia sunt reprehenderit alias. Molestias dolorem et et quia ratione ea. Quod commodi consequuntur qui dicta vel aut inventore. Non quis et et est harum nisi provident.', '2023-12-10 04:44:01', '2023-12-10 04:44:01'),
(23, 1, '/placeholder.png', 'Et ducimus et sed magni et illum deleniti blanditiis labore inventore asperiores numquam.', 'Sint repudiandae suscipit quod hic. Ea tenetur in quam. Voluptate possimus libero sed culpa impedit animi ducimus. Quasi id est eaque itaque nam dolorem. Facilis officia ex at ullam. Officiis pariatur totam sed exercitationem. Animi in eligendi et aperiam at. Neque deleniti non et earum. Tempora dolorum voluptatem nesciunt repellat voluptas unde laboriosam. Non quo aut consequuntur. Fugit amet ut dicta dolorem amet enim quo.', '2023-12-10 04:44:01', '2023-12-10 04:44:01'),
(24, 1, '/placeholder.png', 'Et voluptatibus qui saepe aut dignissimos voluptate porro quae molestiae.', 'Ut nesciunt dicta qui veniam porro harum. Labore et cupiditate et soluta est dicta quis. Ipsa quidem nam omnis aut hic vel. Ipsa et repudiandae numquam accusamus consequatur quia. Ratione suscipit repellendus omnis qui explicabo quo laudantium. Recusandae consequatur aut est a et animi aut. Atque aliquam aut blanditiis. Totam eaque eveniet nulla dolore nihil. Quos quae quisquam ut dolore dicta est.', '2023-12-10 04:44:01', '2023-12-10 04:44:01'),
(25, 1, '/placeholder.png', 'Tempore consequuntur sapiente et nisi omnis incidunt eveniet harum exercitationem aliquid unde.', 'Omnis ullam sed perspiciatis ut nulla eveniet. Consequatur laboriosam ea eum nam. Non aut dignissimos ut tempore temporibus iste nihil labore. Nulla voluptas perferendis placeat officiis. Dicta fuga rem illo aut et. Voluptatem pariatur odio culpa ex molestias similique. Vel quia a dolor sed odio consequatur voluptatibus. Quis eius voluptas et. Reprehenderit aut quisquam placeat omnis voluptatem et.', '2023-12-10 04:44:01', '2023-12-10 04:44:01'),
(26, 1, '/placeholder.png', 'Et aut blanditiis inventore aperiam quia ex sit incidunt inventore natus.', 'Velit laudantium ut quod voluptatem. Porro et omnis possimus cupiditate blanditiis aliquid iure dolorum. Neque eaque non quae quo aut. Vitae saepe ab fuga tenetur quaerat minus. Ipsa ea voluptate voluptatem quo in. Ut eaque et harum. Voluptatem quia laborum assumenda vel eos eligendi. Possimus sed sit aut et sit eveniet nisi rerum. Ab unde rerum minus velit facilis ipsam. Eos vitae corporis ex. Incidunt id provident voluptate aliquid recusandae.', '2023-12-10 04:44:01', '2023-12-10 04:44:01'),
(27, 1, '/placeholder.png', 'Consequatur et sed excepturi cupiditate vero suscipit qui.', 'Aut voluptatem optio magni et est sit minima voluptatem. Dolores quae eius rerum ad qui autem. Similique adipisci eum fugit asperiores fugiat. Quisquam qui porro neque adipisci accusamus et. Voluptatibus aut repudiandae iste necessitatibus voluptatem officiis soluta. Quasi quod architecto ex dignissimos et. Molestiae itaque pariatur eligendi ipsa.', '2023-12-10 04:44:01', '2023-12-10 04:44:01'),
(28, 1, '/placeholder.png', 'Excepturi ab id aut qui eligendi deleniti officia illum.', 'Inventore ratione voluptatem recusandae voluptatum accusamus eum labore assumenda. Quo qui harum sequi rerum et a minus odio. Ut omnis molestiae repellendus iure iure. Commodi blanditiis et quibusdam consectetur rerum. Sunt ipsa rerum quas non. Et est eveniet asperiores optio. Minus in et pariatur minus placeat. Incidunt similique quis unde repudiandae. Ratione voluptate ut fugiat pariatur qui mollitia sapiente. Ipsum ducimus ratione tempora culpa. Consequuntur debitis corrupti tempore facilis.', '2023-12-10 04:44:01', '2023-12-10 04:44:01'),
(29, 1, '/placeholder.png', 'Adipisci accusantium cum est doloremque saepe consequatur asperiores et aut et quis quae perferendis.', 'Soluta tenetur iusto impedit. Distinctio dignissimos ab delectus sed ut consequuntur. Est eveniet itaque totam dolores ut eius. Cumque voluptatem est illum omnis voluptatem voluptatem nihil quam. Et animi explicabo recusandae corporis accusantium labore molestiae dolorem. Velit aliquid aut at ut. Veniam repudiandae voluptatum hic velit quo mollitia veniam reiciendis. Similique repudiandae vero velit in dignissimos.', '2023-12-10 04:44:01', '2023-12-10 04:44:01'),
(30, 1, '/placeholder.png', 'Modi id aut dolor eligendi autem hic voluptas et est.', 'Debitis nihil assumenda sit deserunt tempore est non. Aliquam in dolores ipsum ut accusantium. Ratione voluptatum qui laborum ipsum. Beatae rem ut dolorum illum nihil totam voluptatibus. Fugit laborum molestias quo tempore dolorem. Alias natus non nemo quas. Sed sed hic ut dolores. Sed molestiae iusto exercitationem cumque voluptatem. Consequatur sed sed aperiam culpa nesciunt consequatur consequuntur. Quo sit dolorem est sit recusandae.', '2023-12-10 04:44:01', '2023-12-10 04:44:01'),
(31, 1, '/placeholder.png', 'Sed quia vel sint enim accusantium consequuntur dolor a.', 'Sed aut ullam est sunt iure consequatur rerum voluptatibus. Alias qui qui nobis similique praesentium. Unde ut et non reprehenderit quia tempora. Mollitia enim fuga sed necessitatibus nam optio accusamus. Corrupti iure rerum ea rerum dolorem quos dolore. Quas iure cupiditate maxime aut dolorum odit nulla. Corrupti officiis dicta error ea in et perferendis in. Expedita nisi sunt autem et ut. Eligendi voluptatibus corrupti velit quisquam aut laborum. Cum aut et dolorem sint.', '2023-12-10 04:44:01', '2023-12-10 04:44:01'),
(32, 1, '/placeholder.png', 'Sint quia sint tempora odit ut ad magni alias.', 'Labore iusto qui saepe a. Temporibus eos repudiandae magni rerum dignissimos corporis. Sed perspiciatis harum alias. Quaerat natus excepturi harum cum reiciendis hic omnis. Reiciendis natus voluptas maiores voluptate. Eum rerum praesentium voluptatem ut vel. Dolorem qui autem dolor qui quo consequatur. Molestias ut quo at est. Temporibus accusamus ut dolorum in. Eos soluta nihil id aut. Quo voluptatem dolore quam aut natus mollitia et voluptatum.', '2023-12-10 04:44:01', '2023-12-10 04:44:01'),
(33, 1, '/placeholder.png', 'Quisquam quam aliquam voluptas esse sit aut.', 'At magnam facere ut quis. Nam quasi provident placeat laboriosam deleniti quod facere odio. Nemo perferendis unde voluptates magni deleniti ea. In et et ullam consequatur. Id distinctio sapiente odit natus ab. Id dolorem ipsam est impedit consequatur. Rerum modi et omnis ea enim officiis error. Quis beatae qui et eveniet quia. Corporis velit rerum reprehenderit sed laboriosam exercitationem aut blanditiis.', '2023-12-10 04:44:01', '2023-12-10 04:44:01'),
(34, 1, '/placeholder.png', 'Sint in non sequi harum harum culpa quia qui nobis commodi omnis.', 'Velit perspiciatis neque reiciendis consectetur. Consectetur debitis dolorem voluptatum perspiciatis. Eius blanditiis occaecati cupiditate aliquam nisi. Repudiandae porro iure atque quos iure est quis. Cupiditate voluptas officiis ut. Error a qui asperiores molestiae expedita atque ut. Minima pariatur ipsa eum ut asperiores in corporis. Esse et aut reprehenderit numquam eum ex. Voluptatibus cupiditate cum deserunt quisquam doloribus.', '2023-12-10 04:44:01', '2023-12-10 04:44:01'),
(35, 1, '/placeholder.png', 'Ea esse neque dolor voluptas blanditiis quo iure nihil amet occaecati.', 'Vitae et nemo ea id dolorum deserunt. Aut et quidem fugiat est id odio. Ut sed quia cum unde nihil suscipit. Sit velit nesciunt nesciunt non voluptatum. Eos quisquam autem corporis repudiandae suscipit repudiandae dolores. Consequatur vel eius expedita nisi vero. Voluptates rem eveniet enim aut nihil enim dolorum. Quam est occaecati ut sapiente in et dolorem. Natus voluptas qui eos vel. Doloribus quia hic laborum quod. Aspernatur necessitatibus maxime occaecati eius excepturi adipisci nihil.', '2023-12-10 04:44:01', '2023-12-10 04:44:01'),
(36, 1, '/placeholder.png', 'Natus sint sit a excepturi unde similique.', 'Molestias et voluptatem vel error qui eius omnis. Vitae vero distinctio aut dolorem. Qui non reiciendis cumque et distinctio quia praesentium harum. Nisi dolor natus porro deleniti ut placeat molestias. Omnis ea dolor aut qui. Explicabo autem ducimus molestias natus. Itaque et libero harum impedit omnis. Perspiciatis praesentium corporis esse architecto.', '2023-12-10 04:44:01', '2023-12-10 04:44:01'),
(37, 1, '/placeholder.png', 'Illo eveniet cum consequatur dicta commodi quia.', 'Doloremque veritatis deleniti dolorem dicta quos. Et dolore aspernatur sit suscipit. Quibusdam quam vel enim mollitia delectus temporibus velit. Aliquid quia delectus sint cum aut. Optio neque distinctio dolor ab illum. Commodi aut sequi incidunt cumque omnis et a. Expedita unde rem quia voluptas iure expedita. Asperiores omnis fugiat est ratione possimus facilis saepe. Et placeat recusandae minus occaecati illo ex.', '2023-12-10 04:44:01', '2023-12-10 04:44:01'),
(38, 1, '/placeholder.png', 'Aliquam veniam debitis dolorem aut quod qui dolore magni consequatur vel quo id mollitia.', 'Alias saepe vel voluptates cum. Delectus molestiae voluptas tempore porro ex ducimus aliquam. Ut facere quae quas sed ex aut. Quis aut qui quia inventore totam hic quia eius. Temporibus praesentium reiciendis possimus enim. Voluptatem laboriosam beatae neque animi facilis. Eum necessitatibus voluptate debitis delectus. Est sit voluptatibus qui dolores libero. Ipsa dolor magni veniam eius saepe mollitia.', '2023-12-10 04:44:01', '2023-12-10 04:44:01'),
(39, 1, '/placeholder.png', 'Consectetur dolorem maiores veniam possimus est illum voluptates.', 'Nihil aut vel ea facere at. Omnis repellat voluptatem expedita tenetur est neque non reiciendis. At quasi expedita minima rerum veniam delectus eveniet. Fugiat qui eos eligendi id. Commodi explicabo harum et maiores non velit. Perferendis id corporis quia consequatur. Et rerum voluptatem voluptas doloremque placeat est velit.', '2023-12-10 04:44:02', '2023-12-10 04:44:02'),
(40, 1, '/placeholder.png', 'Officiis facere quo temporibus dolorem itaque recusandae quia a.', 'Vel sed sit iste adipisci. Id illo optio voluptatem ratione. Est aut sequi a ratione. Officiis debitis quas voluptatum voluptas. Consequatur ipsa magnam autem. Vel autem consequatur sapiente autem suscipit doloribus quisquam reprehenderit. Sunt perferendis quia officiis ex sit soluta numquam. Facilis molestias sed praesentium dolores labore. Fugiat id cumque sed dolores pariatur laboriosam et. Rem voluptas consequatur numquam autem. Dolorem quaerat ad numquam eaque omnis consectetur et.', '2023-12-10 04:44:02', '2023-12-10 04:44:02'),
(41, 1, '/placeholder.png', 'Id quas repellat provident natus cupiditate corrupti dignissimos quas ea hic.', 'Nesciunt dolore et saepe aliquam repellendus dolorem expedita. Quaerat vero quia vel magnam et rem. Similique maxime corporis qui commodi. Rerum molestias asperiores pariatur est. Deleniti omnis ex non aut et fugiat dicta. Deleniti reprehenderit voluptate laudantium velit eos voluptatum itaque. Aut error voluptas ut omnis ut itaque architecto temporibus.', '2023-12-10 04:44:02', '2023-12-10 04:44:02'),
(42, 1, '/placeholder.png', 'Libero et sed quia delectus vitae et omnis eius velit.', 'Quae molestias ducimus est. Aut quos vel aut voluptas. Hic praesentium qui et unde ut velit. Harum maxime consequatur reiciendis doloremque vero quam. Accusamus est aperiam ratione qui veritatis. Autem corrupti et totam totam voluptate. Facilis eius ab accusamus necessitatibus quidem dolorem sapiente. Corrupti voluptas quo omnis corrupti enim quidem. Accusantium aliquam sunt et nulla vel. Repellendus et neque et quo ut qui. Quia quae aut in nulla harum ipsum.', '2023-12-10 04:44:02', '2023-12-10 04:44:02'),
(43, 1, '/placeholder.png', 'Non sunt inventore sunt quo voluptatem tenetur sit porro dolores quisquam molestiae.', 'Aut aperiam odit corrupti non expedita occaecati esse. Iusto rerum officia omnis autem. Qui ab accusantium et doloremque libero. Itaque velit ut sint vitae non. Quae quia inventore voluptates qui sint quis assumenda. Itaque et eius enim officiis. A quod dolor porro eligendi neque nihil. Temporibus deleniti voluptas earum eveniet. Qui eveniet consequatur et aliquam. Omnis quo perferendis sit est labore. Culpa omnis amet incidunt labore aut ut enim.', '2023-12-10 04:44:02', '2023-12-10 04:44:02'),
(44, 1, '/placeholder.png', 'Totam omnis qui voluptatem exercitationem dolores nisi laboriosam repellendus dignissimos eum libero.', 'Consequatur animi similique ullam corrupti adipisci aut vitae. Id ut ad cum sed perferendis. Perspiciatis qui commodi porro iusto officiis a. Sed praesentium blanditiis eum maxime. Adipisci amet quas quasi voluptas. Est ut sed distinctio accusantium eum. Excepturi quia quia impedit deleniti quod sint consequuntur. Eius sed sequi odio molestiae aut. Eveniet occaecati quia est repudiandae aliquam minima. In adipisci eius ullam nisi dolorem reprehenderit est rem.', '2023-12-10 04:44:02', '2023-12-10 04:44:02'),
(45, 1, '/placeholder.png', 'Rerum qui consequuntur maxime hic eveniet ut sunt minus veniam et praesentium quo.', 'Qui quisquam quo nisi accusamus amet distinctio odit. Qui recusandae expedita voluptas magni omnis non suscipit. Consequatur doloremque veniam sit aut. Sed non autem voluptatem fugit. Ut illo accusantium unde eveniet ratione eius. Et rerum fuga magnam voluptate deleniti. Et culpa placeat neque et ipsa sunt incidunt. Odio aut ea et sapiente. Consequuntur dicta voluptas molestias enim exercitationem necessitatibus quod.', '2023-12-10 04:44:02', '2023-12-10 04:44:02'),
(46, 1, '/placeholder.png', 'Delectus occaecati saepe voluptas perspiciatis vitae explicabo a.', 'Et adipisci repellendus aperiam ipsam laudantium modi. Iure officia qui rerum ut officia aut quisquam. Hic quos consequatur saepe vero consequatur animi odit. Aut ut voluptas quis est. Consequatur deserunt maiores et est tempore cupiditate. Hic tempore aliquam ipsam ut. Tenetur reiciendis consectetur amet reprehenderit non ut molestias. Maxime ut quia sint praesentium itaque sequi. Reprehenderit eos nobis blanditiis.', '2023-12-10 04:44:02', '2023-12-10 04:44:02'),
(47, 1, '/placeholder.png', 'Quos quasi sint blanditiis velit odio reiciendis id dolorum sit omnis eaque atque.', 'Magnam et qui commodi aut perferendis aut inventore. Perferendis aut ducimus velit repellat eum suscipit. Quia est enim id soluta perferendis laborum. Odit numquam voluptas impedit. Eveniet illo nobis occaecati eos expedita blanditiis. Dignissimos quis sit quo et iure soluta et quas. Officia in dignissimos ut et reiciendis vel nulla voluptas. Esse optio perferendis dignissimos dolorem cum dolorem. Et quas voluptas reprehenderit temporibus. Dicta consectetur et eligendi adipisci minus.', '2023-12-10 04:44:02', '2023-12-10 04:44:02'),
(48, 1, '/placeholder.png', 'Vel exercitationem aut aut placeat sint ut provident at possimus occaecati praesentium voluptatem recusandae.', 'Non reiciendis quis quis tenetur delectus esse illo. Occaecati quam quisquam vel temporibus odio sed. Omnis consequatur ab nulla et voluptates. Et voluptatibus blanditiis ea at nostrum. Qui qui ut quibusdam voluptate ea dolor sunt. Aspernatur in eius quaerat. Autem totam nemo saepe impedit veritatis facilis deleniti. Eligendi exercitationem itaque in atque nihil dolor.', '2023-12-10 04:44:02', '2023-12-10 04:44:02'),
(49, 1, '/placeholder.png', 'Porro ut occaecati quo quaerat ullam blanditiis id voluptatem nemo sint dolore.', 'Illo aperiam nam eligendi quod delectus quia dolores. Quia nisi aut quis. Qui cumque explicabo itaque inventore. Quasi vitae harum quos vel ipsum placeat laboriosam. Nostrum ex ab id quo ea cumque. Atque sed doloribus quos impedit. Quisquam molestiae dignissimos sunt adipisci rerum et reiciendis eligendi. Natus omnis reiciendis esse laboriosam. Ipsa est eius tempore possimus nisi. Pariatur eos labore eum hic rem. Voluptates velit tempora quo ipsum voluptatem maxime.', '2023-12-10 04:44:02', '2023-12-10 04:44:02'),
(50, 1, '/placeholder.png', 'Harum dolore perferendis accusantium et cumque et mollitia cumque quae laborum voluptatem distinctio quasi.', 'Cupiditate consequatur voluptatem repudiandae. Omnis necessitatibus placeat soluta repellat. Non expedita aliquam voluptate ipsam. Dicta exercitationem facilis modi tempore non labore iste. Deleniti dolores repellat possimus qui. In in voluptas esse accusamus magnam ad et est. Quae alias quas autem illo. Qui quod dolor aliquid voluptas.', '2023-12-10 04:44:02', '2023-12-10 04:44:02'),
(51, 1, '/placeholder.png', 'Nam ipsum magni voluptates odit reiciendis cupiditate.', 'Et animi qui nisi. Et sint suscipit minima in quisquam numquam. Voluptatem corrupti unde dolor. Sunt ducimus illo occaecati velit. Quia rerum dolor est voluptatem. Quia tempore nihil nobis. Fugit quaerat excepturi quia sed. Tempore quisquam sed ut in aut quos. Eveniet itaque molestias error molestiae porro. Neque beatae doloremque qui rem suscipit. Fugiat ea quidem et dolorem ut nulla. Facilis temporibus et tempora minima error et harum.', '2023-12-10 04:44:02', '2023-12-10 04:44:02'),
(52, 1, '/placeholder.png', 'Nostrum laboriosam maiores culpa aut quaerat ipsum nulla.', 'Dolorum iure eligendi distinctio illum quasi. Omnis id qui amet occaecati. Autem ullam explicabo inventore ipsum. Vitae qui quae autem aut. Hic est quos unde deleniti asperiores. Est asperiores vitae quis. Odit aliquam esse dolor. Quia est alias et consequatur architecto omnis labore non. Ab accusamus atque quisquam rem eos corrupti impedit. Quae enim magni dolores non eaque non aliquam. Magnam quis suscipit magnam quam voluptatem est doloribus. Dolorum impedit eaque eius eaque qui.', '2023-12-10 04:44:02', '2023-12-10 04:44:02'),
(53, 1, '/placeholder.png', 'Laborum sunt distinctio est aut ea error dicta optio fugit ad aut maxime.', 'Dolorem beatae quaerat natus similique autem tempore officiis. Autem tempore error aut totam et. Dolor quibusdam natus tempora in accusamus. Distinctio omnis beatae possimus ut a. Repellat repellat deleniti modi deserunt alias perferendis. Autem voluptate voluptatem vel officia eum quos. Id ut dicta ipsam rerum deleniti fuga quos.', '2023-12-10 04:44:02', '2023-12-10 04:44:02'),
(54, 1, '/placeholder.png', 'Voluptatum sunt sapiente dolor dolor quas porro omnis ullam.', 'In placeat sapiente voluptate et velit voluptatem eius. Delectus porro qui veniam non aut distinctio nobis. Dolorem quia nam inventore hic. Velit culpa reiciendis eos unde voluptatem quo ea. Odit sequi dolore velit necessitatibus qui perferendis aut. Incidunt eos illo et explicabo aut laboriosam laboriosam. Enim ratione facere quos cum laborum. Iure sunt reiciendis omnis veritatis molestias ipsum voluptatum corrupti. Odio animi odit aut qui voluptatem nisi suscipit.', '2023-12-10 04:44:02', '2023-12-10 04:44:02'),
(55, 1, '/placeholder.png', 'Quisquam sit reprehenderit consequatur fugit qui voluptates voluptas minima.', 'Sequi odio et eos deserunt ut odit cupiditate. Est consequatur ducimus earum dolorum. Dolor atque est qui et ad consectetur et. Qui autem id et aut perferendis qui vel. Dolorem labore explicabo officia cupiditate eveniet est assumenda. Cumque laboriosam qui ab id quidem assumenda. Odit esse facere enim dignissimos expedita magnam. Repellendus iure soluta vero sint. Sit mollitia corporis commodi eos error minus. Error aut consectetur et cum esse ab.', '2023-12-10 04:44:02', '2023-12-10 04:44:02'),
(56, 1, '/placeholder.png', 'Assumenda ut id ratione iure natus id qui in aliquid beatae expedita odio ut.', 'Quidem voluptate laudantium consequuntur laudantium non iure quidem. Nobis aliquid aperiam officia amet nobis. Magnam ex quidem sint tenetur officia architecto impedit. Labore ab sint repellendus ipsam culpa error. Cumque soluta temporibus harum autem architecto fuga ut. Enim quod vitae odit architecto beatae illum ipsa. Est ut velit eveniet neque vel quaerat. Doloremque ad tempora asperiores. Ullam eaque autem enim vel.', '2023-12-10 04:44:02', '2023-12-10 04:44:02'),
(57, 1, '/placeholder.png', 'Vel asperiores iure delectus eveniet excepturi consequatur numquam occaecati modi dolor quis aut ut.', 'Est voluptates et repellat sed neque. Dolorum minima fugit provident enim eligendi qui assumenda. Velit est nihil amet atque voluptatibus. Harum omnis ut eum blanditiis velit autem. Incidunt quidem ut dolore incidunt. Qui dolores magni quos iure. Dicta consequuntur molestiae et fugit doloremque molestiae. Molestiae cupiditate quas quaerat ipsam dolores. Neque porro qui asperiores nulla aut est. Aut aut quidem sint sit quod. Facilis optio modi at deleniti dolores voluptatibus aliquam.', '2023-12-10 04:44:02', '2023-12-10 04:44:02'),
(58, 1, '/placeholder.png', 'Laboriosam aut quia sunt vel et architecto occaecati rerum qui fugit placeat.', 'Dolorum est nobis libero autem ad laudantium enim. Est voluptatem dolor quia non mollitia dignissimos. Voluptatum eum eos qui optio qui error. Accusantium et laboriosam explicabo deleniti ipsam ipsum est. Mollitia voluptates iure eveniet soluta incidunt. Nesciunt et est inventore porro hic aut. Adipisci aut molestiae quasi inventore in nisi. Repellendus cupiditate deleniti iusto incidunt cupiditate qui.', '2023-12-10 04:44:02', '2023-12-10 04:44:02'),
(59, 1, '/placeholder.png', 'Magnam voluptatem amet totam praesentium cumque commodi hic magnam nulla.', 'Exercitationem qui exercitationem totam esse labore. Consequatur necessitatibus iure minima animi sint consectetur. Incidunt consequatur at et atque laboriosam. Labore et unde quasi incidunt ut eum odio. Dicta et nam corporis consequuntur. Voluptatibus ut non hic distinctio id earum laboriosam. Autem expedita perferendis esse assumenda possimus. Nesciunt sint omnis reiciendis accusantium et.', '2023-12-10 04:44:02', '2023-12-10 04:44:02'),
(60, 1, '/placeholder.png', 'Voluptatum accusamus veniam omnis cumque nihil placeat voluptatem minus eius in.', 'Nam totam dolores voluptatibus asperiores. Velit officia modi id consequatur. Cupiditate ipsam est repellat aut cumque nesciunt temporibus. Similique harum occaecati ut nostrum excepturi labore blanditiis. Atque accusamus laboriosam ipsa fugiat accusamus sunt. Et sint quia inventore. Dolores iusto beatae non eveniet laborum. Alias consequatur illum tempora. Fuga qui rerum inventore. Rerum ut qui ullam eos enim. Quia corrupti est voluptas neque.', '2023-12-10 04:44:02', '2023-12-10 04:44:02'),
(61, 1, '/placeholder.png', 'Aut sed ut saepe distinctio aut eaque suscipit qui rerum at magnam.', 'Necessitatibus et rem minima asperiores voluptas dolorum. Iusto delectus nulla qui sint. Cumque velit temporibus repellat ut assumenda eum voluptatibus. Voluptas est aut ducimus et dignissimos nesciunt. Doloribus eligendi quaerat aut quis qui fuga ut. Et in quod ut molestiae. Aspernatur exercitationem expedita molestiae et nulla pariatur qui.', '2023-12-10 04:44:02', '2023-12-10 04:44:02'),
(62, 1, '/placeholder.png', 'Consequatur iste distinctio ipsam voluptatem rerum corporis tempora qui eveniet eum quam deserunt illum.', 'Et qui perspiciatis minus. Ipsum et est quis ea eligendi. In consequatur in asperiores tempore a sunt architecto. Quibusdam enim deserunt qui. Nihil et aliquam dolores omnis fugit aliquid nisi. Dolor quia repellat tenetur quod veritatis ducimus. Aperiam odio repellat inventore impedit aperiam dolores eos. Similique sit odit sint aut pariatur corrupti tempora.', '2023-12-10 04:44:02', '2023-12-10 04:44:02'),
(63, 1, '/placeholder.png', 'Non rerum voluptate velit quia qui dolorum quia ad aut et ipsum dolores esse soluta.', 'Velit et sunt fugit ut et. Aperiam eos provident odit culpa ut et. Quidem illum inventore est pariatur rerum enim. Qui quibusdam voluptatibus libero quod dicta. Sequi aut eos mollitia porro vel corrupti. Velit dolor rerum eum reprehenderit ipsam quam. Eum consequuntur voluptas atque. Et ut tempore cupiditate rerum. Iure repellendus perspiciatis qui commodi ipsum reiciendis neque blanditiis. Officia natus magnam sit non.', '2023-12-10 04:44:02', '2023-12-10 04:44:02'),
(64, 1, '/placeholder.png', 'Rerum est accusantium quibusdam ad laborum sequi ipsa culpa consequuntur occaecati expedita ipsa.', 'Commodi ad qui sit molestiae. Explicabo a dolore saepe omnis. Nulla veritatis eum eaque omnis. Nam magnam et cupiditate laborum aut reiciendis ab provident. Fuga incidunt laboriosam facilis numquam accusantium harum. Officiis dolorum ut porro vero ut consequatur vitae. Debitis beatae optio possimus. Fugit explicabo eos assumenda mollitia. Sed corrupti ut sunt temporibus repellat quia. Iure ab sunt qui non recusandae voluptates. Aperiam rem ut amet eum. Sed sit officia blanditiis.', '2023-12-10 04:44:02', '2023-12-10 04:44:02'),
(65, 1, '/placeholder.png', 'Non fugit quibusdam nostrum earum voluptatum rerum aut soluta unde corporis voluptates dolorem voluptas.', 'Vel dolorem vel tempore odit molestias veritatis. Aperiam sit autem fugit modi. Tempora accusamus recusandae quo in. Aperiam sunt consectetur atque commodi quas qui aut. Velit vitae qui rerum repellendus consectetur dolor. Harum et quod omnis itaque. Eos cupiditate et eaque animi. Quia sit ea magnam nulla impedit. Id neque facere nihil accusamus dolores est laborum.', '2023-12-10 04:44:02', '2023-12-10 04:44:02'),
(66, 1, '/placeholder.png', 'Hic ut id natus quia vitae quos est.', 'In quisquam ea voluptas sunt deleniti exercitationem mollitia. Numquam harum sit architecto illo doloribus. Quaerat qui sed consequatur eligendi ex aperiam. Magni consectetur maxime eius quia voluptatem nihil. Ipsum consequatur vel consequatur enim. Officia veritatis quisquam aut. Eum architecto possimus dolore et qui occaecati et. Esse mollitia a sed nihil dolor omnis. Ut animi omnis cumque quia. Eaque eum non tempore enim ea.', '2023-12-10 04:44:02', '2023-12-10 04:44:02'),
(67, 1, '/placeholder.png', 'Cum facere itaque doloremque adipisci modi et.', 'Qui veniam iste iste odit. Nulla assumenda ea non rerum saepe beatae. Animi aliquam exercitationem voluptatibus odit architecto. Enim explicabo et autem accusamus ullam quidem earum. Amet maiores sed qui voluptatem libero aut. Incidunt qui fuga aut qui at fuga officia. Non excepturi et reprehenderit voluptatibus. Qui qui cum porro aut et consequatur. Laboriosam facere aut sit minima aliquam architecto autem.', '2023-12-10 04:44:02', '2023-12-10 04:44:02'),
(68, 1, '/placeholder.png', 'Ipsa pariatur facere et repellendus in iusto ullam quaerat et.', 'Adipisci error sequi quibusdam alias totam ea debitis. Aut a omnis et. Sint numquam voluptatem eum optio. Vel qui totam at rerum itaque aut et. Consequatur aperiam eos recusandae nostrum iusto nostrum unde. Aspernatur autem unde quos voluptatum magni quidem eligendi. Repellat ut vitae nesciunt non perspiciatis unde autem. Porro beatae possimus ipsum. Maxime sunt quis dolore exercitationem qui. Quibusdam quos officia quo ut et delectus.', '2023-12-10 04:44:02', '2023-12-10 04:44:02'),
(69, 1, '/placeholder.png', 'Non sint et ut fugiat autem eum recusandae et labore quo aut voluptatibus qui.', 'Enim exercitationem dolorem eligendi inventore sit omnis cupiditate. Ducimus autem sed et maiores recusandae ea nostrum. Molestiae sint tempora illum dolores ratione. Est praesentium voluptatem reiciendis voluptate non delectus. Sed id provident laudantium voluptas velit enim et labore. Aut ducimus eveniet sint aspernatur magni vitae et. Consequatur modi consequuntur fugiat aliquam voluptate. Sunt est deleniti culpa. Assumenda ipsa aliquam eos vero eius ex.', '2023-12-10 04:44:02', '2023-12-10 04:44:02'),
(70, 1, '/placeholder.png', 'Perferendis doloribus reiciendis consequatur id nemo doloremque sed et fugiat ea neque sunt.', 'Quas ut eius illo saepe quidem sunt mollitia enim. Accusamus repellendus et iste enim. Natus ducimus pariatur est eos. Sequi quod eligendi magni doloremque similique sint. Qui omnis qui rerum voluptatem eligendi. Id molestias quis ullam qui est corporis. Rem voluptatem vel qui repellendus suscipit possimus.', '2023-12-10 04:44:02', '2023-12-10 04:44:02'),
(71, 1, '/placeholder.png', 'Quis cupiditate itaque eum sit nesciunt nisi sit ex quidem eos iusto.', 'Cum voluptas non neque omnis in. Soluta officiis ut cumque. Rerum deserunt doloremque sed sed ipsum quis. Sed consequatur laborum ad quae qui omnis praesentium. Quia quis beatae tempora rerum molestias. Reprehenderit nobis qui nobis et consequatur incidunt quia reiciendis. Voluptatem perspiciatis iure qui est quam nihil et. Nulla laborum voluptatem aspernatur cum aut aut. Consequuntur autem accusantium qui enim laudantium.', '2023-12-10 04:44:02', '2023-12-10 04:44:02'),
(72, 1, '/placeholder.png', 'Quae occaecati iste culpa perspiciatis facilis enim.', 'Quae nisi reprehenderit dolorem consequatur aut autem. Et culpa voluptatum voluptatem consequatur sed sit eos. Doloribus odit consequatur quia totam itaque voluptatem. Ut incidunt distinctio ex provident. Repudiandae doloremque at facilis deserunt delectus. Ducimus assumenda voluptates et voluptatem eum at. Magni qui nihil expedita placeat odio itaque ut quis. Soluta rem placeat optio delectus ipsam repellat. Beatae assumenda sed ut ratione nisi consequatur ut accusantium.', '2023-12-10 04:44:02', '2023-12-10 04:44:02'),
(73, 1, '/placeholder.png', 'Repellendus impedit error reiciendis vel dignissimos velit et.', 'Exercitationem minus est sint libero magnam nesciunt eum non. Voluptas commodi molestias libero magnam et numquam eveniet rerum. Et iste et cumque ea assumenda ea nulla. Quibusdam est esse eum aut veniam deserunt qui hic. Dicta aut nihil consequatur dicta voluptate. Quis eius a odit aut dolorem aut et necessitatibus. Qui perspiciatis sit id suscipit quo aut.', '2023-12-10 04:44:02', '2023-12-10 04:44:02'),
(74, 1, '/placeholder.png', 'Quia est quos ut aut mollitia maxime dolor culpa cumque perferendis.', 'Et in ratione quis vel eaque ut iste. Temporibus dolorem rerum quaerat magni natus. Quia eum est dolores eaque nam. Sunt et accusamus quos sit. Voluptate quasi autem unde doloremque quia saepe ea. Et qui repellendus aut ullam. Nostrum accusantium perferendis doloremque velit ut rerum. Non adipisci non soluta eveniet harum natus quo eligendi. Cupiditate quia voluptas mollitia et autem assumenda.', '2023-12-10 04:44:02', '2023-12-10 04:44:02'),
(75, 1, '/placeholder.png', 'Molestiae dolorem libero est voluptatem dolores corrupti ut libero eos soluta.', 'Nemo nisi nostrum placeat eos expedita modi. Velit voluptates eaque voluptatem quo necessitatibus. Modi omnis voluptatibus fugit. Repellendus dolorem eaque et sunt a. Incidunt excepturi impedit sequi. Voluptas est voluptatibus necessitatibus. Rerum sunt consequuntur pariatur quia. Labore sint ut architecto omnis error qui. Sequi placeat quibusdam molestiae suscipit. Ducimus quam distinctio dolorem aut ipsam. Ipsam modi ut non et. Ab illo temporibus voluptatum ab omnis qui voluptatibus modi.', '2023-12-10 04:44:02', '2023-12-10 04:44:02'),
(76, 1, '/placeholder.png', 'Illo laudantium ex ut iste magnam commodi non repellendus aspernatur.', 'Minus quasi rem impedit. Temporibus et odio sint repudiandae ea. Et quia animi debitis consequatur est veritatis recusandae. Recusandae cumque quia et quibusdam illum. Distinctio quis qui a et non est. Asperiores sit fugit consequuntur. Rerum aut temporibus nihil accusantium aut nobis eum. Dolores et distinctio illo quis ad nihil fugit. Libero hic assumenda eaque aut qui maxime rerum deserunt. Optio commodi voluptatem omnis dolores. Unde distinctio modi unde optio eum quia voluptas.', '2023-12-10 04:44:02', '2023-12-10 04:44:02'),
(77, 1, '/placeholder.png', 'Porro est culpa alias vitae voluptatem hic debitis.', 'Harum rem delectus omnis saepe doloremque. Sapiente perferendis iste consectetur consequatur hic quo. Reiciendis accusantium qui suscipit aut neque. Natus amet nisi repudiandae ab ullam. Expedita temporibus voluptate sint dolorem expedita pariatur quo. Magnam temporibus numquam omnis ducimus vel eveniet. Et in iure iste veniam accusantium. Dolore repellat nemo ut aut sint.', '2023-12-10 04:44:02', '2023-12-10 04:44:02'),
(78, 1, '/placeholder.png', 'Amet et placeat et non nihil sed.', 'Consequatur omnis error exercitationem nisi corporis. Minima facere non distinctio nemo ea. Autem quia beatae officia sit non vel. Eligendi enim laborum commodi omnis ab. Repudiandae quam odio optio et illum. Aut deserunt pariatur unde fugit quisquam ratione. Eos omnis earum deleniti voluptas id perferendis nulla. Dolor quis tenetur ratione repellat. Facere voluptatem laboriosam illo praesentium sit. Sunt repellat ipsam modi nobis. Sed ad fugit assumenda illo.', '2023-12-10 04:44:03', '2023-12-10 04:44:03'),
(79, 1, '/placeholder.png', 'Iure exercitationem harum sapiente consectetur saepe placeat consequatur assumenda.', 'Tempora dolor quidem itaque dolor. Est labore nobis nihil necessitatibus et quod. Aut natus est est laudantium cumque totam voluptatibus. Ad consequatur rerum veniam accusantium perferendis itaque rerum. Laboriosam sit quia eligendi cum repellendus molestiae esse. Voluptatibus tempora provident temporibus pariatur. Quam et minus vel. Facilis reiciendis reprehenderit non.', '2023-12-10 04:44:03', '2023-12-10 04:44:03'),
(80, 1, '/placeholder.png', 'Ab quo hic et adipisci deleniti ut officiis.', 'Ea ullam adipisci quasi doloremque voluptates modi. Expedita quia aspernatur magnam consequuntur voluptate saepe omnis. Dolores et nisi autem cum ut. Assumenda nobis reiciendis quia dolorum non placeat doloribus. Eaque quis neque similique. Provident porro et vel corporis. Saepe quaerat aut temporibus provident adipisci architecto et deleniti. Iure nobis nostrum quam cum. Est sunt repellendus aut cumque. Quae et voluptas eos velit.', '2023-12-10 04:44:03', '2023-12-10 04:44:03'),
(81, 1, '/placeholder.png', 'Qui a reiciendis voluptatem optio consequatur omnis et.', 'Corrupti sunt aut hic vel beatae quia odio sequi. Excepturi mollitia veniam explicabo id neque et. Accusantium aliquam vero praesentium tenetur culpa tempora. Quia enim dolore quasi. Repudiandae voluptatum et quidem accusantium et hic. Neque quas adipisci atque laudantium. Autem aliquid debitis eos ex totam. Excepturi eos accusamus quos magnam iusto officia et. Enim voluptas pariatur deleniti necessitatibus modi. Illum aut enim occaecati quidem aliquid.', '2023-12-10 04:44:03', '2023-12-10 04:44:03'),
(82, 1, '/placeholder.png', 'Possimus maiores suscipit id molestiae eum qui accusantium et ducimus labore.', 'Quidem modi dolor porro qui sit aliquam sit. Voluptatum maiores sapiente quaerat dolore. At est fugiat omnis et. Est eveniet temporibus sequi debitis accusantium labore. Quia totam reiciendis et harum. Officia blanditiis est assumenda qui qui. Architecto voluptas sunt debitis illo atque aperiam esse. Eius corrupti culpa architecto ut. Ut facilis tempora architecto eos.', '2023-12-10 04:44:03', '2023-12-10 04:44:03'),
(83, 1, '/placeholder.png', 'Deserunt atque blanditiis sed tenetur nostrum cumque dolores corporis porro pariatur.', 'Qui accusantium ut modi. Totam autem praesentium ullam voluptates eveniet. Sunt et voluptatibus sit assumenda velit molestiae ut. Nulla ea numquam fuga eos harum. Deserunt dolorem iste dolores. Ut id magni veritatis atque assumenda quidem sint. Eum perspiciatis velit et omnis qui consequatur. Modi est velit amet.', '2023-12-10 04:44:03', '2023-12-10 04:44:03'),
(84, 1, '/placeholder.png', 'Itaque molestiae sapiente harum veritatis quo voluptatum suscipit vel.', 'Vero quam id voluptatem sunt distinctio. Est sit culpa tempore. Tenetur commodi inventore quisquam eum ipsam et quo. Beatae eum asperiores mollitia. Eligendi nulla assumenda ut earum fuga. Occaecati et et minus ducimus dolorem voluptatum. Eos rerum laboriosam ut deleniti. Atque qui et in nihil sit tempora autem. Eaque quia est nobis consequatur illum. Natus consequatur nemo ut omnis saepe. Ducimus odit ipsa natus corporis ducimus. Asperiores nam fuga rem sed velit.', '2023-12-10 04:44:03', '2023-12-10 04:44:03'),
(85, 1, '/placeholder.png', 'Mollitia laboriosam nobis ipsa et et culpa quaerat.', 'Odit numquam eum minima beatae. Labore omnis harum enim aut pariatur magnam. Libero impedit id deserunt sequi ad. Ab omnis est perferendis. Illum molestiae aut iusto eum sit necessitatibus qui. Voluptate sit molestias exercitationem laborum at sint quo. Nesciunt sed maxime autem occaecati rerum architecto aut. Accusamus vero sapiente provident tenetur et. Sunt nihil minus quia voluptate quis impedit laudantium. Error et saepe nihil nemo culpa et pariatur harum.', '2023-12-10 04:44:03', '2023-12-10 04:44:03'),
(86, 1, '/placeholder.png', 'Dolores harum nihil autem rerum placeat error facere.', 'Optio dicta quia perspiciatis rerum. Officia quo error occaecati quia blanditiis voluptatibus. Quae quos alias minima occaecati quasi. Assumenda architecto nesciunt voluptatem modi porro sunt ullam. Qui earum dolorem dolorem dignissimos molestiae. Odit commodi veritatis autem sed similique. Aut quaerat voluptas ipsum possimus. Earum quis ut illum consectetur. At impedit aut eius amet saepe officiis. Ut ratione id earum in. Autem et ea consequatur qui iure.', '2023-12-10 04:44:03', '2023-12-10 04:44:03'),
(87, 1, '/placeholder.png', 'Sit est qui sed aliquam aliquam est.', 'Velit et voluptatibus dolorem et doloremque doloremque aut recusandae. Aspernatur repellat voluptate enim in asperiores. Asperiores magnam qui corrupti dolores. Qui assumenda natus consequatur eos amet. Minima iure incidunt reprehenderit et aut temporibus. Impedit nostrum quia natus ut fugit quos. Non ducimus ipsam praesentium quasi veniam.', '2023-12-10 04:44:03', '2023-12-10 04:44:03');
INSERT INTO `posts` (`id`, `user_id`, `image`, `title`, `description`, `created_at`, `updated_at`) VALUES
(88, 1, '/placeholder.png', 'Voluptates et est eos maiores sed id assumenda nemo et sit.', 'Ratione aliquid rerum voluptatum eius. Hic aut nihil adipisci at voluptatibus accusantium. Porro qui sit voluptatum molestiae voluptatum deserunt. Nihil qui qui explicabo quas perspiciatis quos. Tempore nisi voluptatem aut eum. Deleniti et et et eos perferendis. Et est aliquid ipsa sit in dolorum at blanditiis. Libero minima nam quos debitis quo minima dolorem. Illum quasi vitae odit dolor. Qui rerum ipsum aut sapiente aut quibusdam et. Corrupti saepe ratione modi sit aut rerum cum libero.', '2023-12-10 04:44:03', '2023-12-10 04:44:03'),
(89, 1, '/placeholder.png', 'Iusto aperiam exercitationem voluptas laboriosam mollitia hic voluptatem dolorum nostrum placeat natus dolorem soluta.', 'Consequuntur tempora et sit dignissimos qui fugit cupiditate iste. Ut ipsa atque est doloremque nulla. Omnis laborum doloribus molestiae repudiandae eius. Et sunt maxime quas eligendi est numquam voluptatem impedit. Ipsum nam ut in est reiciendis. Sit et totam architecto est et. Rerum accusantium quia officia velit voluptate corrupti eaque. Provident autem fuga harum est.', '2023-12-10 04:44:03', '2023-12-10 04:44:03'),
(90, 1, '/placeholder.png', 'Id deserunt ex quia enim quas rerum in voluptatum.', 'Maxime eum possimus magnam eligendi dolorem placeat. Quam nihil quidem adipisci dolore. Ullam minima labore quod ut sunt velit. Labore odit earum eligendi distinctio et recusandae dolorem corrupti. Necessitatibus eius quis quod voluptatem rerum corrupti voluptatem. Laboriosam cumque ea repellat vel commodi. Saepe ut voluptate autem sint quia minima. Tenetur labore ipsam et ea. Dolorem qui reprehenderit eos eos.', '2023-12-10 04:44:03', '2023-12-10 04:44:03'),
(91, 1, '/placeholder.png', 'Porro id aliquid facere sed blanditiis qui excepturi harum nulla pariatur molestias.', 'Excepturi aliquam cum omnis et in dolorum tenetur. Esse quas veritatis fuga quis quis. Non ea nam voluptates molestiae id. Quae laboriosam temporibus perferendis odio officiis non. Totam voluptates sequi alias. Quae nisi quas amet saepe ut. Maiores veritatis ipsa praesentium tempore fugit. Pariatur ratione animi nam occaecati vel placeat modi. Numquam eveniet incidunt doloribus. Officiis quasi qui et tenetur quis. Nihil molestiae quasi velit est. Et et et id qui excepturi enim.', '2023-12-10 04:44:03', '2023-12-10 04:44:03'),
(92, 1, '/placeholder.png', 'Et distinctio et tempore unde vel eaque officiis eum nihil minus laudantium atque.', 'Doloribus temporibus cumque reiciendis autem laboriosam. Qui quod esse ipsa voluptates voluptatem quae rem. Enim officia molestias quam sapiente. Perspiciatis eos non impedit. Et sunt illum repellendus doloribus expedita mollitia quidem. Placeat officia officiis pariatur voluptatem voluptatem vel. Impedit tempore in sed earum reiciendis. Vel maiores enim dolores aperiam earum. Dolorum vel est eveniet eum occaecati. Molestiae cupiditate non et ut animi perspiciatis et. Explicabo sit ut aperiam.', '2023-12-10 04:44:03', '2023-12-10 04:44:03'),
(93, 1, '/placeholder.png', 'Modi dolores omnis perferendis consequatur qui totam eos deserunt temporibus.', 'Iusto dolorum et qui consequatur enim eveniet minus. Ipsa est vel autem quo ex molestias. Excepturi omnis recusandae excepturi tempora. Sapiente iusto ut rerum dolore dolorum et et. Voluptatem est nemo aut soluta. Atque et beatae excepturi explicabo dolores quia autem. Ut adipisci rerum rerum sed et qui. Quis at vero et magnam sed recusandae nihil reiciendis. Aut nihil at id.', '2023-12-10 04:44:03', '2023-12-10 04:44:03'),
(94, 1, '/placeholder.png', 'Illum inventore a rerum exercitationem commodi tenetur corporis natus provident doloremque vero.', 'Dolorem vero vel aliquam aspernatur voluptas. Sed modi esse veniam. Sunt tenetur similique sapiente nihil. Libero ratione et recusandae dolorem. Nam tempora omnis nostrum magni sit. Magnam saepe rem et ea aut. Omnis totam et et modi minus autem fuga. Qui dolor modi occaecati odit accusamus numquam quaerat ratione. Quia ut rerum molestiae.', '2023-12-10 04:44:03', '2023-12-10 04:44:03'),
(95, 1, '/placeholder.png', 'Consectetur cumque voluptatem quas nisi ut aliquam beatae dolores reprehenderit est.', 'Est dolores quia suscipit eos praesentium. Odit et et alias omnis excepturi qui accusantium. Ipsum unde ut rerum. Itaque suscipit architecto rerum officiis soluta. Sit nulla neque voluptas sed maiores. Sed est qui consequatur. Fugit minima fugit soluta et aperiam. Et in consequatur sit porro. Qui dolorem quibusdam nam magnam enim odit et amet. Repudiandae quo facere quaerat qui. Hic dicta atque consequatur explicabo voluptate quibusdam. Nobis rem sed at delectus et voluptates enim.', '2023-12-10 04:44:03', '2023-12-10 04:44:03'),
(96, 1, '/placeholder.png', 'Nulla ut aut impedit sint autem qui quisquam aut mollitia quod dicta unde.', 'Est sed et rerum qui est nam est officiis. Amet animi sint iste dolore cumque. Molestias autem atque et consequatur. Necessitatibus et architecto rerum ea. Aut laboriosam id velit aperiam. Minus ut accusantium omnis quod delectus. Harum inventore est debitis distinctio sequi. Ex voluptatem laudantium itaque inventore excepturi. Est quia distinctio nobis. Sed inventore voluptatibus et porro vel ipsum.', '2023-12-10 04:44:03', '2023-12-10 04:44:03'),
(97, 1, '/placeholder.png', 'Cupiditate quo a aut excepturi repellat neque.', 'Optio est vitae iusto ut praesentium. Aperiam sed est omnis rem. Voluptas qui vel vero aperiam. Laborum sit ducimus est ut aut non animi. Quaerat voluptas unde et autem. Exercitationem maiores magnam illum sed eum autem et. Nobis nobis quasi voluptatem et non provident. Minima impedit provident ea autem molestiae porro. Est ipsum unde vel autem sunt iste laudantium.', '2023-12-10 04:44:03', '2023-12-10 04:44:03'),
(98, 1, '/placeholder.png', 'Ad rerum quae praesentium ut eaque possimus.', 'Iste dicta nostrum earum blanditiis eius. Ea sapiente unde voluptatem. Aperiam possimus suscipit nam eum doloribus hic ipsa. Ea molestias inventore cum ratione deleniti occaecati asperiores. Voluptatum vero quia qui ea facilis delectus ea sint. Ipsam minima repellat itaque distinctio. Debitis eum ut sunt sunt quae. Aliquid eos aut quam sit.', '2023-12-10 04:44:03', '2023-12-10 04:44:03'),
(99, 1, '/placeholder.png', 'Quis molestiae consequuntur suscipit est eaque facere cumque ut quaerat quam libero laudantium.', 'Quisquam id hic iure. Quia praesentium unde inventore ut sequi. Omnis aut omnis quae sequi explicabo sapiente iure. Unde quia non earum laborum vero a cumque. Aut dolores quas totam dolorem quidem quia exercitationem et. Minima aut aut optio id. Beatae consequatur rem mollitia ullam molestiae. Impedit laudantium praesentium eos dolores voluptatem ad.', '2023-12-10 04:44:03', '2023-12-10 04:44:03'),
(100, 1, '/placeholder.png', 'Eligendi quis odio inventore illum consequuntur debitis.', 'Earum et perferendis culpa qui voluptas ipsa. Dicta quos fuga magnam tenetur blanditiis similique. Voluptas facere explicabo quas odio vel. Iusto dolores asperiores magnam nobis quae facere culpa. Similique quas autem consectetur temporibus modi qui. Placeat odit quo dolores magni quam at. Esse voluptatem quia doloremque libero consectetur magnam. Voluptatem qui libero quia assumenda. Ut explicabo corrupti deserunt praesentium qui omnis aperiam.', '2023-12-10 04:44:03', '2023-12-10 04:44:03');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Test User', 'test@user.com', NULL, '$2y$12$bUjO6bDmmKpcGhQITDiLhexBAloIcnS7kNmXS.Xi4VTW1QRS8qFIW', NULL, '2023-12-10 04:44:00', '2023-12-10 04:44:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
