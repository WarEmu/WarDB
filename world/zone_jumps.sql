DROP TABLE IF EXISTS `zone_jumps`;
CREATE TABLE `zone_jumps` (
  `Entry` int(10) unsigned DEFAULT NULL,
  `ZoneId` smallint(5) unsigned DEFAULT NULL,
  `WorldX` int(10) unsigned DEFAULT NULL,
  `WorldY` int(10) unsigned DEFAULT NULL,
  `WorldZ` smallint(5) unsigned DEFAULT NULL,
  `WorldO` smallint(5) unsigned DEFAULT NULL,
  `zone_jumps_ID` varchar(255) NOT NULL,
  PRIMARY KEY (`zone_jumps_ID`),
  UNIQUE KEY `Entry` (`Entry`),
  UNIQUE KEY `idx_name` (`WorldX`,`WorldY`,`ZoneId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `test`.`zone_jumps` (`Entry`, `ZoneId`, `WorldX`, `WorldY`, `WorldZ`, `WorldO`, `zone_jumps_ID`) VALUES ('112037928', '107','1016470', '913114', '5624', '300', '112037928');
INSERT INTO `test`.`zone_jumps` (`Entry`, `ZoneId`, `WorldX`, `WorldY`, `WorldZ`, `WorldO`, `zone_jumps_ID`) VALUES ('113081960', '106', '881137', '926088', '7368', '300', '113081960');