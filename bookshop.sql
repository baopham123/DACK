-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 04, 2021 at 02:49 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `product_id` bigint(20) NOT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  `product_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `brand_id` bigint(20) DEFAULT NULL,
  `product_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_image_forward` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_image_back` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_price` decimal(10,0) DEFAULT NULL,
  `product_description` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `category_id`, `product_name`, `brand_id`, `product_image`, `product_image_forward`, `product_image_back`, `product_price`, `product_description`) VALUES
(1, 1, 'Mỗi Lần Vấp Ngã Là Một Lần Trưởng Thành', 1, 'https://minilessons.net/wp-content/uploads/2019/08/vapngabook.jpg', 'https://app.rigo.vn/assets/uploads/uploads/4-11-1_moilanvapngalamotlantruongthanh_rigo.vn.jpg', 'https://media3.scdn.vn/img4/2020/08_05/IoVCV7aRQGxyuG2ok1Zq_simg_de2fe0_500x500_maxb.jpg', '97000', 'Cuộc đời là quá trình không ngừng trưởng thành.\r\n\r\nTrong quá trình này, bạn sẽ khó tránh khỏi vấp ngã, sẽ trải qua nhiều lần đau thương, và sẽ có những lúc bạn cảm thấy vô cùng mỏi mệt, nhưng hãy tin rằng, chỉ có những người đã từng đau thương thì mới trở nên vững vàng hơn.\r\n\r\nMỗi chúng ta từ nhỏ đến lớn, dù ít dù nhiều đều đã từng trải qua những lúc cảm thấy đau khổ, đây chính là trở ngại mà chúng ta thường nói tới. Tôi tin rằng sẽ không một người nào dám khẳng định cuộc đời của họ chẳng bao giờ gặp trở ngại. Đó chính là cuộc sống.\r\n\r\nNhưng mong bạn suy nghĩ kĩ, mỗi khi bạn gặp phải khó khăn hoặc vấp ngã, ngoài việc cảm thấy đau khổ về mặt tinh thần, bạn còn học được điều gì? Tôi dám khẳng định rằng bạn đã có được kinh nghiệm, và khi đã lĩnh hội, bạn sẽ không vấp ngã lại nơi bạn đã từng ngã. Đây chính là sự trưởng thành.\r\n\r\nĐặc biệt, khi bạn rời xa vòng tay che chở, bao bọc của cha mẹ và nhà trường, bước chân vào xã hội, bạn sẽ gặp phải rất nhiều trở ngại và nhận ra xã hội này vốn không hề đơn giản như bạn tưởng tượng! Bạn cũng sẽ nhận ra khi bạn đau buồn hay gặp phải khó khăn, sẽ không có ai để ý đến sự tủi thân của bạn và cũng chẳng quan tâm đến sự bất lực của bạn. Thậm chí bạn cũng không muốn kể cho cha mẹ nghe vì sợ họ phải lo lắng cho mình, bạn chỉ có thể tự mình giải quyết, tự mình gánh chịu.\r\n\r\nGiá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Tuy nhiên tuỳ vào từng loại sản phẩm hoặc phương thức, địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, .....'),
(2, 1, 'Tuổi Trẻ Đáng Giá Bao Nhiêu', 2, 'https://cdn0.fahasa.com/media/flashmagazine/images/page_images/tuoi_tre_dang_gia_bao_nhieu_tai_ban_2018/2019_11_05_09_19_54_1.jpg', 'https://songgiatri.com/wp-content/uploads/2019/09/tuoi-tre-dang-gia-bao-nhieu-songgiatri.jpg', 'https://reviewsach.net/wp-content/uploads/2018/10/Tuo%CC%82%CC%89i-tre%CC%89-%C4%91a%CC%81ng-gia%CC%81-bao-nhie%CC%82u-a%CC%89nh-.jpg', '65500', 'Tuổi Trẻ Đáng Giá Bao Nhiêu ?\r\n\"Bạn hối tiếc vì không nắm bắt lấy một cơ hội nào đó, chẳng có ai phải mất ngủ.\r\nBạn trải qua những ngày tháng nhạt nhẽo với công việc bạn căm ghét, người ta chẳng hề bận lòng.\r\nBạn có chết mòn nơi xó tường với những ước mơ dang dở, đó không phải là việc của họ.\r\nSuy cho cùng, quyết định là ở bạn. Muốn có điều gì hay không là tùy bạn.\r\nNên hãy làm những điều bạn thích. Hãy đi theo tiếng nói trái tim. Hãy sống theo cách bạn cho là mình nên sống.\r\nVì sau tất cả, chẳng ai quan tâm.\"'),
(3, 1, 'Những Tấm Lòng Cao Cả', 3, 'https://cdn0.fahasa.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/8/9/8936067595758.jpg', 'https://khangvietbook.com.vn/upload/product/273996011899.jpg', 'https://khangvietbook.com.vn/upload/product/273996011899.jpg', '88000', '\"Thật là buồn khi nghĩ rằng giữa bao nhiêu nhà giày có ngoài phố xá qua lại kia, giữa bao nhiêu xe cộ và trẻ em mặc toàn quần áo nhung kia lại có những bà mẹ và trẻ em không có gì để ăn cả. Ôi Enrico, từ nay về sau, \r\ncon đừng bao giờ đi qua trước một bà mẹ xin cứu giúp mà không đặt vào tay bà một đồng hào!\"'),
(5, 1, 'Cho Tôi Xin Một Vé Đi Tuổi Thơ', 7, 'https://text.relipasoft.com/wp-content/uploads/2019/06/1-1.png', 'https://bestbooks.com.vn/wp-content/uploads/2019/06/cho-toi-xin-1-ve-di-tuoi-tho-bestbooks.png', 'https://text.relipasoft.com/wp-content/uploads/2019/06/1-1.png', '41000', 'Truyện Cho tôi xin một vé đi tuổi thơ là sáng tác mới nhất của nhà văn Nguyễn Nhật Ánh. Nhà văn mời người đọc lên chuyến tàu quay ngược trở lại thăm tuổi thơ và tình bạn dễ thương của 4 bạn nhỏ. Những trò chơi dễ thương thời bé, tính cách thật thà, thẳng thắn một cách thông minh và dại dột, những ước mơ tự do trong lòng… khiến cuốn sách có thể làm các bậc phụ huynh lo lắng rồi thở phào. Không chỉ thích hợp với người đọc trẻ, cuốn sách còn có thể hấp dẫn và thực sự có ích cho người lớn trong quan hệ với con mình.'),
(6, 6, '199 Mấy Hồi Ấy Làm Gì?', 6, 'https://salt.tikicdn.com/ts/product/95/55/9c/57fddaf062d9faa038d9b2f58ad69c27.jpg', 'https://photo-cms-anninhthudo.zadn.vn/w660/Uploaded/2021/bgtwak/2020_08_28/anh-tac-gia-1033.jpg', 'https://nxbkimdong.com.vn/sites/default/files/trang-93.jpg', '100000', 'Nếu nhắc chuyện “ngày xưa”, chắc hẳn ai cũng có cả tá chuyện để kể, để vui và để nhớ. Đó là lí do cuốn sách “199 mấy Hồi ấy làm gì?” nằm trên tay bạn.\r\n\r\nHi vọng “cỗ máy thời gian” nhỏ bé này sẽ giúp độc giả sống lại một sẽ giúp độc giả sống lại một vài khoảnh khắc đã qua đi trong chốc lát, để nhớ về thời “huy hoàng” của mỗi người lớn đã từng một thời là trẻ con…'),
(7, 2, 'BÍ MẬT MÙA HÈ NĂM ẤY', 2, 'https://salt.tikicdn.com/cache/w444/ts/product/ab/f6/1f/055132a548518822063a15ccd4e712bf.jpg', 'http://static.ybox.vn/2021/1/3/1610549139468-1.png', 'https://salt.tikicdn.com/ts/product/e5/f2/3a/da3cbbe6cae2c0863ec1d3e1605c6587.jpg', '133000', 'Cuốn truyện kể về Emma Saylor, về mùa hè tìm lại những kí ức cô đã đánh mất. Sau khi kế hoạch mùa hè bị hủy bỏ, Emma bất ngờ bị gửi đến nơi mẹ cô đã lớn lên, gặp bà ngoại và những người anh em họ nhớ rõ cô nhưng cô lại không hề có chút ký ức gì về họ. Ở đây, cô kết nối lại với những người thân và bạn bè mà cô không gặp trong nhiều năm và tìm hiểu thêm về quá khứ của mình, cũng như các sự thật về mẹ.\r\n\r\nCách kể chuyện của Sarah Dessen luôn tập trung vào gia đình. Không có gia đình nào hoàn hảo – mỗi người có hình dáng, tính cách và hoàn cảnh khác nhau. Bạn sẽ thích cách câu chuyện này thể hiện điều đó khi Saylor làm quen với những người họ hàng xa của cô ấy.\r\n\r\nCách Sarah Dessen giải quyết các chủ đề khó nhằm và nghiêm túc (như trong cuốn này là chứng nghiện) không quá tối tăm và suy sụp. Bạn sẽ cảm thấy nó có cảm giác như mùa hè nhẹ nhàng và vui vẻ.\r\n\r\nKhông phải ngẫu nhiên độc giả dòng sách thanh thiếu niên coi cô là nữ hoàng của sự kiên định. Bởi nét đặc trưng quyến rũ trong cách viết của cô – thứ mà bạn biết chính xác mình sẽ nhận được khi cầm trên tay cuốn sách của cô ấy.'),
(8, 2, 'Sách - Đi rong trên những múi giờ', 2, 'https://www.dtv-ebook.com/images/files_2/2020/di-rong-tren-nhung-mui-gio-nguyen-huu-tai.jpg', 'https://file.hstatic.net/1000362347/article/135491001_703447846982254_1377539706449039454_n_963589fcd02947ec907a1ba75752f976.jpg', 'https://image.voso.vn/users/vosoimage/images/4ddc18374aeb266e6be4280a576986e8?t%5B0%5D=compress%3Alevel%3D100&accessToken=fc6a60f8c0b6a6778438b67f243a348bb9dd54bf545f875339ae1196511decaf', '86000', 'Đi Rong Trên Những Múi Giờ là cuốn sách gồm 19 bài viết về cuộc hành trình khám phá các quốc gia nằm trải rộng trên ba châu lục Á, Âu, Phi dưới cái nhìn của một người Mỹ gốc Việt hòa trộn trong mình cả hai nền văn hóa Đông-Tây.'),
(9, 2, 'Cứ Bước Đi!', 2, 'https://salt.tikicdn.com/cache/w444/ts/product/9e/b1/18/9a711824ff527024c82d45e6f6de0ab7.jpg', 'https://salt.tikicdn.com/ts/product/be/5a/a2/d0c74e7460d30d07abb525cd47b911ab.jpg', 'https://product.hstatic.net/1000330661/product/bia_1_cu_buoc_di_di_5382228e356a4b958b7063d5ec45ba6f_master.jpg', '87200', 'Thế giới thật điện cuồng. Sáng tạo nghệ thuật thì thật khó. Vậy làm sao để bạn không ngừng phát triển?\r\n\r\nTrong những cuốn sách trước – Steal Like An Artist (Tạm Dịch: Trộm Cắp Như Một Nghệ Sĩ) và Nghệ Thuật PR Bản Thân – Austin đã dạy độc giả cách vay mượn để trở nên sáng tạo và rồi chia sẻ thế nào để được tìm thấy. Trong Cứ Làm Đi!, Austin tiếp tục đưa ra 10 cách để duy trì sự sáng tạo, tập trung và chất riêng của bản thân mình:\r\n\r\nMỗi ngày đều là ngày chuột chũi\r\nTạo dựng một căn phòng hạnh phúc\r\nQuên đám danh từ đi, làm động từ thôi\r\nTạo ra món quà\r\nTầm thường + chú tâm = phi thường\r\nTiêu diệt con quái vật nghệ thuật\r\nBạn được phép đổi ý\r\nNếu gặp mớ bòng bong, dọn dẹp đi\r\nĐám quỷ ghét không khí trong lành\r\nKhu vườn của riêng bạn\r\n\r\nCho dù bạn đang kiệt sức, ở giai đoạn khởi động phải làm lại từ đầu, hay là đang vô cùng thành công đi chăng nữa, Cứ Làm Đi! sẽ giúp bạn tiếp bước trên con đường sáng tạo nghệ thuật.'),
(10, 4, 'Tối Giản - Sở Hữu Ít Đi, Hạnh Phúc Nhiều Hơn', 5, 'https://salt.tikicdn.com/cache/w1200/ts/product/2f/d6/a2/c3538abe677a4ea98eee7921b741f79e.jpg', ' https://www.reader.com.vn/uploads/images/toi-gian-so-huu-it-di-hanh-phuc-nhieu-hon.jpg', 'https://www.reader.com.vn/uploads/images/toi-gian-so-huu-it-di-hanh-phuc-nhieu-hon.jpg', '76950', 'Bạn đã khi nào cảm thấy bế tắc, mệt mỏi vì sở hữu quá nhiều những thứ không cần thiết, nhưng không biết phải sắp xếp lại từ đâu?\r\n\r\nTối giản – Sở hữu ít đi, hạnh phúc nhiều hơn là cuốn sách giúp bạn trả lời câu hỏi ấy. Mỗi khi bạn sở hữu trong tay số lượng đồ dùng nhiều hơn mức cần thiết, đó là một lần bạn lấy mất tự do của chính mình. Tối giản vật dụng giúp chúng ta có thể nhận thức được bản thân, sắp xếp lại những suy nghĩ hỗn loạn trong đầu và khiến cuộc sống dễ chịu hơn rất nhiều.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` bigint(20) NOT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_pass` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_role` bit(1) DEFAULT NULL,
  `user_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_address`, `user_pass`, `user_role`, `user_phone`) VALUES
(1624552217630, 'bao.pham', 'phamchibao11a2@gmail.com', '123', b'0', '323232323'),
(1624722685469, '123', 'isael@gspousea.com', '123', b'0', '0977ffff'),
(1625151084046, 'user', 'mai123@gmail.com', '123', b'0', '123'),
(1625407651218, '18600166', '227 Nguy?n V?n C?', '123', b'0', '012222234');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
