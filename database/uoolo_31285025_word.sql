
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";



CREATE TABLE `db_blogs` (
  `ID` bigint(20) NOT NULL,
  `blogname` text NOT NULL,
  `thumbnail` varchar(100) DEFAULT '''Không có thông tin mô tả.''',
  `img_thumbnail` text DEFAULT '/images/others/thumbnail.png',
  `tag` text NOT NULL,
  `html_inner` text NOT NULL,
  `user_modified` text NOT NULL,
  `date_modified` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `db_blogs` (`ID`, `blogname`, `thumbnail`, `img_thumbnail`, `tag`, `html_inner`, `user_modified`, `date_modified`) VALUES
(1, 'wHAT THE HECK IS THIS HAHAHAHAH', 'Không có thông tin mô tả.', '/images/others/thumbnail.png', '0', '<hea>Title text here</hea>\r\n                            <subhea>Lorem Ipsum dolor sir amet hahahah&apos;<pword>Good Google</pword><img src=\"https://i.pinimg.com/originals/bd/b7/4a/bdb74af418de7906cd0b28711653283b.png\"></img>\r\n<psen>wHAT THE HECK IS THIS HAHAHAHAH</psen><table>\r\n                                <tr>\r\n                                    <th>Tên</th>\r\n                                    <th>Chủ sở hưu</th>\r\n                                    <th>Lí do lưu</th>\r\n                                </tr>\r\n                                <tr>\r\n                                    <td>Cookies từ bên hosting server</td>\r\n                                    <td>000webhost</td>\r\n                                    <td>Lưu trữ cache để load web nhanh hơn</td>\r\n                                </tr>\r\n                                <tr>\r\n                                    <td>Facebook Cookies</td>\r\n                                    <td>Facebook</td>\r\n                                    <td>Lưu trữ thông tin khi thảo luận</td>\r\n                                </tr>\r\n                            </table></subhea>', 'admin', '2022-03-22 02:58:33'),
(2, 'Giới thiệu về bảng chữ cái tiếng Anh', 'Tiếng Anh gồm có 27 chữ cái từ A đến Z. Chúng ta hãy cùng lướt xem để biết nhé...', 'https://i.ytimg.com/vi/njDKi7dDOq4/maxresdefault.jpg', '0', '', 'admin', '2022-03-26 10:13:50');


CREATE TABLE `db_verb` (
  `ID` bigint(20) NOT NULL,
  `v1` text NOT NULL,
  `v2` text NOT NULL,
  `v3` text NOT NULL,
  `meaning` text NOT NULL,
  `date_modified` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `db_verb` (`ID`, `v1`, `v2`, `v3`, `meaning`, `date_modified`) VALUES
(1, 'let', 'let', 'let', 'hãy, để', '2022-03-19 23:30:29'),
(2, 'keep', 'kept', 'kept', 'giữ', '2022-03-19 23:30:28'),
(3, 'read', 'read', 'read', 'đọc', '2022-03-19 23:30:28'),
(4, 'put', 'put', 'put', 'đặt', '2022-03-21 23:30:29'),
(5, 'give', 'gave', 'given', 'trao, đưa', '2022-03-19 23:30:30'),
(6, 'run', 'run', 'run', 'chạy', '2022-03-19 23:30:55'),
(7, 'eat', 'ate', 'eaten', 'ăn', '2022-03-19 23:30:29'),
(8, 'drink', 'drunk', 'drunk', 'uống', '2022-03-19 23:30:59'),
(9, 'leave', 'left', 'left', 'rời', '2022-03-20 02:07:51'),
(10, 'send', 'sent', 'sent', 'gửi', '2022-03-20 02:08:23'),
(11, 'break', 'broke', 'broken', 'phá, phá bỏ', '2022-03-25 06:05:03'),
(17, 'abide', 'abode/abided', 'abode/abided', 'lưu trú, lưu lại', '2022-03-25 06:51:53'),
(18, 'arise', 'arose', 'arisen', 'phát sinh', '2022-03-25 08:48:03'),
(19, 'awake', 'awoke', 'awoken', 'đánh thức, thức', '2022-03-25 08:48:12'),
(20, 'backslide', 'backslid', 'backslidden/backslid', 'tái phạm', '2022-03-25 08:48:21'),
(21, 'be', 'was/were', 'been', 'thì, là, bị, ở', '2022-03-25 08:48:27'),
(22, 'bear', 'bore', 'borne', 'mang, chịu đựng', '2022-03-25 08:48:34'),
(23, 'beat', 'beat', 'beaten/beat', 'đánh, đập', '2022-03-25 08:48:39'),
(24, 'become', 'became', 'become', 'trở nên', '2022-03-25 08:48:44'),
(25, 'befall', 'befell', 'befallen', 'xảy đến', '2022-03-25 08:48:51'),
(26, 'begin', 'began', 'begun', 'bắt đầu', '2022-03-25 08:49:17'),
(27, 'behold', 'beheld', 'beheld', 'ngắm nhìn', '2022-03-25 08:49:23'),
(28, 'bend', 'bent', 'bent', 'bẻ cong', '2022-03-25 08:49:28'),
(29, 'beset', 'beset', 'beset', 'bao quanh', '2022-03-25 08:49:36'),
(30, 'bespeak', 'bespoke', 'bespoken', 'chứng tỏ', '2022-03-25 08:50:55'),
(31, 'bet', 'bet/betted', 'bet/betted', 'đánh cược, cá cược', '2022-03-25 08:51:00'),
(32, 'bid', 'bid', 'bid', 'trả giá', '2022-03-25 08:51:07'),
(33, 'bind', 'bound', 'bound', 'buộc, trói', '2022-03-25 08:51:12'),
(34, 'bite', 'bit', 'bitten', 'cắn', '2022-03-25 08:51:17'),
(35, 'bleed', 'bled', 'bled', 'chảy máu', '2022-03-25 08:51:24'),
(36, 'blow', 'blew', 'blown', 'thổi', '2022-03-25 08:52:55'),
(37, 'breed', 'bred', 'bred', 'nuôi, dạy dỗ', '2022-03-25 08:54:05'),
(38, 'bring', 'brought', 'brought', 'mang đến', '2022-03-25 08:54:11'),
(39, 'broadcast', 'broadcast', 'broadcast', 'phát thanh', '2022-03-25 08:54:17'),
(40, 'browbeat', 'browbeat', 'browbeaten/browbeat', 'hăm dọa', '2022-03-25 08:54:25'),
(41, 'build', 'built', 'built', 'xây dựng', '2022-03-25 08:54:32'),
(42, 'burn', 'burnt/burned', 'burnt/burned', 'đốt, cháy', '2022-03-25 08:54:39'),
(43, 'burst', 'burst', 'burst', 'nổ tung, vỡ òa', '2022-03-25 08:54:46'),
(44, 'bust', 'busted/bust', 'busted/bust', 'làm bể, làm vỡ', '2022-03-25 08:59:20'),
(45, 'buy', 'bought', 'bought', 'mua', '2022-03-25 08:59:25'),
(46, 'cast', 'cast', 'cast', 'ném, tung', '2022-03-25 08:59:30'),
(47, 'catch', 'caught', 'caught', 'bắt, chụp', '2022-03-25 08:59:38'),
(48, 'chide', 'chid/chided', 'chid/chidden/chided', 'mắng, chửi', '2022-03-25 08:59:46'),
(49, 'choose', 'chose', 'chosen', 'chọn, lựa', '2022-03-25 08:59:53'),
(50, 'cleave', 'clove/cleft/cleaved', 'cloven/cleft/cleaved', 'chẻ, tách hai', '2022-03-25 08:59:58'),
(51, 'cleave', 'clave', 'cleaved', 'dính chặt', '2022-03-25 09:01:08'),
(52, 'cling', 'clung', 'clung', 'bám vào, dính vào', '2022-03-25 09:01:14'),
(53, 'clothe', 'clothed/clad', 'clothed/clad', 'che phủ', '2022-03-25 09:01:20'),
(54, 'come', 'came', 'come', 'đến, đi đến', '2022-03-25 09:01:26'),
(55, 'cost', 'cost', 'cost', 'có giá là', '2022-03-25 09:01:31'),
(56, 'creep', 'crept', 'crept', 'bò, trườn, lẻn', '2022-03-25 09:01:35'),
(57, 'crossbreed', 'crossbred', 'crossbred', 'cho lai giống', '2022-03-25 09:01:40'),
(58, 'crow', 'crew/crewed', 'crowed', '(gà) gáy', '2022-03-25 09:03:17'),
(59, 'cut', 'cut', 'cut', 'cắt, chặt', '2022-03-25 09:03:23'),
(60, 'daydream', 'daydreamed daydreamt', 'daydreamed daydreamt ', ' nghĩ vẩn vơ, mơ mộng', '2022-03-25 09:03:31'),
(61, 'deal', 'dealt', 'dealt', 'giao thiệp', '2022-03-25 09:08:30'),
(62, 'dig', 'dug', 'dug', 'đào', '2022-03-25 09:08:36'),
(63, 'disprove', 'disproved', 'disproved/disproven', 'bác bỏ', '2022-03-25 09:08:41'),
(64, 'dive', 'dove/dived', 'dived', 'lặn, lao xuống', '2022-03-25 09:08:47'),
(65, 'do', 'did', 'done', 'làm', '2022-03-25 09:08:53'),
(66, 'draw', 'drew', 'drawn', 'vẽ, kéo', '2022-03-25 09:08:58'),
(67, 'dream', 'dreamt/dreamed', 'dreamt/dreamed', 'mơ thấy', '2022-03-25 09:09:04'),
(68, 'drink', 'drank', 'drunk', 'uống', '2022-03-25 09:09:09'),
(69, 'drive', 'drove', 'driven', 'lái xe', '2022-03-25 09:09:15'),
(70, 'dwell', 'dwelt', 'dwelt', 'trú ngụ, ở', '2022-03-25 09:09:20'),
(73, 'fall', 'fell', 'fallen', 'ngã, rơi', '2022-03-25 09:21:05'),
(74, 'feed', 'fed', 'fed', 'cho ăn, ăn, nuôi', '2022-03-25 09:21:14'),
(75, 'feel', 'felt', 'felt', 'cảm thấy', '2022-03-25 09:21:19'),
(76, 'fight', 'fought', 'fought', 'chiến đấu', '2022-03-25 09:21:31'),
(77, 'find', 'found', 'found', 'tìm thấy, thấy', '2022-03-25 09:21:39'),
(78, 'fit', 'fitted/fit', 'fitted/fit', 'làm cho vừa, làm cho hợp', '2022-03-25 09:21:45'),
(79, 'flee', 'fled', 'fled', 'chạy trốn', '2022-03-25 09:22:11'),
(80, 'fling', 'flung', 'flung', 'tung, quăng', '2022-03-25 09:22:18'),
(81, 'fly', 'flew', 'flown', 'bay', '2022-03-25 09:22:26'),
(82, 'forbear', 'forbore', 'forborne', 'nhịn', '2022-03-25 09:22:42'),
(83, 'forbid', 'forbade/forbad', 'forbidden', 'cấm, cấm đoán', '2022-03-25 09:23:46'),
(84, 'forecast', 'forecast/forecasted', 'forecast/forecasted', 'tiên đoán', '2022-03-25 09:23:57'),
(85, 'forego / forgo', 'forewent ', 'foregone ', 'bỏ, kiêng', '2022-03-25 09:24:03'),
(86, 'foresee', 'foresaw', 'forseen', 'thấy trước', '2022-03-25 09:25:30'),
(88, 'foretell', 'foretold', 'foretold', 'đoán trước', '2022-03-25 09:26:16'),
(89, 'forget', 'forgot', 'forgotten', 'quên', '2022-03-25 09:26:21'),
(90, 'forgive', 'forgave', 'forgiven', 'tha thứ', '2022-03-25 09:26:27'),
(91, 'forsake', 'forsook', 'forsaken', 'ruồng bỏ', '2022-03-25 09:41:10'),
(92, 'freeze', 'froze', 'frozen', '(làm) đông lại', '2022-03-25 09:41:15'),
(93, 'frostbite', 'frostbit', 'frostbitten', 'bỏng lạnh', '2022-03-25 09:41:23'),
(94, 'get', 'got', 'got/gotten', 'có được', '2022-03-25 09:41:30'),
(95, 'gild', 'gilt/gilded', 'gilt/gilded', 'mạ vàng', '2022-03-25 09:42:57'),
(96, 'gird', 'girt/girded', 'girt/girded', 'đeo vào', '2022-03-25 09:43:03'),
(98, 'go', 'went', 'gone', 'đi', '2022-03-25 09:43:13'),
(99, 'grind', 'ground', 'ground', 'nghiền, xay', '2022-03-25 09:43:19'),
(100, 'grow', 'grew', 'grown', 'mọc, trồng', '2022-03-25 09:43:29'),
(101, 'hand-feed', 'hand-fed', 'hand-fed', 'cho ăn bằng tay', '2022-03-25 09:43:35'),
(102, 'handwrite', 'handwrote', 'handwritten', 'viết tay', '2022-03-25 09:43:41'),
(103, 'hang', 'hung', 'hung', 'móc lên, treo lên', '2022-03-25 09:43:45'),
(104, 'have', 'had', 'had', 'có', '2022-03-25 09:43:52'),
(105, 'hear', 'heard', 'heard', 'nghe', '2022-03-25 09:43:58'),
(106, 'heave', 'hove/heaved', 'hove/heaved', 'trục lên', '2022-03-25 09:44:03'),
(107, 'hew', 'hewed', 'hewn/hewed', 'chặt, đốn', '2022-03-25 09:44:08'),
(108, 'hide', 'hid', 'hidden', 'giấu, trốn, nấp', '2022-03-25 09:49:53'),
(109, 'hit', 'hit', 'hit', 'đụng', '2022-03-25 09:49:59'),
(110, 'hurt', 'hurt', 'hurt', 'làm đau', '2022-03-25 09:50:03'),
(111, 'inbreed', 'inbred', 'inbred', 'lai giống cận huyết', '2022-03-25 09:50:10'),
(112, 'inlay', 'inlaid', 'inlaid', 'cẩn, khảm', '2022-03-25 09:50:16'),
(113, 'input', 'input', 'input', 'đưa vào', '2022-03-25 09:50:23'),
(114, 'inset', 'inset', 'inset', 'dát, ghép', '2022-03-25 09:50:28'),
(115, 'interbreed', 'interbred', 'interbred', 'giao phối, lai giống', '2022-03-25 09:50:35'),
(116, 'interweave', 'interwove/interweaved', 'interwoven/interweaved', 'trộn lẫn, xen lẫn', '2022-03-25 09:51:08'),
(117, 'interwind', 'interwound', 'interwound', 'cuộn vào, quấn vào', '2022-03-25 09:51:15'),
(118, 'jerry-build', 'jerry-built', 'jerry-built', 'xây dựng cẩu thả', '2022-03-25 09:51:42'),
(120, 'kneel', 'knelt/kneeled', 'knelt/kneeled', 'quỳ', '2022-03-25 09:51:57'),
(121, 'knit', 'knit/knitted', 'knit/knitted', 'đan', '2022-03-25 09:52:03'),
(122, 'know', 'knew', 'known', 'biết, quen biết', '2022-03-25 09:52:08'),
(123, 'lay', 'laid', 'laid', 'đặt, để', '2022-03-25 09:52:13'),
(124, 'lead', 'led', 'led', 'dẫn dắt, lãnh đạo', '2022-03-25 09:52:18'),
(125, 'lean', 'leaned/leant', 'leaned/leant', 'dựa, tựa', '2022-03-25 09:52:24'),
(126, 'leap', 'leapt', 'leapt', 'nhảy, nhảy qua', '2022-03-25 09:52:30'),
(127, 'learn', 'learnt/learned', 'learnt/learned', 'học, được biết', '2022-03-25 09:52:38'),
(129, 'lend', 'lent', 'lent', 'cho mượn', '2022-03-25 09:52:54'),
(131, 'lie', 'lay', 'lain', 'nằm', '2022-03-25 09:53:04'),
(132, 'light', 'lit/lighted', 'lit/lighted', 'thắp sáng', '2022-03-25 09:57:10'),
(133, 'lip-read', 'lip-read', 'lip-read', 'mấp máy môi', '2022-03-25 09:57:16'),
(134, 'lose', 'lost', 'lost', 'làm mất, mất', '2022-03-25 09:57:22'),
(135, 'make', 'made', 'made', 'chế tạo, sản xuất', '2022-03-25 09:57:27'),
(136, 'mean', 'meant', 'meant', 'có nghĩa là', '2022-03-25 09:57:33'),
(137, 'meet', 'met', 'met', 'gặp mặt', '2022-03-25 09:57:38'),
(138, 'miscast', 'miscast', 'miscast', 'chọn vai đóng không hợp', '2022-03-25 09:57:43'),
(139, 'misdeal', 'misdealt', 'misdealt', 'chia lộn bài, chia bài sai', '2022-03-25 09:57:50'),
(140, 'misdo', 'misdid', 'misdone', 'phạm lỗi', '2022-03-25 09:57:57'),
(141, 'mishear', 'misheard', 'misheard', 'nghe nhầm', '2022-03-25 09:58:03'),
(142, 'mislay', 'mislaid', 'mislaid', 'để lạc mất', '2022-03-25 09:58:09'),
(143, 'mislead', 'misled', 'misled', 'làm lạc đường', '2022-03-25 09:58:21'),
(144, 'mislearn', 'mislearned/mislearnt', 'mislearned/mislearnt', 'học nhầm', '2022-03-25 09:58:36'),
(145, 'misread', 'misread', 'misread', 'đọc sai', '2022-03-25 09:58:42'),
(146, 'misset', 'misset', 'misset', 'đặt sai chỗ', '2022-03-25 09:58:46'),
(147, 'misspeak', 'misspoke', 'misspoken', 'nói sai', '2022-03-25 10:07:16'),
(148, 'misspell', 'misspelt', 'misspelt', 'viết sai chính tả', '2022-03-25 10:10:09'),
(149, 'misspend', 'misspent', 'misspent', 'tiêu phí, bỏ phí', '2022-03-25 10:10:15'),
(150, 'mistake', 'mistook', 'mistaken', 'phạm lỗi, lầm lẫn', '2022-03-25 10:10:27'),
(151, 'misteach', 'mistaught', 'mistaught', 'dạy sai', '2022-03-25 10:10:33'),
(152, 'misunderstand', 'misunderstood', 'misunderstood', 'hiểu lầm', '2022-03-25 10:10:42'),
(153, 'miswrite', 'miswrote', 'miswritten', 'viết sai', '2022-03-25 10:10:47'),
(154, 'mow', 'mowed', 'mown/mowed', 'cắt cỏ', '2022-03-25 10:10:52'),
(155, 'offset', 'offset', 'offset', 'đền bù', '2022-03-25 10:10:57'),
(156, 'outbid', 'outbid', 'outbid', 'trả hơn giá', '2022-03-25 10:11:03'),
(157, 'outbreed', 'outbred', 'outbred', 'giao phối xa', '2022-03-25 10:11:09'),
(158, 'outdo', 'outdid', 'outdone', 'làm giỏi hơn', '2022-03-25 10:11:19'),
(159, 'outdraw', 'outdrew', 'outdrawn', 'rút súng ra nhanh hơn', '2022-03-25 10:11:25'),
(160, 'outdrink', 'outdrank', 'outdrunk', 'uống quá chén', '2022-03-25 10:11:30'),
(161, 'outdrive', 'outdrove', 'outdriven', 'lái nhanh hơn', '2022-03-25 10:11:35'),
(162, 'outfight', 'outfought', 'outfought', 'đánh giỏi hơn', '2022-03-25 10:11:41'),
(163, 'outfly', 'outflew', 'outflown', 'bay cao/xa hơn', '2022-03-25 10:11:46'),
(164, 'outgrow', 'outgrew', 'outgrown', 'lớn nhanh hơn', '2022-03-25 10:11:51'),
(165, 'outleap', 'outleaped/outleapt', 'outleaped/outleapt', 'nhảy cao/xa hơn', '2022-03-25 10:11:58'),
(166, 'outlie', 'outlied', 'outlied', 'nói dối', '2022-03-25 10:12:04'),
(167, 'output', 'output', 'output', 'cho ra (dữ kiện)', '2022-03-25 10:12:44'),
(168, 'outride', 'outrode', 'outridden', 'cưỡi ngựa giỏi hơn', '2022-03-25 10:12:50'),
(169, 'outrun', 'outran', 'outrun', 'chạy nhanh hơn, vượt giá', '2022-03-25 10:12:55'),
(170, 'outsell', 'outsold', 'outsold', 'bán nhanh hơn', '2022-03-25 10:13:01'),
(171, 'outshine', 'outshined/outshone', 'outshined/outshone', 'sáng hơn, rạng rỡ hơn', '2022-03-25 10:13:07'),
(172, 'outshoot', 'outshot', 'outshot', 'bắn giỏi hơn, nảy mầm, mọc', '2022-03-25 10:13:14'),
(173, 'outsing', 'outsang', 'outsung', 'hát hay hơn', '2022-03-25 10:13:19'),
(174, 'outsit', 'outsat', 'outsat', 'ngồi lâu hơn', '2022-03-25 10:13:23'),
(175, 'outsleep', 'outslept', 'outslept', 'ngủ lâu/muộn hơn', '2022-03-25 10:13:27'),
(176, 'outsmell', 'outsmelled/outsmelt', 'outsmelled/outsmelt', 'khám phá, đánh hơi, sặc mùi', '2022-03-25 10:13:34'),
(177, 'outspeak', 'outspoke', 'outspoken', 'nói nhiều/dài/to hơn', '2022-03-25 10:13:39'),
(178, 'outspeed', 'outsped', 'outsped', 'đi/chạy nhanh hơn', '2022-03-25 10:13:45'),
(179, 'outspend', 'outspent', 'outspent', 'tiêu tiền nhiều hơn', '2022-03-25 10:13:52'),
(180, 'outswear', 'outswore', 'outsworn', 'nguyền rủa nhiều hơn', '2022-03-25 10:14:58'),
(181, 'outswim', 'outswam', 'outswum', 'bơi giỏi hơn', '2022-03-25 10:15:02'),
(182, 'outthink', 'outthought', 'outthought', 'suy nghĩ nhanh hơn', '2022-03-25 10:15:07'),
(183, 'outthrow', 'outthrew', 'outthrown', 'ném nhanh hơn', '2022-03-25 10:15:11'),
(184, 'outwrite', 'outwrote', 'outwritten', 'viết nhanh hơn', '2022-03-25 10:15:16'),
(185, 'overbid', 'overbid', 'overbid', 'trả giá/bỏ thầu cao hơn', '2022-03-25 10:15:20'),
(186, 'overbreed', 'overbred', 'overbred', 'nuôi quá nhiều', '2022-03-25 10:15:27'),
(187, 'overbuild', 'overbuilt', 'overbuilt', 'xây quá nhiều', '2022-03-25 10:15:32'),
(188, 'overbuy', 'overbought', 'overbought', 'mua quá nhiều', '2022-03-25 10:15:37'),
(189, 'overcome', 'overcame', 'overcome', 'khắc phục', '2022-03-25 10:15:42'),
(190, 'overdo', 'overdid', 'overdone', 'dùng quá mức, làm quá', '2022-03-25 10:15:48'),
(191, 'overdraw', 'overdrew', 'overdrawn', 'rút quá số tiền, phóng đại', '2022-03-25 10:15:53'),
(192, 'overdrink', 'overdrank', 'overdrunk', 'uống quá nhiều', '2022-03-25 10:16:05'),
(193, 'overeat', 'overate', 'overeaten', 'ăn quá nhiều', '2022-03-25 10:16:10'),
(194, 'overfeed', 'overfed', 'overfed', 'cho ăn quá mức', '2022-03-25 10:16:15'),
(195, 'overfly', 'overflew', 'overflown', 'bay qua', '2022-03-25 10:16:20'),
(196, 'overhang', 'overhung', 'overhung', 'nhô lên trên, treo lơ lửng', '2022-03-25 10:16:25'),
(197, 'overhear', 'overheard', 'overheard', 'nghe trộm', '2022-03-25 10:16:31'),
(198, 'overlay', 'overlaid', 'overlaid', 'phủ lên', '2022-03-25 10:17:27'),
(199, 'overpay', 'overpaid', 'overpaid', 'trả quá tiền', '2022-03-25 10:17:32'),
(200, 'override', 'overrode', 'overridden', 'lạm quyền', '2022-03-25 10:17:37'),
(201, 'overrun', 'overran', 'overrun', 'tràn ngập', '2022-03-25 10:17:42'),
(202, 'oversee', 'oversaw', 'overseen', 'trông nom', '2022-03-25 10:17:48'),
(203, 'oversell', 'oversold', 'oversold', 'bán quá mức', '2022-03-25 10:17:53'),
(204, 'oversew', 'oversewed', 'oversewn/oversewed', 'may nối vắt', '2022-03-25 10:17:59'),
(205, 'overshoot', 'overshot', 'overshot', 'đi quá đích', '2022-03-25 10:18:03'),
(206, 'oversleep', 'overslept', 'overslept', 'ngủ quên', '2022-03-25 10:18:08'),
(207, 'overspeak', 'overspoke', 'overspoken', 'Nói quá nhiều, nói lấn át', '2022-03-25 10:18:12'),
(208, 'overspend', 'overspent', 'overspent', 'tiêu quá lố', '2022-03-25 10:18:22'),
(209, 'overspill', 'overspilled/overspilt', 'overspilled/overspilt', 'đổ, làm tràn', '2022-03-25 10:18:28'),
(210, 'overtake', 'overtook', 'overtaken', 'đuổi bắt kịp', '2022-03-25 10:18:48'),
(211, 'overthrow', 'overthrew', 'overthrown', 'lật đổ', '2022-03-25 10:21:34'),
(212, 'overwind', 'overwound', 'overwound', 'lên dây (đồng hồ) quá chặt', '2022-03-25 10:21:38'),
(213, 'overwrite', 'overwrote', 'overwritten', 'viết dài quá, viết đè lên', '2022-03-25 10:21:43'),
(214, 'partake', 'partook', 'partaken', 'tham gia, dự phần', '2022-03-25 10:21:48'),
(215, 'pay', 'paid', 'paid', 'trả (tiền)', '2022-03-25 10:21:52'),
(216, 'plead', 'pleaded/pled', 'pleaded/pled', 'bào chữa, biện hộ', '2022-03-25 10:21:58'),
(217, 'prebuild', 'prebuilt', 'prebuilt', 'làm nhà tiền chế', '2022-03-25 10:22:03'),
(218, 'predo', 'predid', 'predone', 'làm trước', '2022-03-25 10:22:08'),
(219, 'premake', 'premade', 'premade', 'làm trước', '2022-03-25 10:22:13'),
(220, 'prepay', 'prepaid', 'prepaid', 'trả trước', '2022-03-25 10:22:21'),
(221, 'presell', 'presold', 'presold', 'bán trước thời gian rao báo', '2022-03-25 10:23:05'),
(222, 'preset', 'preset', 'preset', 'thiết lập sẵn, cài đặt sẵn', '2022-03-25 10:23:10'),
(223, 'preshrink', 'preshrank', 'preshrunk', 'ngâm cho vải co trước khi may', '2022-03-25 10:24:28'),
(224, 'proofread', 'proofread', 'proofread', 'Đọc bản thảo trước khi in', '2022-03-25 10:24:34'),
(225, 'prove', 'proved', 'proven/proved', 'chứng minh', '2022-03-25 10:24:39'),
(227, 'quick-freeze', 'quick-froze', 'quick-frozen', 'kết đông nhanh', '2022-03-25 10:24:48'),
(228, 'quit', 'quit/quitted', 'quit/quitted', 'bỏ', '2022-03-25 10:24:53'),
(230, 'reawake', 'reawoke', 'reawaken', 'đánh thức lại', '2022-03-25 10:25:20'),
(231, 'rebid', 'rebid', 'rebid', 'trả giá, bỏ thầu', '2022-03-25 10:25:41'),
(232, 'rebind', 'rebound', 'rebound', 'buộc lại, đóng lại', '2022-03-25 10:25:46'),
(233, 'rebroadcast', 'rebroadcast/rebroadcasted', 'rebroadcast/rebroadcasted', 'cự tuyệt, khước từ', '2022-03-25 10:26:33'),
(234, 'rebuild', 'rebuilt', 'rebuilt', 'xây dựng lại', '2022-03-25 10:26:38'),
(235, 'recast', 'recast', 'recast', 'đúc lại', '2022-03-25 10:26:42'),
(236, 'recut', 'recut', 'recut', 'cắt lại, băm)', '2022-03-25 10:26:47'),
(237, 'redeal', 'redealt', 'redealt', 'phát bài lại', '2022-03-25 10:27:29'),
(238, 'redo', 'redid', 'redone', 'làm lại', '2022-03-25 10:27:35'),
(239, 'redraw', 'redrew', 'redrawn', 'kéo ngược lại', '2022-03-25 10:27:40'),
(240, 'refit', 'refitted/refit', 'refitted/refit', 'luồn, xỏ', '2022-03-25 10:27:46'),
(241, 'regrind', 'reground', 'reground', 'mài sắc lại', '2022-03-25 10:27:53'),
(242, 'regrow', 'regrew', 'regrown', 'trồng lại', '2022-03-25 10:27:57'),
(243, 'rehang', 'rehung', 'rehung', 'treo lại', '2022-03-25 10:28:02'),
(244, 'rehear', 'reheard', 'reheard', 'nghe trình bày lại', '2022-03-25 10:28:06'),
(245, 'reknit', 'reknitted/reknit', 'reknitted/reknit', 'đan lại', '2022-03-25 10:28:13'),
(246, 'relay', 'relaid', 'relaid', 'đặt lại', '2022-03-25 10:28:22'),
(247, 'relay', 'relayed', 'relayed', 'truyền âm lại', '2022-03-25 10:28:26'),
(248, 'relearn', 'relearned/relearnt', 'relearned/relearnt', 'học lại', '2022-03-25 10:28:33'),
(249, 'relight', 'relit/relighted', 'relit/relighted', 'thắp sáng lại', '2022-03-25 10:29:51'),
(250, 'remake', 'remade', 'remade', 'làm lại, chế tạo lại', '2022-03-25 10:34:38'),
(251, 'rend', 'rent', 'rent', 'toạc ra, xé', '2022-03-25 10:34:44'),
(252, 'repay', 'repaid', 'repaid', 'hoàn tiền lại', '2022-03-25 10:34:49'),
(253, 'reread', 'reread', 'reread', 'đọc lại', '2022-03-25 10:34:55'),
(254, 'rerun', 'reran', 'rerun', 'chiếu lại, phát lại', '2022-03-25 10:35:01'),
(255, 'resell', 'resold', 'resold', 'bán lại', '2022-03-25 10:35:06'),
(257, 'reset', 'reset', 'reset', 'đặt lại, lắp lại', '2022-03-25 10:35:22'),
(258, 'resew', 'resewed', 'resewn/resewed', 'may/khâu lại', '2022-03-25 10:35:29'),
(259, 'retake', 'retook', 'retaken', 'chiếm lại,tái chiếm', '2022-03-25 10:35:34'),
(260, 'reteach', 'retaught', 'retaught', 'dạy lại', '2022-03-25 10:35:41'),
(261, 'retear', 'retore', 'retorn', 'khóc lại', '2022-03-25 10:35:45'),
(262, 'retell', 'retold', 'retold', 'kể lại', '2022-03-25 10:35:50'),
(263, 'rethink', 'rethought', 'rethought', 'suy tính lại', '2022-03-25 10:35:55'),
(264, 'retread', 'retread', 'retread', 'lại giẫm/đạp lên', '2022-03-25 10:36:01'),
(265, 'retrofit', 'retrofitted/retrofit', 'retrofitted/retrofit', 'trang bị thêm những bộ phận mới', '2022-03-25 10:36:09'),
(266, 'rewake', 'rewoke/rewaked', 'rewaken/rewaked', 'đánh thức lại', '2022-03-25 10:36:48'),
(267, 'rewear', 'rewore', 'reworn', 'mặc lại', '2022-03-25 10:36:54'),
(268, 'reweave', 'rewove/reweaved', 'rewoven/reweaved', 'dệt lại', '2022-03-25 10:36:58'),
(269, 'rewed', 'rewed/rewedded', 'rewed/rewedded', 'kết hôn lại', '2022-03-25 10:37:02'),
(270, 'rewet', 'rewet/rewetted', 'rewet/rewetted', 'làm ướt lại', '2022-03-25 10:37:08'),
(271, 'rewin', 'rewon', 'rewon', 'thắng lại', '2022-03-25 10:37:14'),
(272, 'rewind', 'rewound', 'rewound', 'cuốn lại, lên dây lại', '2022-03-25 10:37:21'),
(273, 'rewrite', 'rewrote', 'rewritten', 'viết lại', '2022-03-25 10:37:25'),
(274, 'rid', 'rid', 'rid', 'giải thoát', '2022-03-25 10:37:31'),
(275, 'ride', 'rode', 'ridden', 'cưỡi', '2022-03-25 10:37:36'),
(276, 'ring', 'rang', 'rung', 'rung chuông', '2022-03-25 10:37:43'),
(277, 'rise', 'rose', 'risen', 'đứng dậy, mọc', '2022-03-25 10:37:54'),
(278, 'roughcast', 'roughcast', 'roughcast', 'tạo hình phỏng chừng', '2022-03-25 10:38:01'),
(279, 'sand-cast', 'sand-cast', 'sand-cast', 'đúc bằng khuôn cát', '2022-03-25 10:38:09'),
(280, 'saw', 'sawed', 'sawn', 'cưa', '2022-03-25 10:38:46'),
(281, 'say', 'said', 'said', 'nói', '2022-03-25 10:38:52'),
(282, 'see', 'saw', 'seen', 'nhìn thấy', '2022-03-25 10:38:58'),
(283, 'seek', 'sought', 'sought', 'tìm kiếm', '2022-03-25 10:39:05'),
(284, 'sell', 'sold', 'sold', 'bán', '2022-03-25 10:39:20'),
(286, 'set', 'set', 'set', 'đặt, thiết lập', '2022-03-25 10:39:31'),
(287, 'sew', 'sewed', 'sewn/sewed', 'may', '2022-03-25 10:39:35'),
(288, 'shake', 'shook', 'shaken', 'lay, lắc', '2022-03-25 10:39:40'),
(289, 'shave', 'shaved', 'shaved/shaven', 'cạo (râu, mặt)', '2022-03-25 10:39:47'),
(290, 'shear', 'sheared', 'shorn', 'xén lông (cừu)', '2022-03-25 10:39:50'),
(291, 'shed', 'shed', 'shed', 'rơi, rụng', '2022-03-25 10:39:55'),
(292, 'shine', 'shone', 'shone', 'chiếu sáng', '2022-03-25 10:40:02'),
(293, 'shit', 'shit/shat/shitted', 'shit/shat/shitted', 'suộc khuộng đi đại tiện', '2022-03-25 10:40:06'),
(294, 'shoot', 'shot', 'shot', 'bắn', '2022-03-25 10:40:11'),
(295, 'show', 'showed', 'shown/showed', 'cho xem', '2022-03-25 10:40:17'),
(296, 'shrink', 'shrank', 'shrunk', 'co rút', '2022-03-25 10:40:31'),
(297, 'shut', 'shut', 'shut', 'đóng lại', '2022-03-25 10:40:36'),
(298, 'sight-read', 'sight-read', 'sight-read', 'chơi hoặc hát mà không cần nghiên cứu trước', '2022-03-25 10:40:41'),
(299, 'sing', 'sang', 'sung', 'ca hát', '2022-03-25 10:40:47'),
(300, 'sink', 'sank', 'sunk', 'chìm, lặn', '2022-03-25 10:40:51'),
(301, 'sit', 'sat', 'sat', 'ngồi', '2022-03-25 10:40:56'),
(302, 'slay', 'slew', 'slain', 'sát hại, giết hại', '2022-03-25 10:41:03'),
(303, 'sleep', 'slept', 'slept', 'ngủ', '2022-03-25 10:41:10'),
(304, 'sling', 'slung', 'slung', 'ném mạnh', '2022-03-25 10:41:22'),
(305, 'slide', 'slid', 'slid', 'trượt, lướt', '2022-03-25 10:41:27'),
(306, 'slink', 'slunk', 'slunk', 'lẻn đi', '2022-03-25 10:41:32'),
(307, 'slit', 'slit', 'slit', 'rạch, khứa', '2022-03-25 10:41:38'),
(308, 'smell', 'smelt', 'smelt', 'ngửi', '2022-03-25 10:41:56'),
(309, 'smite', 'smote', 'smitten', 'đập mạnh', '2022-03-25 10:42:01'),
(310, 'sneak', 'sneaked/snuck', 'sneaked/snuck', 'trốn, lén', '2022-03-25 10:42:08'),
(311, 'speak', 'spoke', 'spoken', 'nói', '2022-03-25 10:42:13'),
(312, 'speed', 'sped/speeded', 'sped/speeded', 'chạy vụt', '2022-03-25 10:42:25'),
(313, 'spell', 'spelt/spelled', 'spelt/spelled', 'đánh vần', '2022-03-25 10:42:31'),
(314, 'spend', 'spent', 'spent', 'tiêu xài', '2022-03-25 10:42:35'),
(315, 'spill', 'spilt/spilled', 'spilt/spilled', 'tràn, đổ ra', '2022-03-25 10:42:42'),
(316, 'spin', 'spun/span', 'spun', 'quay sợi', '2022-03-25 10:43:27'),
(317, 'spoil', 'spoilt/spoiled', 'spoilt/spoiled', 'làm hỏng', '2022-03-25 10:43:32'),
(318, 'spread', 'spread', 'spread', 'lan truyền', '2022-03-25 10:43:37'),
(319, 'stand', 'stood', 'stood', 'đứng', '2022-03-25 10:43:42'),
(320, 'steal', 'stole', 'stolen', 'đánh cắp', '2022-03-25 10:43:47'),
(322, 'stick', 'stuck', 'stuck', 'ghim vào, đính', '2022-03-25 10:44:05'),
(324, 'sting', 'stung', 'stung', 'châm, chích, đốt', '2022-03-25 10:44:26'),
(325, 'stink', 'stunk/stank', 'stunk', 'bốc mùi hôi', '2022-03-25 10:44:35'),
(326, 'stride', 'strode', 'stridden', 'bước sải', '2022-03-25 10:44:41'),
(327, 'strike', 'struck', 'struck', 'đánh đập', '2022-03-25 10:44:47'),
(328, 'string', 'strung', 'strung', 'gắn dây vào', '2022-03-25 10:44:53'),
(329, 'sunburn', 'sunburned/sunburnt', 'sunburned/sunburnt', 'cháy nắng', '2022-03-25 10:44:59'),
(330, 'swear', 'swore', 'sworn', 'tuyên thệ, thề, chửi thề', '2022-03-25 10:45:15'),
(331, 'sweat', 'sweat/sweated', 'sweat/sweated', 'đổ mồ hôi', '2022-03-25 10:45:21'),
(332, 'sweep', 'swept', 'swept', 'quét', '2022-03-25 10:45:26'),
(333, 'swell', 'swelled', 'swollen/swelled', 'phồng, sưng', '2022-03-25 10:45:31'),
(334, 'swim', 'swam', 'swum', 'bơi lội', '2022-03-25 10:45:51'),
(335, 'swing', 'swung', 'swung', 'đong đưa', '2022-03-25 10:46:11'),
(336, 'take', 'took', 'taken', 'cầm, lấy', '2022-03-25 10:46:16'),
(337, 'teach', 'taught', 'taught', 'dạy, giảng dạy', '2022-03-25 10:46:20'),
(338, 'tear', 'tore', 'torn', 'xé, rách', '2022-03-25 10:46:25'),
(339, 'telecast', 'telecast', 'telecast', 'phát đi bằng truyền hình', '2022-03-25 10:46:30'),
(340, 'tell', 'told', 'told', 'kể, bảo', '2022-03-25 10:46:34'),
(341, 'think', 'thought', 'thought', 'suy nghĩ', '2022-03-25 10:46:38'),
(342, 'throw', 'threw', 'thrown', 'ném, liệng', '2022-03-25 10:46:48'),
(343, 'thrust', 'thrust', 'thrust', 'thọc, nhấn', '2022-03-25 10:46:55'),
(344, 'tread', 'trod', 'trodden/trod', 'giẫm, đạp', '2022-03-25 10:47:07'),
(345, 'typewrite', 'typewrote', 'typewritten', 'đánh máy', '2022-03-25 10:47:11'),
(346, 'unbend', 'unbent', 'unbent', 'làm thẳng lại', '2022-03-25 10:47:17'),
(347, 'unbind', 'unbound', 'unbound', 'mở, tháo ra', '2022-03-25 10:47:24'),
(348, 'unclothe', 'unclothed/unclad', 'unclothed/unclad', 'cởi áo, lột trần', '2022-03-25 10:47:29'),
(349, 'undercut', 'undercut', 'undercut', 'ra giá rẻ hơn', '2022-03-25 10:47:34'),
(350, 'underfeed', 'underfed', 'underfed', 'cho ăn đói, thiếu ăn', '2022-03-25 10:47:41'),
(351, 'undergo', 'underwent', 'undergone', 'kinh qua', '2022-03-25 10:47:45'),
(352, 'underlie', 'underlay', 'underlain', 'nằm dưới', '2022-03-25 10:47:52'),
(353, 'understand', 'understood', 'understood', 'hiểu', '2022-03-25 10:47:59'),
(354, 'undertake', 'undertook', 'undertaken', 'đảm nhận', '2022-03-25 10:48:21'),
(355, 'underwrite', 'underwrote', 'underwritten', 'bảo hiểm', '2022-03-25 10:48:27'),
(356, 'undo', 'undid', 'undone', 'tháo ra', '2022-03-25 10:48:32'),
(357, 'unfreeze', 'unfroze', 'unfrozen', 'làm tan đông', '2022-03-25 10:48:37'),
(358, 'unhang', 'unhung', 'unhung', 'hạ xuống, bỏ xuống', '2022-03-25 10:48:42'),
(359, 'unhide', 'unhid', 'unhidden', 'hiển thị, không ẩn', '2022-03-25 10:48:47'),
(360, 'unlearn', 'unlearned/unlearnt', 'unlearned/unlearnt', 'gạt bỏ, quên', '2022-03-25 10:49:34'),
(361, 'unspin', 'unspun', 'unspun', 'quay ngược', '2022-03-25 10:49:38'),
(362, 'unwind', 'unwound', 'unwound', 'tháo ra', '2022-03-25 10:49:43'),
(363, 'uphold', 'upheld', 'upheld', 'ủng hộ', '2022-03-25 10:49:47'),
(364, 'upset', 'upset', 'upset', 'đánh đổ, lật đổ', '2022-03-25 10:49:51'),
(365, 'wake', 'woke/waked', 'woken/waked', 'thức giấc', '2022-03-25 10:49:57'),
(366, 'wear', 'wore', 'worn', 'mặc', '2022-03-25 10:50:02'),
(367, 'wed', 'wed/wedded', 'wed/wedded', 'kết hôn', '2022-03-25 10:50:08'),
(368, 'weep', 'wept', 'wept', 'khóc', '2022-03-25 10:50:13'),
(369, 'wet', 'wet/wetted', 'wet/wetted', 'làm ướt', '2022-03-25 10:50:18'),
(370, 'win', 'won', 'won', 'thắng, chiến thắng', '2022-03-25 10:50:23'),
(371, 'wind', 'wound', 'wound', 'quấn', '2022-03-25 10:50:29'),
(372, 'withdraw', 'withdrew', 'withdrawn', 'rút lui', '2022-03-25 10:50:34'),
(373, 'withhold', 'withheld', 'withheld', 'từ khước', '2022-03-25 10:50:39'),
(374, 'withstand', 'withstood', 'withstood', 'cầm cự', '2022-03-25 10:50:44'),
(375, 'work', 'worked', 'worked', 'rèn, nhào nặn đất', '2022-03-25 10:50:49'),
(376, 'wring', 'wrung', 'wrung', 'vặn, siết chặt', '2022-03-25 10:51:00'),
(377, 'write', 'wrote', 'written', 'viết', '2022-03-25 10:51:13');


CREATE TABLE `db_word` (
  `ID` bigint(20) NOT NULL,
  `wordName` text NOT NULL,
  `wordDescription` text NOT NULL,
  `date_modified` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `db_word` (`ID`, `wordName`, `wordDescription`, `date_modified`) VALUES
(1, 'eat', '{\r\n  \"type\": [\r\n    {\r\n      \"name\": \"v\",\r\n      \"read\": \"ēt\",\r\n      \"meaning\": [\r\n        {\r\n          \"en\": \"\",\r\n          \"vi\": \"Đưa thức ăn vào miệng\",\r\n          \"ex\": [\r\n            {\r\n              \"en\": \"I am eating\",\r\n              \"vi\": \"Tôi đang ăn\"\r\n            }\r\n          ]\r\n        }\r\n      ]\r\n    }\r\n  ]\r\n}', '2022-03-17 10:22:48'),
(2, 'break', '{\r\n    \"type\": [\r\n        {\r\n            \"name\": \"adj\",\r\n            \"read\": \"breɪk\",\r\n            \"meaning\": [\r\n                {\r\n                    \"en\": \"to (cause something to) separate suddenly or violently into two or more pieces, or to (cause something to) stop working by being damaged:\",\r\n                    \"vi\": \"Hoạt động bẻ gãy\",\r\n                    \"ex\": [\r\n                        {\r\n                            \"en\": \"He broke the window\",\r\n                            \"vi\": \"Anh ta bẻ gãy cửa sổ\"\r\n                        }\r\n                    ]\r\n                }\r\n            ]\r\n        }\r\n    ]\r\n}\r\n', '2022-03-16 02:47:21'),
(3, 'drink', '{\r\n  \"type\": [\r\n    {\r\n      \"name\": \"v\",\r\n      \"read\": \"drɪŋk\",\r\n      \"meaning\": [\r\n        {\r\n          \"en\": \"\",\r\n          \"vi\": \"Uống nước\",\r\n          \"ex\": [\r\n            {\r\n              \"en\": \"He drinks coconuts\",\r\n              \"vi\": \"Anh ta uống nước dừa\"\r\n            },\r\n            {\r\n              \"en\": \"Drinking too much water is not good for your health\",\r\n              \"vi\": \"Uống quá nhiều nước có hại cho sức khỏe\"\r\n            }\r\n          ]\r\n        }\r\n      ]\r\n    }\r\n  ]\r\n}', '2022-03-21 02:47:21'),
(4, 'traitor', '{\r\n    \"type\": [\r\n      {\r\n        \"name\": \"adj\",\r\n        \"read\": \"breɪk\",\r\n        \"meaning\": [\r\n          {\r\n            \"vi\": \"Kẻ phản bội (theo nghĩa tiêu cực)\",\r\n            \"ex\": [\r\n                {\r\n                    \"en\": \"You are a traitor\",\r\n                    \"vi\": \" Mày là kẻ phản bội\"\r\n                }\r\n            ]\r\n          }\r\n        ]\r\n      }\r\n    ]\r\n  }', '2022-03-20 00:00:00'),
(5, 'communication', '{\r\n    \"type\": [\r\n      {\r\n        \"name\": \"n\",\r\n        \"read\": \"kəˌmjuː.nəˈkeɪ.ʃən\",\r\n        \"meaning\": [\r\n          {\r\n            \"vi\": \"Sự giao tiếp, liên lạc\",\r\n            \"ex\": [\r\n                {\r\n                    \"en\": \"Television is an increasingly important means of communication.\",\r\n                    \"vi\": \"Truyền hình là phương tiện giao tiếp đang dần trở nên quan trọng.\"\r\n                }\r\n,{\"en\":\"Lack of communication in a marriage causes serious problems.\",\"vi\":\"Thiếu liên lạc trong hôn nhân gây hậu quả nghiêm trọng.\"}\r\n            ]\r\n          }\r\n        ]\r\n      }\r\n    ]\r\n  }', '2022-03-20 01:40:35'),
(6, 'communism', '{\r\n    \"type\": [\r\n      {\r\n        \"name\": \"n\",\r\n        \"read\": \"ˈkɑː.m.jə.nɪ.zəm\",\r\n        \"meaning\": [\r\n          {\r\n            \"vi\": \"Chủ nghĩa Cộng sản\",\r\n            \"ex\": [\r\n                {\r\n                    \"en\": \"We should learn about Communism\",\r\n                    \"vi\": \"Chúng ta nên học về Chủ nghĩa cộng sản\"\r\n                }\r\n            ]\r\n          }\r\n        ]\r\n      }\r\n    ]\r\n  }', '2022-03-20 01:40:35'),
(7, 'eatable', '{\r\n  \"type\": [\r\n    {\r\n      \"name\": \"adj\",\r\n      \"read\": \"ˈēdəb(ə)l\",\r\n      \"meaning\": [\r\n        {\r\n          \"vi\": \"ăn được\",\r\n          \"ex\": [\r\n            {\r\n              \"en\": \"Cover all eatables to keep mice away.\",\r\n              \"vi\": \"Bao lại những thứ ăn được để đuổi chuột\"\r\n            }\r\n          ]\r\n        }\r\n      ]\r\n    }\r\n  ]\r\n}', '2022-03-25 11:34:33'),
(8, 'eater', '{\r\n  \"type\": [\r\n    {\r\n      \"name\": \"n\",\r\n      \"read\": \"ˈēdər\",\r\n      \"meaning\": [\r\n        {\r\n          \"en\": \"someone who eats in a particular way/type of food.\",\r\n          \"vi\": \"người/vật ăn\",\r\n          \"ex\": [\r\n            {\r\n              \"en\": \"a meat eater\",\r\n              \"vi\": \"người ăn thịt\"\r\n            }\r\n          ]\r\n        },\r\n        {\r\n          \"vi\": \"(kẻ) ăn chơi\",\r\n          \"ex\": [\r\n            {\r\n              \"en\": \"Earnings are getting less and the eaters are becoming more.\",\r\n              \"vi\": \"Tiền kiếm được ngày càng ít và kẻ ăn chơi ngày càng nhiều.\"\r\n            }\r\n          ]\r\n        }\r\n      ]\r\n    }\r\n  ]\r\n}', '2022-03-25 11:39:47'),
(9, 'edit', '{\r\n  \"type\": [\r\n    {\r\n      \"name\": \"v\",\r\n      \"read\": \"ˈedit\",\r\n      \"meaning\": [\r\n        {\r\n          \"en\": \"to prepare (a book, manuscript, newspaper, programme/program, film etc) for publication, or for broadcasting etc, especially by correcting, altering, shortening etc\",\r\n          \"vi\": \"hành động chỉnh sửa, làm ngắn, v.v\",\r\n          \"ex\": [\r\n            {\r\n              \"en\": \"He spent six months editing the film.\",\r\n              \"vi\": \"Anh ấy tốn 6 tháng để chỉnh sửa phim\"\r\n            }\r\n          ]\r\n        }\r\n      ]\r\n    }\r\n  ]\r\n}', '2022-03-25 11:42:53');


ALTER TABLE `db_blogs`
  ADD UNIQUE KEY `ID` (`ID`);


ALTER TABLE `db_verb`
  ADD UNIQUE KEY `ID` (`ID`),
  ADD UNIQUE KEY `v2` (`v2`(50));

ALTER TABLE `db_word`
  ADD UNIQUE KEY `ID` (`ID`),
  ADD UNIQUE KEY `wordName` (`ID`);

ALTER TABLE `db_blogs`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `db_verb`
--
ALTER TABLE `db_verb`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `db_word`
--
ALTER TABLE `db_word`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
COMMIT;
