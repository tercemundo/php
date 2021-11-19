create database mydatabase;
use mydatabase;
CREATE TABLE `products` (
 `ID` int(11) NOT NULL,
 `Name` varchar(20) NOT NULL,
 `Supplier` varchar(20) NOT NULL,
 `Category` varchar(20) NOT NULL,
 `Price` decimal(10,2) UNSIGNED DEFAULT '0.00',
 `InStock` varchar(3) DEFAULT '1',
 `%Discount` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO `products` (`ID`, `Name`, `Supplier`, `Category`, 
`Price`, `InStock`, `%Discount`) VALUES
(1, 'Product A', 'Supplier #1', 'Category 1', '100.00', 'Yes', 0),
(2, 'Product B', 'Supplier #2', 'Category 2', '50.00', 'No', 0),
(3, 'Product C', 'Supplier #3', 'Category 3', '200.00', 'Yes', 
10),
(4, 'Product D', 'Supplier #4', 'Category 1', '150.00', 'Yes', 5),
(5, 'Product E', 'Supplier #1', 'Category 2', '25.00', 'Yes', 0),
(6, 'Product F', 'Supplier #2', 'Category 3', '80.00', 'No', 0),
(7, 'Product G', 'Supplier #3', 'Category 1', '90.00', 'Yes', 5),
(8, 'Product H', 'Supplier #4', 'Category 2', '250.00', 'Yes', 
10),
(9, 'Product I', 'Supplier #1', 'Category 3', '45.00', 'Yes', 0),
(10, 'Product J', 'Supplier #2', 'Category 1', '65.00', 'Yes', 0);
