-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 16, 2024 lúc 11:27 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `datawebsite`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `displayhomepage` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `name`, `displayhomepage`) VALUES
(2, 1, 'Cà-phê', 0),
(3, 1, 'Cao su', 0),
(5, 4, 'Hồ tiêu', 0),
(8, 0, 'Giày Nữ', 1),
(9, 8, 'Sneaker ', 0),
(11, 8, 'Sandals', 0),
(12, 7, 'Thịt và trứng gia cầm', 0),
(14, 7, 'Cá tra', 0),
(15, 7, 'Sneaker', 0),
(16, 4, 'Gỗ và sản phẩm từ gỗ', 0),
(17, 4, 'bánh mì', 0),
(18, 4, 'bơ', 0),
(19, 1, 'dầu ăn', 0),
(20, 1, 'thịt', 0),
(21, 8, 'Boots', 0),
(22, 8, 'Giày cưới', 0),
(24, 23, 'nước ngọt', 0),
(25, 23, 'rượu', 0),
(26, 23, 'bia', 0),
(27, 0, 'Giày Nam', 1),
(29, 27, 'Sneaker Nam', 0),
(30, 27, 'Giày Tây', 0),
(31, 1, 'Trà', 0),
(33, 32, 'động vật tươi sống ', 0),
(34, 32, 'bột mì', 0),
(35, 32, 'sữa', 0),
(42, 27, 'Giày lười', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `id` int(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `iduser` int(20) NOT NULL,
  `idsp` int(20) NOT NULL,
  `noidung` varchar(1000) NOT NULL,
  `postdate` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `comment`
--

INSERT INTO `comment` (`id`, `name`, `iduser`, `idsp`, `noidung`, `postdate`) VALUES
(7, 'user@gmail.com', 19, 62, 'HHHH', '03-May-2024'),
(8, 'user@gmail.com', 19, 39, 'afafafa', '03-May-2024'),
(9, 'user@gmail.com', 19, 39, 'ddd', '03-May-2024'),
(10, 'user@gmail.com', 19, 38, 'ssss', '03-May-2024'),
(11, 'user@gmail.com', 19, 38, 'rrrr', '03-May-2024'),
(16, 'user@gmail.com', 19, 38, '', '03-May-2024'),
(17, 'user@gmail.com', 19, 38, 'd', '03-May-2024'),
(18, 'user@gmail.com', 19, 38, 's simply dummy text of the printing and ', '03-May-2024'),
(19, 'user@gmail.com', 19, 39, 'fafafafaf', '03-May-2024'),
(20, 'user@gmail.com', 19, 60, 'ffff', '12-May-2024'),
(21, 'user@gmail.com', 19, 60, 'fffffw', '12-May-2024'),
(22, 'user@gmail.com', 19, 60, 'ffff', '12-May-2024'),
(23, 'user@gmail.com', 19, 38, 'ddd', '12-May-2024'),
(24, 'user@gmail.com', 19, 7, 'gsegd', '12-May-2024'),
(25, 'user@gmail.com', 19, 7, 'dd', '12-May-2024'),
(26, 'user@gmail.com', 19, 56, 'f', '12-May-2024'),
(27, 'user@gmail.com', 19, 56, 'ffff', '12-May-2024'),
(28, 'user@gmail.com', 19, 56, 'fff', '12-May-2024'),
(29, 'user@gmail.com', 19, 56, 'ddd', '12-May-2024'),
(30, 'user@gmail.com', 19, 8, 'ffff', '16-May-2024');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `address` varchar(500) NOT NULL,
  `phone` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `address`, `phone`, `password`) VALUES
(19, 'user', 'user@gmail.com', 'Hà Nội', '0987654321', '25f9e794323b453885f5181f1b624d0b'),
(20, 'nam', 'user1@gmail.com', 'hanoi', '0123456789', '122c436ae8aac7d188ee29ea8886b34b');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `description` varchar(4000) NOT NULL,
  `content` text NOT NULL,
  `hot` int(11) NOT NULL DEFAULT 0,
  `photo` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `name`, `description`, `content`, `hot`, `photo`) VALUES
