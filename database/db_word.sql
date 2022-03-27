-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql207.ihostfull.com
-- Generation Time: Mar 19, 2022 at 11:08 PM
-- Server version: 10.3.27-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";



CREATE TABLE `db_word` (
  `ID` bigint(20) NOT NULL,
  `v1` text NOT NULL,
  `v2` text NOT NULL,
  `v3` text NOT NULL,
  `meaning` text NOT NULL,
  `date_modified` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `db_word` (`ID`, `wordName`, `wordDescription`, `date_modified`) VALUES
(1, 'eat', '{\r\n    \"type\": [\r\n      {\r\n        \"name\": \"adj\",\r\n        \"read\": \"breɪk\",\r\n        \"meaning\": [\r\n          {\r\n            \"en\": \"to (cause something to) separate suddenly or violently into two or more pieces, or to (cause something to) stop working by being damaged:\",\r\n            \"vi\": \"เปลี่ยนภาษาเรียบร้อยแล้ว\",\r\n            \"ex\": [\r\n                {\r\n                    \"en\": \"He broke the window\",\r\n                    \"vi\": \"Anh ta bẻ gãy cửa sổ\"\r\n                }\r\n            ]\r\n          }\r\n        ]\r\n      },\r\n{\r\n        \"name\": \"v\",\r\n        \"read\": \"breɪk\",\r\n        \"meaning\": [\r\n          {\r\n            \"en\": \"to (cause something to) separate suddenly or violently into two or more pieces, or to (cause something to) stop working by being damaged:\",\r\n            \"vi\": \"เปลี่ยน\",\r\n            \"ex\": [\r\n                {\r\n                    \"en\": \"I love breaking the files without permission\",\r\n                    \"vi\": \"Anh ta bẻ gãy cửa sổ\"\r\n                }\r\n            ]\r\n          }\r\n        ]\r\n      }\r\n    ]\r\n  }', '2022-03-17 10:22:48'),
(2, 'break', '{\r\n    \"type\": [\r\n      {\r\n        \"name\": \"adj\",\r\n        \"read\": \"breɪk\",\r\n        \"meaning\": [\r\n          {\r\n            \"en\": \"to (cause something to) separate suddenly or violently into two or more pieces, or to (cause something to) stop working by being damaged:\",\r\n            \"vi\": \"Hoạt động bẻ gãy\",\r\n            \"ex\": [\r\n                {\r\n                    \"en\": \"He broke the window\",\r\n                    \"vi\": \"Anh ta bẻ gãy cửa sổ\"\r\n                },\r\n{\r\n                    \"en\": \"He broke the window\",\r\n                    \"vi\": \"Anh ta bẻ gãy cửa sổ\"\r\n                },\r\n{\r\n                    \"en\": \"He broke the window\",\r\n                    \"vi\": \"Anh ta bẻ gãy cửa sổ\"\r\n                }\r\n            ]\r\n          }\r\n        ]\r\n      }\r\n    ]\r\n  }', '2022-03-16 02:47:21'),
(3, 'drink', '{\r\n    \"type\": [\r\n      {\r\n        \"name\": \"adj\",\r\n        \"read\": \"breɪk\",\r\n        \"meaning\": [\r\n          {\r\n            \"en\": \"to (cause something to) separate suddenly or violently into two or more pieces, or to (cause something to) stop working by being damaged:\",\r\n            \"vi\": \"Hoạt động bẻ gãy\",\r\n            \"ex\": [\r\n                {\r\n                    \"en\": \"He broke the window\",\r\n                    \"vi\": \"Anh ta bẻ gãy cửa sổ\"\r\n                },\r\n{\r\n                    \"en\": \"He broke the window\",\r\n                    \"vi\": \"Anh ta bẻ gãy cửa sổ\"\r\n                },\r\n{\r\n                    \"en\": \"He broke the window\",\r\n                    \"vi\": \"Anh ta bẻ gãy cửa sổ\"\r\n                }\r\n            ]\r\n          }\r\n        ]\r\n      }\r\n    ]\r\n  }', '2022-03-21 02:47:21'),
(4, 'traitor', '{\r\n    \"type\": [\r\n      {\r\n        \"name\": \"adj\",\r\n        \"read\": \"breɪk\",\r\n        \"meaning\": [\r\n          {\r\n            \"en\": \"blah blah blah\",\r\n            \"vi\": \"Kẻ phản bội\",\r\n            \"ex\": [\r\n                {\r\n                    \"en\": \"He broke the window\",\r\n                    \"vi\": \"Anh ta bẻ gãy cửa sổ\"\r\n                },\r\n{\r\n                    \"en\": \"He broke the window\",\r\n                    \"vi\": \"Anh ta bẻ gãy cửa sổ\"\r\n                },\r\n{\r\n                    \"en\": \"He broke the window\",\r\n                    \"vi\": \"Anh ta bẻ gãy cửa sổ\"\r\n                }\r\n            ]\r\n          }\r\n        ]\r\n      }\r\n    ]\r\n  }', '2022-03-20 00:00:00'),
(5, 'communication', '{\r\n    \"type\": [\r\n      {\r\n        \"name\": \"adj\",\r\n        \"read\": \"breɪk\",\r\n        \"meaning\": [\r\n          {\r\n            \"en\": \"blah blah blah\",\r\n            \"vi\": \"Kẻ phản bội\",\r\n            \"ex\": [\r\n                {\r\n                    \"en\": \"He broke the window\",\r\n                    \"vi\": \"Anh ta bẻ gãy cửa sổ\"\r\n                },\r\n{\r\n                    \"en\": \"He broke the window\",\r\n                    \"vi\": \"Anh ta bẻ gãy cửa sổ\"\r\n                },\r\n{\r\n                    \"en\": \"He broke the window\",\r\n                    \"vi\": \"Anh ta bẻ gãy cửa sổ\"\r\n                }\r\n            ]\r\n          }\r\n        ]\r\n      }\r\n    ]\r\n  }', '2022-03-20 01:40:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `db_word`
--
ALTER TABLE `db_word`
  ADD UNIQUE KEY `ID` (`ID`),
  ADD UNIQUE KEY `wordName` (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `db_word`
--
ALTER TABLE `db_word`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
