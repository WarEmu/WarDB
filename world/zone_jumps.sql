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