(6, 'Giày hiệu dán nhãn chỉ số khí thải carbon', '<p>Allbirds th&ocirc;ng b&aacute;o&nbsp;trở th&agrave;nh thương hiệu thời trang đầu ti&ecirc;n d&aacute;n nh&atilde;n chỉ số kh&iacute; thải carbon (carbon footprint) tr&ecirc;n mọi sản phẩm.</p>\r\n\r\n<p>Từ năm nay, mọi sản phẩm của h&atilde;ng sẽ đ&iacute;nh k&egrave;m chỉ số đại diện cho lượng CO2 sản sinh trong qu&aacute; tr&igrave;nh sản xuất. Theo&nbsp;<em>Forbes</em>,&nbsp;7,6 kg CO2 l&agrave; mức trung b&igrave;nh cho mỗi sản phẩm gi&agrave;y d&eacute;p Allbirds. Trong khi lượng kh&iacute; thải carbon của một t&uacute;i nhựa khoảng 1,6 kg, chiếc quần jean tầm 29,6 kg v&agrave; xe đạp khoảng 240 kg.</p>\r\n', '<p>Allbirds&nbsp;c&ugrave;ng c&aacute;c chuy&ecirc;n gia kh&iacute; thải carbon ph&aacute;t triển c&ocirc;ng cụ&nbsp;đo cường độ CO2, ch&uacute; trọng từ chất liệu, sự ph&aacute;t triển, sản xuất, cho đến kh&acirc;u đ&oacute;ng g&oacute;i v&agrave; vận chuyển. S&aacute;ng kiến n&agrave;y được đưa ra nhằm tiếp nối Quỹ Carbon được h&atilde;ng giới thiệu v&agrave;o năm ngo&aacute;i.</p>\r\n\r\n<p>Theo đ&oacute;, Allbirds sẽ ủng hộ t&agrave;i ch&iacute;nh cho đơn vị n&agrave;y. Đổi lại, quỹ sẽ hỗ trợ c&ocirc;ng ty duy tr&igrave; 100% mức ph&aacute;t thải carbon trung t&iacute;nh. Ngo&agrave;i ra, quỹ sẽ t&agrave;i trợ cho c&aacute;c dự &aacute;n giảm ph&aacute;t thải trong kh&ocirc;ng kh&iacute;, gi&oacute; v&agrave; năng lượng.</p>\r\n\r\n<p><img alt=\"Những sản phẩm của Allbirds đều có mức khí thải carbon trung bình ở mức 7,6 kg. Ảnh: Cause artist.\" src=\"https://i1-giaitri.vnecdn.net/2020/04/17/H3-2-4201-1587115493.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=0pyL-qDc4pKZcPTLe5YsTw\" /></p>\r\n\r\n<p>Sản phẩm của Allbirds c&oacute; mẫu m&atilde; đa dạng. Ảnh:&nbsp;<em>Cause artist</em>.</p>\r\n\r\n<p>Với mỗi tấn carbon Allbirds tạo ra qua hoạt động kinh doanh - từ một con&nbsp;cừu trong trang trại (gi&agrave;y l&agrave;m từ l&ocirc;ng cừu) cho đến c&aacute;c b&oacute;ng đ&egrave;n, c&ocirc;ng ty sẽ trả tiền để giảm một tấn carbon thải ra m&ocirc;i trường.</p>\r\n\r\n<p>Thương hiệu&nbsp;hy vọng việc ra mắt nh&atilde;n chỉ số kh&iacute; thải carbon&nbsp;thể hiện&nbsp;cam kết bền vững của ng&agrave;nh c&ocirc;ng nghiệp thời trang, đồng thời truyền cảm hứng cho sự minh bạch trong việc thải kh&iacute; CO2 ra m&ocirc;i trường.</p>\r\n\r\n<p>Hiện tại, một đ&ocirc;i Allbirds Tree Breezers (gi&agrave;y pump kiểu d&aacute;ng ba l&ecirc;) tạo ra 5,3 kg carbon, song những đ&ocirc;i gi&agrave;y cấu tr&uacute;c chắc chắn, lượng&nbsp;kh&iacute;&nbsp;thải lớn hơn&nbsp;như Wool Runners (7,2 kg) v&agrave; gi&agrave;y cao g&oacute;t Runner-Up (10,5 kg), theo&nbsp;<em>Forbes</em>.</p>\r\n\r\n<p><img alt=\"Dòng Allbirds Tree Breezers của thương hiệu chỉ tạo ra 5,3 kg carbon. Ảnh: Allbirds.\" src=\"https://i1-giaitri.vnecdn.net/2020/04/17/H2-3-4318-1587115493.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=H2gBr35Qlz6gAp4reiIUeg\" /></p>\r\n\r\n<p>D&ograve;ng Allbirds Tree Breezers của thương hiệu tạo ra 5,3 kg carbon. Ảnh:&nbsp;<em>Allbirds.</em></p>\r\n\r\n<p>Joey Zwillinger - Gi&aacute;m đốc điều h&agrave;nh Allbirds - cho biết: &quot;Tại Allbirds, ch&uacute;ng t&ocirc;i tin&nbsp;biến đổi kh&iacute; hậu l&agrave; th&aacute;ch thức quan trọng nhất&nbsp;thời đại n&agrave;y. Kh&iacute; thải nh&agrave; k&iacute;nh do con người tạo ra khiến&nbsp;h&agrave;nh tinh&nbsp;n&oacute;ng l&ecirc;n nhanh, ch&uacute;ng t&ocirc;i ưu ti&ecirc;n giảm lượng kh&iacute; carbon dioxide v&agrave; xem l&agrave; định hướng h&agrave;ng đầu cho doanh nghiệp&quot;.</p>\r\n\r\n<p>&Ocirc;ng l&yacute; giải&nbsp;kh&aacute;ch h&agrave;ng xứng đ&aacute;ng được biết việc&nbsp;mua h&agrave;ng của họ t&aacute;c động đến m&ocirc;i trường thế n&agrave;o v&agrave; lan tỏa để&nbsp;mọi người c&ugrave;ng cảm nhận. &quot;Trong qu&aacute;&nbsp;tr&igrave;nh ứng ph&oacute; với kh&iacute; hậu, ch&uacute;ng t&ocirc;i phải chịu tr&aacute;ch nhiệm v&agrave; hy vọng truyền cảm hứng cho c&aacute;c doanh nghiệp kh&aacute;c... Sức mạnh nằm ở số lượng, mong c&aacute;c nh&agrave; mốt&nbsp;sớm&nbsp;đ&iacute;nh nh&atilde;n th&ocirc;ng tin chỉ số kh&iacute; thải carbon, khiến ch&uacute;ng phổ biến như chỉ số dinh dưỡng tr&ecirc;n bao b&igrave; thực phẩm&quot;,&nbsp;Joey Zwillinger n&oacute;i th&ecirc;m.</p>\r\n\r\n<p><img alt=\"Đôi sneaker giới hạn được ra mắt nhằm kỷ niệm ngày Trái Đất. Ảnh: Allbirds.\" src=\"https://i1-giaitri.vnecdn.net/2020/04/17/H5-1-6566-1587115493.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=1ZxB_rUbAhtU6f0gfZSAXg\" /></p>\r\n\r\n<p>Đ&ocirc;i sneaker giới hạn được ra mắt nhằm kỷ&nbsp;niệm ng&agrave;y Tr&aacute;i Đất. Ảnh:&nbsp;<em>Allbirds</em>.</p>\r\n\r\n<p>Đại diện thương hiệu tự nhận&nbsp;s&aacute;ng kiến n&agrave;y c&oacute; &yacute; nghĩa hơn việc họ tự h&agrave;o về việc c&oacute; lượng kh&iacute; thải carbon thấp nhất. &quot;Ch&uacute;ng t&ocirc;i sẽ&nbsp;vui mừng khi biết c&aacute;c thương hiệu kh&aacute;c c&oacute; chỉ số n&agrave;y&nbsp;thấp hơn m&igrave;nh... Khủng hoảng kh&iacute; hậu l&agrave; thật v&agrave; ch&uacute;ng ta cần phải chung tay&nbsp;giải quyết, bảo vệ sức khỏe của h&agrave;nh tinh&quot;.</p>\r\n\r\n<p>Allbirds l&agrave; nh&atilde;n&nbsp;<a href=\"https://joolux.com/san-pham/giay-sneaker\" rel=\"nofollow\" target=\"_blank\">gi&agrave;y</a>&nbsp;lớn&nbsp;tại New Zealand, sử dụng c&aacute;c vật liệu bền vững, th&acirc;n thiện với m&ocirc;i trường như l&ocirc;ng cừu, nhựa v&agrave; b&igrave;a carton t&aacute;i chế... để giảm thiểu t&aacute;c động m&ocirc;i trường. H&atilde;ng được t&iacute;n đồ to&agrave;n cầu ưa chuộng v&igrave; thiết kế đơn giản, thoải m&aacute;i, tạo tự tin cho người mang.</p>\r\n', 1, '1714546232_h5-1-1587114514-3059-1587115493.jpg'),
(7, '5 nguyên liệu quen thuộc xử lý mùi hôi giày', '<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:13px\"><span style=\"color:#1b1b28\"><span style=\"font-family:Roboto,sans-serif\"><span style=\"background-color:#ffffff\"><span style=\"font-size:11pt\"><span style=\"font-family:Arial\">Thực phẩm l&agrave; nguồn cung cấp dinh dưỡng phong ph&uacute; cho con người. Tất cả c&aacute;c cơ quan tr&ecirc;n cơ thể đều cần được cung cấp dinh dưỡng để duy tr&igrave; hoạt động. Đặc biệt l&agrave; n&atilde;o bộ-cơ quan v&ocirc; c&ugrave;ng quan trọng tr&ecirc;n cơ thể.</span></span></span></span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\">Gi&agrave;y đi l&acirc;u ng&agrave;y kh&ocirc;ng chỉ c&oacute; m&ugrave;i h&ocirc;i m&agrave; c&ograve;n sinh ra vi khuẩn g&acirc;y hại. Tuy nhi&ecirc;n từ những nguy&ecirc;n liệu đơn giản, bạn c&oacute; thể khắc phục được vấn đề n&agrave;y.</p>\r\n', '<p><strong>1. Tr&agrave; t&uacute;i lọc</strong></p>\r\n\r\n<p>Những t&uacute;i tr&agrave; mua ở si&ecirc;u thị, đặc biệt l&agrave; tr&agrave; đen chứa nhiều chất tannin c&oacute; t&aacute;c dụng tốt trong việc loại bỏ vi khuẩn g&acirc;y m&ugrave;i.</p>\r\n\r\n<p><img alt=\"Trong trà đen có chứa nhiều tannin, thấm hút và khử mùi hiệu quả. Ảnh: wikihow.\" src=\"https://i1-giadinh.vnecdn.net/2022/03/27/mui-hoi-1-1648350041-7285-1648351426.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=uOMiB3bYsT3E5voS9cEndw\" /></p>\r\n\r\n<p>Trong tr&agrave; đen c&oacute; chứa nhiều tannin, thấm h&uacute;t v&agrave; khử m&ugrave;i hiệu quả. Ảnh:&nbsp;<em>wikihow.</em></p>\r\n\r\n<p>Bạn lấy 2 t&uacute;i tr&agrave;, ng&acirc;m nước n&oacute;ng 2-3 ph&uacute;t, vớt ra để nguội rồi đặt v&agrave;o trong gi&agrave;y. T&ugrave;y v&agrave;o mức độ m&ugrave;i m&agrave; c&oacute; thể tăng số lượng t&uacute;i tr&agrave;. Chất tannin trong tr&agrave; sẽ thấm v&agrave;o gi&agrave;y, đ&aacute;nh bay vi khuẩn v&agrave;&nbsp;<a href=\"https://vnexpress.net/tag/mui-hoi-798050\" rel=\"dofollow\" target=\"_blank\">m&ugrave;i h&ocirc;i&nbsp;</a>cố hữu. Để t&uacute;i tr&agrave; từ 1-2 tiếng, sau đ&oacute; sấy hoặc để gi&agrave;y kh&ocirc; trong điều kiện tự nhi&ecirc;n rồi sử dụng b&igrave;nh thường.</p>\r\n\r\n<p>C&aacute;ch kh&aacute;c l&agrave; cho trực tiếp t&uacute;i tr&agrave; kh&ocirc; v&agrave;o trong gi&agrave;y, cũng gi&uacute;p h&uacute;t ẩm v&agrave; h&uacute;t m&ugrave;i rất tốt.</p>\r\n\r\n<p><strong>2. Tinh dầu</strong></p>\r\n\r\n<p>Để khử m&ugrave;i tạm thời, tinh dầu c&oacute; thể được coi l&agrave; cứu tinh. D&ugrave;ng tăm b&ocirc;ng thấm tinh dầu rồi b&ocirc;i đều l&ecirc;n to&agrave;n bộ bề mặt của l&oacute;t giầy, hoặc c&oacute; thể nhỏ trực tiếp. Tr&aacute;nh b&ocirc;i lem ra c&aacute;c phần ngo&agrave;i của gi&agrave;y v&igrave; c&oacute; thể tạo c&aacute;c mảng ố, mất t&iacute;nh thẩm mỹ.</p>\r\n\r\n<p>Muốn c&oacute; hiệu quả cao hơn, kết hợp sử dụng tinh dầu v&agrave; baking soda (bột nở). B&ocirc;i một lượng nhỏ hỗn hợp tinh dầu v&agrave; baking soda l&ecirc;n l&oacute;t gi&agrave;y. Hoặc nhỏ tinh dầu l&ecirc;n một tờ giấy b&aacute;o, vo tr&ograve;n lại rồi đặt trong gi&agrave;y v&agrave;i tiếng hoặc qua đ&ecirc;m. Hương tinh dầu sẽ b&aacute;m lại l&acirc;u hơn, m&ugrave;i h&ocirc;i cũng kh&ocirc;ng c&ograve;n nữa.</p>\r\n\r\n<p><strong>3. C&aacute;t vệ sinh cho m&egrave;o</strong></p>\r\n\r\n<p>T&iacute;nh năng nổi trội của c&aacute;t vệ sinh cho m&egrave;o ch&iacute;nh l&agrave; h&uacute;t ẩm v&agrave;&nbsp;<a href=\"https://vnexpress.net/cach-lam-sach-may-hut-mui-nha-bep-4414555.html\" rel=\"dofollow\" target=\"_blank\">h&uacute;t m&ugrave;i</a>&nbsp;hiệu quả. H&atilde;y cho c&aacute;t v&agrave;o 2 chiếc b&iacute;t tất (vớ) rồi đặt v&agrave;o trong gi&agrave;y. C&oacute; thể đổ trực tiếp c&aacute;t v&agrave;o gi&agrave;y, tuy nhi&ecirc;n c&aacute;ch n&agrave;y c&oacute; nhược điểm l&agrave; g&acirc;y kh&oacute; khăn trong việc vệ sinh sau n&agrave;y. Ngo&agrave;i ra, c&oacute; thể th&ecirc;m banking soda trộn lẫn c&aacute;t m&egrave;o, c&agrave;ng tăng t&iacute;nh khử khuẩn, khử m&ugrave;i.</p>\r\n\r\n<p><img alt=\"Nếu nhà có nuôi mèo, cát cho mèo cũng là nguyên liệu tốt để khử mùi cho những chiếc giày hôi. Ảnh: wikihow.\" src=\"https://i1-giadinh.vnecdn.net/2022/03/27/mui-hoi-4-1648350134-1795-1648351426.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=KKEb-yx8Lo_Hgdm8unaDTw\" /></p>\r\n\r\n<p>Nếu nh&agrave; c&oacute; nu&ocirc;i m&egrave;o, c&aacute;t cho m&egrave;o cũng l&agrave; nguy&ecirc;n liệu tốt để khử m&ugrave;i cho những chiếc gi&agrave;y h&ocirc;i. Ảnh:&nbsp;<em>wikihow.</em></p>\r\n\r\n<p>Với c&aacute;ch l&agrave;m n&agrave;y, chỉ sau một đ&ecirc;m, c&aacute;t m&egrave;o ph&aacute;t huy t&aacute;c dụng, gi&agrave;y sẽ hết m&ugrave;i kh&oacute; chịu. Tuy nhi&ecirc;n, h&atilde;y thử hiệu quả bằng c&aacute;ch bỏ tất ra v&agrave; kiểm tra gi&agrave;y hết m&ugrave;i chưa. Nếu chưa, h&atilde;y l&agrave;m lại một lần nữa.</p>\r\n\r\n<p><strong>4. Thuốc xịt khử tr&ugrave;ng</strong></p>\r\n\r\n<p>Đ&acirc;y l&agrave; c&aacute;ch l&agrave;m kh&aacute; lạ với nhiều người, nhưng lại ph&aacute;t huy t&aacute;c dụng kh&ocirc;ng ngờ. Trong m&ocirc;i trường ẩm ướt v&agrave; tối tăm, c&aacute;c loại nấm mốc ph&aacute;t triển cực thịnh. Gi&agrave;y đi l&acirc;u ng&agrave;y cũng l&agrave; m&ocirc;i trường l&yacute; tưởng cho ch&uacute;ng sinh s&ocirc;i, từ đ&oacute; ph&aacute;t sinh c&aacute;c loại m&ugrave;i h&ocirc;i. Bởi vậy, d&ugrave;ng c&aacute;c loại thuốc xịt khử tr&ugrave;ng, khử khuẩn cũng sẽ đảm bảo gi&agrave;y hết nấm mốc.</p>\r\n\r\n<p>Khi xịt, n&ecirc;n luồn s&acirc;u v&agrave;o ph&iacute;a b&ecirc;n trong gi&agrave;y, từ ph&iacute;a mũi ch&acirc;n. C&aacute;ch l&agrave;m n&agrave;y sẽ khiến to&agrave;n bộ đ&ocirc;i gi&agrave;y được vệ sinh. Tuy nhi&ecirc;n, cần phải c&oacute; thời gian để kh&ocirc; phần thuốc vừa xịt, kh&ocirc;ng n&ecirc;n sử dụng lu&ocirc;n tr&aacute;nh ảnh hưởng tới sức khỏe. Bạn c&oacute; thể sấy kh&ocirc; hoặc phơi gi&agrave;y dưới &aacute;nh nắng mặt trời.</p>\r\n\r\n<p><strong>5. T&uacute;i nhựa v&agrave; tủ đ&ocirc;ng</strong></p>\r\n\r\n<p>Cho gi&agrave;y v&agrave;o t&uacute;i nhựa c&oacute; kh&oacute;a zip, kh&oacute;a chặt tuyệt đối, sau đ&oacute; cho v&agrave;o ngăn đ&aacute; tủ lạnh hoặc tủ đ&ocirc;ng. Nhiều loại vi khuẩn, đặc biệt l&agrave; vi khuẩn g&acirc;y m&ugrave;i h&ocirc;i ch&acirc;n rất yếu khi gặp lạnh. Ch&uacute;ng dễ bị ti&ecirc;u diệt nếu phải chịu lạnh từ 12-24 giờ.</p>\r\n\r\n<p>Sau khi lấy gi&agrave;y ra khỏi tủ, l&agrave;m kh&ocirc; bằng c&aacute;ch sấy hoặc để kh&ocirc; tự nhi&ecirc;n. Tốt nhất n&ecirc;n để kh&ocirc; trong kh&ocirc;ng kh&iacute;, bởi sấy nhiều sẽ ảnh hưởng tới tuổi thọ của gi&agrave;y.</p>\r\n', 1, '1714546154_giay1-1648350252-1648350286-9650-1648351426.jpg'),
(8, 'Trung Quốc phát triển giày phân hủy sinh học', '<p>Tổng cộng hơn 500 đ&ocirc;i gi&agrave;y đ&atilde; được Đại học C&ocirc;ng nghệ H&oacute;a học Bắc Kinh (BUCT) trao tặng cho c&aacute;c giảng vi&ecirc;n v&agrave; sinh vi&ecirc;n tại buổi lễ ph&aacute;t h&agrave;nh l&ocirc; gi&agrave;y ph&acirc;n hủy ho&agrave;n to&agrave;n dựa tr&ecirc;n sinh học đầu ti&ecirc;n v&agrave;o h&ocirc;m 16/8.</p>\r\n\r\n<p>Theo&nbsp;<em>Science Net</em>, phần đế gi&agrave;y sử dụng chất liệu cao su polyester c&oacute; nguồn gốc sinh học do BUCT ph&aacute;t triển độc lập, trong khi c&aacute;c bộ phận kh&aacute;c được l&agrave;m từ sợi gai dầu, sợi tre v&agrave; vật liệu mủ th&acirc;n c&acirc;y ng&ocirc;. Ch&uacute;ng đủ ổn định để sử dụng h&agrave;ng ng&agrave;y v&agrave; ph&acirc;n hủy nhanh ch&oacute;ng trong điều kiện ủ ph&acirc;n.</p>\r\n', '<p>Nh&oacute;m nghi&ecirc;n cứu do Viện sĩ Zhang Liqun tại Học viện Kỹ thuật Trung Quốc v&agrave; Gi&aacute;o sư Wang Zhao tại BUCT dẫn đầu đ&atilde; ho&agrave;n th&agrave;nh sản xuất thử nghiệm quy m&ocirc; 1.000 tấn cao su polyester. Loại cao su n&agrave;y cũng c&oacute; thể d&ugrave;ng để sản xuất lốp xe, v&ograve;ng đệm chống dầu, axit polylactic v&agrave; chất lưu h&oacute;a dẻo nhiệt.</p>\r\n\r\n<p><img alt=\"Buổi lễ phát hành và trao tặng giày sinh học tại Đại học Công nghệ Hóa học Bắc Kinh. Ảnh: BUCT\" src=\"https://i1-vnexpress.vnecdn.net/2022/08/19/giay-phan-huy-8378-1660877687.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=8NuIiplu4eLuz5qgIHjAaw\" /></p>\r\n\r\n<p>Buổi lễ ph&aacute;t h&agrave;nh v&agrave; trao tặng gi&agrave;y sinh học tại Đại học C&ocirc;ng nghệ H&oacute;a học Bắc Kinh. Ảnh:&nbsp;<em>BUCT</em></p>\r\n\r\n<p>Theo Wang, việc thiếu vật liệu cao su ph&acirc;n hủy sinh học l&agrave; nguy&ecirc;n nh&acirc;n ch&iacute;nh hạn chế sự ph&aacute;t triển của gi&agrave;y ph&acirc;n hủy ở Trung Quốc. Mỗi năm, c&oacute; gần một tỷ đ&ocirc;i gi&agrave;y bị vứt bỏ v&agrave; nếu kh&ocirc;ng được xử l&yacute; hiệu quả, đ&oacute; sẽ l&agrave; một mối đe dọa đối với m&ocirc;i trường.</p>\r\n\r\n<p>Sau khi ph&aacute;t h&agrave;nh l&ocirc; gi&agrave;y quy m&ocirc; nhỏ đầu ti&ecirc;n, nh&oacute;m nghi&ecirc;n cứu tại BUCT sẽ l&agrave;m việc với c&aacute;c doanh nghiệp để thực hiện sản xuất h&agrave;ng loạt.</p>\r\n', 1, '1714546085_giayphanhuysinhhccopy-16608771-6857-8152-1660877687.jpg'),
(9, 'Adidas - từ xưởng giày sau nhà thành công ty hàng đầu thế giới', '<p>Adolf Dassler bỏ học l&agrave;m b&aacute;nh để mở xưởng gi&agrave;y, l&egrave;o l&aacute;i Adidas qua nhiều thăng trầm của kinh tế Đức sau chiến tranh.</p>\r\n\r\n<p>Adidas l&agrave; thương hiệu đồ thể thao h&agrave;ng đầu thế giới, với những đ&ocirc;i gi&agrave;y thuộc h&agrave;ng đắt đỏ nhất h&agrave;nh tinh. Theo h&atilde;ng nghi&ecirc;n cứu Macro Trends, gi&aacute; trị của Adidas t&iacute;nh đến th&aacute;ng 1/2023 l&agrave; 30 tỷ USD. Tuy nhi&ecirc;n, trước khi trở th&agrave;nh c&ocirc;ng ty tỷ USD như ng&agrave;y nay, h&atilde;ng n&agrave;y chỉ l&agrave; một cửa h&agrave;ng gi&agrave;y nhỏ trong ph&ograve;ng giặt của gia đ&igrave;nh.</p>\r\n', '<p>Adidas được s&aacute;ng lập bởi Adolf Dassler. Adolf sinh năm 1900 tại thị trấn Herzogenaurach (Đức), trong một gia đ&igrave;nh ngh&egrave;o c&oacute; 4 người con, với cha l&agrave; thợ đ&oacute;ng gi&agrave;y v&agrave; mẹ l&agrave;m giặt l&agrave;. Sau khi học xong trung học, &ocirc;ng học l&agrave;m b&aacute;nh theo mong muốn của cha. Tuy nhi&ecirc;n, đ&acirc;y kh&ocirc;ng phải l&agrave; đam m&ecirc; của &ocirc;ng. V&igrave; thế, Adolf lại quay về học đ&oacute;ng gi&agrave;y.</p>\r\n\r\n<p>Ngo&agrave;i c&ocirc;ng việc, Adolf cũng th&iacute;ch thể thao. &Ocirc;ng tham gia nhiều m&ocirc;n, từ b&oacute;ng đ&aacute;, boxing đến trượt tuyết. Nhờ đ&oacute;, &ocirc;ng nhận ra một điều sau n&agrave;y đ&atilde; gi&uacute;p Adidas th&agrave;nh c&ocirc;ng: Tất cả vận động vi&ecirc;n khi đ&oacute; đều đi c&ugrave;ng một loại gi&agrave;y. Adolf cho rằng nếu c&oacute; thể thiết kế những loại gi&agrave;y kh&aacute;c nhau cho từng m&ocirc;n thể thao, người đi ch&uacute;ng sẽ c&oacute; lợi thế lớn.</p>\r\n\r\n<p>Năm 1919, Đức trải qua suy tho&aacute;i kinh tế tồi tệ sau Đại chiến Thế giới I. Việc l&agrave;m ng&agrave;y c&agrave;ng khan hiếm. Tuy nhi&ecirc;n, Adolf kh&ocirc;ng muốn bỏ qua giấc mơ của m&igrave;nh. &Ocirc;ng cải tạo khu giặt giũ sau nh&agrave; của m&igrave;nh để th&agrave;nh nơi đ&oacute;ng gi&agrave;y. Với kỹ năng học được, Adolf kiếm tiền nhờ sửa gi&agrave;y cho người d&acirc;n trong v&ugrave;ng.</p>\r\n\r\n<p>Việc n&agrave;y gi&uacute;p &ocirc;ng c&oacute; thời gian v&agrave; nguồn lực tạo ra những đ&ocirc;i gi&agrave;y thể thao chuy&ecirc;n dụng đầu ti&ecirc;n. Một trong những s&aacute;ng tạo đầu ti&ecirc;n của Adolf l&agrave; gi&agrave;y chạy d&ugrave;ng trong s&acirc;n vận động - &yacute; tưởng mới mẻ với lĩnh vực thể thao thời đ&oacute;.</p>\r\n\r\n<p>Adolf cũng rất s&aacute;ng tạo trong qu&aacute; tr&igrave;nh sản xuất. V&iacute; dụ, khi nguồn điện kh&ocirc;ng ổn định, &ocirc;ng nối m&aacute;y m&oacute;c với xe đạp v&agrave; nhờ một nh&acirc;n vi&ecirc;n đạp để tạo ra điện.</p>\r\n\r\n<p><img alt=\"Adolf Dassler tại xưởng giày của hai anh em. Ảnh: Adidas\" src=\"https://i1-kinhdoanh.vnecdn.net/2023/02/16/adidas-archive-07700-167654109-6635-1917-1676541286.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=l-Y9BX1XanswUdNTmPLWJg\" /></p>\r\n\r\n<p>Adolf Dassler tại xưởng gi&agrave;y của hai anh em. Ảnh:&nbsp;<em>Adidas</em></p>\r\n\r\n<p>Năm 1924, anh trai của Adolf l&agrave; Rudolf c&ugrave;ng tham gia với &ocirc;ng. Họ mở c&ocirc;ng ty, đặt t&ecirc;n l&agrave; Dassler Brothers Shoe Factory (Xưởng gi&agrave;y của anh em Dassler). Đ&acirc;y l&agrave; sự kết hợp mang t&iacute;nh bổ sung, v&igrave; Adolf rất giỏi đ&oacute;ng gi&agrave;y, c&ograve;n Rudolf c&oacute; năng khiếu b&aacute;n h&agrave;ng v&agrave; quảng c&aacute;o. Khi kinh tế Đức dần phục hồi, việc kinh doanh cũng nhanh ch&oacute;ng b&ugrave;ng nổ.</p>\r\n\r\n<p>Năm 1926, cả hai đủ tiền chuyển xưởng đ&oacute;ng gi&agrave;y sang địa điểm mới. Ở đ&acirc;y, họ c&oacute; thể l&agrave;m h&agrave;ng trăm đ&ocirc;i gi&agrave;y mỗi ng&agrave;y. Quy m&ocirc; c&ocirc;ng ty nhanh ch&oacute;ng tăng l&ecirc;n v&agrave; Adolf quyết định mở rộng sản xuất ra ngo&agrave;i địa phương. &Ocirc;ng tham dự gần như mọi sự kiện thể thao lớn v&agrave; n&oacute;i chuyện với c&aacute;c vận động vi&ecirc;n, thuyết phục họ thử gi&agrave;y của m&igrave;nh.</p>\r\n\r\n<p>Những nỗ lực v&agrave; quyết t&acirc;m của &ocirc;ng đ&atilde; c&oacute; kết quả. Nhiều vận động vi&ecirc;n h&agrave;ng đầu của Đức đ&atilde; d&ugrave;ng gi&agrave;y của họ tại Olympics Amsterdam năm 1928. Adolf lu&ocirc;n điều chỉnh gi&agrave;y đi thử theo phản hồi của từng vận động vi&ecirc;n, để đảm bảo họ c&oacute; sản phẩm tốt nhất.</p>\r\n\r\n<p>&Ocirc;ng cũng tạo quan hệ với đội tuyển điền kinh Đức, th&ocirc;ng qua huấn luyện vi&ecirc;n Josef Waitzer. Sự hợp t&aacute;c n&agrave;y kh&ocirc;ng chỉ gi&uacute;p Adolf c&oacute; những phản hồi qu&yacute; gi&aacute; về sản phẩm, m&agrave; c&ograve;n gi&uacute;p gi&agrave;y của hai anh em được nhiều vận động vi&ecirc;n sử dụng hơn trong Olympic. Ở thời điểm c&aacute;c vận động vi&ecirc;n chưa c&oacute; nh&agrave; t&agrave;i trợ chuy&ecirc;n nghiệp, đ&acirc;y l&agrave; chiến lược marketing đột ph&aacute; của anh em nh&agrave; Dassler.</p>\r\n\r\n<p>Đến Olympic Berlin 1936, Adolf quyết định t&agrave;i trợ cho c&aacute;c vận động vi&ecirc;n h&agrave;ng đầu. &Ocirc;ng thậm ch&iacute; thuyết phục vận động vi&ecirc;n điền kinh nổi tiếng của Mỹ khi đ&oacute; l&agrave; Jesse Owens đi gi&agrave;y của họ v&agrave; đ&atilde; được đồng &yacute;. Owens sau đ&oacute; gi&agrave;nh được tới 4 huy chương v&agrave;ng tại Olympic Berlin, ph&aacute; vỡ nhiều kỷ lục, khiến gi&agrave;y của anh em nh&agrave; Dassler c&agrave;ng nổi tiếng. C&ocirc;ng ty của họ bắt đầu hiện diện quốc tế nhiều hơn.</p>\r\n\r\n<p>V&agrave;i năm sau đ&oacute;, Đại chiến Thế giới II nổ ra, khiến việc kinh doanh bị gi&aacute;n đoạn v&igrave; thiếu thốn nguy&ecirc;n vật liệu v&agrave; nh&acirc;n lực. Adolf v&agrave; Rudolf lần lượt phải nhập ngũ, khiến c&ocirc;ng ty c&agrave;ng gặp kh&oacute;. Những bất đồng về c&aacute;ch duy tr&igrave; c&ocirc;ng ty trong chiến tranh v&agrave; c&aacute;c hiểu lầm sau đ&oacute; khiến hai anh em Adolf v&agrave; Rudolf quyết định kh&ocirc;ng l&agrave;m việc với nhau nữa.</p>\r\n\r\n<p>Năm 1949, Rudolf nhận nửa c&ocirc;ng ty v&agrave; nh&acirc;n vi&ecirc;n, th&agrave;nh lập thương hiệu ri&ecirc;ng với t&ecirc;n Ruda. Sau n&agrave;y, &ocirc;ng đổi t&ecirc;n th&agrave;nh Puma, v&igrave; Ruda kh&ocirc;ng mang t&iacute;nh thể thao. C&ugrave;ng năm đ&oacute;, Adolf th&agrave;nh lập Adidas, tạo ra từ ch&iacute;nh t&ecirc;n m&igrave;nh - Adolf (Adi) Dassler (das).</p>\r\n\r\n<p>Những năm sau chiến tranh rất kh&oacute; khăn với Adidas, khi kinh tế Đức lại rơi v&agrave;o khủng hoảng. Adolf phải dựa v&agrave;o sự s&aacute;ng tạo v&agrave; tinh thần khởi nghiệp để vượt qua. &Ocirc;ng tận dụng nhiều mối quan hệ để c&oacute; nguồn nguy&ecirc;n liệu dư thừa từ chiến tranh. &Ocirc;ng phải l&agrave;m gi&agrave;y từ lớp l&oacute;t b&igrave;nh nhi&ecirc;n liệu tr&ecirc;n m&aacute;y bay, b&egrave; cao su v&agrave; vải lều.</p>\r\n\r\n<p>Sau khi ngừng hợp t&aacute;c với anh trai, Adolf cũng muốn sản phẩm của m&igrave;nh c&oacute; thiết kế độc đ&aacute;o, dễ nhận ra d&ugrave; l&agrave; đi dưới ch&acirc;n. &Ocirc;ng đ&atilde; thử nghiệm nhiều thiết kế v&agrave; cuối c&ugrave;ng cho ra đời logo 3 vạch kẻ song song như hiện tại.</p>\r\n\r\n<p>Khi kinh tế Đức dần phục hồi, Adofl v&agrave; vợ K&auml;the đ&atilde; l&egrave;o l&aacute;i Adidas tăng trưởng mạnh. K&auml;the tham gia v&agrave;o việc b&aacute;n h&agrave;ng, quản l&yacute; nh&acirc;n lực, gi&uacute;p Adolf tập trung v&agrave;o việc &ocirc;ng l&agrave;m tốt nhất. Đến thập ni&ecirc;n 60, Adidas đ&atilde; c&oacute; hơn 500 nh&acirc;n vi&ecirc;n v&agrave; l&agrave; h&atilde;ng sản xuất gi&agrave;y thể thao lớn nhất thế giới.</p>\r\n\r\n<p>Adolf được m&ocirc; tả l&agrave; người tận tụy với c&ocirc;ng việc. &Ocirc;ng nghi&ecirc;n cứu rất kỹ chuyển động của c&aacute;c vận động vi&ecirc;n để c&oacute; &yacute; tưởng cho sản phẩm mới, đặc biệt l&agrave; khi c&aacute;c m&ocirc;n thể thao bắt đầu được ph&aacute;t tr&ecirc;n TV. Năm 50 tuổi, Adolf vẫn chơi nhiều m&ocirc;n thể thao để b&aacute;m s&aacute;t qu&aacute; tr&igrave;nh ph&aacute;t triển sản phẩm.</p>\r\n\r\n<p>Năm 1986, nh&oacute;m nhạc Mỹ Run-DMC s&aacute;ng t&aacute;c ca kh&uacute;c My Adidas để thể hiện sự y&ecirc;u th&iacute;ch của m&igrave;nh với sản phẩm của h&atilde;ng n&agrave;y. Người h&acirc;m mộ của nh&oacute;m sau đ&oacute; đ&atilde; đổ x&ocirc; mua gi&agrave;y Adidas. Ấn tượng với việc n&agrave;y, Adidas đ&atilde; k&yacute; thỏa thuận trị gi&aacute; 1,6 triệu USD với Run-DMC, tạo n&ecirc;n một trong những vụ hợp t&aacute;c đ&aacute;ng nhớ nhất lĩnh vực gi&agrave;y thể thao.</p>\r\n\r\n<p>Adidas sau đ&oacute; t&iacute;ch cực li&ecirc;n kết với giới nghệ sĩ để quảng b&aacute; thương hiệu. H&atilde;ng n&agrave;y nổi tiếng với việc hợp t&aacute;c với c&aacute;c vận động vi&ecirc;n v&agrave; rapper. Cầu thủ b&oacute;ng đ&aacute; David Beckham v&agrave; huyền thoại boxing Muhammad Ali cũng từng hợp t&aacute;c với Adidas.</p>\r\n\r\n<p>Adolf qua đời năm 1978. K&auml;the sau đ&oacute; tiếp tục điều h&agrave;nh c&ocirc;ng ty c&ugrave;ng con trai Horst cho đến khi b&agrave; mất năm 1984.</p>\r\n\r\n<p>Hiện tại, Adidas l&agrave; một trong những thương hiệu trang phục thể thao h&agrave;ng đầu thế giới, b&ecirc;n cạnh Nike hay Puma. Doanh thu năm 2021 của c&ocirc;ng ty n&agrave;y l&agrave; 25 tỷ USD, tăng 10% so với năm 2020. Lợi nhuận hoạt động l&agrave; 2,3 tỷ USD.</p>\r\n', 1, '1714546013_adolf-dassler-adi-adidas-shoem-7393-1183-1676541287.jpg'),
(10, 'Nike - hãng giày ra đời từ bài luận trong trường đại học', '<p>hil Knight nảy ra &yacute; tưởng về Nike nhờ tham gia đội tuyển điền kinh của trường v&agrave; trải nghiệm trong c&aacute;c lớp học về kinh doanh.</p>\r\n\r\n<p>H&agrave;nh tr&igrave;nh của Nike bắt đầu v&agrave;o năm 1962. Khi đ&oacute;, đồng s&aacute;ng lập Phil Knight vừa ho&agrave;n th&agrave;nh chương tr&igrave;nh MBA (thạc sĩ quản trị kinh doanh) tại Đại học Stanford. Trước đ&oacute;, &ocirc;ng đ&atilde; tốt nghiệp cử nh&acirc;n tại Đại học Oregon. Theo&nbsp;<em>The Street</em>, đ&acirc;y được coi l&agrave; hai trải nghiệm quan trọng định h&igrave;nh cho sự nghiệp của Knight sau n&agrave;y.</p>\r\n', '<p>Ở trường Oregon, &ocirc;ng tham gia v&agrave;o đội tuyển điền kinh của huấn luyện vi&ecirc;n Bill Bowerman &ndash; đồng s&aacute;ng lập Nike sau n&agrave;y. Bowerman lu&ocirc;n quan t&acirc;m đến việc tối ưu h&oacute;a gi&agrave;y cho học tr&ograve;. &Ocirc;ng thường xuy&ecirc;n sửa gi&agrave;y cho họ sau khi học hỏi từ một thợ gi&agrave;y địa phương. Ch&iacute;nh điều n&agrave;y đ&atilde; khiến Knight ấn tượng.</p>\r\n\r\n<p>Trong cuốn tự truyện &quot;Shoe Dog&quot; sau n&agrave;y, Phil Knight tiết lộ &ocirc;ng nảy ra &yacute; tưởng về Nike nhờ &quot;c&aacute;c đường chạy tại Oregon v&agrave; c&aacute;c lớp học ở Stanford&quot;. Tại Stanford, Knight c&ograve;n từng viết một b&agrave;i luận về l&yacute; do gi&agrave;y chạy n&ecirc;n dời địa điểm sản xuất truyền thống từ Đức sang Nhật Bản &ndash; nơi c&oacute; gi&aacute; nh&acirc;n c&ocirc;ng rẻ hơn. &Yacute; tưởng n&agrave;y được coi l&agrave; đi&ecirc;n rồ ở thời điểm đ&oacute;.</p>\r\n\r\n<p>Nhưng sau khi tốt nghiệp, Knight đ&atilde; c&oacute; cơ hội thử nghiệm điều n&agrave;y. Lu&ocirc;n muốn l&agrave;m doanh nh&acirc;n, năm 1962, &ocirc;ng bay đến Nhật Bản, t&igrave;m một thương hiệu gi&agrave;y đủ tốt để hiện thực h&oacute;a ước mơ của m&igrave;nh. Tại Kobe, &ocirc;ng cuối c&ugrave;ng cũng t&igrave;m được h&atilde;ng gi&agrave;y Onitsuka (hiện l&agrave; Asics). Hai b&ecirc;n k&yacute; hợp đồng, v&agrave; Knight bắt đầu nhập khẩu gi&agrave;y Tiger của họ để b&aacute;n sang Mỹ với quy m&ocirc; nhỏ.</p>\r\n\r\n<p>Bowerman ủng hộ việc kinh doanh của Knight v&agrave; g&oacute;p vốn 50% v&agrave;o c&ocirc;ng ty mới của cả hai - Blue Ribbon Sports (BRS). BRS th&agrave;nh lập năm 1964 với số vốn chỉ 1.000 USD. Knight thậm ch&iacute; đ&atilde; phải vay tiền từ cha m&igrave;nh.</p>\r\n\r\n<p><img alt=\"Bill Bowerman (trái) và Phil Knight năm 1999. Ảnh: Nike\" src=\"https://i1-kinhdoanh.vnecdn.net/2023/02/25/Bill-Bowerman-and-Phil-Knight-9174-6445-1677339846.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=Cdy6_UTwzPsRcplWknB0bg\" /></p>\r\n\r\n<p>Bill Bowerman (tr&aacute;i) v&agrave; Phil Knight năm 1999. Ảnh:<em>&nbsp;Nike</em></p>\r\n\r\n<p>Ban đầu, Knight b&aacute;n gi&agrave;y tr&ecirc;n xe hơi với quy m&ocirc; nhỏ để thử nghiệm. Rất nhanh sau đ&oacute;, họ nhận ra người d&ugrave;ng c&oacute; nhu cầu mua gi&agrave;y rẻ hơn m&agrave; vẫn c&oacute; chất lượng cao, thay thế cho gi&agrave;y Adidas v&agrave; Puma vốn đang thống trị thị trường. Cả hai sau đ&oacute; li&ecirc;n tục tăng đặt h&agrave;ng, cho đến khi phải thu&ecirc; th&ecirc;m người để đ&aacute;p ứng nhu cầu ng&agrave;y c&agrave;ng lớn,&nbsp;<em>CNBC</em>&nbsp;cho biết.</p>\r\n\r\n<p>Năm 1965, Bowerman đề xuất thiết kế gi&agrave;y mới cho Onitsuka, nhằm hỗ trợ người chạy tối đa. Thiết kế n&agrave;y nhanh ch&oacute;ng đem đến th&agrave;nh c&ocirc;ng, nhưng cũng l&agrave; nguồn cơn g&acirc;y rạn nứt mối quan hệ giữa BRS v&agrave; nh&agrave; cung cấp Nhật Bản. Mẫu gi&agrave;y n&agrave;y được đặt t&ecirc;n Tiger Cortez, ra mắt năm 1967 v&agrave; được ưa chuộng nhờ sự thoải m&aacute;i, thiết kế thời trang.</p>\r\n\r\n<p>Tuy nhi&ecirc;n, việc n&agrave;y cũng khiến quan hệ hai b&ecirc;n đi xuống. Knight cho rằng c&ocirc;ng ty Nhật Bản đang t&igrave;m c&aacute;ch ph&aacute; bỏ hợp đồng độc quyền với BRS. B&ecirc;n cạnh đ&oacute;, việc giao h&agrave;ng kh&ocirc;ng phải l&uacute;c n&agrave;o cũng đ&uacute;ng hạn.</p>\r\n\r\n<p>Knight c&ograve;n gặp nhiều rắc rối t&agrave;i ch&iacute;nh. D&ugrave; doanh thu li&ecirc;n tục tăng gấp đ&ocirc;i, c&aacute;c ng&acirc;n h&agrave;ng vẫn lưỡng lự khi cho &ocirc;ng vay.</p>\r\n\r\n<p>Năm 1971, BRS v&agrave; Onitsuka Tiger chấm dứt hợp t&aacute;c. BRS gần như phải bắt đầu lại mọi thứ. Knight, Bowerman v&agrave; 45 nh&acirc;n vi&ecirc;n khi đ&oacute; phải t&igrave;m nh&agrave; m&aacute;y mới để sản xuất gi&agrave;y. Họ thậm ch&iacute; c&ograve;n phải t&igrave;m t&ecirc;n mới cho c&ocirc;ng ty.</p>\r\n\r\n<p>Trong hồi k&yacute;, Knight cho biết ban đầu, &ocirc;ng định đặt t&ecirc;n c&ocirc;ng ty l&agrave; Dimension 6. Nhưng sau đ&oacute;, &quot;Khi Jeff Johnson nghĩ ra t&ecirc;n Nike, t&ocirc;i cũng kh&ocirc;ng biết m&igrave;nh c&oacute; th&iacute;ch kh&ocirc;ng nữa. Nhưng d&ugrave; sao n&oacute; cũng hay hơn c&aacute;c t&ecirc;n kh&aacute;c&quot;, &ocirc;ng nhớ lại. Johnson l&agrave; nh&acirc;n vi&ecirc;n đầu ti&ecirc;n của Nike. &Ocirc;ng nghĩ ra từ Nike sau khi nh&igrave;n thấy t&ecirc;n nữ thần chiến thắng trong thần thoại Hy Lạp.</p>\r\n\r\n<p>Họ cũng phải thiết kế logo mới. V&igrave; thế, Knight đến gặp Carolyn Davis &ndash; sinh vi&ecirc;n thiết kế tại Trường đại học Portland gần đ&oacute;. Davis lấy gi&aacute; 35 USD cho h&igrave;nh swoosh &ndash; dấu phẩy hướng l&ecirc;n tr&ecirc;n.</p>\r\n\r\n<p>Việc kinh doanh của Nike sau đ&oacute; kh&aacute; th&agrave;nh c&ocirc;ng, nhờ gi&agrave;y Cortez v&agrave; Waffle Trainer. Bowerman lấy &yacute; tưởng sản phẩm từ chiếc b&aacute;nh waffle (b&aacute;nh tổ ong) của vợ m&igrave;nh.</p>\r\n\r\n<p>Nike sau đ&oacute; li&ecirc;n tục ph&aacute;t triển, một phần nhờ c&aacute;c chiến dịch quảng c&aacute;o th&ocirc;ng minh, nổi tiếng nhất l&agrave; Just Do It năm 1988. Việc hợp t&aacute;c với người nổi tiếng cũng g&oacute;p phần đ&aacute;ng kể v&agrave;o th&agrave;nh c&ocirc;ng của họ. Nike đ&atilde; k&yacute; hợp đồng với nhiều vận động vi&ecirc;n như Tiger Woods, Kobe Bryant v&agrave; Lebron James trong giai đoạn đầu sự nghiệp của họ.</p>\r\n\r\n<p>Sự hợp t&aacute;c được đ&aacute;nh gi&aacute; th&agrave;nh c&ocirc;ng nhất l&agrave; với Michael Jordan. Nike k&yacute; hợp đồng trước cả khi Jordan trở th&agrave;nh ng&ocirc;i sao. D&ograve;ng sản phẩm hợp t&aacute;c mang t&ecirc;n Air Jordan cũng đem về 100 triệu USD doanh thu cho Nike cuối năm 1985. Đến nay, Air Jordan vẫn l&agrave; con g&agrave; đẻ trứng v&agrave;ng cho h&atilde;ng n&agrave;y.</p>\r\n\r\n<p>Sự đồng h&agrave;nh của Knight v&agrave; Bowerman l&agrave; v&iacute; dụ kinh điển cho sự hợp t&aacute;c giữa tinh thần khởi nghiệp v&agrave; khả năng s&aacute;ng tạo. Bowerman nổi tiếng với những thiết kế gi&agrave;y mang t&iacute;nh đột ph&aacute;. C&ograve;n Knight c&oacute; những &yacute; tưởng marketing hiệu quả, như th&ocirc;ng b&aacute;o &quot;4 tr&ecirc;n 7 người về đ&iacute;ch đầu ti&ecirc;n&quot; trong m&ocirc;n marathon tại đợt tuyển chọn vận động vi&ecirc;n Olympic Mỹ 1972 l&agrave; đi gi&agrave;y Nike.</p>\r\n\r\n<p>Trong một cuộc phỏng vấn năm 2017 tại Trường Kinh doanh Stanford, được đăng tải tr&ecirc;n website trường n&agrave;y, Knight kể lại rằng Bowerman kh&ocirc;ng chỉ dạy &ocirc;ng c&aacute;ch chạy, m&agrave; c&ograve;n tạo ra nền tảng gi&uacute;p &ocirc;ng biết c&aacute;ch đ&aacute;p trả sự cạnh tranh. &quot;&Ocirc;ng ấy muốn người trẻ biết rằng họ cần chuẩn bị cho sự cạnh tranh suốt đời, chứ kh&ocirc;ng chỉ l&agrave; 4 năm trong đội tuyển trường đại học&quot;, Knight nhớ lại.</p>\r\n\r\n<p>Năm 1980, Nike l&agrave;m IPO. Knight lập tức trở th&agrave;nh triệu ph&uacute; với số cổ phiếu trị gi&aacute; 178 triệu USD. Hiện tại, Knight sở hữu 45,3 tỷ USD, theo<em>&nbsp;Forbes,</em>&nbsp;v&agrave; l&agrave; người gi&agrave;u thứ 17 tại Mỹ. Năm 2016, &ocirc;ng rời Nike, nhường vị tr&iacute; chủ tịch cho Mark Parker sau 52 năm gắn b&oacute; với c&ocirc;ng ty. Bowerman th&igrave; đ&atilde; qua đời năm 1999 ở tuổi 88.</p>\r\n\r\n<p>Nike hiện tại l&agrave; thương hiệu đồ thể thao h&agrave;ng đầu thế giới, c&ugrave;ng với Adidas v&agrave; Puma. Năm 2022, họ c&oacute; gần 80.000 nh&acirc;n vi&ecirc;n tr&ecirc;n to&agrave;n cầu. Doanh thu t&agrave;i kh&oacute;a 2022 đạt 46,7 tỷ USD, tăng 2 tỷ USD so với năm trước đ&oacute;.</p>\r\n\r\n<p>Cũng trong cuộc phỏng vấn năm 2017 tại Stanford, Knight đ&atilde; đề cao gi&aacute; trị của việc học đại học. &quot;Bill Gates v&agrave; Steve Jobs bỏ học sau một năm v&agrave; khởi nghiệp rất th&agrave;nh c&ocirc;ng. Nhưng trường hợp của t&ocirc;i th&igrave; ngược lại. T&ocirc;i viết ra kế hoạch về c&ocirc;ng ty sau n&agrave;y trở th&agrave;nh Nike trong một lớp học ở Stanford&quot;, &ocirc;ng n&oacute;i.</p>\r\n\r\n<p>V&agrave; khi được hỏi lời khuy&ecirc;n cho doanh nh&acirc;n khởi nghiệp, Knight cho biết họ cần chuẩn bị đối mặt với nhiều kh&oacute; khăn v&agrave; những bước l&ugrave;i kh&ocirc;ng ngờ tới. &quot;Với c&aacute;c doanh nh&acirc;n, mỗi ng&agrave;y đều l&agrave; một cuộc khủng hoảng&quot;, &ocirc;ng kết luận.</p>\r\n', 1, '1714545861_nikeset-1677339785-8043-1677339846.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orderdetails`
--

CREATE TABLE `orderdetails` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orderdetails`
--

INSERT INTO `orderdetails` (`id`, `order_id`, `product_id`, `number`, `price`) VALUES
(46, 29, 44, 1, 4490000),
(47, 30, 13, 1, 1850000),
(48, 30, 56, 1, 26900000),
(49, 31, 44, 1, 4490000),
(50, 32, 32, 4, 44990000),
(51, 33, 32, 1, 44990000),
(52, 33, 56, 2, 26900000),
(53, 34, 32, 1, 44990000),
(54, 35, 44, 1, 4490000),
(55, 36, 32, 1, 44990000),
(56, 37, 32, 1, 44990000),
(57, 38, 44, 1, 4490000),
(58, 39, 32, 1, 44990000),
(59, 40, 32, 1, 44990000),
(60, 41, 56, 1, 26900000),
(61, 42, 66, 1, 10000),
(62, 43, 65, 1, 100000),
(63, 44, 66, 2, 10000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `create_at` date NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `create_at`, `status`) VALUES
(31, 19, '2024-01-01', 1),
(32, 19, '2024-01-01', 0),
(33, 19, '2024-01-03', 0),
(34, 19, '2024-01-03', 0),
(35, 19, '2024-01-03', 0),
(36, 19, '2024-01-03', 0),
(37, 19, '2024-01-03', 0),
(38, 19, '2024-01-03', 0),
(39, 19, '2024-01-03', 0),
(40, 19, '2024-01-03', 0),
(41, 19, '2024-01-04', 0),
(42, 19, '2024-01-04', 0),
(43, 19, '2024-01-04', 0),
(44, 19, '2024-01-04', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `description` varchar(4000) NOT NULL,
  `content` text NOT NULL,
  `hot` int(11) NOT NULL DEFAULT 0,
  `quantity` int(11) DEFAULT 100,
  `size` varchar(100) NOT NULL,
  `photo` varchar(500) NOT NULL,
  `price` float NOT NULL,
  `discount` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `content`, `hot`, `quantity`, `size`, `photo`, `price`, `discount`, `category_id`, `created_at`) VALUES
(7, 'Giày Sandal Gót Vuông Quai Mặt Bất Đối Xứng', '<ul>\r\n	<li>Kiểu d&aacute;ng:&nbsp;Gi&agrave;y xăng đan</li>\r\n	<li>Chất liệu:&nbsp;Si mờ trơn</li>\r\n	<li>Độ cao:&nbsp;5cm</li>\r\n	<li>M&agrave;u sắc:&nbsp;Đen-Kem-Trắng-Hồng-Xanh nhạt-Hồng v&acirc;n-Kem b&oacute;ng-V&agrave;ng-X&aacute;m xanh-T&iacute;m-X&aacute;m đậm</li>\r\n	<li>K&iacute;ch cỡ:&nbsp;35-36-37-38-39</li>\r\n	<li>Xuất xứ:&nbsp;Việt Nam</li>\r\n	<li>Gi&aacute; đ&atilde; bao gồm VAT</li>\r\n</ul>\r\n', '', 0, 100, '', '1714546721_xam-xanh_sd05044_2_20240122164534_d9b28d5300a94a058b28286aec75eac7_master.jpeg', 314900, 23, 11, '2023-12-18 14:19:19'),
(8, 'GIÀY NỮ THỜI TRANG CAO CẤP ELLY', '<p><strong>&ndash; Thương hiệu:</strong>&nbsp;ELLY.<br />\r\n<strong>&ndash; Sản xuất:</strong>&nbsp;Trung Quốc (theo ti&ecirc;u chuẩn chất lượng của thương hiệu ELLY).<br />\r\n<strong>&ndash; Kiểu d&aacute;ng:</strong>&nbsp;Boot cao g&oacute;t.<br />\r\n<strong>&ndash; M&agrave;u sắc:</strong>&nbsp;Đen, nude.<br />\r\n<strong>&ndash; Độ cao g&oacute;t</strong>: 7 cm.<br />\r\n<strong>&ndash; Size:</strong>&nbsp;35, 36, 37, 38, 39.<br />\r\n<strong>&ndash; Chất liệu:</strong>&nbsp;Da tổng hợp cao cấp nhập khẩu.<br />\r\n<strong>&ndash; Trọn bộ sản phẩm gồm:</strong>&nbsp;01 gi&agrave;y nữ thời trang cao cấp ELLY &ndash; EG186 + 01 hộp đựng sang trọng.<br />\r\n<strong>&ndash; Bảo h&agrave;nh:&nbsp;</strong>03 th&aacute;ng (với lỗi do sản xuất)</p>\r\n', '', 1, 100, '', '1714546615_giay-nu-thoi-trang-cao-cap-elly-eg186-30-1.jpg', 1700000, 25, 21, '2024-01-04 14:19:19'),
(26, 'Giày lười nam da mềm màu nâu cánh gián', '<p>&ndash; M&agrave;u: N&acirc;u</p>\r\n\r\n<p>&ndash; Cao từ b&ecirc;n trong 5cm, ho&agrave;n to&agrave;n b&iacute; mật:</p>\r\n\r\n<p>+ Ph&iacute;a b&ecirc;n trong gi&agrave;y được ẩn lớp l&oacute;t cao 3cm.</p>\r\n\r\n<p>+ Cao 2cm l&agrave; phần đế ngo&agrave;i.</p>\r\n\r\n<p>&ndash;&nbsp; Xuất xứ: Việt Nam</p>\r\n\r\n<p>&ndash; Đế: cao su đ&uacute;c chống m&ograve;n chống trượt</p>\r\n\r\n<p>&ndash; Chất liệu:&nbsp; Da b&ograve; cao cấp nhập khẩu</p>\r\n', '', 0, 100, '', '1714540283_giay-luoi-nam-da-mem-mau-nau-canh-gian-gln01-1-768x768.jpg', 7990000, 15, 42, '2024-01-04 14:19:19'),
(27, 'Giày lười nam CLARKS da mềm màu xanh', '<p>&ndash; M&agrave;u: Xanh</p>\r\n\r\n<p>+ Ph&iacute;a b&ecirc;n trong gi&agrave;y được ẩn lớp l&oacute;t cao 3cm.</p>\r\n\r\n<p>+ Cao 2cm l&agrave; phần đế ngo&agrave;i.</p>\r\n\r\n<p>&ndash;&nbsp; Xuất xứ: Th&aacute;i Lan</p>\r\n\r\n<p>&ndash; Đế: Cao su đ&uacute;c chống m&ograve;n chống trượt</p>\r\n\r\n<p>&ndash; Chất liệu:&nbsp; Da b&ograve; cao cấp nhập khẩu</p>\r\n', '', 0, 100, '', '1714540206_z3526162456682_29a0d4dc77a401f958970d917ab78a75-768x768.jpg', 649000, 15, 27, '2023-12-18 14:19:19'),
(28, 'Giày lười nam  da mềm màu đen', '<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>Th&ocirc;ng tin chung về gi&agrave;y lười nam da mềm m&agrave;u đen&nbsp;</strong></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&ndash; M&agrave;u: Đen</p>\r\n\r\n<p>&ndash; Cao từ b&ecirc;n trong 5cm, ho&agrave;n to&agrave;n b&iacute; mật:</p>\r\n\r\n<p>+ Ph&iacute;a b&ecirc;n trong gi&agrave;y được ẩn lớp l&oacute;t cao 3cm.</p>\r\n\r\n<p>+ Cao 2cm l&agrave; phần đế ngo&agrave;i.</p>\r\n\r\n<p>&ndash;&nbsp; Xuất xứ: Việt Nam</p>\r\n\r\n<p>&ndash; Đế: cao su đ&uacute;c chống m&ograve;n chống trượt</p>\r\n\r\n<p>&ndash; Chất liệu:&nbsp; Da b&ograve; cao cấp nhập khẩu</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>Đặc điểm của gi&agrave;y lười&nbsp;</strong></h2>\r\n\r\n<p>&ndash; Hỗ trợ cao hơn 5cm, kiểu c&aacute;ch thể hiện tinh tế, kh&ocirc;ng th&ocirc; như c&aacute;c sản phẩm đ&ocirc;n đế cao kh&aacute;c tr&ecirc;n thị trường.</p>\r\n\r\n<p>&ndash; Chương tr&igrave;nh hậu m&atilde;i TRỌN ĐỜI của Thai&rsquo;s Store gi&uacute;p kh&aacute;ch h&agrave;ng lu&ocirc;n c&oacute; sự h&agrave;i l&ograve;ng với thương hiệu gi&agrave;y của ch&uacute;ng t&ocirc;i</p>\r\n\r\n<p>&ndash; Lớp l&oacute;t tăng cao b&ecirc;n trong v&agrave; đế ngo&agrave;i l&agrave;m từ vật liệu SI&Ecirc;U NHẸ, tạo cảm gi&aacute;c thoải m&aacute;i khi di chuyển v&agrave; sử dụng trong thời gian l&acirc;u d&agrave;i!</p>\r\n\r\n<h3><strong>Gi&agrave;y lười&nbsp;c&oacute; cần đi tất kh&ocirc;ng?</strong></h3>\r\n\r\n<p>Đi gi&agrave;y lười&nbsp; bạn c&oacute; thể đi tất hay kh&ocirc;ng đều được. Nhưng nếu bạn c&oacute; vấn đề với m&ugrave;i mồ h&ocirc;i ch&acirc;n (hoặc ch&acirc;n bạn ra nhiều mồ h&ocirc;i) th&igrave; lời khuy&ecirc;n của ch&uacute;ng t&ocirc;i d&agrave;nh cho bạn l&agrave; n&ecirc;n sử dụng tất nếu đi gi&agrave;y lười. Tất sẽ gi&uacute;p h&uacute;t ẩm v&agrave; l&agrave;m tho&aacute;ng m&aacute;t cho đ&ocirc;i ch&acirc;n của bạn, ngo&agrave;i việc để hạn chế được m&ugrave;i h&ocirc;i ch&acirc;n th&igrave; c&ograve;n gi&uacute;p bạn thoải m&aacute;i hơn trong việc đi lại cả ng&agrave;y.<br />\r\nBạn n&ecirc;n chọn tất lười để kh&ocirc;ng bị lộ cổ tất khi đi c&ugrave;ng với gi&agrave;y.</p>\r\n\r\n<p>(*)&nbsp;<em>Tất lười nam (hay c&ograve;n gọi l&agrave; tất ẩn): L&agrave; loại tất được thiết kế cho nửa b&agrave;n ch&acirc;n. Loại tất lười n&agrave;y được thiết kế d&agrave;nh ri&ecirc;ng cho những đ&ocirc;i gi&agrave;y cổ thấp như gi&agrave;y lười tạo n&ecirc;n sự tinh tế v&agrave; sang trọng ri&ecirc;ng biệt.</em></p>\r\n\r\n<p><em>Tuy nhi&ecirc;n, nếu bạn c&oacute; vấn đề về m&ugrave;i h&ocirc;i ch&acirc;n th&igrave; bạn n&ecirc;n sử dụng những đ&ocirc;i tất c&oacute; c&ocirc;ng nghệ kh&aacute;ng khuẩn, khử m&ugrave;i thay v&igrave; những đ&ocirc;i tất b&ocirc;ng th&ocirc;ng thường. Sẽ rất hiệu quả nh&eacute;</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>&nbsp;</h2>\r\n', '', 0, 100, '', '1714540055_giay-luoi-nam-thais-store-da-mem-mau-den-gld06-1-768x768.jpg', 1100000, 5, 42, '2024-01-04 14:19:19'),
(30, 'Giày Sneaker Nam', '', '', 0, 100, '', '1714539845_giay-sneaker-the-thao-cuc-chat-mau-den.jpg', 1100000, 30, 29, '2024-01-04 14:19:19'),
(32, 'Canvas – Sneaker Nam Mới GN101', '<h2><br />\r\n&nbsp;</h2>\r\n', '', 1, 100, '', '1714539779_giay-sneaker-nam-mau-trang-kieu-han-quoc.jpg', 449900, 20, 29, '2024-01-04 14:19:19'),
(33, 'Sneaker Nam Hot Trendy Mới', '', '', 0, 100, '', '1714539695_O1CN01VHJ4vs1i9y98j7xRp_2601204371-0-cib.jpg', 519000, 26, 29, '2023-12-18 14:19:19'),
(34, 'GIÀY Sneaker nam thể thao đa năng SP - 350, phong cách Hàn Quốc HOT ', '<p><br />\r\n- M&agrave;u: BE - TRẮNG - Size: 39-44 - Chất liệu vải dệt cao cấp khiến gi&agrave;y tho&aacute;ng kh&iacute; kh&ocirc;ng g&acirc;y m&ugrave;i - Đế gi&agrave;y cao su đ&uacute;c nguy&ecirc;n khối mang lại sự &ecirc;m &aacute;i khi mang - Thiết kế phong c&aacute;ch, trẻ trung, năng động, t&ocirc;n d&aacute;ng khi đi gi&agrave;y - Form &ocirc;m ch&acirc;n thoải m&aacute;i ngay cả khi mang gi&agrave;y cả ng&agrave;y d&agrave;i - GI&Agrave;Y đa năng, đi tập thể thao, đi chơi đều ok hết ah ----------------------------------------------------------------- - Cam kết h&agrave;ng Quảng Ch&acirc;u cao cấp - Chất lượng tốt, gi&aacute; rẻ nhất tr&ecirc;n thị trường</p>\r\n', '', 0, 100, '', '1714539593_dc1936646639bb0fff0b81a990c6cdec.jpg', 2649000, 28, 29, '2024-01-04 14:19:19'),
(35, 'G0068- Giày Sneaker Nam Hot Trendy Mới', '', '<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 0, 100, '', '1714539502_giay-sneaker-nam-cao-cap-g68.jpg', 2999000, 5, 29, '2023-12-18 14:19:19'),
(36, 'GIÀY TÂY NAM PENNY ĐEN TRẮNG', '<h4><strong>CH&Iacute;NH S&Aacute;CH BẢO H&Agrave;NH</strong></h4>\r\n\r\n<ul>\r\n	<li>Sản phẩm được x&aacute;c thực l&agrave; sản phẩm của Steeler Shoes (k&egrave;m phiếu bảo h&agrave;nh ).</li>\r\n	<li>Sản phẩm sẽ được Spa &amp; bảo dưỡng ( Miễn ph&iacute; ).</li>\r\n	<li>Điều kiện được bảo h&agrave;nh : lỗi keo, bung keo, nổ da.</li>\r\n	<li>Steeler Shoes từ chối nhận bảo h&agrave;nh c&aacute;c trường hợp như : trầy da, m&ograve;n đế, n&oacute;ng chảy, th&uacute; vật cắn&hellip;.</li>\r\n	<li>Sản phẩm được Steeler Shoes hỗ trợ bảo h&agrave;nh trong thời gian quy định.</li>\r\n</ul>\r\n\r\n<h4><strong>ĐIỀU KIỆN ĐỔI MỚI</strong></h4>\r\n\r\n<ul>\r\n	<li>Sản phẩm chỉ được đổi mới trong v&ograve;ng 7 ng&agrave;y kể từ ng&agrave;y mua trong trường hợp kh&ocirc;ng vừa size hoặc lỗi từ NSX.</li>\r\n	<li>Steeler Shoes giao nhầm m&atilde;, nhầm size, nhầm m&agrave;u.</li>\r\n	<li>Tất cả sản phẩm đổi mới phải c&oacute; phiếu bảo h&agrave;nh.</li>\r\n	<li>Gi&agrave;y vẫn c&ograve;n mới 100% (chưa sử dụng).</li>\r\n</ul>\r\n\r\n<h4><strong>C&Aacute;C TRƯỜNG HỢP KH&Ocirc;NG ĐỔI H&Agrave;NG</strong></h4>\r\n\r\n<ul>\r\n	<li>Mặt da, đế gi&agrave;y bị trầy, xước.</li>\r\n	<li>Mũi gi&agrave;y bị g&atilde;y.</li>\r\n	<li>Sản phẩm kh&ocirc;ng được x&aacute;c nhận mua từ Steeler Shoes.</li>\r\n	<li>Sản phẩm đ&atilde; được sử dụng hoặc d&iacute;nh bẩn.</li>\r\n	<li>Sản phẩm sale tr&ecirc;n 30%.</li>\r\n	<li>\r\n	<p>Bảo quản gi&agrave;y sau khi sử dụng:</p>\r\n	</li>\r\n	<li>Bạn lưu &yacute; khi mua h&agrave;ng về, bạn đừng vứt hộp đi nh&eacute;. Chẳng hạn, v&agrave;o những ng&agrave;y mưa bạn kh&ocirc;ng thể mang gi&agrave;y da, th&igrave; h&atilde;y lu&ocirc;n nh&eacute;t giấy vụn v&agrave;o trong gi&agrave;y để giữ cho gi&agrave;y kh&ocirc;ng bị ẩm mốc, sau đ&oacute; bạn bỏ gi&agrave;y v&agrave;o hộp. Như vậy, đ&ocirc;i gi&agrave;y của bạn sẽ được bảo quản trong hộp nhiều th&aacute;ng trời m&agrave; kh&ocirc;ng ảnh hưởng tới chất lượng của da.</li>\r\n	<li>STEED khuy&ecirc;n bạn n&ecirc;n c&oacute; 1 hủ cấp dưỡng trong tủ gi&agrave;y. Hủ cấp dưỡng sẽ bảo quản cho bề mặt da của gi&agrave;y lu&ocirc;n trung h&ograve;a về m&agrave;u sắc v&agrave; bảo dưỡng gi&agrave;y chống nứt da.</li>\r\n	<li>Do chất liệu bằng da s&aacute;p n&ecirc;n sản phẩm rất kị nước v&igrave; vậy khi bạn muốn khử m&ugrave;i h&ocirc;i gi&agrave;y th&igrave; bạn h&atilde;y mang đến STEED để vệ sinh gi&agrave;y nh&eacute;. Sản phẩm của bạn được bảo dưỡng trọn đời.</li>\r\n	<li>Gi&agrave;y d&ugrave;ng cả ng&agrave;y thường bị mồ h&ocirc;i l&agrave;m ẩm ướt, g&acirc;y m&ugrave;i h&ocirc;i. N&ecirc;n đặt t&uacute;i đựng vi&ecirc;n chống ẩm v&agrave;o trong gi&agrave;y để h&uacute;t ẩm hoặc bạn c&oacute; thể bỏ giấy vụn v&agrave;o trong để h&uacute;t ẩm v&agrave; giữ form cho gi&agrave;y. Để hạn chế m&ugrave;i h&ocirc;i v&agrave; sự ẩm ướt, h&atilde;y chọn tất ch&acirc;n loại tốt, c&oacute; khả năng h&uacute;t ẩm cao. D&ugrave;ng l&oacute;t gi&agrave;y khử m&ugrave;i cũng l&agrave; một phương ph&aacute;p tốt.</li>\r\n</ul>\r\n', '', 0, 100, '', '1714539344_giay-tay-nam-penny-den-trng.jpg', 2390000, 35, 30, '2024-01-04 14:19:19'),
(37, 'SEMI-BROGUES CHISEL TOE OXFORD - OF25', '', '', 0, 100, '', '1714539251_dscf5170.webp', 1050000, 21, 30, '2023-12-18 14:19:19'),
(38, 'COUNTRYMAN BROGUES DERBY - DB04', '', '', 0, 100, '', '1714539159_dscf7400.webp', 1100000, 27, 30, '2024-01-04 14:19:19'),
(39, 'CHARLES CAPTOE OXFORD - OF02', '', '', 0, 100, '', '1714539019_dscf6967.webp', 30990000, 5, 30, '2023-12-18 14:19:19'),
(40, 'Dép Sandals nữ quai hậu Hàn Quốc màu be', '', '<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 0, 100, '', '1714538855_dpw071200kem__5__20f9e3fdc9244d4fad5e80bb98deb063.webp', 8490000, 23, 11, '2024-01-04 14:19:19'),
(41, 'Sandal nữ nhiều dây, quai chun SDA69', '<p>Sandal nữ nhiều d&acirc;y, quai chun SDA69<br />\r\nM&atilde; sản phẩm: SDA69<br />\r\nLoại sản phẩm: Sandals nữ<br />\r\nKiểu g&oacute;t: Đế b&aacute;nh m&igrave;<br />\r\nĐộ cao g&oacute;t: 5 cm<br />\r\nLoại mũi: Hở mũi (mũi tr&ograve;n)<br />\r\nChất liệu: Da nh&acirc;n tạo<br />\r\nHoa văn, chi tiết: Quai d&acirc;y đan<br />\r\nPh&ugrave; hợp sử dụng:Đi l&agrave;m, đi chơi</p>\r\n', '', 0, 100, '', '1714538770_94a3bdcc67e342839232effa56234ffd.jpg', 9990000, 20, 11, '2023-12-18 14:19:19'),
(42, 'Giày Sandal nữ quai ngang xang đan da quai dán đế độn cao 4cm', '<h2>Đặc t&iacute;nh sản phẩm Gi&agrave;y Sandal nữ quai ngang xang đan da quai d&aacute;n đế độn cao 4cm chống trơn d&eacute;p quai hậu nữ đi học</h2>\r\n\r\n<ul>\r\n	<li>Thương hiệu\r\n	<p>No Brand</p>\r\n	</li>\r\n	<li>SKU\r\n	<p>2235682105_VNAMZ-10738346444</p>\r\n	</li>\r\n	<li>Dịp\r\n	<p>Thường ng&agrave;y</p>\r\n	</li>\r\n	<li>Loại xăng đan\r\n	<p>Quai k&eacute;p</p>\r\n	</li>\r\n	<li>Chất liệu\r\n	<p>Da</p>\r\n	</li>\r\n	<li>Kh&oacute;a gi&agrave;y\r\n	<p>Slip-On</p>\r\n	</li>\r\n	<li>Mẫu/Chi tiết\r\n	<p>Trơn</p>\r\n	</li>\r\n	<li>Hướng dẫn sử dụng\r\n	<p>sandal nữ</p>\r\n	</li>\r\n	<li>Năm sản xuất\r\n	<p>2023</p>\r\n	</li>\r\n	<li>Ch&iacute;nh s&aacute;ch bảo h&agrave;nh\r\n	<p>Bằng H&oacute;a đơn mua h&agrave;ng</p>\r\n	</li>\r\n	<li>Thời gian bảo h&agrave;nh\r\n	<p>1 th&aacute;ng</p>\r\n	</li>\r\n	<li>Delivery_Option_Instant\r\n	<p>C&oacute;</p>\r\n	</li>\r\n</ul>\r\n', '', 0, 100, '', '1714538686_fd13e456cf6495f2e8132cbecc248c43.jpg_720x720q80.jpg', 2990000, 45, 11, '2024-01-04 14:19:19'),
(43, 'SANDALS NỮ 2 QUAI NGANG MÀU XÁM ĐẾ TRẮNG - TH10', '<p>Gi&agrave;y sandals l&agrave; d&ograve;ng sản phẩm trẻ trung năng động . Với thiết kế đơn giản gồm 3 quai ch&eacute;o &ocirc;m gọn b&agrave;n ch&acirc;n, đem lại cảm gi&aacute;c thoải m&aacute;i, dễ chịu khi sử dụng.<br />\r\nD&ograve;ng sandals&nbsp;c&oacute; nhiều size d&agrave;nh cho nam v&agrave; nữ, nhiều m&agrave;u sắc trẻ trung, thời trang dễ d&agrave;ng kết hợp với nhiều trang phục quần t&acirc;y; quần jeans; v&aacute;y; &aacute;o d&agrave;i.. để đi học, đi chơi hay những dịp quan trọng kh&aacute;c.</p>\r\n\r\n<p>M&Ocirc; TẢ SẢN PHẨM<br />\r\n- Đế cao 3cm nhằm gi&uacute;p tăng chiều cao tự nhi&ecirc;n<br />\r\n- Đế Phylon: Thiết kế độc quyền với chất liệu &ldquo;nhẹ như bay&rdquo;&nbsp;<br />\r\n- Quai: D&acirc;y đai dệt kim &ecirc;m &aacute;i, chắc chắn, &ocirc;m s&aacute;t b&agrave;n ch&acirc;n m&agrave; vẫn đảm bảo tho&aacute;ng m&aacute;t<br />\r\n- Đế Cao Su : Cao su gi&uacute;p b&aacute;m s&aacute;t,di chuyển kh&ocirc;ng trơn trượt<br />\r\n- Khoen: kh&ocirc;ng gỉ s&eacute;t<br />\r\n- D&aacute;n x&eacute;: Cao cấp, độ b&aacute;m d&iacute;nh l&ecirc;n đến 20.000 lần</p>\r\n\r\n<p>HƯỚNG DẪN BẢO QUẢN<br />\r\n&ndash; Lau ch&ugrave;i sản phẩm bằng khăn ướt để tr&aacute;nh bụi bẩn, mồ h&ocirc;i<br />\r\n&ndash; Bảo quản nơi kh&ocirc; tho&aacute;ng để đạt độ bền cao nhất, tr&aacute;nh phơi trực tiếp dưới &aacute;nh nắng mặt trời<br />\r\n&ndash; Sandals c&oacute; thể vệ sinh bằng b&agrave;n chải mềm v&agrave; x&agrave; b&ocirc;ng<br />\r\n&ndash; Kh&ocirc;ng giặt bằng m&aacute;y giặt, kh&ocirc;ng d&ugrave;ng chất tẩy rửa nặng để vệ sinh sản phẩm</p>\r\n\r\n<p>CAM KẾT<br />\r\n????????Cam Kết: Hổ trợ đổi size, đổi mẫu tận nh&agrave;<br />\r\n????????Ho&agrave;n tiền 200% nếu h&agrave;ng kh&ocirc;ng đạt chất lượng</p>\r\n\r\n<p>BẢO H&Agrave;NH<br />\r\n&ndash; Bảo h&agrave;nh 6 th&aacute;ng với những trường hợp bung keo, đứt chỉ, hết d&aacute;n x&eacute;<br />\r\n&ndash; Sản phẩm phải được vệ sinh sạch sẽ, kh&ocirc; r&aacute;o trước khi gửi bảo h&agrave;nh</p>\r\n', '', 0, 100, '', '1714538611_untitled-1-ed720075-0277-410f-ba79-2b65a36f2dc7.webp', 4990000, 45, 11, '2023-12-18 14:19:19'),
(44, 'Sandal Nữ Êmbrace DPW071200', '<p>Những đ&ocirc;i sandal của nhà Biti&rsquo;s đã kh&ocirc;ng còn xa lạ với các chị em, lu&ocirc;n là những sản ph&acirc;̉m đem đ&ecirc;́n sự trẻ trung, năng đ&ocirc;̣ng, thời trang nhưng v&ocirc; cùng thoải mái. Sandal Nữ &Ecirc;mbrace DPW071200 &ndash; m&ocirc;̣t dòng sản ph&acirc;̉m chuy&ecirc;n da mới si&ecirc;u cao c&acirc;́p, ki&ecirc;̉u dáng tinh giản, n&ecirc;̀n nã mà lại sang trọng đang được lòng r&acirc;́t nhi&ecirc;̀u các chị em. Cùng tìm hi&ecirc;̉u chi ti&ecirc;́t v&ecirc;̀ sản ph&acirc;̉m này qua bài vi&ecirc;́t dưới đ&acirc;y.&nbsp;</p>\r\n\r\n<h2>Đế sandal</h2>\r\n\r\n<ul>\r\n	<li>Sandal Nữ &Ecirc;mbrace DPW071200 có ph&acirc;̀n đ&ecirc;́ đặt PU được sản xu&acirc;́t với c&ocirc;ng thức cải ti&ecirc;́n mới, phát huy t&ocirc;́i đa những ưu đi&ecirc;̉m v&ocirc;́n có trước đó, khi&ecirc;́n sandal có ph&acirc;̀n đ&ecirc;́ r&acirc;́t m&ecirc;̀m, trọng lượng si&ecirc;u nhẹ, khả năng chống thấm, chống trơn trượt hay m&agrave;i m&ograve;n cao đặc bi&ecirc;̣t là cảm nh&acirc;̣n sự đàn h&ocirc;̀i t&ocirc;́t khi mang (tính năng mới được cải thiện từ m&ugrave;a T12/2022)</li>\r\n	<li>Ph&acirc;̀n lót đ&ecirc;́ trong của sandal là m&ocirc;̣t lớp đ&ecirc;̣m si&ecirc;u &ecirc;m làm từ ch&acirc;́t li&ecirc;̣u PU, kh&ocirc;ng chỉ gia tăng đ&ocirc;̣ m&ecirc;̣m mại, tính đàn h&ocirc;̀i đ&ecirc;̉ n&acirc;ng đỡ bàn ch&acirc;n &ecirc;m ái mà còn tạo cảm giác thoải mái, d&ecirc;̃ chịu cho dù bạn có mang sandal cả ngày dài.</li>\r\n	<li>Mặt dưới của đế với thiết kế nhiều r&atilde;nh chống trơn trượt gi&uacute;p tăng độ ma s&aacute;t, đảm bảo an to&agrave;n cho người sử dụng khi đi tr&ecirc;n c&aacute;c mặt phẳng ẩm ướt, trơn trượt. Ngoài ra, ph&acirc;̀n đ&ecirc;́ cao 3cm giúp người dùng tự tin n&acirc;ng chi&ecirc;̀u cao m&ocirc;̣t cách tinh t&ecirc;́.</li>\r\n</ul>\r\n\r\n<h2>Quai sandal</h2>\r\n\r\n<ul>\r\n	<li>Sandal &Ecirc;mbrace DPW071200 có ph&acirc;̀n quai làm từ ch&acirc;́t li&ecirc;̣u Si PU mới kh&ocirc;ng chỉ m&ecirc;̀m mại, nhẹ nhàng khi mang mà còn có đ&ocirc;̣ b&ecirc;̀n chắc cao, màu sắc phù hợp với giới trẻ.&nbsp;&nbsp;</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Quai ngang được vi&ecirc;̀n chỉ chắc chắn &ocirc;m trọn b&agrave;n ch&acirc;n, cùng thiết kế quai d&aacute;n đơn giản kh&ocirc;ng chỉ gi&uacute;p người dùng ti&ecirc;́t ki&ecirc;̣m thời gian mang hoặc cởi sandal, mà còn tạo sự th&ocirc;ng thoáng kh&ocirc;ng h&ecirc;̀ bí bách khó chịu.</li>\r\n</ul>\r\n\r\n<h2>M&agrave;u sắc sandal&nbsp;</h2>\r\n\r\n<ul>\r\n	<li>Hi&ecirc;̣n nay, sản ph&acirc;̉m Sandal &Ecirc;mbrace DPW071200 cho ra mắt 03 phối m&agrave;u Smart Casual: phối m&agrave;u trung t&iacute;nh Creamy White, Blush Pink, Raven Black -&nbsp; tinh giản sang trọng dễ phối đồ - ai mang cũng được - đi đ&acirc;u cũng đẹp!</li>\r\n	<li>Tùy theo m&agrave;n h&igrave;nh hiển thị v&agrave; điều kiện &aacute;nh s&aacute;ng kh&aacute;c nhau, m&agrave;u sắc thực tế của sản phẩm c&oacute; thể ch&ecirc;nh l&ecirc;̣ch từ 3 đ&ecirc;́n 5%.</li>\r\n</ul>\r\n\r\n<h2>Size sandal</h2>\r\n\r\n<ul>\r\n	<li>Sandal &Ecirc;mbrace DPW071200 đang bày bán với 05 size cơ bản phù hợp với kích cỡ ch&acirc;n dành cho nữ là 35, 36, 37, 38 v&agrave; 39. Qu&yacute; kh&aacute;ch h&agrave;ng c&oacute; thể tham khảo bảng quy đổi size sandal ngay b&ecirc;n tr&ecirc;n m&agrave; Biti&rsquo;s gợi &yacute; để c&oacute; thể lựa chọn cho m&igrave;nh size sandal ph&ugrave; hợp nhất.</li>\r\n</ul>\r\n\r\n<h2>Bảo h&agrave;nh</h2>\r\n\r\n<ul>\r\n	<li>Sản phẩm được bảo h&agrave;nh trong v&ograve;ng 3 th&aacute;ng kể từ thời điểm mua h&agrave;ng. Ngo&agrave;i ra sản phẩm c&ograve;n được bảo h&agrave;nh trọn đời với lỗi bong keo, đứt chỉ (vật tư của sản phẩm đủ điều kiện t&aacute;i chế kh&ocirc;ng bị r&aacute;ch,&hellip;)</li>\r\n	<li>Đổi size giày trong v&ograve;ng 7 ng&agrave;y, đổi sản phẩm lỗi trong v&ograve;ng 7 ng&agrave;y, kể từ thời điểm mua h&agrave;ng, nếu sản phẩm vẫn đ&aacute;p ứng ch&iacute;nh s&aacute;ch đổi trả. Điều kiện v&agrave; quy', '', 1, 100, '', '1714537770_dpw071200kem__5__20f9e3fdc9244d4fad5e80bb98deb063.webp', 4490000, 50, 11, '2024-01-04 14:19:19'),
(45, 'Giày Boots nữ thời trang Martin màu kem', '', '', 0, 100, '', '1714534102_giay-boot-nu-thoi-trang-martin-mau-kem-size-39-63bfb2cb3b46d-12012023141211.jpg', 12490000, 20, 21, '2023-12-18 14:19:19'),
(46, 'Giày boots nữ cổ cao màu trắng ', '', '', 0, 100, '', '1714533996_giay-boots-nu-da-co-cao-11308-mau-trang-63aeb6f655158-30122022170126.jpg', 7690000, 10, 21, '2024-01-04 14:19:19'),
(47, 'Boots Nữ Chiến Binh Cổ Chun Exull Mode 1218610671', '<p>Boots Nữ Chiến Binh Cổ Chun Exull Mode 1218610671<br />\r\n✏ TH&Ocirc;NG TIN SẢN PHẨM:<br />\r\n- Chất liệu chọn lọc tỉ mỉ, chiều cao boot 4.5cm t&ocirc;n d&aacute;ng, đế kếp; Chiều d&agrave;i boot 16.5cm, Cổ chung, v&ograve;ng cổ ch&acirc;n 23cm<br />\r\n- Form gi&agrave;y may đ&uacute;ng ti&ecirc;u chuẩn, đem lại sự thoải m&aacute;i khi mang.<br />\r\n- Đường may tinh xảo gi&uacute;p sản phẩm lu&ocirc;n bền đẹp theo thời gian.<br />\r\n- M&agrave;u sắc trang nh&atilde;, phối 2 m&agrave;u cơ bản l&agrave; trắng v&agrave; n&acirc;u dễ phối c&ugrave;ng nhiều kiểu trang phục kh&aacute;c nhau.<br />\r\n- L&agrave; thương hiệu uy t&iacute;n tr&ecirc;n thị trường về chất lượng.<br />\r\n✏ HƯỚNG DẪN BẢO QUẢN:<br />\r\n- Lu&ocirc;n giữ gi&agrave;y nơi kh&ocirc; r&aacute;o v&agrave; tho&aacute;ng m&aacute;t .<br />\r\n- Thường xuy&ecirc;n d&ugrave;ng khăn c&ugrave;ng t&ocirc;ng m&agrave;u để lau gi&agrave;y da để giữ cho da gi&agrave;y lu&ocirc;n b&oacute;ng v&agrave; sạch sẽ.<br />\r\n- Nếu gi&agrave;y bị ướt n&ecirc;n d&ugrave;ng t&uacute;i vải kho để h&uacute;t bớt nước trong gi&agrave;y , sau đ&oacute; để ở nơi tho&aacute;ng m&aacute;t để gi&agrave;y kh&ocirc; tho&aacute;ng tự nhi&ecirc;n , kh&ocirc;ng n&ecirc;n để gi&agrave;y da ướt phơi ngo&agrave;i nắng , cạnh m&aacute;y lạnh hoặc thổi bằng quạt gi&oacute; , nếu kh&ocirc;ng sẽ bị bung .<br />\r\n<br />\r\n#Exull #boots #botnu #bootsda #bootda<br />\r\n--------------------------<br />\r\nGi&agrave;y, d&eacute;p thời trang EXULL lu&ocirc;n mang lại một sức h&uacute;t kỳ lạ cho ph&aacute;i đẹp. T&ocirc;n l&ecirc;n n&eacute;t c&aacute; t&iacute;nh, một sức h&uacute;t kh&ocirc;ng thể cưỡng lại, mang lại cho bạn trẻ cảm gi&aacute;c tự tin, thoải m&aacute;i . Sản phẩm th&iacute;ch hợp phối hợp với nhiều loại trang phục v&agrave; phụ kiện mang lại cho bạn một phong c&aacute;ch thời trang thật trẻ trung v&agrave; s&agrave;nh điệu</p>\r\n', '', 0, 100, '', '1714533934_dscf2371_d565fa8f0be24956a184b2c5d78e52cd_master.webp', 9990000, 10, 21, '2023-12-18 14:19:19'),
(48, 'Boots nữ Hàn Quốc 091127', '', '', 0, 100, '', '1714533869_211294e6eb17310a44d390627f5ebcea.jpg', 18990000, 15, 21, '2024-01-04 14:19:19'),
(49, 'Giày cao gót đính đá', '', '', 0, 100, '', '1714533714_imager_24_15355_700.jpg', 15990000, 15, 22, '2023-12-18 14:19:19'),
(50, 'Giày cao gót thời trang kim tuyến, giày cưới sang chảnh blingbling 8 phân mã MNC127', '<p><br />\r\nGi&agrave;y cao g&oacute;t c&oacute; thể được v&iacute; như l&agrave; linh hồn của ph&aacute;i đẹp, n&oacute; kh&ocirc;ng chỉ gi&uacute;p bạn ho&agrave;n thiện vẻ bề ngo&agrave;i m&agrave; c&ograve;n mang đến một chiều cao l&yacute; tưởng, một th&acirc;n h&igrave;nh thon gọn v&agrave; một đ&ocirc;i ch&acirc;n d&agrave;i mi&ecirc;n man. Ngo&agrave;i ra gi&agrave;y cao g&oacute;t cũng sẽ ảnh hướng đến d&aacute;ng đi, đến set đồ bạn đang mặc, chiếc v&aacute;y bạn đang mang, cho n&ecirc;n đối với việc lựa chọn một đ&ocirc;i gi&agrave;y cao g&oacute;t ph&ugrave; hợp với trang phục v&agrave; gi&uacute;p cho đ&ocirc;i ch&acirc;n được thoải m&aacute;i nhất l&agrave; điều m&agrave; l&agrave;m c&aacute;c c&ocirc; g&aacute;i thường đắn đo suy nghĩ. ✨Những đ&ocirc;i gi&agrave;y cao g&oacute;t của nh&agrave; Chị Đẹp Store sẽ gi&uacute;p c&aacute;c n&agrave;ng t&ocirc;n th&ecirc;m vẻ quyến rũ của ph&aacute;i đẹp. ???? Với kinh nghiệm 10 năm l&agrave;m xưởng sản xuất gi&agrave;y cao g&oacute;t, shop tự tin mang đến cho qu&yacute; n&agrave;ng những đ&ocirc;i gi&agrave;y cao g&oacute;t Cao Cấp - Chất Lượng &ndash; S&agrave;nh Điệu, cập nhật những xu hướng mới nhất. ???? M&ocirc; tả chi tiết sản phẩm : D&aacute;ng g&oacute;t : G&oacute;t nhọn 8cm Phần quai trước: Kết hợp si kim tuyến Chất liệu : Sản phẩm được l&agrave;m từ chất liệu si kim tuyến cao cấp M&agrave;u sắc: Bạc, V&agrave;ng ???? Th&ocirc;ng số Size: Size 35: Chiều d&agrave;i từ 22 - 22.5cm Size 36: Chiều d&agrave;i từ 22,5 - 23cm Size 37: Chiều d&agrave;i từ 23-23.5cm Size 38: Chiều d&agrave;i từ 23,5-24cm Size 39: Chiều d&agrave;i từ 24-24.5cm ???? Lưu &yacute;: + Kh&aacute;ch lựa đồ theo số đo size gi&agrave;y hay đi l&agrave; chuẩn nhất, chiều d&agrave;i ch&acirc;n shop chỉ ướm chừng cho kh&aacute;ch dễ cảm nhận. + Bảng size chỉ mang t&iacute;nh chất tham khảo, t&ugrave;y thuộc v&agrave;o số đo ch&acirc;n mỗi người m&agrave; chọn size cho chuẩn n&agrave;ng nh&eacute;. ????Ch&iacute;nh s&aacute;ch ĐỔI TRẢ 1. Điều kiện được &aacute;p dụng (trong v&ograve;ng 03 ng&agrave;y kể từ khi nhận sản phẩm): - H&agrave;ng ho&aacute; vẫn c&ograve;n mới, chưa qua sử dụng . - H&agrave;ng h&oacute;a lỗi, hư tổn do nh&agrave; sản xuất. - Kh&ocirc;ng đủ số lượng, kh&ocirc;ng đ&uacute;ng sản phẩm kh&aacute;ch đặt. 2. Trường hợp kh&ocirc;ng đủ điều kiện &aacute;p dụng ch&iacute;nh s&aacute;ch: - Qu&aacute; 03 ng&agrave;y kể từ khi Qu&yacute; kh&aacute;ch nhận h&agrave;ng - Gửi lại h&agrave;ng kh&ocirc;ng đ&uacute;ng mẫu m&atilde;, kh&ocirc;ng phải h&agrave;ng của shop .</p>\r\n', '', 1, 100, '', '1714533616_5f45f9d5ffca3fed5f287f0b6164245f.jpg', 20990000, 7, 22, '2024-01-04 14:19:19'),
(51, 'Giày cưới cô dâu quai ngang xinh xắn màu trắng trơn GCD4701', '<h2>&nbsp;</h2>\r\n\r\n<p><strong>Gi&agrave;y cưới c&ocirc; d&acirc;u quai ngang xinh xắn m&agrave;u trắng trơn GCD4701</strong></p>\r\n\r\n<p>Chất liệu da m&agrave;u trắng trơn l&agrave;m n&ecirc;n phong c&aacute;ch thời trang tinh tế cho c&ocirc; d&acirc;u đơn giản. Quai ngang tr&ecirc;n cổ ch&acirc;n được thiết kế cầu kỳ l&agrave; điểm nhấn mang lại độ trẻ trung v&agrave; hiện đại cho c&ocirc; d&acirc;u. Chiều cao g&oacute;t gi&agrave;y 7 v&agrave; 9cm c&ocirc; d&acirc;u tuỳ chọn chiều cao g&oacute;t gi&agrave;y y&ecirc;u th&iacute;ch nh&eacute;! &nbsp;Shop cam kết sản phẩm giống h&igrave;nh 100%, miễn ph&iacute; vận chuyển to&agrave;n quốc!</p>\r\n\r\n<p><u><strong>Th&ocirc;ng tin sản phẩm:</strong></u></p>\r\n\r\n<p><strong>- T&ecirc;n:&nbsp;</strong>Gi&agrave;y cưới c&ocirc; d&acirc;u quai ngang xinh xắn m&agrave;u trắng trơn GCD4701</p>\r\n\r\n<p><strong>- M&atilde;:</strong>&nbsp;GCD4701</p>\r\n\r\n<p><strong>- Chất liệu:</strong>&nbsp;nhiều chất liệu</p>\r\n\r\n<p><strong>- Đế cao:</strong>&nbsp;7cm v&agrave; 9cm&nbsp;</p>\r\n\r\n<p><strong>-&nbsp;</strong><strong>M&agrave;u sắc:&nbsp;</strong>trắng</p>\r\n\r\n<p><strong>&nbsp;Shop cam kết mang đến cho bạn sản phẩm ho&agrave;n to&agrave;n ưng &yacute;:</strong></p>\r\n\r\n<p>- Giao h&agrave;ng COD to&agrave;n quốc</p>\r\n\r\n<p>- Bạn được xem h&agrave;ng trước khi nhận</p>\r\n\r\n<p>- 100% sản phẩm như h&igrave;nh</p>\r\n\r\n<p>Ngo&agrave;i ra, sản phẩm được &nbsp;Shop&nbsp;<em><strong>bảo h&agrave;nh 12 th&aacute;ng</strong></em>, qu&yacute; kh&aacute;ch h&agrave;ng ho&agrave;n to&agrave;n y&ecirc;n t&acirc;m khi mua h&agrave;ng tại shop nếu sản phẩm cần cần d&aacute;n keo, đ&oacute;ng đế, vật trang tr&iacute; tr&ecirc;n gi&agrave;y shop sẽ hỗ trợ bảo h&agrave;nh lại cho bạn.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', 1, 100, '', '1714533532_HS-027-2.jpg', 4490000, 11, 22, '2023-12-18 14:19:19'),
(52, 'Giày Sneaker Nữ Đế Bằng ChristinA-Q TTU125', '<p>Mẫu gi&agrave;y sneaker&nbsp;nữ&nbsp;ChristinA-Q TTU125&nbsp;l&agrave; bước cải tiến tr&ecirc;n d&ograve;ng gi&agrave;y thể thao cổ điển. Thiết kế tạo n&ecirc;n sự c&acirc;n bằng ho&agrave;n hảo giữa phong c&aacute;ch thời trang&nbsp;v&agrave; t&iacute;nh linh hoạt, dễ d&agrave;ng phối hợp với hầu hết c&aacute;c loại trang phục. Với kiểu d&aacute;ng giản dị, gọn g&agrave;ng, đ&ocirc;i gi&agrave;y sneaker nhẹ n&agrave;y mang đến cho bạn sự thoải m&aacute;i vượt trội. Chất liệu vải cao cấp kết hợp c&ugrave;ng d&acirc;y gi&agrave;y dễ d&agrave;ng điều chỉnh, tạo n&ecirc;n sự vừa vặn tối đa.</p>\r\n\r\n<p><strong>TH&Ocirc;NG TIN SẢN PHẨM</strong></p>\r\n\r\n<p>M&atilde; sản phẩm: TTU125</p>\r\n\r\n<hr />\r\n<p>Loại sản phẩm: Gi&agrave;y thể thao nữ</p>\r\n\r\n<hr />\r\n<p>Kiểu đế: Đế bằng</p>\r\n\r\n<hr />\r\n<p>Bề mặt gi&agrave;y: Vải cao cấp</p>\r\n\r\n<hr />\r\n<p>L&oacute;t b&ecirc;n trong:&nbsp;L&oacute;t vải, da tổng hợp&nbsp;&ecirc;m &aacute;i, chống shock</p>\r\n\r\n<hr />\r\n<p>Độ cao g&oacute;t: 2cm</p>\r\n\r\n<hr />\r\n<p>Miếng shank:&nbsp;PU &ocirc;m s&aacute;t đ&ocirc;i ch&acirc;n, tạo cảm gi&aacute;c thoải m&aacute;i</p>\r\n\r\n<hr />\r\n<p>Chất liệu đế:&nbsp;Cao su tổng hợp, phun trực tiếp PU bền bỉ, độ b&aacute;m d&iacute;nh cao</p>\r\n\r\n<hr />\r\n<p>Xuất xứ: Việt Nam</p>\r\n', '', 0, 100, '', '1714531296_25_7b4a992be61f4c47839c47381c80a954_1024x1024.webp', 8490000, 12, 9, '2024-01-04 14:19:19'),
(53, 'Giày Sneakers Nữ GEOX D Fluctis A', '<p>&bull; Gi&agrave;y Sneaker cổ thấp d&agrave;nh cho nữ với thiết kế tinh tế v&agrave; nhẹ nh&agrave;ng, tho&aacute;ng kh&iacute;, cực kỳ thoải m&aacute;i. Phong c&aacute;ch c&aacute; t&iacute;nh mang ch&uacute;t cổ điển tăng th&ecirc;m phần năng động bởi t&ocirc;ng m&agrave;u trắng chủ đạo cho cả đ&ocirc;i gi&agrave;y, phần tr&ecirc;n được l&agrave;m bằng da b&ograve; nguy&ecirc;n bản. Phụ kiện tạo n&ecirc;n nguồn năng lượng tr&agrave;n đầy cho trang phục của bạn. Fluctis sẽ l&agrave; sự bổ sung tuyệt vời cho những chuyến đi d&agrave;i ng&agrave;y của bạn. Kiểu d&aacute;ng trẻ trung phối hợp được đa phong c&aacute;ch trong tủ đồ của bạn<br />\r\n&bull; ĐẶC TRƯNG<br />\r\n&bull; Khả năng tho&aacute;ng kh&iacute; của đế ngo&agrave;i v&agrave; cảm gi&aacute;c thoải m&aacute;i cho b&agrave;n ch&acirc;n được đảm bảo bởi c&aacute;c hệ thống được cấp bằng s&aacute;ng chế của Geox.<br />\r\n&bull; Thoải m&aacute;i nhờ hệ thống Zero-Shock gi&uacute;p tăng cường hiệu ứng đệm v&agrave; tr&aacute;nh c&aacute;c va chạm khi hoạt động.<br />\r\n&bull; Gi&agrave;y nhẹ c&oacute; thể đi bộ suốt cả ng&agrave;y d&agrave;i.<br />\r\n&bull; D&acirc;y buộc c&oacute; thể điều chỉnh dễ d&agrave;ng t&ugrave;y th&iacute;ch.<br />\r\n&bull; Tấm l&oacute;t ch&acirc;n c&oacute; thể th&aacute;o rời ph&ugrave; hợp cho việc vệ sinh v&agrave; những nhu cầu kh&aacute;c.</p>\r\n', '<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n', 0, 100, '', '1714531242_d35tda_c5825_0_1e8861177c234148b44661e6b7337cc3_1024x1024.webp', 24590000, 10, 9, '2023-12-18 14:19:19'),
(54, 'Giày thể thao nữ DD&OO trắng - E\'LMER', '<p>Quy c&aacute;ch g&oacute;i b&aacute;o mỗi tr&aacute;i, bọc 10kg h&agrave;ng l&ecirc;n sọc<br />\r\nLh: 0833033393</p>\r\n\r\n<p>Đang b&aacute;n&nbsp;&nbsp;500 kg - h&agrave;ng ng&agrave;y</p>\r\n', '<p>B&aacute;n bởi:&nbsp;<a href=\"https://tinicart.vn/gian-hang/641426591946/\">641426591946</a></p>\r\n\r\n<p>Điện thoại:&nbsp;0833033393</p>\r\n\r\n<p>Địa chỉ:&nbsp;Rửa xe &ocirc;t&ocirc; cầu mang c&aacute;, Phường Ng&atilde; Bảy, Thị x&atilde; Ng&atilde; Bảy, Hậu Giang</p>\r\n', 0, 100, '', '1714531173_5-2.jpg', 41900000, 12, 9, '2024-01-04 14:19:19'),
(55, 'Giày thể thao nữ Samba độn đế 3cm', '<p>Thương hiệu:&nbsp;<a href=\"https://mho.vn/thuong-hieu/nobrand\" title=\"Thương hiệu Nobrand\">Thương hiệu Nobrand</a>.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', 0, 100, '', '1714531073_vn-11134207-7r98o-lluqsrzk62fz75.jpg', 28900000, 0, 9, '2023-12-18 14:19:19'),
(56, 'Sneaker nữ mix dây thừng', '<h3>Gi&agrave;y sneaker nữ mix d&acirc;y c&oacute; những đặc điểm nổi bật sau:</h3>\r\n\r\n<ul>\r\n	<li>Chất liệu: Gi&agrave;y được l&agrave;m từ chất liệu da tổng hợp, mịn m&agrave;ng, chắc chắn v&agrave; dễ chăm s&oacute;c. Đế gi&agrave;y được l&agrave;m từ cao su tổng hợp, c&oacute; độ bền cao, chống trơn trượt v&agrave; &ecirc;m &aacute;i.</li>\r\n	<li>Kiểu d&aacute;ng: Gi&agrave;y c&oacute; kiểu d&aacute;ng sneaker cổ thấp, với m&agrave;u trắng tinh kh&ocirc;i v&agrave; những đường may tinh tế. Điểm đặc biệt của gi&agrave;y l&agrave; phần d&acirc;y thừng được mix c&ugrave;ng d&acirc;y buộc, tạo n&ecirc;n sự ph&aacute; c&aacute;ch v&agrave; nổi bật. Mũi gi&agrave;y hơi vu&ocirc;ng, tạo n&ecirc;n sự chắc chắn v&agrave; khỏe khoắn.</li>\r\n	<li>T&iacute;nh năng: Gi&agrave;y c&oacute; t&iacute;nh năng thấm h&uacute;t mồ h&ocirc;i, gi&uacute;p ch&acirc;n lu&ocirc;n kh&ocirc; tho&aacute;ng v&agrave; thoải m&aacute;i. Gi&agrave;y cũng c&oacute; khả năng chống bẩn, chống ẩm, dễ d&agrave;ng lau ch&ugrave;i v&agrave; bảo quản. Gi&agrave;y th&iacute;ch hợp cho nhiều hoạt động như đi học, đi l&agrave;m, đi chơi, hay mix đồ với nhiều phong c&aacute;ch kh&aacute;c nhau.Gi&agrave;y Sneaker Nữ Mix D&acirc;y Thừng H&agrave;ng Đẹp l&agrave; một sản phẩm gi&agrave;y sneaker độc đ&aacute;o, chất lượng v&agrave; gi&aacute; cả hợp l&yacute;. Bạn c&oacute; thể mua sản phẩm n&agrave;y hoặc xem th&ecirc;m c&aacute;c sản phẩm&nbsp;<a href=\"https://ngocsang.store/danh-muc-san-pham/giay-nu/\">gi&agrave;y sneaker kh&aacute;c tại đ&acirc;y</a>. Ch&uacute;c bạn mua sắm vui vẻ! ????</li>\r\n</ul>\r\n', '', 1, 99, '', '1714531022_giay-the-thao-nu-thoi-trang-9.png', 26900000, 18, 9, '2024-01-04 14:19:19'),
(57, 'Giày sneaker nữ trắng đế cao phối màu cá tính cực đẹp cao 6cm ( Giày Phản quang) siêu nhẹ ,siêu hot', '<h2>- Chất liệu tổng hợp</h2>\r\n', '', 0, 100, '', '1714530937_sneakernu6.jpg', 12990000, 18, 9, '2023-12-18 14:19:19'),
(58, 'Giày Sneaker nữ basic đế bánh mì phối màu tím', '', '', 0, 100, '', '1714530831_sneaknernu5.jpg', 17790000, 15, 9, '2024-01-04 14:19:19'),
(59, 'Giày thể thao nam nữ Ulzang bò sữa bo vải mềm', '', '', 0, 100, '', '1714530679_sneakernu4.jpg', 15490000, 22, 9, '2023-12-18 14:19:19'),
(60, 'Giày thể thao nữ bò sữa đế bánh mì', '', '', 0, 100, '', '1714530595_sneakernu3.jpg', 5990000, 36, 9, '2024-01-04 14:19:19'),
(61, 'Giày Sneaker nữ da màu kem phối sọc xanh', '<p>Sục thể thao nữ ChristinA-Q SUC034 mang đậm phong c&aacute;ch thời trang đường phố, trẻ trung v&agrave; hiện đại. Mũ gi&agrave;y bằng cao su kết hợp vải mềm mại, kết hợp đế cao su tăng khả năng đệm v&agrave; gi&uacute;p hồi năng lượng qua từng bước đi.&nbsp;Với phom d&aacute;ng v&agrave; m&agrave;u sắc trung t&iacute;nh đến pastel, c&ugrave;ng độ &ecirc;m ho&agrave;n hảo, chống trơn trượt, đ&ocirc;i gi&agrave;y sẽ l&agrave; phụ kiện đắc lực cho mọi hoạt động.</p>\r\n\r\n<p><strong>TH&Ocirc;NG TIN SẢN PHẨM</strong></p>\r\n\r\n<p>M&atilde; sản phẩm: SUC034</p>\r\n\r\n<hr />\r\n<p>Loại sản phẩm: Sục thể thao nữ</p>\r\n\r\n<hr />\r\n<p>Kiểu đế: Đế bằng</p>\r\n\r\n<hr />\r\n<p>Bề mặt gi&agrave;y: Vải cao cấp</p>\r\n\r\n<hr />\r\n<p>L&oacute;t b&ecirc;n trong:&nbsp;L&oacute;t vải, da tổng hợp&nbsp;&ecirc;m &aacute;i, chống shock</p>\r\n\r\n<hr />\r\n<p>Độ cao g&oacute;t: 2cm</p>\r\n\r\n<hr />\r\n<p>Miếng shank:&nbsp;PU &ocirc;m s&aacute;t đ&ocirc;i ch&acirc;n, tạo cảm gi&aacute;c thoải m&aacute;i</p>\r\n\r\n<hr />\r\n<p>Chất liệu đế:&nbsp;Cao su tổng hợp, phun trực tiếp PU bền bỉ, độ b&aacute;m d&iacute;nh cao</p>\r\n\r\n<hr />\r\n<p>Xuất xứ: Việt Nam</p>\r\n', '<h3>&nbsp;</h3>\r\n\r\n<p>&nbsp;</p>\r\n', 0, 100, '', '1714530254_sneaker2.jpg', 3490000, 7, 9, '2023-12-18 14:19:19'),
(62, 'Giày Sneaker chống bám nước', '<p>Bộ sưu tập gi&agrave;y sneaker&nbsp;<strong>CHRISTINA-Q TTU26&nbsp;</strong>thiết kế tạo n&ecirc;n sự c&acirc;n bằng ho&agrave;n hảo giữa phong c&aacute;ch v&agrave; t&iacute;nh linh hoạt, dễ d&agrave;ng phối hợp với hầu hết c&aacute;c loại trang phục. Chất liệu&nbsp;<strong>da b&ograve; cao cấp&nbsp;</strong>mềm mại, kết hợp đế&nbsp;dấu g&oacute;t 5cm&nbsp;v&agrave; si&ecirc;u nhẹ tăng khả năng đệm v&agrave; gi&uacute;p hồi năng lượng qua từng bước đi.</p>\r\n\r\n<p><strong>TH&Ocirc;NG TIN SẢN PHẨM</strong></p>\r\n\r\n<p>M&atilde; sản phẩm: TTU120</p>\r\n\r\n<hr />\r\n<p>Loại sản phẩm: Gi&agrave;y thể thao nữ</p>\r\n\r\n<hr />\r\n<p>Kiểu đế: Đế bằng</p>\r\n\r\n<hr />\r\n<p>Bề mặt gi&agrave;y: Da b&ograve; cao cấp</p>\r\n\r\n<hr />\r\n<p>L&oacute;t b&ecirc;n trong: Da microfiber</p>\r\n\r\n<hr />\r\n<p>Độ cao g&oacute;t: 2cm</p>\r\n\r\n<hr />\r\n<p>Miếng shank:&nbsp;PU &ocirc;m s&aacute;t đ&ocirc;i ch&acirc;n, tạo cảm gi&aacute;c thoải m&aacute;i</p>\r\n\r\n<hr />\r\n<p>Chất liệu đế:&nbsp;Cao su tổng hợp, phun trực tiếp PU bền bỉ, độ b&aacute;m d&iacute;nh cao</p>\r\n\r\n<hr />\r\n<p>Xuất xứ: Việt Nam</p>\r\n', '', 1, 100, '', '1714530154_giaysneaker1.jpg', 27900000, 21, 9, '2024-01-04 14:19:19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rating`
--

CREATE TABLE `rating` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `star` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `rating`
--

INSERT INTO `rating` (`id`, `product_id`, `star`) VALUES
(24, 11, 4),
(25, 11, 3),
(26, 11, 5),
(27, 11, 5),
(28, 11, 5),
(29, 32, 5),
(30, 21, 5),
(31, 30, 3),
(32, 44, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(10, 'admin', 'admin@gmail.com', '25f9e794323b453885f5181f1b624d0b');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT cho bảng `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
