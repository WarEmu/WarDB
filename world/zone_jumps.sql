

SET FOREIGN_KEY_CHECKS=0;

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


INSERT INTO `zone_jumps` VALUES ('105745576', '101', '1017046', '840896', '13455', '3490', '105745576');
INSERT INTO `zone_jumps` VALUES ('106784360', '100', '880086', '849131', '6914', '1004', '106784360');
INSERT INTO `zone_jumps` VALUES ('106785128', '108', '1212778', '917245', '6906', '2918', '106785128');
INSERT INTO `zone_jumps` VALUES ('107477864', '107', '1069659', '948334', '6592', '650', '107477864');
INSERT INTO `zone_jumps` VALUES ('107478952', '103', '1409364', '758101', '1653', '3116', '107478952');
INSERT INTO `zone_jumps` VALUES ('108148456', '102', '1271661', '860318', '14793', '1160', '108148456');
INSERT INTO `zone_jumps` VALUES ('112037928', '107', '1016543', '913101', '5624', '2306', '112037928');
INSERT INTO `zone_jumps` VALUES ('113081960', '106', '881112', '926051', '7359', '1544', '113081960');
INSERT INTO `zone_jumps` VALUES ('113082280', '102', '1213491', '849745', '935', '14', '113082280');
INSERT INTO `zone_jumps` VALUES ('113847016', '101', '1079434', '837268', '9704', '374', '113847016');
INSERT INTO `zone_jumps` VALUES ('113858792', '109', '1412488', '918295', '828', '2788', '113858792');
INSERT INTO `zone_jumps` VALUES ('115267048', '108', '1277638', '944633', '5984', '722', '115267048');
