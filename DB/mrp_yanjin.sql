/*
Navicat MySQL Data Transfer

Source Server         : MySql
Source Server Version : 50525
Source Host           : localhost:3306
Source Database       : mrp_yanjin

Target Server Type    : MYSQL
Target Server Version : 50525
File Encoding         : 65001

Date: 2012-12-06 12:23:35
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `api`
-- ----------------------------
DROP TABLE IF EXISTS `api`;
CREATE TABLE `api` (
  `KdApit` tinyint(1) NOT NULL COMMENT 'kode API/T',
  `UrApit` varchar(15) DEFAULT NULL COMMENT 'Uraian API/T',
  PRIMARY KEY (`KdApit`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of api
-- ----------------------------
INSERT INTO api VALUES ('1', 'API');
INSERT INTO api VALUES ('2', 'APIT');

-- ----------------------------
-- Table structure for `barang`
-- ----------------------------
DROP TABLE IF EXISTS `barang`;
CREATE TABLE `barang` (
  `DokKdBc` tinyint(1) NOT NULL DEFAULT '0',
  `CAR` varchar(6) NOT NULL DEFAULT '' COMMENT 'Nomor Pengajuan',
  `no` int(2) NOT NULL COMMENT 'No. Urut',
  `fgmat_id` int(11) DEFAULT NULL COMMENT 'Kode Dokumen',
  `KdBarang` varchar(11) NOT NULL DEFAULT '',
  `UrBarang` varchar(100) NOT NULL DEFAULT '' COMMENT 'Nomor Dokumen',
  `KdGunaBarang` varchar(1) DEFAULT NULL,
  `Negara` varchar(50) DEFAULT NULL,
  `HE` decimal(12,2) DEFAULT NULL COMMENT 'Harga Ekspor Barang',
  `Tarif` varchar(50) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `unit` varchar(11) DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `kurs` decimal(12,2) DEFAULT NULL,
  `VOL` decimal(12,4) DEFAULT NULL COMMENT 'Tanggal Dokumen',
  `NETTO` decimal(12,2) DEFAULT NULL,
  `CIF` decimal(12,2) DEFAULT NULL COMMENT 'Nilai CIF',
  `FOB` decimal(12,2) DEFAULT NULL,
  `HrgSerah` decimal(12,2) DEFAULT NULL,
  `Ket` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`DokKdBc`,`CAR`,`KdBarang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of barang
-- ----------------------------
INSERT INTO barang VALUES ('1', '000700', '1', null, 'MAT-0001', '1', '1', null, null, '2', '1', null, null, null, null, '2.00', '1.00', null, null, null);
INSERT INTO barang VALUES ('1', '000701', '1', null, 'M001', 'Mesin A', 'u', null, null, 'undefined', '100', null, null, null, null, '0.00', '0.00', null, null, null);
INSERT INTO barang VALUES ('1', '000701', '2', null, 'P001', 'PC', 'u', null, null, 'undefined', '200', null, null, null, null, '0.00', '0.00', null, null, null);
INSERT INTO barang VALUES ('3', '000001', '1', null, 'FG-01', 'tes', '1', 'ID', null, '1', '2', null, null, null, '2.0000', '1.00', '1.00', null, '293512254.00', null);
INSERT INTO barang VALUES ('3', '000002', '1', null, 'M001', 'Mesin A', 'u', 'undefined', null, 'undefined', '5', null, null, null, '0.0000', '0.00', '0.00', null, '0.00', null);
INSERT INTO barang VALUES ('3', '201207', '1', null, 'FG-01', 'tes', '1', 'ID', null, '1', '2', null, null, null, '2.0000', '1.00', '1.00', null, '2.00', null);
INSERT INTO barang VALUES ('4', '000001', '1', null, 'FG-01', 'tes', null, 'ID', null, '1', '2', null, null, null, '1.0000', '1.00', '1.00', null, null, null);
INSERT INTO barang VALUES ('4', '000002', '1', null, 'M001', 'Mesin A', null, 'undefined', null, 'undefined', '5', null, null, null, '0.0000', '0.00', '0.00', null, null, null);
INSERT INTO barang VALUES ('5', '000001', '1', null, 'MAT-0001', 'tes', null, 'ID', null, '2', '1', null, null, null, '2.0000', '2.00', '2.00', null, null, null);
INSERT INTO barang VALUES ('5', '000002', '1', null, 'ALME0002', 'Extrusion+Ecotrio', null, null, null, null, '200', null, null, null, '0.0000', '0.00', '0.00', null, null, null);
INSERT INTO barang VALUES ('6', '000001', '1', null, 'FG-01', 'tes', null, null, null, null, '1', null, null, null, '1.0000', '2.00', '2.00', null, '1.00', null);
INSERT INTO barang VALUES ('6', '000001', '3', null, 'FG-02', '2', null, null, null, null, '1', null, null, null, '0.0000', '2.00', '2.00', null, '0.00', null);
INSERT INTO barang VALUES ('6', '000001', '2', null, 'MAT-0001', 'tes', null, null, null, null, '1', null, null, null, '0.0000', '2.00', '2.00', null, '0.00', null);
INSERT INTO barang VALUES ('6', '000001', '4', null, 'MAT-0002', '222', null, null, null, null, '1', null, null, null, '0.0000', '2.00', '2.00', null, '0.00', null);
INSERT INTO barang VALUES ('6', '000002', '1', null, 'M001', 'Mesin A', null, null, null, null, '5', null, null, null, '0.0000', '0.00', '0.00', null, '0.00', null);
INSERT INTO barang VALUES ('7', '000001', '1', null, 'FG-01', 'tes', null, null, '1.00', '2', '1', null, null, null, null, '2.00', null, '2.00', null, null);
INSERT INTO barang VALUES ('7', '000002', '1', null, '123', 'Heatsink', null, null, '0.00', 'undefined', '200', null, null, null, null, '0.00', null, '0.00', null, null);
INSERT INTO barang VALUES ('8', '000001', '1', null, 'FG-01', 'tes', null, null, null, null, '1', null, null, null, '2.0000', '2.00', null, null, '1.00', null);
INSERT INTO barang VALUES ('8', '000002', '1', null, 'M001', 'Mesin A', null, null, null, null, '100', null, null, null, '50.0000', '0.00', null, null, '200.00', null);
INSERT INTO barang VALUES ('8', '000002', '2', null, 'P001', 'PC', null, null, null, null, '200', null, null, null, '0.0000', '120.00', null, null, '100.00', null);
INSERT INTO barang VALUES ('8', '000003', '1', null, 'M001', 'Mesin A', null, null, null, null, '100', null, null, null, '0.0000', '0.00', null, null, '200.00', null);
INSERT INTO barang VALUES ('8', '000003', '2', null, 'P001', 'PC', null, null, null, null, '200', null, null, null, '0.0000', '0.00', null, null, '100.00', null);
INSERT INTO barang VALUES ('9', '000001', '1', null, 'FG-01', 'tes', null, null, null, null, '2', null, null, null, '1.0000', '1.00', null, null, '1.00', null);
INSERT INTO barang VALUES ('9', '000002', '1', null, 'M001', 'Mesin A', null, null, null, null, '5', null, null, null, '0.0000', '0.00', null, null, '0.00', null);

-- ----------------------------
-- Table structure for `barangkembali`
-- ----------------------------
DROP TABLE IF EXISTS `barangkembali`;
CREATE TABLE `barangkembali` (
  `DokKdBc` tinyint(1) NOT NULL DEFAULT '0',
  `CAR` varchar(6) NOT NULL DEFAULT '' COMMENT 'Nomor Pengajuan',
  `no` int(2) NOT NULL COMMENT 'No. Urut',
  `fgmat_id` int(11) DEFAULT NULL COMMENT 'Kode Dokumen',
  `KdBarang` varchar(11) DEFAULT NULL,
  `UrBarang` varchar(100) DEFAULT NULL COMMENT 'Nomor Dokumen',
  `Negara` varchar(50) DEFAULT NULL,
  `Tarif` varchar(50) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `unit` varchar(11) DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `kurs` decimal(12,2) DEFAULT NULL,
  `VOL` decimal(12,2) DEFAULT NULL COMMENT 'Tanggal Dokumen',
  `NETTO` decimal(12,2) DEFAULT NULL,
  `CIF` decimal(12,2) DEFAULT NULL COMMENT 'Nilai CIF',
  `HrgSerah` decimal(12,2) DEFAULT NULL,
  PRIMARY KEY (`DokKdBc`,`CAR`,`no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of barangkembali
-- ----------------------------
INSERT INTO barangkembali VALUES ('3', '000001', '75', '0', '', '', '', '', '0', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO barangkembali VALUES ('3', '000002', '425', '0', '', '', '', '', '0', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO barangkembali VALUES ('3', '000003', '75', '0', '', '', '', '', '0', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO barangkembali VALUES ('3', '000004', '75', '0', '', '', '', '', '0', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO barangkembali VALUES ('3', '000005', '75', '0', '', '', '', '', '0', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO barangkembali VALUES ('3', '000006', '75', '0', '', '', '', '', '0', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO barangkembali VALUES ('3', '000007', '267', '0', '', '', '', '', '0', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO barangkembali VALUES ('3', '000008', '328', '0', '', '', '', '', '0', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO barangkembali VALUES ('3', '000009', '75', '0', '', '', '', '', '0', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO barangkembali VALUES ('3', '000010', '75', '0', '', '', '', '', '0', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO barangkembali VALUES ('3', '000011', '75', '0', '', '', '', '', '0', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO barangkembali VALUES ('3', '000012', '2', '0', '', '', '', '', '0', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO barangkembali VALUES ('3', '000013', '2', '0', '', '', '', '', '0', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO barangkembali VALUES ('3', '000014', '75', '0', '', '', '', '', '0', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO barangkembali VALUES ('3', '000015', '7', '0', '', '', '', '', '0', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO barangkembali VALUES ('3', '000016', '75', '0', '', '', '', '', '0', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO barangkembali VALUES ('3', '000017', '75', '0', '', '', '', '', '0', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO barangkembali VALUES ('3', '000018', '75', '0', '', '', '', '', '0', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO barangkembali VALUES ('3', '000019', '75', '0', '', '', '', '', '0', '', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO barangkembali VALUES ('4', '000001', '1', null, 'MAT-0001', 'tes', null, null, '1', null, null, null, '1.00', '2.00', '2.00', null);
INSERT INTO barangkembali VALUES ('5', '000001', '1', null, 'FG-01', 'tes', null, null, '2', null, null, null, '2.00', '1.00', '1.00', null);

-- ----------------------------
-- Table structure for `detail`
-- ----------------------------
DROP TABLE IF EXISTS `detail`;
CREATE TABLE `detail` (
  `DokKd` varchar(1) NOT NULL DEFAULT '' COMMENT 'Kode Dokumen BC',
  `CAR` varchar(6) NOT NULL DEFAULT '' COMMENT 'Nomor Pengajuan',
  `NoDaf` varchar(6) NOT NULL DEFAULT '' COMMENT 'Nomor Pendaftaran',
  `NoDet` tinyint(2) NOT NULL DEFAULT '0' COMMENT 'No Detail',
  `BRUTO` decimal(12,2) DEFAULT NULL COMMENT 'Bruto',
  `CIF` decimal(12,2) DEFAULT NULL COMMENT 'CIF',
  `HargaSerah` decimal(12,2) DEFAULT NULL COMMENT 'Harga Penyerahan',
  `NETTO` decimal(12,2) DEFAULT NULL COMMENT 'Netto',
  `TujKirim` tinyint(1) DEFAULT NULL COMMENT 'Tujuan Pengiriman',
  `NpwpTuj` varchar(15) DEFAULT NULL COMMENT 'Npwp Tujuan',
  `UrBarang` varchar(100) DEFAULT NULL COMMENT 'Uraian Barang',
  PRIMARY KEY (`DokKd`,`CAR`,`NoDaf`,`NoDet`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of detail
-- ----------------------------

-- ----------------------------
-- Table structure for `dokumen`
-- ----------------------------
DROP TABLE IF EXISTS `dokumen`;
CREATE TABLE `dokumen` (
  `DokKdBc` tinyint(1) NOT NULL DEFAULT '0',
  `CAR` varchar(6) NOT NULL DEFAULT '' COMMENT 'Nomor Pengajuan',
  `no` int(2) NOT NULL COMMENT 'No. Urut',
  `DokKd` tinyint(1) DEFAULT NULL COMMENT 'Kode Dokumen',
  `DokNo` varchar(30) DEFAULT NULL COMMENT 'Nomor Dokumen',
  `DokTg` date DEFAULT NULL COMMENT 'Tanggal Dokumen',
  `PosSub` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`DokKdBc`,`CAR`,`no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of dokumen
-- ----------------------------
INSERT INTO dokumen VALUES ('1', '000700', '1', '1', 'MINHS12040145', '2012-04-24', null);
INSERT INTO dokumen VALUES ('1', '000700', '2', '17', 'HASL0280D4CDW98', '2012-04-26', null);
INSERT INTO dokumen VALUES ('1', '000700', '3', '18', '001995 Pos: 0043 Sub:', '2012-05-05', null);
INSERT INTO dokumen VALUES ('1', '000701', '1', '1', '999', '2012-10-31', null);
INSERT INTO dokumen VALUES ('3', '000001', '1', '1', '1', '2012-07-25', null);
INSERT INTO dokumen VALUES ('3', '000002', '1', '2', '001', '2012-10-31', null);
INSERT INTO dokumen VALUES ('3', '201..2', '1', '1', '1', '2012-07-25', null);
INSERT INTO dokumen VALUES ('3', '201.20', '1', '1', '1', '2012-07-25', null);
INSERT INTO dokumen VALUES ('3', '201207', '1', '1', '1', '2012-07-25', null);
INSERT INTO dokumen VALUES ('4', '000001', '1', '2', '1', '2012-07-31', null);
INSERT INTO dokumen VALUES ('4', '000002', '1', '1', '001', '2012-10-30', null);
INSERT INTO dokumen VALUES ('5', '000001', '1', '2', '2', '2012-07-31', null);
INSERT INTO dokumen VALUES ('5', '000002', '1', '1', '001', '2012-10-30', null);
INSERT INTO dokumen VALUES ('6', '000001', '1', '1', '1', '2012-08-01', null);
INSERT INTO dokumen VALUES ('6', '000001', '2', '12', '2', '2012-08-01', null);
INSERT INTO dokumen VALUES ('6', '000002', '1', '1', '777', '2012-10-31', null);
INSERT INTO dokumen VALUES ('7', '000001', '1', '1', 'u', '2012-07-17', null);
INSERT INTO dokumen VALUES ('7', '000002', '1', '1', '883', '2012-10-31', null);
INSERT INTO dokumen VALUES ('8', '000001', '1', '2', '1', '2012-08-01', null);
INSERT INTO dokumen VALUES ('8', '000002', '1', '4', '003', '2012-10-29', null);
INSERT INTO dokumen VALUES ('8', '000003', '1', '4', 'SJ001', '2012-11-26', null);
INSERT INTO dokumen VALUES ('9', '000001', '1', '3', '2', '2012-08-02', null);
INSERT INTO dokumen VALUES ('9', '000001', '2', '14', '1', '2012-08-02', null);
INSERT INTO dokumen VALUES ('9', '000001', '3', '14', '2', '2012-08-03', null);
INSERT INTO dokumen VALUES ('9', '000002', '1', '1', '001', '2012-10-30', null);

-- ----------------------------
-- Table structure for `hdrjaminan`
-- ----------------------------
DROP TABLE IF EXISTS `hdrjaminan`;
CREATE TABLE `hdrjaminan` (
  `DokKdBc` tinyint(1) NOT NULL DEFAULT '0',
  `CAR` varchar(6) NOT NULL DEFAULT '',
  `NoJaminan` varchar(20) NOT NULL DEFAULT '',
  `TgJaminan` date DEFAULT NULL,
  `JnsJaminan` varchar(15) NOT NULL DEFAULT '',
  `bayar` decimal(12,2) DEFAULT NULL,
  `hutang` decimal(12,2) DEFAULT NULL,
  `TgJatuhTempo` date DEFAULT NULL,
  `KodeAkun` varchar(10) NOT NULL DEFAULT '',
  `NoTandaBayar` varchar(20) DEFAULT NULL,
  `TglTandaBayar` date DEFAULT NULL,
  `Penjamin` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`DokKdBc`,`CAR`,`JnsJaminan`,`KodeAkun`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of hdrjaminan
-- ----------------------------
INSERT INTO hdrjaminan VALUES ('0', '', '', '0000-00-00', '', '0.00', null, '0000-00-00', '', '', '0000-00-00', '');
INSERT INTO hdrjaminan VALUES ('0', '', '', null, 'BM', '0.00', null, null, '', null, null, null);
INSERT INTO hdrjaminan VALUES ('0', '', '', null, 'Cukai', '0.00', null, null, '', null, null, null);
INSERT INTO hdrjaminan VALUES ('0', '', '', null, 'PPh', '0.00', null, null, '', null, null, null);
INSERT INTO hdrjaminan VALUES ('0', '', '', null, 'PPN', '0.00', null, null, '', null, null, null);
INSERT INTO hdrjaminan VALUES ('0', '', '', null, 'PPnBM', '0.00', null, null, '', null, null, null);
INSERT INTO hdrjaminan VALUES ('1', '000700', '', null, 'BM', '0.00', '1.00', null, '1', '2', '2012-07-18', null);
INSERT INTO hdrjaminan VALUES ('1', '000700', '', null, 'Cukai', '0.00', '10.00', null, '1', '2', '2012-07-04', null);
INSERT INTO hdrjaminan VALUES ('1', '000700', '', null, 'PNBP', '0.00', '100.00', null, '1', '2', '2012-07-06', null);
INSERT INTO hdrjaminan VALUES ('1', '000700', '', null, 'PPh', '0.00', '1000.00', null, '1', '2', '2012-07-01', null);
INSERT INTO hdrjaminan VALUES ('1', '000700', '', null, 'PPN', '0.00', '10000.00', null, '1', '2', '2012-07-03', null);
INSERT INTO hdrjaminan VALUES ('1', '000700', '', null, 'PPnBM', '0.00', '100000.00', null, '1', '2', '2012-07-02', null);
INSERT INTO hdrjaminan VALUES ('1', '000701', '', null, 'BM', '0.00', '0.00', null, '', '', '0000-00-00', null);
INSERT INTO hdrjaminan VALUES ('1', '000701', '', null, 'Cukai', '0.00', '0.00', null, '', '', '0000-00-00', null);
INSERT INTO hdrjaminan VALUES ('1', '000701', '', null, 'PNBP', '0.00', '0.00', null, '', '', '0000-00-00', null);
INSERT INTO hdrjaminan VALUES ('1', '000701', '', null, 'PPh', '0.00', '0.00', null, '', '', '0000-00-00', null);
INSERT INTO hdrjaminan VALUES ('1', '000701', '', null, 'PPN', '0.00', '0.00', null, '', '', '0000-00-00', null);
INSERT INTO hdrjaminan VALUES ('1', '000701', '', null, 'PPnBM', '0.00', '0.00', null, '', '', '0000-00-00', null);
INSERT INTO hdrjaminan VALUES ('3', '000001', '', null, 'BM', '1.00', '2.00', null, '', null, null, null);
INSERT INTO hdrjaminan VALUES ('3', '000001', '', null, 'BungaPPNPPnBM', '1.00', '2.00', null, '', null, null, null);
INSERT INTO hdrjaminan VALUES ('3', '000001', '', null, 'Cukai', '1.00', '2.00', null, '', null, null, null);
INSERT INTO hdrjaminan VALUES ('3', '000001', '', null, 'DBBMCukai', '1.00', '2.00', null, '', null, null, null);
INSERT INTO hdrjaminan VALUES ('3', '000001', '', null, 'NTB', null, null, null, 'SSCP', '2', '2012-07-17', null);
INSERT INTO hdrjaminan VALUES ('3', '000001', '', null, 'NTPN', null, null, null, 'SSP', '2', '2012-07-30', null);
INSERT INTO hdrjaminan VALUES ('3', '000001', '', null, 'PNBP', '1.00', '2.00', null, '', null, null, null);
INSERT INTO hdrjaminan VALUES ('3', '000001', '', null, 'PPh', '1.00', '2.00', null, '', null, null, null);
INSERT INTO hdrjaminan VALUES ('3', '000001', '', null, 'PPN', '1.00', '2.00', null, '', null, null, null);
INSERT INTO hdrjaminan VALUES ('3', '000001', '', null, 'PPnBM', '1.00', '2.00', null, '', null, null, null);
INSERT INTO hdrjaminan VALUES ('3', '000001', '', null, 'SSCP', null, null, null, '', '1', '2012-07-25', null);
INSERT INTO hdrjaminan VALUES ('3', '000001', '', null, 'SSP', null, null, null, '', '1', '2012-07-27', null);
INSERT INTO hdrjaminan VALUES ('3', '000002', '', null, 'BM', '0.00', '0.00', null, '', null, null, null);
INSERT INTO hdrjaminan VALUES ('3', '000002', '', null, 'BungaPPNPPnBM', '0.00', '0.00', null, '', null, null, null);
INSERT INTO hdrjaminan VALUES ('3', '000002', '', null, 'Cukai', '0.00', '0.00', null, '', null, null, null);
INSERT INTO hdrjaminan VALUES ('3', '000002', '', null, 'DBBMCukai', '0.00', '0.00', null, '', null, null, null);
INSERT INTO hdrjaminan VALUES ('3', '000002', '', null, 'NTPN', null, null, null, 'SSCP', '', '0000-00-00', null);
INSERT INTO hdrjaminan VALUES ('3', '000002', '', null, 'NTPN', null, null, null, 'SSP', '', '0000-00-00', null);
INSERT INTO hdrjaminan VALUES ('3', '000002', '', null, 'PNBP', '0.00', '0.00', null, '', null, null, null);
INSERT INTO hdrjaminan VALUES ('3', '000002', '', null, 'PPh', '0.00', '0.00', null, '', null, null, null);
INSERT INTO hdrjaminan VALUES ('3', '000002', '', null, 'PPN', '0.00', '0.00', null, '', null, null, null);
INSERT INTO hdrjaminan VALUES ('3', '000002', '', null, 'PPnBM', '0.00', '0.00', null, '', null, null, null);
INSERT INTO hdrjaminan VALUES ('3', '000002', '', null, 'SSCP', null, null, null, '', '', '0000-00-00', null);
INSERT INTO hdrjaminan VALUES ('3', '000002', '', null, 'SSP', null, null, null, '', '', '0000-00-00', null);
INSERT INTO hdrjaminan VALUES ('3', '201..2', '', null, 'BM', '1.00', '2.00', null, '', null, null, null);
INSERT INTO hdrjaminan VALUES ('3', '201..2', '', null, 'BungaPPNPPnBM', '1.00', '2.00', null, '', null, null, null);
INSERT INTO hdrjaminan VALUES ('3', '201..2', '', null, 'Cukai', '1.00', '2.00', null, '', null, null, null);
INSERT INTO hdrjaminan VALUES ('3', '201..2', '', null, 'DBBMCukai', '1.00', '2.00', null, '', null, null, null);
INSERT INTO hdrjaminan VALUES ('3', '201..2', '', null, 'NTB', null, null, null, 'SSCP', '2', '2012-07-17', null);
INSERT INTO hdrjaminan VALUES ('3', '201..2', '', null, 'NTB', null, null, null, 'SSP', '1', '2012-07-24', null);
INSERT INTO hdrjaminan VALUES ('3', '201..2', '', null, 'PNBP', '1.00', '2.00', null, '', null, null, null);
INSERT INTO hdrjaminan VALUES ('3', '201..2', '', null, 'PPh', '1.00', '2.00', null, '', null, null, null);
INSERT INTO hdrjaminan VALUES ('3', '201..2', '', null, 'PPN', '1.00', '2.00', null, '', null, null, null);
INSERT INTO hdrjaminan VALUES ('3', '201..2', '', null, 'PPnBM', '1.00', '2.00', null, '', null, null, null);
INSERT INTO hdrjaminan VALUES ('3', '201..2', '', null, 'SSCP', null, null, null, '', '1', '2012-07-25', null);
INSERT INTO hdrjaminan VALUES ('3', '201..2', '', null, 'SSP', null, null, null, '', '1', '2012-07-27', null);
INSERT INTO hdrjaminan VALUES ('3', '201.20', '', null, 'BM', '1.00', '2.00', null, '', null, null, null);
INSERT INTO hdrjaminan VALUES ('3', '201.20', '', null, 'BungaPPNPPnBM', '1.00', '2.00', null, '', null, null, null);
INSERT INTO hdrjaminan VALUES ('3', '201.20', '', null, 'Cukai', '1.00', '2.00', null, '', null, null, null);
INSERT INTO hdrjaminan VALUES ('3', '201.20', '', null, 'DBBMCukai', '1.00', '2.00', null, '', null, null, null);
INSERT INTO hdrjaminan VALUES ('3', '201.20', '', null, 'NTB', null, null, null, 'SSCP', '2', '2012-07-17', null);
INSERT INTO hdrjaminan VALUES ('3', '201.20', '', null, 'NTB', null, null, null, 'SSP', '1', '2012-07-24', null);
INSERT INTO hdrjaminan VALUES ('3', '201.20', '', null, 'PNBP', '1.00', '2.00', null, '', null, null, null);
INSERT INTO hdrjaminan VALUES ('3', '201.20', '', null, 'PPh', '1.00', '2.00', null, '', null, null, null);
INSERT INTO hdrjaminan VALUES ('3', '201.20', '', null, 'PPN', '1.00', '2.00', null, '', null, null, null);
INSERT INTO hdrjaminan VALUES ('3', '201.20', '', null, 'PPnBM', '1.00', '2.00', null, '', null, null, null);
INSERT INTO hdrjaminan VALUES ('3', '201.20', '', null, 'SSCP', null, null, null, '', '1', '2012-07-25', null);
INSERT INTO hdrjaminan VALUES ('3', '201207', '', null, 'BM', '1.00', '2.00', null, '', null, null, null);
INSERT INTO hdrjaminan VALUES ('3', '201207', '', null, 'BungaPPNPPnBM', '1.00', '2.00', null, '', null, null, null);
INSERT INTO hdrjaminan VALUES ('3', '201207', '', null, 'Cukai', '1.00', '2.00', null, '', null, null, null);
INSERT INTO hdrjaminan VALUES ('3', '201207', '', null, 'DBBMCukai', '1.00', '2.00', null, '', null, null, null);
INSERT INTO hdrjaminan VALUES ('3', '201207', '', null, 'NTB', null, null, null, 'SSCP', '2', '2012-07-17', null);
INSERT INTO hdrjaminan VALUES ('3', '201207', '', null, 'NTB', null, null, null, 'SSP', '1', '2012-07-24', null);
INSERT INTO hdrjaminan VALUES ('3', '201207', '', null, 'PNBP', '1.00', '2.00', null, '', null, null, null);
INSERT INTO hdrjaminan VALUES ('3', '201207', '', null, 'PPh', '1.00', '2.00', null, '', null, null, null);
INSERT INTO hdrjaminan VALUES ('3', '201207', '', null, 'PPN', '1.00', '2.00', null, '', null, null, null);
INSERT INTO hdrjaminan VALUES ('3', '201207', '', null, 'PPnBM', '1.00', '2.00', null, '', null, null, null);
INSERT INTO hdrjaminan VALUES ('3', '201207', '', null, 'SSCP', null, null, null, '', '1', '2012-07-25', null);
INSERT INTO hdrjaminan VALUES ('4', '000001', '1', '2012-07-31', '2', '2.00', null, '2012-07-30', '', '2', '2012-07-31', '1');
INSERT INTO hdrjaminan VALUES ('4', '000001', '', null, 'BM', '1.00', null, null, '', null, null, null);
INSERT INTO hdrjaminan VALUES ('4', '000001', '', null, 'Cukai', '2.00', null, null, '', null, null, null);
INSERT INTO hdrjaminan VALUES ('4', '000001', '', null, 'PPh', '1.00', null, null, '', null, null, null);
INSERT INTO hdrjaminan VALUES ('4', '000001', '', null, 'PPN', '1.00', null, null, '', null, null, null);
INSERT INTO hdrjaminan VALUES ('4', '000001', '', null, 'PPnBM', '2.00', null, null, '', null, null, null);
INSERT INTO hdrjaminan VALUES ('4', '000002', '', '0000-00-00', '', '0.00', null, '0000-00-00', '', '', '0000-00-00', '');
INSERT INTO hdrjaminan VALUES ('4', '000002', '', null, 'BM', '0.00', null, null, '', null, null, null);
INSERT INTO hdrjaminan VALUES ('4', '000002', '', null, 'Cukai', '0.00', null, null, '', null, null, null);
INSERT INTO hdrjaminan VALUES ('4', '000002', '', null, 'PPh', '0.00', null, null, '', null, null, null);
INSERT INTO hdrjaminan VALUES ('4', '000002', '', null, 'PPN', '0.00', null, null, '', null, null, null);
INSERT INTO hdrjaminan VALUES ('4', '000002', '', null, 'PPnBM', '0.00', null, null, '', null, null, null);
INSERT INTO hdrjaminan VALUES ('5', '000001', '1', '2012-07-31', '2', '2.00', null, '2012-07-30', '', '2', '2012-07-31', '1');
INSERT INTO hdrjaminan VALUES ('5', '000001', '', null, 'BM', '2.00', null, null, '', null, null, null);
INSERT INTO hdrjaminan VALUES ('5', '000001', '', null, 'Cukai', '1.00', null, null, '', null, null, null);
INSERT INTO hdrjaminan VALUES ('5', '000001', '', null, 'PPh', '2.00', null, null, '', null, null, null);
INSERT INTO hdrjaminan VALUES ('5', '000001', '', null, 'PPN', '2.00', null, null, '', null, null, null);
INSERT INTO hdrjaminan VALUES ('5', '000001', '', null, 'PPnBM', '1.00', null, null, '', null, null, null);
INSERT INTO hdrjaminan VALUES ('5', '000002', '', '0000-00-00', '', '0.00', null, '0000-00-00', '', '', '0000-00-00', '');
INSERT INTO hdrjaminan VALUES ('5', '000002', '', null, 'BM', '0.00', null, null, '', null, null, null);
INSERT INTO hdrjaminan VALUES ('5', '000002', '', null, 'Cukai', '0.00', null, null, '', null, null, null);
INSERT INTO hdrjaminan VALUES ('5', '000002', '', null, 'PPh', '0.00', null, null, '', null, null, null);
INSERT INTO hdrjaminan VALUES ('5', '000002', '', null, 'PPN', '0.00', null, null, '', null, null, null);
INSERT INTO hdrjaminan VALUES ('5', '000002', '', null, 'PPnBM', '0.00', null, null, '', null, null, null);
INSERT INTO hdrjaminan VALUES ('7', '000001', '', null, 'BK', '2.00', null, null, 'NTB', '1', '2012-07-27', null);
INSERT INTO hdrjaminan VALUES ('7', '000001', '', null, 'PNBP', '1.00', null, null, 'NTPN', '2', '2012-07-11', null);
INSERT INTO hdrjaminan VALUES ('7', '000001', '', null, 'SSPCP', null, null, null, '', '1.00', '2012-07-22', null);
INSERT INTO hdrjaminan VALUES ('7', '000002', '', null, 'BK', '0.00', null, null, 'NTPN', '', '0000-00-00', null);
INSERT INTO hdrjaminan VALUES ('7', '000002', '', null, 'PNBP', '0.00', null, null, 'NTPN', '', '0000-00-00', null);
INSERT INTO hdrjaminan VALUES ('7', '000002', '', null, 'SSPCP', null, null, null, '', '', '2012-10-31', null);
INSERT INTO hdrjaminan VALUES ('8', '000001', '', null, 'BM', '0.00', '0.00', null, '', null, null, null);
INSERT INTO hdrjaminan VALUES ('8', '000001', '', null, 'BungaPPNPPnBM', '0.00', '0.00', null, '', null, null, null);
INSERT INTO hdrjaminan VALUES ('8', '000001', '', null, 'Cukai', '0.00', '0.00', null, '', null, null, null);
INSERT INTO hdrjaminan VALUES ('8', '000001', '', null, 'DBBMCukai', '0.00', '0.00', null, '', null, null, null);
INSERT INTO hdrjaminan VALUES ('8', '000001', '', null, 'NTPN', null, null, null, 'SSCP', '', '0000-00-00', null);
INSERT INTO hdrjaminan VALUES ('8', '000001', '', null, 'NTPN', null, null, null, 'SSP', '', '0000-00-00', null);
INSERT INTO hdrjaminan VALUES ('8', '000001', '', null, 'PNBP', '0.00', '0.00', null, '', null, null, null);
INSERT INTO hdrjaminan VALUES ('8', '000001', '', null, 'PPh', '0.00', '0.00', null, '', null, null, null);
INSERT INTO hdrjaminan VALUES ('8', '000001', '', null, 'PPN', '0.00', '0.00', null, '', null, null, null);
INSERT INTO hdrjaminan VALUES ('8', '000001', '', null, 'PPnBM', '0.00', '0.00', null, '', null, null, null);
INSERT INTO hdrjaminan VALUES ('8', '000001', '', null, 'SSCP', null, null, null, '', '', '0000-00-00', null);
INSERT INTO hdrjaminan VALUES ('8', '000001', '', null, 'SSP', null, null, null, '', '', '0000-00-00', null);

-- ----------------------------
-- Table structure for `hdrpelabuhan`
-- ----------------------------
DROP TABLE IF EXISTS `hdrpelabuhan`;
CREATE TABLE `hdrpelabuhan` (
  `DokKdBc` tinyint(1) NOT NULL DEFAULT '0',
  `CAR` varchar(6) NOT NULL DEFAULT '',
  `MuatAsal` varchar(5) DEFAULT NULL,
  `MuatEkspor` varchar(5) DEFAULT NULL,
  `Transit` varchar(5) DEFAULT NULL,
  `Bongkar` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`DokKdBc`,`CAR`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of hdrpelabuhan
-- ----------------------------
INSERT INTO hdrpelabuhan VALUES ('1', '000700', 'KRPUS', '', '', 'IDTPP');
INSERT INTO hdrpelabuhan VALUES ('1', '000701', '', '', '', 'IDTPP');
INSERT INTO hdrpelabuhan VALUES ('7', '000001', 'IDTPP', 'IDTPP', '', 'USFAT');
INSERT INTO hdrpelabuhan VALUES ('7', '000002', 'IDTPP', 'IDTPP', '', '');

-- ----------------------------
-- Table structure for `hdrpengangkutan`
-- ----------------------------
DROP TABLE IF EXISTS `hdrpengangkutan`;
CREATE TABLE `hdrpengangkutan` (
  `DokKdBc` tinyint(1) NOT NULL DEFAULT '0',
  `CAR` varchar(6) NOT NULL DEFAULT '',
  `CaraAngkut` tinyint(1) DEFAULT NULL,
  `JnsAngkut` varchar(30) DEFAULT NULL COMMENT 'Jenis Sarana Pengangkut Darat',
  `NmAngkut` varchar(40) DEFAULT NULL,
  `NoPolisi` varchar(15) DEFAULT NULL,
  `KdNegara` varchar(3) DEFAULT NULL,
  `TgKiraEkspor` date DEFAULT NULL,
  PRIMARY KEY (`DokKdBc`,`CAR`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of hdrpengangkutan
-- ----------------------------
INSERT INTO hdrpengangkutan VALUES ('0', '', null, '', null, '', null, null);
INSERT INTO hdrpengangkutan VALUES ('1', '000701', '0', null, '', '', null, null);
INSERT INTO hdrpengangkutan VALUES ('3', '201207', '0', '', '', '', null, null);
INSERT INTO hdrpengangkutan VALUES ('4', '000001', null, '1', null, '2', null, null);
INSERT INTO hdrpengangkutan VALUES ('4', '000002', null, '', null, '', null, null);
INSERT INTO hdrpengangkutan VALUES ('5', '000001', null, '2', null, '1', null, null);
INSERT INTO hdrpengangkutan VALUES ('5', '000002', null, '', null, '', null, null);
INSERT INTO hdrpengangkutan VALUES ('6', '000.00', null, '2', null, '1', null, null);
INSERT INTO hdrpengangkutan VALUES ('6', '000.11', null, '2', null, '1', null, null);
INSERT INTO hdrpengangkutan VALUES ('6', '000001', null, '2', null, '1', null, null);
INSERT INTO hdrpengangkutan VALUES ('6', '000002', null, '', null, '', null, null);
INSERT INTO hdrpengangkutan VALUES ('7', '000001', '1', null, '', '189', 'US', '0000-00-00');
INSERT INTO hdrpengangkutan VALUES ('7', '000002', '0', null, '', '', '', '0000-00-00');
INSERT INTO hdrpengangkutan VALUES ('8', '000001', null, '2', null, '1', null, null);
INSERT INTO hdrpengangkutan VALUES ('8', '000002', null, 'Truk', null, 'B201', null, null);
INSERT INTO hdrpengangkutan VALUES ('8', '000003', null, '', null, '', null, null);
INSERT INTO hdrpengangkutan VALUES ('9', '000001', null, '2', null, '1', null, null);
INSERT INTO hdrpengangkutan VALUES ('9', '000002', null, '', null, '', null, null);

-- ----------------------------
-- Table structure for `hdrperdagangan`
-- ----------------------------
DROP TABLE IF EXISTS `hdrperdagangan`;
CREATE TABLE `hdrperdagangan` (
  `DokKdBc` tinyint(1) NOT NULL DEFAULT '0',
  `CAR` varchar(6) NOT NULL DEFAULT '',
  `KdDaerah` varchar(4) DEFAULT NULL,
  `KdNegaraEkspor` varchar(2) DEFAULT NULL,
  `KdCrSerahBrg` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`DokKdBc`,`CAR`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of hdrperdagangan
-- ----------------------------
INSERT INTO hdrperdagangan VALUES ('7', '000001', '3200', 'US', 'FOB');
INSERT INTO hdrperdagangan VALUES ('7', '000002', '', '', '');

-- ----------------------------
-- Table structure for `hdrpetikemas`
-- ----------------------------
DROP TABLE IF EXISTS `hdrpetikemas`;
CREATE TABLE `hdrpetikemas` (
  `DokKdBc` tinyint(1) NOT NULL DEFAULT '0',
  `CAR` varchar(6) NOT NULL DEFAULT '',
  `NoUrut` tinyint(2) NOT NULL DEFAULT '0',
  `Merk` varchar(15) DEFAULT NULL,
  `Nomor` varchar(10) DEFAULT NULL,
  `Ukuran` varchar(10) DEFAULT NULL,
  `Tipe` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`DokKdBc`,`CAR`,`NoUrut`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of hdrpetikemas
-- ----------------------------
INSERT INTO hdrpetikemas VALUES ('1', '000700', '1', 'FCLU', '2037740', '20 Feet', 'FCL');
INSERT INTO hdrpetikemas VALUES ('7', '000001', '1', 'fcl', '88', '89', '1');

-- ----------------------------
-- Table structure for `hdrtransaksi`
-- ----------------------------
DROP TABLE IF EXISTS `hdrtransaksi`;
CREATE TABLE `hdrtransaksi` (
  `DokKdBc` tinyint(1) NOT NULL DEFAULT '0',
  `CAR` varchar(6) NOT NULL DEFAULT '',
  `KdVal` varchar(3) DEFAULT NULL,
  `NDPBM` decimal(12,2) DEFAULT '1.00',
  `Freight` decimal(12,2) DEFAULT NULL,
  `AsLNDN` decimal(12,2) DEFAULT NULL,
  `FOB` decimal(12,2) DEFAULT NULL,
  `CIF` decimal(12,2) DEFAULT NULL,
  `CIFUSD` decimal(12,2) NOT NULL,
  `HrgSerah` decimal(12,2) DEFAULT NULL,
  PRIMARY KEY (`DokKdBc`,`CAR`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of hdrtransaksi
-- ----------------------------
INSERT INTO hdrtransaksi VALUES ('0', '', '', '1.00', null, null, null, '0.00', '0.00', null);
INSERT INTO hdrtransaksi VALUES ('1', '000700', 'USD', '9203.00', '0.00', '0.00', '0.00', '128002686.00', '0.00', '0.00');
INSERT INTO hdrtransaksi VALUES ('1', '000701', 'USD', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO hdrtransaksi VALUES ('3', '000001', 'USD', '9409.00', '0.00', '0.00', '0.00', '19149197.00', '0.00', '293512254.00');
INSERT INTO hdrtransaksi VALUES ('3', '000002', 'USD', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO hdrtransaksi VALUES ('3', '201..2', 'USD', '2.00', '0.00', '0.00', '0.00', '1.00', '0.00', '1.00');
INSERT INTO hdrtransaksi VALUES ('3', '201.20', 'USD', '2.00', '0.00', '0.00', '0.00', '1.00', '0.00', '1.00');
INSERT INTO hdrtransaksi VALUES ('3', '201207', 'USD', '2.00', '0.00', '0.00', '0.00', '1.00', '0.00', '1.00');
INSERT INTO hdrtransaksi VALUES ('4', '000001', 'USD', '2.00', null, null, null, '2.00', '0.00', null);
INSERT INTO hdrtransaksi VALUES ('4', '000002', 'USD', '0.00', null, null, null, '0.00', '0.00', null);
INSERT INTO hdrtransaksi VALUES ('5', '000001', 'USD', '1.00', null, null, null, '2.00', '0.00', null);
INSERT INTO hdrtransaksi VALUES ('5', '000002', 'USD', '1.00', null, null, null, '0.00', '0.00', null);
INSERT INTO hdrtransaksi VALUES ('6', '000.00', 'USD', '0.00', null, null, null, '0.00', '0.00', '0.00');
INSERT INTO hdrtransaksi VALUES ('6', '000.11', 'USD', '0.00', null, null, null, '2.00', '0.00', '0.00');
INSERT INTO hdrtransaksi VALUES ('6', '000001', 'USD', '0.00', null, null, null, '2.00', '0.00', '1.00');
INSERT INTO hdrtransaksi VALUES ('6', '000002', 'USD', '0.00', null, null, null, '0.00', '0.00', '0.00');
INSERT INTO hdrtransaksi VALUES ('7', '000001', 'USD', '0.00', '0.00', '0.00', '684.00', '0.00', '0.00', '0.00');
INSERT INTO hdrtransaksi VALUES ('7', '000002', 'USD', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00');
INSERT INTO hdrtransaksi VALUES ('8', '000001', 'Rp', '1.00', null, null, null, null, '0.00', '2.00');
INSERT INTO hdrtransaksi VALUES ('8', '000002', 'Rp', '1.00', null, null, null, null, '0.00', '300.00');
INSERT INTO hdrtransaksi VALUES ('8', '000003', 'Rp', '1.00', null, null, null, null, '0.00', '0.00');
INSERT INTO hdrtransaksi VALUES ('9', '000001', 'Rp', '1.00', null, null, null, null, '0.00', '2.00');
INSERT INTO hdrtransaksi VALUES ('9', '000002', 'Rp', '1.00', null, null, null, null, '0.00', '0.00');

-- ----------------------------
-- Table structure for `header`
-- ----------------------------
DROP TABLE IF EXISTS `header`;
CREATE TABLE `header` (
  `DokKdBc` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Kode Dokumen BC',
  `CAR` varchar(6) NOT NULL DEFAULT '' COMMENT 'Nomor Pengajuan',
  `NoDaf` varchar(8) NOT NULL DEFAULT '' COMMENT 'Nomor Pendaftaran',
  `TgDaf` date DEFAULT NULL COMMENT 'Tanggal Pendaftaran',
  `KdTp` tinyint(1) DEFAULT NULL COMMENT 'Npwp Perusahaan Asal',
  `KdKpbcAsal` varchar(6) DEFAULT NULL COMMENT 'Kantor Pabean Asal',
  `KdJnsEkspor` varchar(15) DEFAULT NULL,
  `KdKatEkspor` varchar(20) DEFAULT NULL,
  `KdKpbcTuj` varchar(6) DEFAULT NULL COMMENT 'Kantor Pabean Tujuan',
  `KdJnsBarang` int(2) DEFAULT NULL,
  `KdCrDagang` varchar(15) DEFAULT NULL,
  `KdCrBayar` varchar(15) DEFAULT NULL,
  `KdKpBongkar` varchar(6) DEFAULT NULL,
  `KdKpPengawas` varchar(6) DEFAULT NULL,
  `KdJnsTpbAsal` tinyint(1) DEFAULT NULL COMMENT 'Kode Jenis TPB Asal',
  `KdJnsTpbTuj` tinyint(1) DEFAULT NULL COMMENT 'Kode Jenis TPB Tujuan',
  `JnsBc25` enum('2','1') DEFAULT NULL,
  `KondisiBrg` enum('2','1') DEFAULT NULL,
  `NmPpjk` varchar(20) DEFAULT NULL,
  `NmTuj` varchar(50) DEFAULT NULL,
  `KdTimbun` varchar(5) DEFAULT NULL,
  `KdLokPeriksa` varchar(5) DEFAULT NULL,
  `KdKpPeriksa` varchar(6) DEFAULT NULL,
  `KdDaerahAsalBrg` varchar(6) DEFAULT NULL,
  `NoSegel` varchar(6) DEFAULT NULL,
  `JnsSegel` varchar(15) DEFAULT NULL,
  `CatBcTuj` varchar(250) DEFAULT NULL COMMENT 'Catatan BC Tujuan',
  `MerekKemas` varchar(50) DEFAULT NULL,
  `KdKemas` varchar(3) DEFAULT NULL,
  `JmlKemas` int(12) DEFAULT NULL,
  `VOL` decimal(12,4) DEFAULT NULL,
  `BRUTO` decimal(12,2) DEFAULT NULL,
  `NETTO` decimal(12,2) DEFAULT NULL,
  `Total` decimal(12,2) DEFAULT NULL,
  `TotalH` decimal(12,2) DEFAULT NULL,
  `NilaiBkRp` decimal(12,2) DEFAULT NULL,
  `NmPengusaha` varchar(30) DEFAULT NULL,
  `NipPengusaha` varchar(20) DEFAULT NULL,
  `NmPejabat` varchar(30) DEFAULT NULL,
  `NipPejabat` varchar(20) DEFAULT NULL,
  `ref_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`DokKdBc`,`CAR`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of header
-- ----------------------------
INSERT INTO header VALUES ('0', '', '', '0000-00-00', '0', '', null, null, null, null, null, null, null, null, '0', null, null, null, null, '', null, null, null, null, null, null, null, '', '', '0', '0.0000', '0.00', '0.00', '0.00', null, null, '', '', '', '', '0');
INSERT INTO header VALUES ('1', '000700', '000700', '2012-05-07', '2', '050800', null, null, null, '2', null, null, '040300', '050800', '1', null, null, null, '', 'HANSOLL TEXTILE LTD.', 'UTPK', null, null, null, null, null, null, 'FCLU', 'CT', '101', null, '9999999999.99', '9999999999.99', null, null, null, 'LEE JONG HYUK', 'a', 'kikin', 'b1', null);
INSERT INTO header VALUES ('1', '000701', '000701', '2012-10-31', '0', '050800', null, null, null, '0', null, null, '050800', '050800', '0', null, null, null, '', 'PT. DIHEN BERSAMA', '', null, null, null, null, null, null, '', '', '0', null, '0.00', '0.00', '0.00', '0.00', null, 'Mr. Y. Tobusawa', '_', '', '', '2');
INSERT INTO header VALUES ('3', '000001', '000001', '2012-07-28', '0', '050800', null, null, '', null, null, null, null, null, '1', '0', '1', '2', null, 'THE GAP INC.,', null, null, null, null, '', '', '', '2', 'AE', '1', '2.0000', '1.00', '2.00', '1.00', '2.00', null, 'LEE JONG HYUK', '_', '1', '2', null);
INSERT INTO header VALUES ('3', '000002', '000002', '2012-10-31', '0', '050800', null, null, '', null, null, null, null, null, '2', '0', '1', '1', null, '', null, null, null, null, '', '', '', '', '', '0', '0.0000', '0.00', '0.00', '0.00', '0.00', null, 'Mr. Y. Tobusawa', '_', '', '', '7');
INSERT INTO header VALUES ('4', '000001', '000001', '2012-07-31', '2', '050800', null, null, null, null, null, null, null, null, '1', null, null, null, null, 'PT. DK INTERNATIONAL', null, null, null, null, null, null, null, '1', 'AE', '2', '1.0000', '2.00', '1.00', '7.00', null, null, 'LEE JONG HYUK', '_', '1', '2', null);
INSERT INTO header VALUES ('4', '000002', '000002', '2012-10-30', '2', '050800', null, null, null, null, null, null, null, null, '0', null, null, null, null, 'PARAMOUNT BED', null, null, null, null, null, null, null, '', '', '0', '0.0000', '0.00', '0.00', '0.00', null, null, 'Mr. Y. Tobusawa', '_', '', '', '7');
INSERT INTO header VALUES ('5', '000001', '000001', '2012-07-31', '6', '050800', null, null, null, null, null, null, null, null, '1', null, null, null, null, 'HANSOLL TEXTILE LTD.', null, null, null, null, null, null, null, '2', 'AE', '1', '2.0000', '1.00', '2.00', '8.00', null, null, 'LEE JONG HYUK', '_', '2', '1', null);
INSERT INTO header VALUES ('5', '000002', '000002', '2012-10-30', '6', '050800', null, null, null, null, null, null, null, null, '0', null, null, null, null, 'PT. ALUMINDO LIGHT METAL INDUSTRY', null, null, null, null, null, null, null, '', '', '0', '0.0000', '0.00', '0.00', '0.00', null, null, 'Mr. Y. Tobusawa', '_', '', '', '1');
INSERT INTO header VALUES ('6', '000001', '000001', '1899-11-30', '1', '050800', null, null, '000000', null, null, null, null, null, '1', '2', null, null, null, 'PT. HANDSOME', null, null, null, null, '123456', 'Kertas', '2', '1', 'AE', '2', '1.0000', '2.00', '1.00', null, null, null, 'LEE JONG HYUK', '_', '2', '1', null);
INSERT INTO header VALUES ('6', '000002', '000002', '2012-10-31', '3', '050800', null, null, '000000', null, null, null, null, null, '1', '1', null, null, null, '', null, null, null, null, '', 'Kertas', '', '', '', '0', '0.0000', '0.00', '0.00', null, null, null, 'Mr. Y. Tobusawa', '_', '', '', '7');
INSERT INTO header VALUES ('7', '000001', '000001', '2012-07-22', null, '040300', '1', '12', null, null, '2', '9', null, '', null, null, null, null, '', 'THE GAP INC.,', null, '1', '050800', null, null, null, null, '', '', '0', '0.0000', '0.00', '0.00', null, null, null, 'LEE JONG HYUK', '_', '', '', null);
INSERT INTO header VALUES ('7', '000002', '000002', '2012-10-31', null, '040300', '1', '1', null, null, '1', '1', null, '', null, null, null, null, '', 'DENON', null, '', '', null, null, null, null, '', '', '0', '0.0000', '0.00', '0.00', null, null, null, 'Mr. Y. Tobusawa', '_', '', '', '2');
INSERT INTO header VALUES ('8', '000001', '000001', '2012-08-01', '2', '050800', null, null, '', null, null, null, null, null, '1', '0', '', '', null, 'PT. LUCAS ABADI', null, null, null, null, '', '', '', '1', 'AP', '2', '2.0000', '1.00', '2.00', '0.00', '0.00', null, 'LEE JONG HYUK', '_', '1', '2', null);
INSERT INTO header VALUES ('8', '000002', '000002', '2012-10-29', '1', '050800', null, null, null, null, null, null, null, null, '1', null, null, null, null, 'PT. DIHEN BERSAMA', null, null, null, null, null, null, null, 'Tes', 'AM', '4', '0.0000', '310.00', '300.00', null, null, null, 'Mr. Y. Tobusawa', '_', 'Dani', '111', '2');
INSERT INTO header VALUES ('8', '000003', '000003', '2012-11-26', '0', '050800', null, null, null, null, null, null, null, null, '0', null, null, null, null, 'PT. DIHEN BERSAMA', null, null, null, null, null, null, null, '', '', '0', '0.0000', '0.00', '0.00', null, null, null, 'Mr. Y. Tobusawa', '_', '', '', '2');
INSERT INTO header VALUES ('9', '000001', '000001', '2012-08-02', '1', '050800', null, null, null, null, null, null, null, null, '2', null, null, null, null, 'PT. KAILO SUMBER KAS', null, null, null, null, null, null, null, '1', 'BB', '2', '1.0000', '2.00', '1.00', null, null, null, 'LEE JONG HYUK', '_', '1', '2', null);
INSERT INTO header VALUES ('9', '000002', '000002', '2012-10-30', '5', '050800', null, null, null, null, null, null, null, null, '1', null, null, null, null, 'HITACHI', null, null, null, null, null, null, null, '', '', '0', '0.0000', '0.00', '0.00', null, null, null, 'Mr. Y. Tobusawa', '_', '', '', '7');

-- ----------------------------
-- Table structure for `jenis_barang`
-- ----------------------------
DROP TABLE IF EXISTS `jenis_barang`;
CREATE TABLE `jenis_barang` (
  `KdJnsBarang` tinyint(2) NOT NULL DEFAULT '0',
  `UrJnsBarang` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`KdJnsBarang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of jenis_barang
-- ----------------------------
INSERT INTO jenis_barang VALUES ('0', 'Barang Jadi');
INSERT INTO jenis_barang VALUES ('1', 'Bahan Baku');
INSERT INTO jenis_barang VALUES ('2', 'Bahan Penolong');
INSERT INTO jenis_barang VALUES ('3', 'Mesin/Sparepart');
INSERT INTO jenis_barang VALUES ('4', 'Peralatan Pabrik');
INSERT INTO jenis_barang VALUES ('5', 'Peralatan Perkantoran');
INSERT INTO jenis_barang VALUES ('6', 'Peralatan Kontruksi');
INSERT INTO jenis_barang VALUES ('7', 'Brg Reimpor TPB');
INSERT INTO jenis_barang VALUES ('8', 'Barang Contoh/Tes');
INSERT INTO jenis_barang VALUES ('9', 'Lainnya');
INSERT INTO jenis_barang VALUES ('10', 'Lebih dr 1 Jenis Brg (1 s/d 6)');
INSERT INTO jenis_barang VALUES ('11', 'WIP');

-- ----------------------------
-- Table structure for `jenis_dok`
-- ----------------------------
DROP TABLE IF EXISTS `jenis_dok`;
CREATE TABLE `jenis_dok` (
  `KdJnsDok` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Kode TPB',
  `UrJnsDok` varchar(30) DEFAULT NULL COMMENT 'Uraian TPB',
  PRIMARY KEY (`KdJnsDok`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of jenis_dok
-- ----------------------------
INSERT INTO jenis_dok VALUES ('1', 'BC 2.3');
INSERT INTO jenis_dok VALUES ('2', 'BC 2.4');
INSERT INTO jenis_dok VALUES ('3', 'BC 2.5');
INSERT INTO jenis_dok VALUES ('4', 'BC 2.6.1');
INSERT INTO jenis_dok VALUES ('5', 'BC 2.6.2');
INSERT INTO jenis_dok VALUES ('6', 'BC 2.7');
INSERT INTO jenis_dok VALUES ('7', 'BC 3.0');
INSERT INTO jenis_dok VALUES ('8', 'BC 4.0');
INSERT INTO jenis_dok VALUES ('9', 'BC 4.1');

-- ----------------------------
-- Table structure for `jenis_tpb`
-- ----------------------------
DROP TABLE IF EXISTS `jenis_tpb`;
CREATE TABLE `jenis_tpb` (
  `KdJnsTpb` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Kode Jenis TPB',
  `UrJnsTpb` varchar(50) DEFAULT NULL COMMENT 'Uraian Jenis TPB',
  PRIMARY KEY (`KdJnsTpb`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of jenis_tpb
-- ----------------------------
INSERT INTO jenis_tpb VALUES ('1', 'Kawasan Berikat');
INSERT INTO jenis_tpb VALUES ('2', 'Gudang Berikat');
INSERT INTO jenis_tpb VALUES ('3', 'Tempat Penyelenggara Pameran Berikat');
INSERT INTO jenis_tpb VALUES ('4', 'Toko Bebas Bea');
INSERT INTO jenis_tpb VALUES ('5', 'Tempat Lelang Berikat');
INSERT INTO jenis_tpb VALUES ('6', 'Kawasan Daur Ulang Berikat');

-- ----------------------------
-- Table structure for `kantor`
-- ----------------------------
DROP TABLE IF EXISTS `kantor`;
CREATE TABLE `kantor` (
  `KdKpbc` varchar(6) NOT NULL DEFAULT '0',
  `UrKdKpbc` varchar(60) DEFAULT NULL,
  `Kota` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`KdKpbc`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kantor
-- ----------------------------
INSERT INTO kantor VALUES ('000000', 'KANTOR PUSAT', 'JAKARTA');
INSERT INTO kantor VALUES ('010000', 'KANTOR WILAYAH I MEDAN', 'MEDAN');
INSERT INTO kantor VALUES ('010201', 'BALAI PENGUJIAN DAN IDENTIFIKASI BARANG MEDAN', '');
INSERT INTO kantor VALUES ('010700', 'KANTOR PELAYANAN BELAWAN', 'BELAWAN');
INSERT INTO kantor VALUES ('010731', 'POS PERCUT', '');
INSERT INTO kantor VALUES ('010732', 'POS PANTAI CERMIN', '');
INSERT INTO kantor VALUES ('010733', 'POS PANTAI LABU', '');
INSERT INTO kantor VALUES ('010734', 'POS LUBUK PAKAM', '');
INSERT INTO kantor VALUES ('010735', 'POS BINJAI', '');
INSERT INTO kantor VALUES ('010736', 'POS UJUNG BARU', '');
INSERT INTO kantor VALUES ('010737', 'POS GUDANG MERAH', '');
INSERT INTO kantor VALUES ('010738', 'POS GABION', '');
INSERT INTO kantor VALUES ('010739', 'POS RANTAU PANJANG', '');
INSERT INTO kantor VALUES ('010800', 'KANTOR PELAYANAN MEDAN', 'MEDAN');
INSERT INTO kantor VALUES ('010838', 'POS BANDARA I', '');
INSERT INTO kantor VALUES ('010839', 'POS BANDARA II', '');
INSERT INTO kantor VALUES ('010840', 'POS BANDARA III', '');
INSERT INTO kantor VALUES ('010900', 'KANTOR PELAYANAN PANGKALAN SUSU', 'PANGKALAN SUSU');
INSERT INTO kantor VALUES ('010911', 'KANTOR BANTU PANGKALAN BRANDAN', 'PANGKALAN BRANDAN');
INSERT INTO kantor VALUES ('010931', 'POS TANJUNG PURA', '');
INSERT INTO kantor VALUES ('010933', 'POS PANGKALAN SUSU', '');
INSERT INTO kantor VALUES ('011000', 'KANTOR PELAYANAN PEMATANG SIANTAR', 'PEMATANG SIANTAR');
INSERT INTO kantor VALUES ('011031', 'POS PORSEA', '');
INSERT INTO kantor VALUES ('011032', 'POS KABANJAHE', '');
INSERT INTO kantor VALUES ('011033', 'POS SIDIKALANG', '');
INSERT INTO kantor VALUES ('011100', 'KANTOR PELAYANAN TELUK NIBUNG', 'TELUK NIBUNG');
INSERT INTO kantor VALUES ('011131', 'POS TANJUNG TIRAM', '');
INSERT INTO kantor VALUES ('011134', 'POS LEIDONG', '');
INSERT INTO kantor VALUES ('011135', 'POS LABUHAN BILIK', '');
INSERT INTO kantor VALUES ('011137', 'POS RANTAU PRAPAT', '');
INSERT INTO kantor VALUES ('011138', 'POS TELUK NIBUNG', '');
INSERT INTO kantor VALUES ('011200', 'KANTOR PELAYANAN KUALA TANJUNG', 'KUALA TANJUNG');
INSERT INTO kantor VALUES ('011211', 'KANTOR BANTU TEBING TINGGI', 'TEBING TINGGI');
INSERT INTO kantor VALUES ('011231', 'POS BANDAR KHALIPAH', '');
INSERT INTO kantor VALUES ('011232', 'POS TELUK MENGKUDU', '');
INSERT INTO kantor VALUES ('011233', 'POS TANJUNG BERINGIN', '');
INSERT INTO kantor VALUES ('011234', 'POS PANGKALAN DODEK', '');
INSERT INTO kantor VALUES ('011235', 'POS KUALA TANJUNG', '');
INSERT INTO kantor VALUES ('011300', 'KANTOR PELAYANAN SIBOLGA', 'SIBOLGA');
INSERT INTO kantor VALUES ('011311', 'KANTOR BANTU GUNUNG SITOLI', '');
INSERT INTO kantor VALUES ('011331', 'POS BARUS', '');
INSERT INTO kantor VALUES ('011332', 'POS NATAL', '');
INSERT INTO kantor VALUES ('011334', 'POS TELUK DALAM', '');
INSERT INTO kantor VALUES ('011336', 'POS PULAU TELLO', '');
INSERT INTO kantor VALUES ('011340', 'POS SIBOLGA', '');
INSERT INTO kantor VALUES ('011500', 'KANTOR PELAYANAN TELUK BAYUR', 'TELUK BAYUR');
INSERT INTO kantor VALUES ('011511', 'KANTOR BANTU SIKAKAP', '');
INSERT INTO kantor VALUES ('011514', 'KANTOR BANTU TUA PEJAT', '');
INSERT INTO kantor VALUES ('011531', 'POS MUARA PADANG', '');
INSERT INTO kantor VALUES ('011534', 'POS SIBERUT MENTAWAI', '');
INSERT INTO kantor VALUES ('011537', 'POS PARIAMAN', '');
INSERT INTO kantor VALUES ('011539', 'POS PAINAN', '');
INSERT INTO kantor VALUES ('011540', 'POS MUARO', '');
INSERT INTO kantor VALUES ('011543', 'POS TELUK BAYUR', '');
INSERT INTO kantor VALUES ('011544', 'POS CUBADAK', '');
INSERT INTO kantor VALUES ('011545', 'POS AIR BANGIS', '');
INSERT INTO kantor VALUES ('011546', 'POS BUNGUS', '');
INSERT INTO kantor VALUES ('011547', 'POS BANDARA TABING', '');
INSERT INTO kantor VALUES ('020000', 'KANTOR WILAYAH II TANJUNG BALAI KARIMUN', 'TG. BALAI KARIMUN');
INSERT INTO kantor VALUES ('020100', 'KANTOR PELAYANAN TANJUNG BALAI KARIMUN', 'TG. BALAI KARIMUN');
INSERT INTO kantor VALUES ('020101', 'PANGKALAN SARANA OPERASI TANJUNG BALAI KARIMUN', '');
INSERT INTO kantor VALUES ('020112', 'KANTOR BANTU TELUK PAKU', '');
INSERT INTO kantor VALUES ('020131', 'KANTOR BANTU MORO SULIT', '');
INSERT INTO kantor VALUES ('020132', 'KANTOR BANTU TANJUNG BATU', '');
INSERT INTO kantor VALUES ('020133', 'POS SAWANG', '');
INSERT INTO kantor VALUES ('020134', 'POS URUNG', '');
INSERT INTO kantor VALUES ('020136', 'POS TANJUNG BALAI KARIMUN', '');
INSERT INTO kantor VALUES ('020137', 'POS PASIR PANJANG', '');
INSERT INTO kantor VALUES ('020200', 'KANTOR PELAYANAN SAMBU BELAKANG PADANG', 'SAMBU BLK. PADANG');
INSERT INTO kantor VALUES ('020231', 'POS PULAU LAYANG', '');
INSERT INTO kantor VALUES ('020232', 'POS PULAU PELAMPUNG', '');
INSERT INTO kantor VALUES ('020233', 'POS SUMBU BELAKANG PADANG', '');
INSERT INTO kantor VALUES ('020300', 'KANTOR PELAYANAN SELAT PANJANG', 'SELAT PANJANG');
INSERT INTO kantor VALUES ('020331', 'POS TANJUNG SAMAK', '');
INSERT INTO kantor VALUES ('020332', 'POS TELUK BELITUNG', '');
INSERT INTO kantor VALUES ('020333', 'POS TERUS', '');
INSERT INTO kantor VALUES ('020336', 'POS TANJUNG KEDABU', '');
INSERT INTO kantor VALUES ('020337', 'POS PENYALAI', '');
INSERT INTO kantor VALUES ('020338', 'POS SELAT PANJANG', '');
INSERT INTO kantor VALUES ('020339', 'POS TANJUNG MOTONG', '');
INSERT INTO kantor VALUES ('020340', 'POS SERAPUNG', '');
INSERT INTO kantor VALUES ('020400', 'KANTOR PELAYANAN BATAM', 'BATAM');
INSERT INTO kantor VALUES ('020411', 'KANTOR BANTU PULAU REMPANG', '');
INSERT INTO kantor VALUES ('020412', 'KANTOR BANTU PULAU GALANG', '');
INSERT INTO kantor VALUES ('020431', 'POS PULAU BULUH', '');
INSERT INTO kantor VALUES ('020432', 'POS TANJUNG RIAU', '');
INSERT INTO kantor VALUES ('020433', 'POS TANJUNG UNCANG', '');
INSERT INTO kantor VALUES ('020434', 'POS TANJUNG PIAYU', '');
INSERT INTO kantor VALUES ('020435', 'POS BATU BESAR PANTAI', '');
INSERT INTO kantor VALUES ('020436', 'POS SEI JODOH', '');
INSERT INTO kantor VALUES ('020437', 'POS MOMOI', '');
INSERT INTO kantor VALUES ('020438', 'POS TANJUNG SAU', '');
INSERT INTO kantor VALUES ('020439', 'POS PULAU NGENANG', '');
INSERT INTO kantor VALUES ('020440', 'POS JANDA BERHIAS', '');
INSERT INTO kantor VALUES ('020441', 'POS TANJUNG KASEM', '');
INSERT INTO kantor VALUES ('020442', 'POS TELAGA PUNGGUR', '');
INSERT INTO kantor VALUES ('020443', 'POS NONGSA', '');
INSERT INTO kantor VALUES ('020444', 'POS SAGULUNG', '');
INSERT INTO kantor VALUES ('020445', 'POS BATU AMPAR  I', '');
INSERT INTO kantor VALUES ('020446', 'POS BATU AMPAR  II', '');
INSERT INTO kantor VALUES ('020447', 'POS BANDARA  I', '');
INSERT INTO kantor VALUES ('020448', 'POS BANDARA  II', '');
INSERT INTO kantor VALUES ('020449', 'POS MACOBAR', '');
INSERT INTO kantor VALUES ('020450', 'POS KABIL', '');
INSERT INTO kantor VALUES ('020453', 'POS SEKUPANG', '');
INSERT INTO kantor VALUES ('020455', 'POS TANJUNG REMPANG', '');
INSERT INTO kantor VALUES ('020456', 'POS TANJUNG SIPATUNG', '');
INSERT INTO kantor VALUES ('020457', 'POS TANJUNG KAREPA', '');
INSERT INTO kantor VALUES ('020458', 'POS POKOB BARAT', '');
INSERT INTO kantor VALUES ('020459', 'POS TANJUNG CAKANG', '');
INSERT INTO kantor VALUES ('020500', 'KANTOR PELAYANAN TANJUNG PINANG', 'TANJUNG PINANG');
INSERT INTO kantor VALUES ('020536', 'POS TANJUNG PINANG', '');
INSERT INTO kantor VALUES ('020537', 'POS BANDARA KIJANG', '');
INSERT INTO kantor VALUES ('020538', 'POS PELABUHAN KIJANG', '');
INSERT INTO kantor VALUES ('020600', 'KANTOR PELAYANAN TANJUNG UBAN', 'TANJUNG UBAN');
INSERT INTO kantor VALUES ('020632', 'POS TANJUNG UBAN', '');
INSERT INTO kantor VALUES ('020633', 'POS LAGOI', '');
INSERT INTO kantor VALUES ('020634', 'POS LOBAM', '');
INSERT INTO kantor VALUES ('020800', 'KANTOR PELAYANAN DABO SINGKEP', 'DABO SINGKEP');
INSERT INTO kantor VALUES ('020831', 'POS PENUBA', '');
INSERT INTO kantor VALUES ('020832', 'POS SUNGAI BULUH', '');
INSERT INTO kantor VALUES ('020833', 'POS SENAYANG', '');
INSERT INTO kantor VALUES ('020834', 'POS  DAIK', '');
INSERT INTO kantor VALUES ('020835', 'POS BANDARA DABO', '');
INSERT INTO kantor VALUES ('020836', 'POS DABO SINGKEP', '');
INSERT INTO kantor VALUES ('020900', 'KANTOR PELAYANAN DUMAI', 'DUMAI');
INSERT INTO kantor VALUES ('020911', 'KANTOR BANTU TANJUNG MEDANG', '');
INSERT INTO kantor VALUES ('020931', 'POS SELAT MORONG', '');
INSERT INTO kantor VALUES ('020932', 'POS TANAH PUTIH', '');
INSERT INTO kantor VALUES ('020933', 'POS DUMAI', '');
INSERT INTO kantor VALUES ('020934', 'POS TANJUNG MEDANG', '');
INSERT INTO kantor VALUES ('021000', 'KANTOR PELAYANAN BAGAN SIAPI-API', 'BAGAN SIAPI-API');
INSERT INTO kantor VALUES ('021011', 'KANTOR BANTU PENIPAHAN', '');
INSERT INTO kantor VALUES ('021032', 'POS SINABOI', '');
INSERT INTO kantor VALUES ('021033', 'POS LUMBA-LUMBA', '');
INSERT INTO kantor VALUES ('021034', 'POS PULAU HALANG', '');
INSERT INTO kantor VALUES ('021035', 'POS BAGAN SIAPI-API', '');
INSERT INTO kantor VALUES ('021100', 'KANTOR PELAYANAN BENGKALIS', 'BENGKALIS');
INSERT INTO kantor VALUES ('021111', 'KANTOR BANTU SUNGAI PAKNING', '');
INSERT INTO kantor VALUES ('021112', 'KANTOR BANTU BANTAN TENGAH', '');
INSERT INTO kantor VALUES ('021131', 'POS SIAK KECIL', '');
INSERT INTO kantor VALUES ('021132', 'POS SEI KEMBUNG', '');
INSERT INTO kantor VALUES ('021133', 'POS BANDUL', '');
INSERT INTO kantor VALUES ('021134', 'POS BUKIT BATU', '');
INSERT INTO kantor VALUES ('021136', 'POS PRAPAT TUNGGAL', '');
INSERT INTO kantor VALUES ('021137', 'POS BENGKALIS', '');
INSERT INTO kantor VALUES ('021200', 'KANTOR PELAYANAN PEKANBARU', 'PEKANBARU');
INSERT INTO kantor VALUES ('021211', 'KANTOR BANTU PERAWANG', '');
INSERT INTO kantor VALUES ('021212', 'KANTOR BANTU RUMBAI', '');
INSERT INTO kantor VALUES ('021213', 'KANTOR BANTU RANTAU PANJANG', '');
INSERT INTO kantor VALUES ('021231', 'POS BANDARA I', '');
INSERT INTO kantor VALUES ('021232', 'POS BANDARA II', '');
INSERT INTO kantor VALUES ('021233', 'POS BUATAN', '');
INSERT INTO kantor VALUES ('021300', 'KANTOR PELAYANAN SIAK SRI INDRAPURA', 'SIAK SRI INDRAPURA');
INSERT INTO kantor VALUES ('021331', 'POS SUNGAI APIT', '');
INSERT INTO kantor VALUES ('021333', 'POS TANJUNG BUTON', '');
INSERT INTO kantor VALUES ('021334', 'POS SIAK SRI INDRA PURA', '');
INSERT INTO kantor VALUES ('021500', 'KANTOR PELAYANAN KUALA ENOK', 'KUALA ENOK');
INSERT INTO kantor VALUES ('021511', 'KANTOR BANTU SUNGAI GUNTUNG', '');
INSERT INTO kantor VALUES ('021513', 'KANTOR BANTU RENGAT', '');
INSERT INTO kantor VALUES ('021531', 'POS PERIGI RAJA', '');
INSERT INTO kantor VALUES ('021532', 'POS CONCONG LUAR', '');
INSERT INTO kantor VALUES ('021533', 'POS SEI BULUH, INDRAGIRI', '');
INSERT INTO kantor VALUES ('021534', 'POS PULAU KIJANG', '');
INSERT INTO kantor VALUES ('021535', 'POS KUALA GADUNG', '');
INSERT INTO kantor VALUES ('021536', 'POS KUALA BLARAS', '');
INSERT INTO kantor VALUES ('021538', 'POS KUALA ENOK', '');
INSERT INTO kantor VALUES ('021543', 'POS KUALACINAKU', '');
INSERT INTO kantor VALUES ('021544', 'POS BANDARA JAPURA', '');
INSERT INTO kantor VALUES ('021545', 'POS PULAU CAWAN', '');
INSERT INTO kantor VALUES ('021546', 'POS KUALA BAYAS', '');
INSERT INTO kantor VALUES ('021547', 'POS PULAU BURUNG', '');
INSERT INTO kantor VALUES ('021700', 'KANTOR PELAYANAN RANAI', '');
INSERT INTO kantor VALUES ('021711', 'KANTOR BANTU TAREMPA', '');
INSERT INTO kantor VALUES ('021731', 'POS UDANG NATUNA', '');
INSERT INTO kantor VALUES ('021732', 'POS MATAK', '');
INSERT INTO kantor VALUES ('021733', 'POS SERASAN', '');
INSERT INTO kantor VALUES ('021734', 'POS MIDAI', '');
INSERT INTO kantor VALUES ('021735', 'POS TAMBELAN', '');
INSERT INTO kantor VALUES ('021736', 'POS JEMAJA', '');
INSERT INTO kantor VALUES ('021737', 'POS BUNGURAN BARAT', '');
INSERT INTO kantor VALUES ('021738', 'POS BUNGURAN TIMUR', '');
INSERT INTO kantor VALUES ('030000', 'KANTOR WILAYAH III PALEMBANG', 'PALEMBANG');
INSERT INTO kantor VALUES ('030100', 'KANTOR PELAYANAN PALEMBANG', 'PALEMBANG');
INSERT INTO kantor VALUES ('030131', 'POS TANJUNG BUYUT', '');
INSERT INTO kantor VALUES ('030134', 'POS MUARAENIM', '');
INSERT INTO kantor VALUES ('030135', 'POS SEKAYU', '');
INSERT INTO kantor VALUES ('030136', 'POS LUBUKLINGGAU', '');
INSERT INTO kantor VALUES ('030138', 'POS BATURAJA', '');
INSERT INTO kantor VALUES ('030139', 'POS PALEMBANG', '');
INSERT INTO kantor VALUES ('030140', 'POS PLAJU', '');
INSERT INTO kantor VALUES ('030141', 'POS SUNGAI GERONG', '');
INSERT INTO kantor VALUES ('030142', 'POS KERTAPATI', '');
INSERT INTO kantor VALUES ('030143', 'POS PUSRI', '');
INSERT INTO kantor VALUES ('030144', 'POS BANDARA S. BADARUDIN II', '');
INSERT INTO kantor VALUES ('030200', 'KANTOR PELAYANAN BENGKULU', 'PULAU BAAI');
INSERT INTO kantor VALUES ('030231', 'POS LINAU', '');
INSERT INTO kantor VALUES ('030232', 'POS MUKO-MUKO', '');
INSERT INTO kantor VALUES ('030233', 'POS PULAU ENGGANO', '');
INSERT INTO kantor VALUES ('030235', 'POS P.BAI', '');
INSERT INTO kantor VALUES ('030237', 'POS BANDARA PADANG KEMILANG', '');
INSERT INTO kantor VALUES ('030300', 'KANTOR PELAYANAN PANGKAL PINANG', 'PANGKAL BALAM');
INSERT INTO kantor VALUES ('030311', 'KANTOR BANTU BELINYU', '');
INSERT INTO kantor VALUES ('030312', 'KANTOR BANTU MUNTOK', '');
INSERT INTO kantor VALUES ('030332', 'POS KURAU', '');
INSERT INTO kantor VALUES ('030333', 'POS SUNGAI LIAT', '');
INSERT INTO kantor VALUES ('030334', 'POS LUBUK BESAR', '');
INSERT INTO kantor VALUES ('030335', 'POS SUNGAI SELAN', '');
INSERT INTO kantor VALUES ('030337', 'POS PANGKAL BALAM', '');
INSERT INTO kantor VALUES ('030338', 'POS TOBOALI', '');
INSERT INTO kantor VALUES ('030339', 'POS AIR ITAM', '');
INSERT INTO kantor VALUES ('030340', 'POS DEPATI AMIR BANGKA', '');
INSERT INTO kantor VALUES ('030341', 'POS JEBUS', '');
INSERT INTO kantor VALUES ('030342', 'POS KAYU ARANG', '');
INSERT INTO kantor VALUES ('030343', 'POS TEMPILANG', '');
INSERT INTO kantor VALUES ('030344', 'POS MUNTOK', '');
INSERT INTO kantor VALUES ('030500', 'KANTOR PELAYANAN TANJUNG PANDAN', 'TANJUNG PANDAN');
INSERT INTO kantor VALUES ('030511', 'KANTOR BANTU MANGGAR', '');
INSERT INTO kantor VALUES ('030535', 'POS TANJUNG PANDAN', '');
INSERT INTO kantor VALUES ('030537', 'POS KAMPIT', '');
INSERT INTO kantor VALUES ('030538', 'POS BANDARA H. AS. HANANDJOEDDIN BELITUNG', '');
INSERT INTO kantor VALUES ('030600', 'KANTOR PELAYANAN JAMBI', 'JAMBI');
INSERT INTO kantor VALUES ('030611', 'KANTOR BANTU KUALA TUNGKAL', '');
INSERT INTO kantor VALUES ('030612', 'KANTOR BANTU MUARA SABAK', '');
INSERT INTO kantor VALUES ('030631', 'POS PANGKAL DURI', '');
INSERT INTO kantor VALUES ('030632', 'POS SIMBUR NAIR', '');
INSERT INTO kantor VALUES ('030633', 'POS KUALA MENDAHARA', '');
INSERT INTO kantor VALUES ('030634', 'POS KAMPUNG LAUT', '');
INSERT INTO kantor VALUES ('030635', 'POS NIPAH PANJANG', '');
INSERT INTO kantor VALUES ('030636', 'POS JAMBI', '');
INSERT INTO kantor VALUES ('030637', 'POS KUALA TUNGKAL', '');
INSERT INTO kantor VALUES ('030700', 'KANTOR PELAYANAN BANDAR LAMPUNG', 'PANJANG');
INSERT INTO kantor VALUES ('030712', 'KANTOR BANTU KOTA AGUNG', '');
INSERT INTO kantor VALUES ('030735', 'POS KALIANDA', '');
INSERT INTO kantor VALUES ('030736', 'POS PUTIH MATARAM', '');
INSERT INTO kantor VALUES ('030739', 'POS WAY SEPUTIH', '');
INSERT INTO kantor VALUES ('030744', 'POS BAKAUHENI', '');
INSERT INTO kantor VALUES ('030745', 'POS DIPASENA', '');
INSERT INTO kantor VALUES ('030746', 'POS BRATASENA', '');
INSERT INTO kantor VALUES ('030747', 'POS BANDARA RADIN INTEN', '');
INSERT INTO kantor VALUES ('040000', 'KANTOR WILAYAH IV JAKARTA', 'JAKARTA');
INSERT INTO kantor VALUES ('040100', 'KANTOR PELAYANAN TANJUNG PRIOK I', 'JAKARTA');
INSERT INTO kantor VALUES ('040101', 'PANGKALAN SARANA OPERASI TANJUNG PRIOK', '');
INSERT INTO kantor VALUES ('040111', 'KANTOR BANTU SUNDA KELAPA', '');
INSERT INTO kantor VALUES ('040138', 'POS UTAMA E', '');
INSERT INTO kantor VALUES ('040142', 'POS UTPK II', '');
INSERT INTO kantor VALUES ('040143', 'POS SUNDA KELAPA', '');
INSERT INTO kantor VALUES ('040145', 'POS WIDURI', '');
INSERT INTO kantor VALUES ('040146', 'POS ARJUNA', '');
INSERT INTO kantor VALUES ('040147', 'POS CINTA NATOMAR', '');
INSERT INTO kantor VALUES ('040148', 'POS KBN', '');
INSERT INTO kantor VALUES ('040149', 'POS NUSANTARA I (002)', '');
INSERT INTO kantor VALUES ('040150', 'POS NUSANTARA II (005)', '');
INSERT INTO kantor VALUES ('040151', 'POS 009 X', '');
INSERT INTO kantor VALUES ('040152', 'POS ARSA', '');
INSERT INTO kantor VALUES ('040153', 'PELAB. PELNI BARAT (POS 104)', '');
INSERT INTO kantor VALUES ('040154', 'TERMINAL PENUMPANG', '');
INSERT INTO kantor VALUES ('040155', 'POS LAPANGAN 207X', '');
INSERT INTO kantor VALUES ('040156', 'POS BANTU KADE 301/302', '');
INSERT INTO kantor VALUES ('040157', 'POS KADE 209/210', '');
INSERT INTO kantor VALUES ('040158', 'BANDA', '');
INSERT INTO kantor VALUES ('040159', 'MARINA ANCOL', '');
INSERT INTO kantor VALUES ('040160', 'MUARA BARU', '');
INSERT INTO kantor VALUES ('040200', 'KANTOR PELAYANAN TANJUNG PRIOK II', 'JAKARTA');
INSERT INTO kantor VALUES ('040241', 'POS UTPK I (EKSPOR)', '');
INSERT INTO kantor VALUES ('040242', 'POS UTPK I (IMPOR)', '');
INSERT INTO kantor VALUES ('040245', 'POS BEA CUKAI 305', '');
INSERT INTO kantor VALUES ('040246', 'POS BITUNG UTAMA A', '');
INSERT INTO kantor VALUES ('040247', 'POS BITUNG UTAMA B', '');
INSERT INTO kantor VALUES ('040300', 'KANTOR PELAYANAN TANJUNG PRIOK III', 'JAKARTA');
INSERT INTO kantor VALUES ('040333', 'POS DWIPA I', '');
INSERT INTO kantor VALUES ('040334', 'POS DWIPA II', '');
INSERT INTO kantor VALUES ('040335', 'POS UTPK KOJA I', '');
INSERT INTO kantor VALUES ('040337', 'AGUNG RAYA', '');
INSERT INTO kantor VALUES ('040338', 'POS CILINCING', '');
INSERT INTO kantor VALUES ('040339', 'POS PERTAMINA', '');
INSERT INTO kantor VALUES ('040340', 'POS BOGASARI', '');
INSERT INTO kantor VALUES ('040341', 'POS MARUNDA', '');
INSERT INTO kantor VALUES ('040342', 'DHARMA KARYA PERDANA', '');
INSERT INTO kantor VALUES ('040343', 'KALIBARU', '');
INSERT INTO kantor VALUES ('040400', 'KANTOR PELAYANAN JAKARTA', 'JAKARTA');
INSERT INTO kantor VALUES ('040432', 'POS UDARA HALIM PERDANA KUSUMA', '');
INSERT INTO kantor VALUES ('040600', 'KANTOR PELAYANAN KANTOR POS PASAR BARU', 'JAKARTA');
INSERT INTO kantor VALUES ('050000', 'KANTOR WILAYAH JAWA BARAT', 'BANDUNG');
INSERT INTO kantor VALUES ('050100', 'KANTOR PELAYANAN SUKARNO-HATTA', 'CENGKARENG');
INSERT INTO kantor VALUES ('050132', 'POS TANGERANG', '');
INSERT INTO kantor VALUES ('050134', 'POS BANDARA I', '');
INSERT INTO kantor VALUES ('050135', 'POS BANDARA II', '');
INSERT INTO kantor VALUES ('050136', 'POS BANDARA III', '');
INSERT INTO kantor VALUES ('050300', 'KANTOR PELAYANAN BOGOR', 'BOGOR');
INSERT INTO kantor VALUES ('050331', 'POS SUKABUMI', 'SUKABUMI');
INSERT INTO kantor VALUES ('050336', 'POS PEL. RATU', '');
INSERT INTO kantor VALUES ('050337', 'POS DEPOK', '');
INSERT INTO kantor VALUES ('050338', 'POS CIANJUR', '');
INSERT INTO kantor VALUES ('050339', 'POS CIBINONG', '');
INSERT INTO kantor VALUES ('050400', 'KANTOR PELAYANAN MERAK', 'MERAK');
INSERT INTO kantor VALUES ('050437', 'POS MERAK', '');
INSERT INTO kantor VALUES ('050439', 'POS TANJUNG LENENG', '');
INSERT INTO kantor VALUES ('050440', 'POS CIGADING', '');
INSERT INTO kantor VALUES ('050441', 'POS CHANDRA ASRI', '');
INSERT INTO kantor VALUES ('050442', 'POS CIWANDAN', '');
INSERT INTO kantor VALUES ('050500', 'KANTOR PELAYANAN BANDUNG', 'BANDUNG');
INSERT INTO kantor VALUES ('050531', 'POS SUMEDANG', '');
INSERT INTO kantor VALUES ('050535', 'POS GEDE BAGE', '');
INSERT INTO kantor VALUES ('050536', 'POS BANDARA I', '');
INSERT INTO kantor VALUES ('050537', 'POS BANDARA II', '');
INSERT INTO kantor VALUES ('050600', 'KANTOR PELAYANAN TASIKMALAYA', 'TASIKMALAYA');
INSERT INTO kantor VALUES ('050631', 'POS GARUT', '');
INSERT INTO kantor VALUES ('050632', 'POS CIAMIS', '');
INSERT INTO kantor VALUES ('050633', 'POS PANGANDARAN', '');
INSERT INTO kantor VALUES ('050634', 'POS TASIKMALAYA', '');
INSERT INTO kantor VALUES ('050700', 'KANTOR PELAYANAN CIREBON', 'CIREBON');
INSERT INTO kantor VALUES ('050711', 'KANTOR BANTU BALONGAN', '');
INSERT INTO kantor VALUES ('050745', 'POS CIREBON', '');
INSERT INTO kantor VALUES ('050746', 'POS NASA SARI ACID', '');
INSERT INTO kantor VALUES ('050747', 'POS PALIMANAN', '');
INSERT INTO kantor VALUES ('050800', 'KPPBC TIPE A2 PURWAKARTA', 'PURWAKARTA');
INSERT INTO kantor VALUES ('050833', 'POS PURWAKARTA', '');
INSERT INTO kantor VALUES ('050834', 'POS SUBANG', '');
INSERT INTO kantor VALUES ('050836', 'POS CILAMAYA', '');
INSERT INTO kantor VALUES ('050900', 'KANTOR PELAYANAN BEKASI', 'BEKASI');
INSERT INTO kantor VALUES ('060000', 'KANTOR WILAYAH VI SEMARANG', 'SEMARANG');
INSERT INTO kantor VALUES ('060100', 'KANTOR PELAYANAN TANJUNG EMAS', 'SEMARANG');
INSERT INTO kantor VALUES ('060133', 'POS DEMAK', '');
INSERT INTO kantor VALUES ('060134', 'POS PURWODADI', '');
INSERT INTO kantor VALUES ('060135', 'POS SALATIGA', '');
INSERT INTO kantor VALUES ('060136', 'POS TANJUNG EMAS I', '');
INSERT INTO kantor VALUES ('060137', 'POS TANJUNG EMAS II', '');
INSERT INTO kantor VALUES ('060138', 'POS TANJUNG EMAS III', '');
INSERT INTO kantor VALUES ('060139', 'POS BANDARA I', '');
INSERT INTO kantor VALUES ('060140', 'POS BANDARA II', '');
INSERT INTO kantor VALUES ('060141', 'POS KALIWUNGU', '');
INSERT INTO kantor VALUES ('060143', 'POS LIK SEMARANG', '');
INSERT INTO kantor VALUES ('060200', 'KANTOR PELAYANAN PEKALONGAN', 'PEKALONGAN');
INSERT INTO kantor VALUES ('060235', 'POS BATANG', '');
INSERT INTO kantor VALUES ('060236', 'POS PEKALONGAN', '');
INSERT INTO kantor VALUES ('060300', 'KANTOR PELAYANAN KUDUS', 'KUDUS');
INSERT INTO kantor VALUES ('060311', 'KANTOR BANTU JUWONO', '');
INSERT INTO kantor VALUES ('060312', 'KANTOR BANTU JEPARA', '');
INSERT INTO kantor VALUES ('060332', 'POS BANYUTOWO', '');
INSERT INTO kantor VALUES ('060333', 'POS REMBANG', 'REMBANG');
INSERT INTO kantor VALUES ('060334', 'POS CEPU', 'CEPU');
INSERT INTO kantor VALUES ('060338', 'POS BLORA', '');
INSERT INTO kantor VALUES ('060339', 'POS KARIMUN JAWA', '');
INSERT INTO kantor VALUES ('060400', 'KANTOR PELAYANAN CILACAP', 'CILACAP');
INSERT INTO kantor VALUES ('060412', 'KANTOR BANTU PURWOKERTO', '');
INSERT INTO kantor VALUES ('060413', 'KANTOR BANTU KEBUMEN', '');
INSERT INTO kantor VALUES ('060431', 'POS BANDARA TUNGGUL WULUNG', '');
INSERT INTO kantor VALUES ('060433', 'POS MAJENANG', '');
INSERT INTO kantor VALUES ('060434', 'POS TANJUNG INTAN', '');
INSERT INTO kantor VALUES ('060435', 'POS PURBALINGGA', '');
INSERT INTO kantor VALUES ('060436', 'POS BANJARNEGARA', '');
INSERT INTO kantor VALUES ('060437', 'POS PURWOREJO', '');
INSERT INTO kantor VALUES ('060600', 'KANTOR PELAYANAN SURAKARTA', 'SURAKARTA');
INSERT INTO kantor VALUES ('060637', 'POS KEBAK KRAMAT', '');
INSERT INTO kantor VALUES ('060638', 'POS KLATEN', '');
INSERT INTO kantor VALUES ('060639', 'POS KARANGANYAR', '');
INSERT INTO kantor VALUES ('060640', 'POS SRAGEN', '');
INSERT INTO kantor VALUES ('060641', 'POS SUKOHARDJO', '');
INSERT INTO kantor VALUES ('060642', 'POS WONOGIRI', '');
INSERT INTO kantor VALUES ('060643', 'POS BOYOLALI', '');
INSERT INTO kantor VALUES ('060644', 'POS JEBRES', '');
INSERT INTO kantor VALUES ('060645', 'POS BANDARA I', '');
INSERT INTO kantor VALUES ('060646', 'POS BANDARA II', '');
INSERT INTO kantor VALUES ('060700', 'KANTOR PELAYANAN YOGYAKARTA', 'YOGYAKARTA');
INSERT INTO kantor VALUES ('060711', 'KANTOR BANTU MAGELANG', '');
INSERT INTO kantor VALUES ('060732', 'POS SLEMAN', '');
INSERT INTO kantor VALUES ('060733', 'POS WATES', '');
INSERT INTO kantor VALUES ('060734', 'POS BANTUL', '');
INSERT INTO kantor VALUES ('060735', 'POS WONOSARI', '');
INSERT INTO kantor VALUES ('060736', 'POS BANDARA I', '');
INSERT INTO kantor VALUES ('060737', 'POS BANDARA II', '');
INSERT INTO kantor VALUES ('060738', 'POS TEMANGGUNG', '');
INSERT INTO kantor VALUES ('060739', 'POS WONOSOBO', '');
INSERT INTO kantor VALUES ('061000', 'KANTOR PELAYANAN TEGAL', 'TEGAL');
INSERT INTO kantor VALUES ('061035', 'POS BREBES', 'BREBES');
INSERT INTO kantor VALUES ('061036', 'POS PEMALANG', '');
INSERT INTO kantor VALUES ('061037', 'POS SLAWI', '');
INSERT INTO kantor VALUES ('061038', 'POS COMAL', '');
INSERT INTO kantor VALUES ('061039', 'POS SURODADI', '');
INSERT INTO kantor VALUES ('061040', 'POS TEGAL', '');
INSERT INTO kantor VALUES ('061041', 'POS SUGIH WARAS', '');
INSERT INTO kantor VALUES ('070000', 'KANTOR WILAYAH VII SURABAYA', 'SURABAYA');
INSERT INTO kantor VALUES ('070100', 'KANTOR PELAYANAN TANJUNG PERAK', 'SURABAYA');
INSERT INTO kantor VALUES ('070134', 'POS ICT I', '');
INSERT INTO kantor VALUES ('070135', 'POS ICT II', '');
INSERT INTO kantor VALUES ('070136', 'POS NILAM I', '');
INSERT INTO kantor VALUES ('070137', 'POS NILAM II', '');
INSERT INTO kantor VALUES ('070138', 'POS BERLIAN I', '');
INSERT INTO kantor VALUES ('070139', 'POS BERLIAN II', '');
INSERT INTO kantor VALUES ('070140', 'POS MIRAH I', '');
INSERT INTO kantor VALUES ('070141', 'POS MIRAH II', '');
INSERT INTO kantor VALUES ('070142', 'POS JAMRUD I', '');
INSERT INTO kantor VALUES ('070143', 'POS JAMRUD II', '');
INSERT INTO kantor VALUES ('070144', 'POS ICT III', '');
INSERT INTO kantor VALUES ('070145', 'POS ICT IV', '');
INSERT INTO kantor VALUES ('070200', 'KANTOR PELAYANAN KALIANGET', 'KALIANGET');
INSERT INTO kantor VALUES ('070201', 'BALAI PENGUJIAN DAN IDENTIFIKASI BARANG SURABAYA', '');
INSERT INTO kantor VALUES ('070233', 'POS PASEAN', '');
INSERT INTO kantor VALUES ('070234', 'POS SAMPANG', 'SAMPANG');
INSERT INTO kantor VALUES ('070236', 'POS BONGKEK', '');
INSERT INTO kantor VALUES ('070239', 'POS SAPUDI', '');
INSERT INTO kantor VALUES ('070240', 'POS KANGEAN', '');
INSERT INTO kantor VALUES ('070243', 'POS BRANTA', '');
INSERT INTO kantor VALUES ('070244', 'POS BANDARA TRUNOJOYO', '');
INSERT INTO kantor VALUES ('070245', 'POS KALIANGET', '');
INSERT INTO kantor VALUES ('070246', 'POS TELAGA BIRU', '');
INSERT INTO kantor VALUES ('070247', 'POS PAGERUNGAN', '');
INSERT INTO kantor VALUES ('070300', 'KANTOR PELAYANAN GRESIK', 'GRESIK');
INSERT INTO kantor VALUES ('070331', 'POS TAMBAK', '');
INSERT INTO kantor VALUES ('070332', 'POS SEDAYULAWAS', '');
INSERT INTO kantor VALUES ('070334', 'POS LAMONGAN', '');
INSERT INTO kantor VALUES ('070335', 'POS GRESIK', '');
INSERT INTO kantor VALUES ('070336', 'POS POLENG', '');
INSERT INTO kantor VALUES ('070337', 'POS SANGKA PURA', '');
INSERT INTO kantor VALUES ('070338', 'POS NGIMBOH', '');
INSERT INTO kantor VALUES ('070400', 'KANTOR PELAYANAN BOJONEGORO', 'BOJONEGORO');
INSERT INTO kantor VALUES ('070431', 'POS GLONDONG', '');
INSERT INTO kantor VALUES ('070432', 'POS SOCOREJO-JENU', '');
INSERT INTO kantor VALUES ('070433', 'POS TUBAN', '');
INSERT INTO kantor VALUES ('070500', 'KANTOR PELAYANAN JUANDA', 'SURABAYA');
INSERT INTO kantor VALUES ('070531', 'POS MOJOKERTO', 'MOJOKERTO');
INSERT INTO kantor VALUES ('070533', 'POS SIDOARJO', 'SIDOARJO');
INSERT INTO kantor VALUES ('070539', 'POS BANDARA I', '');
INSERT INTO kantor VALUES ('070540', 'POS BANDARA II', '');
INSERT INTO kantor VALUES ('070541', 'POS BANDARA III', '');
INSERT INTO kantor VALUES ('070543', 'POS WATES', '');
INSERT INTO kantor VALUES ('070600', 'KANTOR PELAYANAN MALANG', 'MALANG');
INSERT INTO kantor VALUES ('070634', 'POS SENDANG BIRU', '');
INSERT INTO kantor VALUES ('070635', 'POS BANDARA ABDULRACHMAN SALEH', '');
INSERT INTO kantor VALUES ('070700', 'KANTOR PELAYANAN BLITAR', 'BLITAR');
INSERT INTO kantor VALUES ('070800', 'KANTOR PELAYANAN KEDIRI', 'KEDIRI');
INSERT INTO kantor VALUES ('070831', 'POS NGANJUK', 'NGANJUK');
INSERT INTO kantor VALUES ('070833', 'POS KERTOSONO', 'KERTOSONO');
INSERT INTO kantor VALUES ('070834', 'POS CUKIR', '');
INSERT INTO kantor VALUES ('070835', 'POS JOMBANG', 'JOMBANG');
INSERT INTO kantor VALUES ('070900', 'KANTOR PELAYANAN TULUNGAGUNG', 'TULUNGAGUNG');
INSERT INTO kantor VALUES ('070932', 'POS POPOH', '');
INSERT INTO kantor VALUES ('071000', 'KANTOR PELAYANAN MADIUN', 'MADIUN');
INSERT INTO kantor VALUES ('071031', 'POS MAGETAN', 'MAGETAN');
INSERT INTO kantor VALUES ('071032', 'POS NGAWI', 'NGAWI');
INSERT INTO kantor VALUES ('071033', 'POS PONOROGO', 'PONOROGO');
INSERT INTO kantor VALUES ('071034', 'POS CARUBAN', 'CARUBAN');
INSERT INTO kantor VALUES ('071035', 'POS PACITAN', 'PACITAN');
INSERT INTO kantor VALUES ('071100', 'KANTOR PELAYANAN PANARUKAN', 'PANARUKAN');
INSERT INTO kantor VALUES ('071112', 'KANTOR BANTU TANJUNG WANGI', '');
INSERT INTO kantor VALUES ('071132', 'POS JEMBER', 'JEMBER');
INSERT INTO kantor VALUES ('071134', 'POS SITUBONDO', 'SITUBONDO');
INSERT INTO kantor VALUES ('071135', 'POS BESUKI', '');
INSERT INTO kantor VALUES ('071136', 'POS KALBUT', '');
INSERT INTO kantor VALUES ('071137', 'POS JANGKAR', '');
INSERT INTO kantor VALUES ('071138', 'POS BONDOWOSO', '');
INSERT INTO kantor VALUES ('071139', 'POS PUGER', '');
INSERT INTO kantor VALUES ('071140', 'POS PANARUKAN', '');
INSERT INTO kantor VALUES ('071141', 'POS RAMBI PUJI', '');
INSERT INTO kantor VALUES ('071142', 'POS BANYUWANGI', '');
INSERT INTO kantor VALUES ('071143', 'POS TANJUNG WANGI', '');
INSERT INTO kantor VALUES ('071144', 'POS MUNCAR', '');
INSERT INTO kantor VALUES ('071145', 'POS GRAJAGAN', '');
INSERT INTO kantor VALUES ('071146', 'POS KETAPANG', '');
INSERT INTO kantor VALUES ('071200', 'KANTOR PELAYANAN PROBOLINGGO', 'PROBOLINGGO');
INSERT INTO kantor VALUES ('071232', 'POS PEJARAKAN', '');
INSERT INTO kantor VALUES ('071235', 'POS LUMAJANG', '');
INSERT INTO kantor VALUES ('071236', 'POS PAITON', '');
INSERT INTO kantor VALUES ('071237', 'POS PROBOLINGGO', '');
INSERT INTO kantor VALUES ('071300', 'KANTOR PELAYANAN PASURUAN', 'PASURUAN');
INSERT INTO kantor VALUES ('071333', 'POS PASURUAN', '');
INSERT INTO kantor VALUES ('071334', 'POS LEKOK', '');
INSERT INTO kantor VALUES ('080000', 'KANTOR WILAYAH VIII DENPASAR', 'DENPASAR');
INSERT INTO kantor VALUES ('080100', 'KANTOR PELAYANAN NGURAH RAI', 'DENPASAR');
INSERT INTO kantor VALUES ('080131', 'POS BANDARA I', '');
INSERT INTO kantor VALUES ('080132', 'POS BANDARA II', '');
INSERT INTO kantor VALUES ('080133', 'POS BANDARA III', '');
INSERT INTO kantor VALUES ('080134', 'POS KARANGASEM', '');
INSERT INTO kantor VALUES ('080135', 'POS BANGLI', '');
INSERT INTO kantor VALUES ('080136', 'POS KLUNGKUNG', '');
INSERT INTO kantor VALUES ('080137', 'POS GIANYAR', '');
INSERT INTO kantor VALUES ('080138', 'POS TABANAN', '');
INSERT INTO kantor VALUES ('080139', 'POS PINTU UTAMA PADANG BAI', '');
INSERT INTO kantor VALUES ('080140', 'POS DARMAGA PADANG BAI', '');
INSERT INTO kantor VALUES ('080141', 'POS PERTAMINA AMUK', '');
INSERT INTO kantor VALUES ('080300', 'KANTOR PELAYANAN MATARAM', 'LEMBAR');
INSERT INTO kantor VALUES ('080331', 'POS LABUHAN HAJI', '');
INSERT INTO kantor VALUES ('080332', 'POS LABUHAN LOMBOK', '');
INSERT INTO kantor VALUES ('080333', 'POS BANDARA SELAPARANG', '');
INSERT INTO kantor VALUES ('080334', 'POS LEMBAR', '');
INSERT INTO kantor VALUES ('080335', 'POS PEMENANG', '');
INSERT INTO kantor VALUES ('080400', 'KANTOR PELAYANAN BIMA', 'BIMA');
INSERT INTO kantor VALUES ('080411', 'KANTOR BANTU BADAS SUMBAWA', '');
INSERT INTO kantor VALUES ('080412', 'KANTOR BANTU BENETE', '');
INSERT INTO kantor VALUES ('080431', 'POS SAPE', '');
INSERT INTO kantor VALUES ('080432', 'POS LABUHAN ALAS', '');
INSERT INTO kantor VALUES ('080433', 'POS BANDARA BRANG BIJI', '');
INSERT INTO kantor VALUES ('080434', 'POS BANDARA PALIBELO', '');
INSERT INTO kantor VALUES ('080435', 'POS BIMA', '');
INSERT INTO kantor VALUES ('080437', 'POS PEL. FERRY POTOTANO', '');
INSERT INTO kantor VALUES ('080439', 'POS KEMPU', '');
INSERT INTO kantor VALUES ('080500', 'KANTOR PELAYANAN KUPANG', 'TENAU KUPANG');
INSERT INTO kantor VALUES ('080513', 'KANTOR BANTU WAINGAPU', '');
INSERT INTO kantor VALUES ('080536', 'POS BAA/P. ROTE', '');
INSERT INTO kantor VALUES ('080537', 'POS BANDARA MAUHAI', '');
INSERT INTO kantor VALUES ('080538', 'POS BANDARA TAMBOLAKA', '');
INSERT INTO kantor VALUES ('080539', 'POS RUA', '');
INSERT INTO kantor VALUES ('080540', 'POS TENAU', '');
INSERT INTO kantor VALUES ('080700', 'KANTOR PELAYANAN MAUMERE', 'MAUMERE');
INSERT INTO kantor VALUES ('080711', 'KANTOR BANTU LARANTUKA', '');
INSERT INTO kantor VALUES ('080712', 'KANTOR BANTU KEDINDI REO', '');
INSERT INTO kantor VALUES ('080713', 'KANTOR BANTU ENDE (PL dan POS LALU BEA)', '');
INSERT INTO kantor VALUES ('080731', 'POS LABUHAN BAJO (PU)', '');
INSERT INTO kantor VALUES ('080733', 'POS BANDARA SATARTACIK', '');
INSERT INTO kantor VALUES ('080734', 'POS BANDARA GEWAYANGTANA', '');
INSERT INTO kantor VALUES ('080735', 'POS BANDARA WAJOTI', '');
INSERT INTO kantor VALUES ('080737', 'POS BANDARA PADHA MALEDA', '');
INSERT INTO kantor VALUES ('080738', 'POS MAUMERE', '');
INSERT INTO kantor VALUES ('080739', 'POS ENDE IPI', '');
INSERT INTO kantor VALUES ('080740', 'POS BANDARA H. AROEBOESMAN', '');
INSERT INTO kantor VALUES ('080741', 'POS LABUHAN BAJO dan KOMODO (PL)', '');
INSERT INTO kantor VALUES ('081200', 'KANTOR PELAYANAN BENOA', '');
INSERT INTO kantor VALUES ('081211', 'KANTOR BANTU CELUKAN BAWANG', '');
INSERT INTO kantor VALUES ('081231', 'POS NUSA PANIDA', '');
INSERT INTO kantor VALUES ('081232', 'POS DARMAGA CARGO I', '');
INSERT INTO kantor VALUES ('081233', 'POS DARMAGA CARGO II', '');
INSERT INTO kantor VALUES ('081234', 'POS DARMAGA KAPAL IKAN', '');
INSERT INTO kantor VALUES ('081235', 'POS DARMAGA KAPAL TURIS', '');
INSERT INTO kantor VALUES ('081237', 'POS BULELENG', '');
INSERT INTO kantor VALUES ('081238', 'POS NEGARA', '');
INSERT INTO kantor VALUES ('081239', 'POS GILIMANUK', '');
INSERT INTO kantor VALUES ('081300', 'KANTOR PELAYANAN ATAPUPU', '');
INSERT INTO kantor VALUES ('081311', 'KANTOR BANTU MOTA AIN (LBD)', '');
INSERT INTO kantor VALUES ('081312', 'KANTOR BANTU MOTA MAUK (LBD)', '');
INSERT INTO kantor VALUES ('081313', 'KANTOR BANTU NAPAN (LBD)', '');
INSERT INTO kantor VALUES ('081314', 'KANTOR BANTU KALABAHI (LBD)', '');
INSERT INTO kantor VALUES ('081331', 'POS BANDARA HALIWEN', '');
INSERT INTO kantor VALUES ('081332', 'POS LINTAS BATAS DAERAH WINI', '');
INSERT INTO kantor VALUES ('081333', 'POS BANDARA MALI', '');
INSERT INTO kantor VALUES ('090000', 'KANTOR WILAYAH IX PONTIANAK', 'PONTIANAK');
INSERT INTO kantor VALUES ('090100', 'KANTOR PELAYANAN PONTIANAK', 'PONTIANAK');
INSERT INTO kantor VALUES ('090111', 'KANTOR BANTU BANDARA SUPADIO', '');
INSERT INTO kantor VALUES ('090131', 'POS JUNGKAT', '');
INSERT INTO kantor VALUES ('090137', 'POS PONTIANAK', '');
INSERT INTO kantor VALUES ('090138', 'POS SUNGAI KAKAP', '');
INSERT INTO kantor VALUES ('090200', 'KANTOR PELAYANAN ENTIKONG', 'ENTIKONG');
INSERT INTO kantor VALUES ('090211', 'KANTOR BANTU NANGAU BADAU', '');
INSERT INTO kantor VALUES ('090231', 'POS MARAKAI PANJANG', '');
INSERT INTO kantor VALUES ('090234', 'POS SIMPANG TIGA LUBUK SABUK', '');
INSERT INTO kantor VALUES ('090235', 'POS SEGUMON', '');
INSERT INTO kantor VALUES ('090236', 'POS BANTAN', '');
INSERT INTO kantor VALUES ('090238', 'POS NANGA BAYAN', '');
INSERT INTO kantor VALUES ('090300', 'KANTOR PELAYANAN TELUK AIR', 'TELUK AIR');
INSERT INTO kantor VALUES ('090331', 'POS KUBU', '');
INSERT INTO kantor VALUES ('090332', 'POS TELUK AIR', '');
INSERT INTO kantor VALUES ('090333', 'POS PADANG TIKAR', '');
INSERT INTO kantor VALUES ('090400', 'KANTOR PELAYANAN KETAPANG', 'KETAPANG');
INSERT INTO kantor VALUES ('090411', 'KANTOR BANTU KENDAWANGAN', '');
INSERT INTO kantor VALUES ('090431', 'POS TELUK BATANG', '');
INSERT INTO kantor VALUES ('090433', 'POS TELUK MELANO', '');
INSERT INTO kantor VALUES ('090434', 'POS KETAPANG', '');
INSERT INTO kantor VALUES ('090435', 'POS BANDARA RAHADI USMAN', '');
INSERT INTO kantor VALUES ('090500', 'KANTOR PELAYANAN SINTETE', 'SINTETE');
INSERT INTO kantor VALUES ('090511', 'KANTOR BANTU JAGOI BABANG', '');
INSERT INTO kantor VALUES ('090512', 'KANTOR BANTU SAMBAS', '');
INSERT INTO kantor VALUES ('090531', 'POS SINGKAWANG', 'SINGKAWANG');
INSERT INTO kantor VALUES ('090532', 'POS TELUK SUAK', '');
INSERT INTO kantor VALUES ('090534', 'POS SIDDING', '');
INSERT INTO kantor VALUES ('090537', 'POS PEMANGKAT', '');
INSERT INTO kantor VALUES ('090538', 'POS PENJAJAB', '');
INSERT INTO kantor VALUES ('090539', 'POS ARUK', '');
INSERT INTO kantor VALUES ('090540', 'POS SAJINGAN', '');
INSERT INTO kantor VALUES ('090541', 'POS SAPARAN', '');
INSERT INTO kantor VALUES ('090542', 'POS TEMAJUK', '');
INSERT INTO kantor VALUES ('090543', 'POS TEBAS', '');
INSERT INTO kantor VALUES ('090700', 'KANTOR PELAYANAN SAMPIT', 'SAMPIT');
INSERT INTO kantor VALUES ('090731', 'POS SAMUDA', '');
INSERT INTO kantor VALUES ('090732', 'POS KUALA PEMBUANG', '');
INSERT INTO kantor VALUES ('090733', 'POS PEGATAN MENDAWAI', '');
INSERT INTO kantor VALUES ('090734', 'POS BANDARA H.ASAN', '');
INSERT INTO kantor VALUES ('090735', 'POS SAMPIT', '');
INSERT INTO kantor VALUES ('090800', 'KANTOR PELAYANAN PANGKALAN BUN', 'PANGKALAN BUN');
INSERT INTO kantor VALUES ('090811', 'KANTOR BANTU KUMAI', '');
INSERT INTO kantor VALUES ('090831', 'POS MUARA S. ARUT', '');
INSERT INTO kantor VALUES ('090833', 'POS KUALA JELAI', '');
INSERT INTO kantor VALUES ('090834', 'POS BANDARA ISKANDAR', '');
INSERT INTO kantor VALUES ('090835', 'POS PANGKALAN BUN', '');
INSERT INTO kantor VALUES ('090900', 'KANTOR PELAYANAN PULANG PISAU', 'PULANG PISAU');
INSERT INTO kantor VALUES ('090911', 'KANTOR BANTU KUALA KAPUAS', '');
INSERT INTO kantor VALUES ('090931', 'POS BAHAUR', '');
INSERT INTO kantor VALUES ('090932', 'POS BANDARA CILIKRIWUT', '');
INSERT INTO kantor VALUES ('090933', 'POS BANDARA BERINGIN', '');
INSERT INTO kantor VALUES ('090934', 'POS PULANG PISAU', '');
INSERT INTO kantor VALUES ('090935', 'POS MANGKAHOI', '');
INSERT INTO kantor VALUES ('100000', 'KANTOR WILAYAH X BALIKPAPAN', 'BALIKPAPAN');
INSERT INTO kantor VALUES ('100100', 'KANTOR PELAYANAN BANJARMASIN', 'BANJARMASIN');
INSERT INTO kantor VALUES ('100131', 'POS BANDARA SAMSUDIN NOOR', 'BANJARMASIN');
INSERT INTO kantor VALUES ('100134', 'POS BANDARA WARUKIN', '');
INSERT INTO kantor VALUES ('100135', 'POS ASAM-ASAM / KINTAP', '');
INSERT INTO kantor VALUES ('100136', 'POS BANJARMASIN', '');
INSERT INTO kantor VALUES ('100137', 'POS JORONG', '');
INSERT INTO kantor VALUES ('100200', 'KANTOR PELAYANAN KOTABARU', 'KOTABARU');
INSERT INTO kantor VALUES ('100211', 'KANTOR BANTU BATU LICIN', '');
INSERT INTO kantor VALUES ('100231', 'POS PEGATAN', '');
INSERT INTO kantor VALUES ('100233', 'POS TG.PEMANCINGAN', '');
INSERT INTO kantor VALUES ('100234', 'POS MEKAR PUTIH', '');
INSERT INTO kantor VALUES ('100235', 'POS BANDARA STAGEN', '');
INSERT INTO kantor VALUES ('100236', 'POS KOTA BARU', '');
INSERT INTO kantor VALUES ('100237', 'POS TARJUN', '');
INSERT INTO kantor VALUES ('100239', 'POS PELABUHAN STAGEN', '');
INSERT INTO kantor VALUES ('100240', 'POS SATUI', '');
INSERT INTO kantor VALUES ('100300', 'KANTOR PELAYANAN BALIKPAPAN', 'BALIKPAPAN');
INSERT INTO kantor VALUES ('100312', 'KANTOR BANTU TANAH GROGOT', '');
INSERT INTO kantor VALUES ('100313', 'KANTOR BANTU TANJUNG SANTAN', '');
INSERT INTO kantor VALUES ('100331', 'POS KAMPUNG BARU', '');
INSERT INTO kantor VALUES ('100332', 'POS PENAJAM', '');
INSERT INTO kantor VALUES ('100335', 'POS BALIKPAPAN', '');
INSERT INTO kantor VALUES ('100336', 'POS TANJUNG BATU', '');
INSERT INTO kantor VALUES ('100337', 'POS KARIANGGAU', '');
INSERT INTO kantor VALUES ('100500', 'KANTOR PELAYANAN SAMARINDA', 'SAMARINDA');
INSERT INTO kantor VALUES ('100512', 'KANTOR BANTU SENIPAH', '');
INSERT INTO kantor VALUES ('100531', 'POS HANDIL DUA', '');
INSERT INTO kantor VALUES ('100532', 'POS MUARA SANGA-SANGA', '');
INSERT INTO kantor VALUES ('100534', 'POS MUARA BADAK', '');
INSERT INTO kantor VALUES ('100535', 'POS TENGGARONG', '');
INSERT INTO kantor VALUES ('100536', 'POS BANDARA TEMINDUNG', '');
INSERT INTO kantor VALUES ('100538', 'POS SAMARINDA', '');
INSERT INTO kantor VALUES ('100600', 'KANTOR PELAYANAN BONTANG', 'BONTANG');
INSERT INTO kantor VALUES ('100631', 'POS LHOK TUAN', '');
INSERT INTO kantor VALUES ('100632', 'POS BONTANG', '');
INSERT INTO kantor VALUES ('100633', 'POS NYERANGAT SEKAMBING', '');
INSERT INTO kantor VALUES ('100800', 'KANTOR PELAYANAN TARAKAN', 'TARAKAN');
INSERT INTO kantor VALUES ('100811', 'KANTOR BANTU BUNYU', '');
INSERT INTO kantor VALUES ('100812', 'KANTOR BANTU REDEP', '');
INSERT INTO kantor VALUES ('100832', 'POS TANJUNG SELOR', '');
INSERT INTO kantor VALUES ('100833', 'POS BANDARA TARAKAN', '');
INSERT INTO kantor VALUES ('100834', 'POS BANDARA TANJUNG REDEP', '');
INSERT INTO kantor VALUES ('100835', 'POS TARAKAN', '');
INSERT INTO kantor VALUES ('100836', 'POS BUNYU', '');
INSERT INTO kantor VALUES ('100837', 'POS LONG NAWANG', '');
INSERT INTO kantor VALUES ('100838', 'POS LONG BAWAN', '');
INSERT INTO kantor VALUES ('100839', 'POS MALINO', '');
INSERT INTO kantor VALUES ('100900', 'KANTOR PELAYANAN NUNUKAN', 'NUNUKAN');
INSERT INTO kantor VALUES ('100912', 'KANTOR BANTU SUNGAI NYAMUK', '');
INSERT INTO kantor VALUES ('100932', 'POS LEMIJUNG', '');
INSERT INTO kantor VALUES ('100933', 'POS NUNUKAN', '');
INSERT INTO kantor VALUES ('100934', 'POS SUNGAI PANCANG', '');
INSERT INTO kantor VALUES ('100935', 'POS AJI KUNING', '');
INSERT INTO kantor VALUES ('101000', 'KANTOR PELAYANAN TANJUNG BARA /SANGATA', '');
INSERT INTO kantor VALUES ('101031', 'POS SANGKURILANG', '');
INSERT INTO kantor VALUES ('101032', 'POS TANJUNG BARA SANGATA', '');
INSERT INTO kantor VALUES ('110000', 'KANTOR WILAYAH XI MAKASAR', 'MAKASSAR');
INSERT INTO kantor VALUES ('110100', 'KANTOR PELAYANAN MAKASAR', 'MAKASSAR');
INSERT INTO kantor VALUES ('110101', 'PANGKALAN SARANA OPERASI PANTOLOAN', '');
INSERT INTO kantor VALUES ('110111', 'KANTOR BANTU BENTENG/P.SELAYAR', '');
INSERT INTO kantor VALUES ('110113', 'KANTOR BANTU BIRINGKASI', '');
INSERT INTO kantor VALUES ('110131', 'POS BANTAENG', '');
INSERT INTO kantor VALUES ('110132', 'POS BULU KUMBA', '');
INSERT INTO kantor VALUES ('110138', 'POS PAOTERE', '');
INSERT INTO kantor VALUES ('110139', 'POS SUKARNO I', '');
INSERT INTO kantor VALUES ('110140', 'POS SUKARNO II', '');
INSERT INTO kantor VALUES ('110141', 'POS HATTA I', '');
INSERT INTO kantor VALUES ('110142', 'POS HATTAII', '');
INSERT INTO kantor VALUES ('110300', 'KANTOR PELAYANAN PARE-PARE', 'PARE-PARE');
INSERT INTO kantor VALUES ('110332', 'POS BARRU', '');
INSERT INTO kantor VALUES ('110339', 'POS PARE-PARE', '');
INSERT INTO kantor VALUES ('110340', 'POS WATANSOPPENG', '');
INSERT INTO kantor VALUES ('110342', 'POS MAMUJU', '');
INSERT INTO kantor VALUES ('110400', 'KANTOR PELAYANAN MALILI', 'BALANTANG');
INSERT INTO kantor VALUES ('110411', 'KANTOR BANTU PALOPO', 'PALOPO');
INSERT INTO kantor VALUES ('110433', 'POS SIWA', '');
INSERT INTO kantor VALUES ('110436', 'POS BALANTANG', '');
INSERT INTO kantor VALUES ('110437', 'POS BANDARA SOROAKO', '');
INSERT INTO kantor VALUES ('110500', 'KANTOR PELAYANAN BAJO\'E', 'BAJO\'E');
INSERT INTO kantor VALUES ('110533', 'POS SINJAI', '');
INSERT INTO kantor VALUES ('110535', 'POS ULOE', '');
INSERT INTO kantor VALUES ('110537', 'POS BAJO\'E', '');
INSERT INTO kantor VALUES ('110539', 'POS ARESO\'E', '');
INSERT INTO kantor VALUES ('110540', 'POS PATTIRO', '');
INSERT INTO kantor VALUES ('110600', 'KANTOR PELAYANAN KENDARI', 'KENDARI');
INSERT INTO kantor VALUES ('110611', 'KANTOR BANTU BAU-BAU', '');
INSERT INTO kantor VALUES ('110631', 'POS WAWONI', '');
INSERT INTO kantor VALUES ('110632', 'POS LASOLO', '');
INSERT INTO kantor VALUES ('110634', 'POS WANCI', '');
INSERT INTO kantor VALUES ('110635', 'POS RAHA', '');
INSERT INTO kantor VALUES ('110636', 'POS SIKELI', '');
INSERT INTO kantor VALUES ('110637', 'POS BANABUNI', '');
INSERT INTO kantor VALUES ('110638', 'POS BANDARA WOLTER MONGINSIDI', '');
INSERT INTO kantor VALUES ('110639', 'POS KENDARI', '');
INSERT INTO kantor VALUES ('110640', 'POS EREKE', '');
INSERT INTO kantor VALUES ('110700', 'KANTOR PELAYANAN POMALAA', 'POMALAA');
INSERT INTO kantor VALUES ('110731', 'POS KOLAKA', '');
INSERT INTO kantor VALUES ('110734', 'POS POMALAA', '');
INSERT INTO kantor VALUES ('110735', 'POS BOEPINANG', '');
INSERT INTO kantor VALUES ('110800', 'KANTOR PELAYANAN PANTOLOAN', 'PANTOLOAN');
INSERT INTO kantor VALUES ('110811', 'KANTOR BANTU TOLI-TOLI', 'TOLI-TOLI');
INSERT INTO kantor VALUES ('110832', 'POS WANI', '');
INSERT INTO kantor VALUES ('110833', 'POS SABANG', '');
INSERT INTO kantor VALUES ('110834', 'POS PARIGI', '');
INSERT INTO kantor VALUES ('110835', 'POS BANDARA MUTIARA', '');
INSERT INTO kantor VALUES ('110836', 'POS LOLI', '');
INSERT INTO kantor VALUES ('110837', 'POS OGOTUA', '');
INSERT INTO kantor VALUES ('110838', 'POS LEOK', '');
INSERT INTO kantor VALUES ('110839', 'POS PALELEH', '');
INSERT INTO kantor VALUES ('110840', 'POS PANTOLOAN', '');
INSERT INTO kantor VALUES ('110841', 'POS PASANG KAYU', '');
INSERT INTO kantor VALUES ('110842', 'POS MOUTONG', '');
INSERT INTO kantor VALUES ('110843', 'POS DONGGALA', '');
INSERT INTO kantor VALUES ('110900', 'KANTOR PELAYANAN POSO', 'POSO');
INSERT INTO kantor VALUES ('110931', 'POS AMPANA', '');
INSERT INTO kantor VALUES ('110932', 'POS KOLONEDALE', '');
INSERT INTO kantor VALUES ('110933', 'POS BANDARA KASIGUNCU', '');
INSERT INTO kantor VALUES ('110934', 'POS MOAHINO/BOHUMBELU', '');
INSERT INTO kantor VALUES ('110935', 'POS POSO', '');
INSERT INTO kantor VALUES ('110936', 'POS WAKAI', '');
INSERT INTO kantor VALUES ('111000', 'KANTOR PELAYANAN LUWUK', 'LUWUK');
INSERT INTO kantor VALUES ('111031', 'POS PAGIMANA', '');
INSERT INTO kantor VALUES ('111032', 'POS BANGGAI', '');
INSERT INTO kantor VALUES ('111033', 'POS TOILI', '');
INSERT INTO kantor VALUES ('111034', 'POS BUNTA', '');
INSERT INTO kantor VALUES ('111035', 'POS BANDARA BUBUNG', '');
INSERT INTO kantor VALUES ('111036', 'POS LUWUK', '');
INSERT INTO kantor VALUES ('111100', 'KANTOR PELAYANAN BITUNG', 'BITUNG');
INSERT INTO kantor VALUES ('111131', 'POS KEMA', '');
INSERT INTO kantor VALUES ('111132', 'POS BELANG', '');
INSERT INTO kantor VALUES ('111133', 'POS KOTABUNAN', '');
INSERT INTO kantor VALUES ('111134', 'POS LIKUPANG', '');
INSERT INTO kantor VALUES ('111137', 'POS BITUNG', '');
INSERT INTO kantor VALUES ('111139', 'POS RATATOTOK', '');
INSERT INTO kantor VALUES ('111200', 'KANTOR PELAYANAN MANADO', 'MANADO');
INSERT INTO kantor VALUES ('111211', 'KANTOR BANTU LABUHAN UKI', '');
INSERT INTO kantor VALUES ('111212', 'KANTOR BANTU TAHUNA', '');
INSERT INTO kantor VALUES ('111213', 'KANTOR BANTU HULU SIAU', '');
INSERT INTO kantor VALUES ('111214', 'KANTOR BANTU MARORE', '');
INSERT INTO kantor VALUES ('111215', 'KANTOR BANTU MIANGAS', '');
INSERT INTO kantor VALUES ('111216', 'KANTOR BANTU AMURANG', '');
INSERT INTO kantor VALUES ('111217', 'KANTOR BANTU LIRUNG', '');
INSERT INTO kantor VALUES ('111233', 'POS INOBONTO', '');
INSERT INTO kantor VALUES ('111239', 'POS TAGULANDANG', '');
INSERT INTO kantor VALUES ('111240', 'POS MANADO', '');
INSERT INTO kantor VALUES ('111241', 'POS BANDARA SAM RATULANGI', '');
INSERT INTO kantor VALUES ('111242', 'POS MALIBAGU', '');
INSERT INTO kantor VALUES ('111300', 'KANTOR PELAYANAN GORONTALO', 'GORONTALO');
INSERT INTO kantor VALUES ('111331', 'POS KUANDANG', '');
INSERT INTO kantor VALUES ('111333', 'POS PAGUAT', '');
INSERT INTO kantor VALUES ('111334', 'POS PAPAYATO', '');
INSERT INTO kantor VALUES ('111335', 'POS BANDARA JALALUDIN', '');
INSERT INTO kantor VALUES ('111336', 'POS GORONTALO', '');
INSERT INTO kantor VALUES ('120000', 'KANTOR WILAYAH XII AMBON', 'AMBON');
INSERT INTO kantor VALUES ('120100', 'KANTOR PELAYANAN AMBON', 'AMBON');
INSERT INTO kantor VALUES ('120111', 'KANTOR BANTU WAISARISA', '');
INSERT INTO kantor VALUES ('120114', 'KANTOR BANTU BANDARA PATTIMURA', '');
INSERT INTO kantor VALUES ('120131', 'POS BANDA', '');
INSERT INTO kantor VALUES ('120132', 'POS NAMLEA', '');
INSERT INTO kantor VALUES ('120135', 'POS GESER', '');
INSERT INTO kantor VALUES ('120137', 'POS WAINIBE / P.BURU', '');
INSERT INTO kantor VALUES ('120138', 'POS MASOHI', '');
INSERT INTO kantor VALUES ('120139', 'POS AMBON', '');
INSERT INTO kantor VALUES ('120140', 'POS GALALA', '');
INSERT INTO kantor VALUES ('120141', 'POS TULEHU', '');
INSERT INTO kantor VALUES ('120143', 'POS HITU', '');
INSERT INTO kantor VALUES ('120144', 'POS OPIN/PASAHARI', '');
INSERT INTO kantor VALUES ('120200', 'KANTOR PELAYANAN TERNATE', 'TERNATE');
INSERT INTO kantor VALUES ('120211', 'KANTOR BANTU P. GEBE', '');
INSERT INTO kantor VALUES ('120212', 'KANTOR BANTU GALELA/TOBELO', '');
INSERT INTO kantor VALUES ('120213', 'KANTOR BANTU P. MANOLE', '');
INSERT INTO kantor VALUES ('120232', 'POS LABUHA', '');
INSERT INTO kantor VALUES ('120234', 'POS BANDARA BABULLAH', '');
INSERT INTO kantor VALUES ('120236', 'POS TERNATE', '');
INSERT INTO kantor VALUES ('120237', 'POS BASTIONG', '');
INSERT INTO kantor VALUES ('120238', 'POS SANANA', '');
INSERT INTO kantor VALUES ('120239', 'POS TANJUNG BARNABAS', '');
INSERT INTO kantor VALUES ('120300', 'KANTOR PELAYANAN SORONG', 'SORONG');
INSERT INTO kantor VALUES ('120311', 'KANTOR BANTU TELUK KASIM', '');
INSERT INTO kantor VALUES ('120331', 'POS BANDARA JEFMAN', '');
INSERT INTO kantor VALUES ('120332', 'POS PULAU GAK', '');
INSERT INTO kantor VALUES ('120335', 'POS DARMAGA KHUSUS USAHA MINA', 'MINA');
INSERT INTO kantor VALUES ('120337', 'POS ARAR', '');
INSERT INTO kantor VALUES ('120338', 'POS SORONG', '');
INSERT INTO kantor VALUES ('120400', 'KANTOR PELAYANAN MANOKWARI', 'MANOKWARI');
INSERT INTO kantor VALUES ('120412', 'KANTOR BANTU BABO', '');
INSERT INTO kantor VALUES ('120431', 'POS BINTUNI', '');
INSERT INTO kantor VALUES ('120432', 'POS BANDARA RENDANI', '');
INSERT INTO kantor VALUES ('120433', 'POS MANOKWARI', '');
INSERT INTO kantor VALUES ('120435', 'POS WIMRO', '');
INSERT INTO kantor VALUES ('120500', 'KANTOR PELAYANAN FAK-FAK', 'FAK-FAK');
INSERT INTO kantor VALUES ('120531', 'POS KAIMANA', '');
INSERT INTO kantor VALUES ('120532', 'POS KOKAS', '');
INSERT INTO kantor VALUES ('120533', 'POS PULAU ADI', '');
INSERT INTO kantor VALUES ('120534', 'POS BANDARA FAK-FAK', '');
INSERT INTO kantor VALUES ('120535', 'POS FAK-FAK', '');
INSERT INTO kantor VALUES ('120600', 'KANTOR PELAYANAN JAYAPURA', 'JAYAPURA');
INSERT INTO kantor VALUES ('120611', 'KANTOR BANTU BANDARA SENTANI', '');
INSERT INTO kantor VALUES ('120612', 'KANTOR BANTU SKOU', '');
INSERT INTO kantor VALUES ('120631', 'POS SARMI', '');
INSERT INTO kantor VALUES ('120633', 'POS KIWIROK', '');
INSERT INTO kantor VALUES ('120634', 'POS SENGAI', '');
INSERT INTO kantor VALUES ('120635', 'POS WARIS', '');
INSERT INTO kantor VALUES ('120636', 'POS WEMBI', '');
INSERT INTO kantor VALUES ('120637', 'POS DEMTA', '');
INSERT INTO kantor VALUES ('120638', 'POS WAMENA', '');
INSERT INTO kantor VALUES ('120639', 'POS JAYAPURA', '');
INSERT INTO kantor VALUES ('120700', 'KANTOR PELAYANAN MERAUKE', 'MERAUKE');
INSERT INTO kantor VALUES ('120731', 'POS SORTA', '');
INSERT INTO kantor VALUES ('120732', 'POS BUPUL', '');
INSERT INTO kantor VALUES ('120734', 'POS MINDIPTANAA', '');
INSERT INTO kantor VALUES ('120736', 'POS AGATS', '');
INSERT INTO kantor VALUES ('120737', 'POS  BADE', '');
INSERT INTO kantor VALUES ('120738', 'POS BANDARA MOPAH', '');
INSERT INTO kantor VALUES ('120739', 'POS MERAUKE', '');
INSERT INTO kantor VALUES ('120740', 'POS WANAM', '');
INSERT INTO kantor VALUES ('120800', 'KANTOR PELAYANAN AMAMAPARE', 'AMAMAPARE');
INSERT INTO kantor VALUES ('120812', 'KANTOR BANTU KULALA KENCANA/KOTA BARU', '');
INSERT INTO kantor VALUES ('120813', 'KANTOR BANTU BANDARA TIMIKA', '');
INSERT INTO kantor VALUES ('120831', 'POS AMAMAPARE', '');
INSERT INTO kantor VALUES ('120832', 'POS CARGO DOCK', '');
INSERT INTO kantor VALUES ('120833', 'POS PAD XI', '');
INSERT INTO kantor VALUES ('120834', 'POS ETNA', '');
INSERT INTO kantor VALUES ('120835', 'POS TEMBAGAPURA', '');
INSERT INTO kantor VALUES ('120836', 'POS POMAKO I', '');
INSERT INTO kantor VALUES ('120900', 'KANTOR PELAYANAN BIAK', 'BIAK');
INSERT INTO kantor VALUES ('120911', 'KANTOR BANTU NABIRE/TELUK KIMI', '');
INSERT INTO kantor VALUES ('120931', 'POS SERUI', '');
INSERT INTO kantor VALUES ('120933', 'POS BIAK', '');
INSERT INTO kantor VALUES ('120934', 'POS DAWAI', '');
INSERT INTO kantor VALUES ('121000', 'KANTOR PELAYANAN TUAL', '');
INSERT INTO kantor VALUES ('121031', 'POS DABO', '');
INSERT INTO kantor VALUES ('121032', 'POS BENJINA/P. KEI', '');
INSERT INTO kantor VALUES ('121033', 'POS SAUMLAKI', '');
INSERT INTO kantor VALUES ('121034', 'POS NGADI', '');
INSERT INTO kantor VALUES ('121035', 'POS ELAT', '');
INSERT INTO kantor VALUES ('121036', 'POS LARAT', '');
INSERT INTO kantor VALUES ('121037', 'POS WONRELI/KISAR', '');
INSERT INTO kantor VALUES ('121038', 'POS BANDARA D. DUMATUBUN LANGGUR', '');
INSERT INTO kantor VALUES ('121039', 'POS SERWARU', '');
INSERT INTO kantor VALUES ('121040', 'POS HWAKI/WETAR', '');
INSERT INTO kantor VALUES ('130000', 'KANTOR WILAYAH XIII BANDA ACEH', '');
INSERT INTO kantor VALUES ('130100', 'KANTOR PELAYANAN ULEELHEUE', '');
INSERT INTO kantor VALUES ('130111', 'KANTOR BANTU LHOK NGA', '');
INSERT INTO kantor VALUES ('130131', 'POS LAM PULO', '');
INSERT INTO kantor VALUES ('130132', 'POS SIGLI', '');
INSERT INTO kantor VALUES ('130133', 'POS COT BAU', '');
INSERT INTO kantor VALUES ('130134', 'POS MALAHAYATI', '');
INSERT INTO kantor VALUES ('130200', 'KANTOR PELAYANAN ISKANDAR MUDA', '');
INSERT INTO kantor VALUES ('130231', 'POS BANDARA ISKANDAR MUDA', '');
INSERT INTO kantor VALUES ('130300', 'KANTOR PELAYANAN SABANG', '');
INSERT INTO kantor VALUES ('130400', 'KANTOR PELAYANAN MEULABOH', '');
INSERT INTO kantor VALUES ('130411', 'KANTOR BANTU SINABANG', '');
INSERT INTO kantor VALUES ('130412', 'KANTOR BANTU TAPAK TUAN', '');
INSERT INTO kantor VALUES ('130413', 'KANTOR BANTU SINGKEL', '');
INSERT INTO kantor VALUES ('130431', 'POS SUSOH', '');
INSERT INTO kantor VALUES ('130500', 'KANTOR PELAYANAN LHOK SEUMAWE', '');
INSERT INTO kantor VALUES ('130511', 'KANTOR BANTU LHOK SUKON', '');
INSERT INTO kantor VALUES ('130531', 'POS BLANG LANCANG', '');
INSERT INTO kantor VALUES ('130532', 'POS KRUENG GEUKUH', '');
INSERT INTO kantor VALUES ('130600', 'KANTOR PELAYANAN KUALA LANGSA', '');
INSERT INTO kantor VALUES ('130631', 'POS KUALA LANGSA', '');
INSERT INTO kantor VALUES ('130632', 'POS SARANG JAYA', '');
INSERT INTO kantor VALUES ('160200', 'KANTOR PENGAWASAN DAN PELAYANAN SUNDA KELAPA', 'JAKARTA');

-- ----------------------------
-- Table structure for `kemasan`
-- ----------------------------
DROP TABLE IF EXISTS `kemasan`;
CREATE TABLE `kemasan` (
  `KdKemas` varchar(2) NOT NULL DEFAULT '' COMMENT 'Kode Kemasan',
  `UrKemas` varchar(60) DEFAULT NULL COMMENT 'Uraian Kemasan',
  PRIMARY KEY (`KdKemas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kemasan
-- ----------------------------
INSERT INTO kemasan VALUES ('AE', 'Aerosol');
INSERT INTO kemasan VALUES ('AM', 'Ampoule, non protected');
INSERT INTO kemasan VALUES ('AP', 'Ampoule, protected');
INSERT INTO kemasan VALUES ('AT', 'Atomizer');
INSERT INTO kemasan VALUES ('BA', 'Barrel');
INSERT INTO kemasan VALUES ('BB', 'Bobbin');
INSERT INTO kemasan VALUES ('BC', 'Bottlecrate, bottlerack');
INSERT INTO kemasan VALUES ('BD', 'Board');
INSERT INTO kemasan VALUES ('BE', 'Bundle');
INSERT INTO kemasan VALUES ('BF', 'Balloon, non-protected');
INSERT INTO kemasan VALUES ('BG', 'Bag');
INSERT INTO kemasan VALUES ('BH', 'Bunch');
INSERT INTO kemasan VALUES ('BI', 'Bin');
INSERT INTO kemasan VALUES ('BJ', 'Bucket');
INSERT INTO kemasan VALUES ('BK', 'Basket');
INSERT INTO kemasan VALUES ('BL', 'Bale, compressed');
INSERT INTO kemasan VALUES ('BN', 'Bale, non -compressed');
INSERT INTO kemasan VALUES ('BO', 'Bottle, non-protected, cylindrical');
INSERT INTO kemasan VALUES ('BP', 'Balloon, protected');
INSERT INTO kemasan VALUES ('BQ', 'Bottle, protected cylindrical');
INSERT INTO kemasan VALUES ('BR', 'Bar');
INSERT INTO kemasan VALUES ('BS', 'Bottle, non-protected, bulbous');
INSERT INTO kemasan VALUES ('BT', 'Bolt');
INSERT INTO kemasan VALUES ('BU', 'Butt');
INSERT INTO kemasan VALUES ('BV', 'Bottle, protected bulbous');
INSERT INTO kemasan VALUES ('BX', 'Box');
INSERT INTO kemasan VALUES ('BY', 'Board, in bundle/bunch/truss');
INSERT INTO kemasan VALUES ('BZ', 'Bars, in bundle/bunch/truss');
INSERT INTO kemasan VALUES ('CA', 'Can, rectangular');
INSERT INTO kemasan VALUES ('CB', 'Beer crate');
INSERT INTO kemasan VALUES ('CC', 'Churn');
INSERT INTO kemasan VALUES ('CE', 'Creel');
INSERT INTO kemasan VALUES ('CF', 'Coffer');
INSERT INTO kemasan VALUES ('CG', 'Cage');
INSERT INTO kemasan VALUES ('CH', 'Chest');
INSERT INTO kemasan VALUES ('CI', 'Canister');
INSERT INTO kemasan VALUES ('CJ', 'Coffin');
INSERT INTO kemasan VALUES ('CK', 'Cask');
INSERT INTO kemasan VALUES ('CL', 'Coil');
INSERT INTO kemasan VALUES ('CO', 'Carboy, non-protected');
INSERT INTO kemasan VALUES ('CP', 'Carboy, protected');
INSERT INTO kemasan VALUES ('CR', 'Crate');
INSERT INTO kemasan VALUES ('CS', 'Case');
INSERT INTO kemasan VALUES ('CT', 'Carton');
INSERT INTO kemasan VALUES ('CU', 'Cup');
INSERT INTO kemasan VALUES ('CV', 'Cover');
INSERT INTO kemasan VALUES ('CX', 'Can, cylindical');
INSERT INTO kemasan VALUES ('CY', 'Cylinder');
INSERT INTO kemasan VALUES ('CZ', 'Canvas');
INSERT INTO kemasan VALUES ('DJ', 'Demijohn, non-protected');
INSERT INTO kemasan VALUES ('DP', 'Demijohn, protected');
INSERT INTO kemasan VALUES ('DR', 'Drum');
INSERT INTO kemasan VALUES ('EN', 'Envelope');
INSERT INTO kemasan VALUES ('FC', 'Fruit crate');
INSERT INTO kemasan VALUES ('FD', 'Framed crate');
INSERT INTO kemasan VALUES ('FI', 'Firkin');
INSERT INTO kemasan VALUES ('FL', 'Flask');
INSERT INTO kemasan VALUES ('FO', 'Footlocker');
INSERT INTO kemasan VALUES ('FP', 'Filmpack');
INSERT INTO kemasan VALUES ('FR', 'Frame');
INSERT INTO kemasan VALUES ('GB', 'Gas bottle');
INSERT INTO kemasan VALUES ('GI', 'Girder');
INSERT INTO kemasan VALUES ('GZ', 'Girders, in bundle/bunch/truss');
INSERT INTO kemasan VALUES ('HG', 'Hogshead');
INSERT INTO kemasan VALUES ('HR', 'Hamper');
INSERT INTO kemasan VALUES ('IN', 'Ingot');
INSERT INTO kemasan VALUES ('IZ', 'ingots, in bundle/bunch/truss');
INSERT INTO kemasan VALUES ('JC', 'Jerrican, rectangular');
INSERT INTO kemasan VALUES ('JG', 'Jug');
INSERT INTO kemasan VALUES ('JR', 'Jar');
INSERT INTO kemasan VALUES ('JT', 'Jutebag');
INSERT INTO kemasan VALUES ('JY', 'Jerrican, cylindrical');
INSERT INTO kemasan VALUES ('KG', 'Keg');
INSERT INTO kemasan VALUES ('LG', 'Log');
INSERT INTO kemasan VALUES ('LZ', 'Logs, in bundle/bunch/truss');
INSERT INTO kemasan VALUES ('MB', 'Multiply bag');
INSERT INTO kemasan VALUES ('MC', 'milk crate');
INSERT INTO kemasan VALUES ('MS', 'Multiwall sack');
INSERT INTO kemasan VALUES ('MT', 'Mat');
INSERT INTO kemasan VALUES ('MX', 'Macth box');
INSERT INTO kemasan VALUES ('NE', 'Unpacked or unpackaged');
INSERT INTO kemasan VALUES ('NS', 'Nest');
INSERT INTO kemasan VALUES ('NT', 'Net');
INSERT INTO kemasan VALUES ('PA', 'Packet');
INSERT INTO kemasan VALUES ('PB', 'POLYBAG');
INSERT INTO kemasan VALUES ('PC', 'Parcel');
INSERT INTO kemasan VALUES ('PG', 'Plate');
INSERT INTO kemasan VALUES ('PH', 'Pitcher');
INSERT INTO kemasan VALUES ('PI', 'Pipe');
INSERT INTO kemasan VALUES ('PK', 'Package');
INSERT INTO kemasan VALUES ('PL', 'Pail');
INSERT INTO kemasan VALUES ('PN', 'Plank');
INSERT INTO kemasan VALUES ('PO', 'Pouch');
INSERT INTO kemasan VALUES ('PT', 'Pot');
INSERT INTO kemasan VALUES ('PU', 'Tray pack');
INSERT INTO kemasan VALUES ('PY', 'Plates, in bundle/bunch/truss');
INSERT INTO kemasan VALUES ('PZ', 'Planks/Pipes, in bundle/bunch/truss');
INSERT INTO kemasan VALUES ('RD', 'Rod');
INSERT INTO kemasan VALUES ('RG', 'Ring');
INSERT INTO kemasan VALUES ('RL', 'Reel');
INSERT INTO kemasan VALUES ('RO', 'Roll');
INSERT INTO kemasan VALUES ('RT', 'Rednet');
INSERT INTO kemasan VALUES ('RZ', 'Rods, in bundle/ bunch/truss');
INSERT INTO kemasan VALUES ('SA', 'Sack');
INSERT INTO kemasan VALUES ('SC', 'Shallow crate');
INSERT INTO kemasan VALUES ('SD', 'Spindle');
INSERT INTO kemasan VALUES ('SE', 'Sea-chest');
INSERT INTO kemasan VALUES ('SH', 'Sachet');
INSERT INTO kemasan VALUES ('SK', 'Skeleton case');
INSERT INTO kemasan VALUES ('SL', 'Slipsheet');
INSERT INTO kemasan VALUES ('SM', 'Sheetmetal');
INSERT INTO kemasan VALUES ('ST', 'Sheet');
INSERT INTO kemasan VALUES ('SU', 'Suitcase');
INSERT INTO kemasan VALUES ('SW', 'Shrinkwrapped');
INSERT INTO kemasan VALUES ('SZ', 'Sheets, in bundle/bunch/truss');
INSERT INTO kemasan VALUES ('TB', 'Tub');
INSERT INTO kemasan VALUES ('TC', 'Tea-chest');
INSERT INTO kemasan VALUES ('TD', 'Tube, collapsible');
INSERT INTO kemasan VALUES ('TK', 'Tank, rectangular');
INSERT INTO kemasan VALUES ('TN', 'Tin');
INSERT INTO kemasan VALUES ('TO', 'Tun');
INSERT INTO kemasan VALUES ('TP', 'Tray');
INSERT INTO kemasan VALUES ('TR', 'Trunk');
INSERT INTO kemasan VALUES ('TS', 'Truss');
INSERT INTO kemasan VALUES ('TU', 'Tube');
INSERT INTO kemasan VALUES ('TY', 'Tank, cylindrical');
INSERT INTO kemasan VALUES ('TZ', 'Tubes, in bundle/bunch/truss');
INSERT INTO kemasan VALUES ('UN', 'Unit');
INSERT INTO kemasan VALUES ('VA', 'Vat');
INSERT INTO kemasan VALUES ('VG', 'Bulk, gas ( at 1031 mbar and 15C )');
INSERT INTO kemasan VALUES ('VI', 'Vial');
INSERT INTO kemasan VALUES ('VL', 'Bulk, liquid');
INSERT INTO kemasan VALUES ('VO', 'Bulk, solid, large particles (\"nodules\")');
INSERT INTO kemasan VALUES ('VP', 'Vacuumpacked');
INSERT INTO kemasan VALUES ('VQ', 'Bulk, liquefied gas (at abnormal temperature)');
INSERT INTO kemasan VALUES ('VR', 'Bulk, solid, granular particles (\"grains\")');
INSERT INTO kemasan VALUES ('VY', 'Bulk, solid, fine particles (\"powders\")');
INSERT INTO kemasan VALUES ('WB', 'Wickerbottle');

-- ----------------------------
-- Table structure for `kode_jenis_dok`
-- ----------------------------
DROP TABLE IF EXISTS `kode_jenis_dok`;
CREATE TABLE `kode_jenis_dok` (
  `KdKdJnsDok` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Kode Jenis Dokumen',
  `UrKdJnsDok` varchar(15) DEFAULT NULL COMMENT 'Nama Dokumen',
  PRIMARY KEY (`KdKdJnsDok`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kode_jenis_dok
-- ----------------------------
INSERT INTO kode_jenis_dok VALUES ('1', 'Invoice');
INSERT INTO kode_jenis_dok VALUES ('2', 'Packing List');
INSERT INTO kode_jenis_dok VALUES ('3', 'Kontrak');
INSERT INTO kode_jenis_dok VALUES ('4', 'Surat Jalan');
INSERT INTO kode_jenis_dok VALUES ('5', 'Skep');
INSERT INTO kode_jenis_dok VALUES ('6', 'Lainnya');
INSERT INTO kode_jenis_dok VALUES ('7', 'ex BC 2.3');
INSERT INTO kode_jenis_dok VALUES ('8', 'ex BC 2.4');
INSERT INTO kode_jenis_dok VALUES ('9', 'ex BC 2.5');
INSERT INTO kode_jenis_dok VALUES ('10', 'ex BC 2.6.1');
INSERT INTO kode_jenis_dok VALUES ('11', 'ex BC 2.6.2');
INSERT INTO kode_jenis_dok VALUES ('12', 'ex BC 2.7');
INSERT INTO kode_jenis_dok VALUES ('13', 'ex BC 3.0');
INSERT INTO kode_jenis_dok VALUES ('14', 'ex BC 4.0');
INSERT INTO kode_jenis_dok VALUES ('15', 'ex BC 4.1');
INSERT INTO kode_jenis_dok VALUES ('16', 'LC');
INSERT INTO kode_jenis_dok VALUES ('17', 'BL/AWB');
INSERT INTO kode_jenis_dok VALUES ('18', 'BC 1.1');

-- ----------------------------
-- Table structure for `log`
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `no` int(12) NOT NULL AUTO_INCREMENT,
  `tgl` datetime DEFAULT NULL,
  `nama_user` varchar(20) DEFAULT NULL,
  `ket` text,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=739 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO log VALUES ('521', '2012-10-14 20:37:16', 'admin', 'Add initial balance machine & office equipment  2012-10-14 3');
INSERT INTO log VALUES ('522', '2012-10-14 20:37:56', 'admin', 'Delete initial balance machine & office equipment 2012-10-14 3');
INSERT INTO log VALUES ('523', '2012-10-16 10:33:52', 'admin', 'login');
INSERT INTO log VALUES ('524', '2012-10-16 13:34:35', 'admin', 'login');
INSERT INTO log VALUES ('525', '2012-10-16 14:13:28', 'admin', 'login');
INSERT INTO log VALUES ('526', '2012-10-16 15:50:40', 'admin', 'login');
INSERT INTO log VALUES ('527', '2012-10-16 17:29:44', 'admin', 'login');
INSERT INTO log VALUES ('528', '2012-10-16 20:23:45', 'admin', 'login');
INSERT INTO log VALUES ('529', '2012-10-17 08:19:34', 'admin', 'login');
INSERT INTO log VALUES ('530', '2012-10-17 09:19:18', 'admin', 'ubah data company CLARION');
INSERT INTO log VALUES ('531', '2012-10-17 09:21:57', 'admin', 'ubah data company CLARION');
INSERT INTO log VALUES ('532', '2012-10-17 09:22:52', 'admin', 'ubah data company CLARION');
INSERT INTO log VALUES ('533', '2012-10-17 09:34:29', 'admin', 'ubah data company PT. ALUMINDO LIGHT METAL INDUSTRY');
INSERT INTO log VALUES ('534', '2012-10-17 11:31:43', 'admin', 'Add initial balance material 1 2012-10-17');
INSERT INTO log VALUES ('535', '2012-10-17 13:39:40', 'admin', 'login');
INSERT INTO log VALUES ('536', '2012-10-17 14:00:24', 'admin', 'Add initial balance material 3 2012-10-17');
INSERT INTO log VALUES ('537', '2012-10-17 14:23:25', 'admin', 'Add initial balance wip 2 2012-10-18');
INSERT INTO log VALUES ('538', '2012-10-17 14:27:28', 'admin', 'Add initial balance machine & office equipment  2012-10-15 3');
INSERT INTO log VALUES ('539', '2012-10-17 14:29:27', 'admin', 'Add initial balance machine & office equipment  2012-10-15 5');
INSERT INTO log VALUES ('540', '2012-10-17 15:45:30', 'admin', 'Edit po customer 25');
INSERT INTO log VALUES ('541', '2012-10-17 15:45:32', 'admin', 'Edit po customer 25');
INSERT INTO log VALUES ('542', '2012-10-17 16:31:32', 'admin', 'login');
INSERT INTO log VALUES ('543', '2012-10-17 11:55:07', 'admin', 'logout');
INSERT INTO log VALUES ('544', '2012-10-18 08:17:16', 'admin', 'login');
INSERT INTO log VALUES ('545', '2012-10-18 10:06:33', 'admin', 'login');
INSERT INTO log VALUES ('546', '2012-10-18 10:37:19', 'admin', 'Add wip 2 2012-10-18');
INSERT INTO log VALUES ('547', '2012-10-18 10:43:01', 'admin', 'Add wip 2 2012-10-18');
INSERT INTO log VALUES ('548', '2012-10-18 10:53:28', 'admin', 'Add wip 2 2012-10-18');
INSERT INTO log VALUES ('549', '2012-10-18 11:12:32', 'admin', 'Add fg production result 3 2012-10-18');
INSERT INTO log VALUES ('550', '2012-10-18 15:34:12', 'admin', 'login');
INSERT INTO log VALUES ('551', '2012-10-20 20:16:29', 'admin', 'login');
INSERT INTO log VALUES ('552', '2012-10-20 20:40:28', 'admin', 'edit finished goods WIP1');
INSERT INTO log VALUES ('553', '2012-10-20 17:13:41', 'admin', 'logout');
INSERT INTO log VALUES ('554', '2012-10-21 09:59:30', 'admin', 'login');
INSERT INTO log VALUES ('555', '2012-10-21 13:29:04', 'admin', 'login');
INSERT INTO log VALUES ('556', '2012-10-21 15:07:29', 'admin', 'login');
INSERT INTO log VALUES ('557', '2012-10-22 08:47:36', 'admin', 'login');
INSERT INTO log VALUES ('558', '2012-10-22 11:02:16', 'admin', 'login');
INSERT INTO log VALUES ('559', '2012-10-22 12:33:51', 'admin', 'login');
INSERT INTO log VALUES ('560', '2012-10-22 13:44:32', 'admin', 'login');
INSERT INTO log VALUES ('561', '2012-10-22 14:32:33', 'admin', 'login');
INSERT INTO log VALUES ('562', '2012-10-22 16:06:24', 'admin', 'login');
INSERT INTO log VALUES ('563', '2012-10-22 18:21:49', 'admin', 'login');
INSERT INTO log VALUES ('564', '2012-10-23 17:00:48', 'admin', 'login');
INSERT INTO log VALUES ('565', '2012-10-23 17:10:13', 'admin', 'login');
INSERT INTO log VALUES ('566', '2012-10-23 17:28:42', 'admin', 'login');
INSERT INTO log VALUES ('567', '2012-10-23 17:34:49', 'admin', 'login');
INSERT INTO log VALUES ('568', '2012-10-23 18:24:06', 'admin', 'login');
INSERT INTO log VALUES ('569', '2012-10-24 09:02:44', 'admin', 'login');
INSERT INTO log VALUES ('570', '2012-10-25 08:45:43', 'admin', 'login');
INSERT INTO log VALUES ('571', '2012-10-25 10:05:10', 'admin', 'login');
INSERT INTO log VALUES ('572', '2012-10-25 11:38:40', 'admin', 'login');
INSERT INTO log VALUES ('573', '2012-10-26 10:25:03', 'admin', 'login');
INSERT INTO log VALUES ('574', '2012-10-26 11:23:46', 'admin', 'login');
INSERT INTO log VALUES ('575', '2012-10-26 11:26:13', 'admin', 'Edit po customer 25');
INSERT INTO log VALUES ('576', '2012-10-26 06:27:19', 'admin', 'logout');
INSERT INTO log VALUES ('577', '2012-10-26 12:19:13', 'admin', 'login');
INSERT INTO log VALUES ('578', '2012-10-26 15:28:35', 'admin', 'login');
INSERT INTO log VALUES ('579', '2012-10-27 20:34:13', 'admin', 'login');
INSERT INTO log VALUES ('580', '2012-10-27 21:17:04', 'admin', 'Add delivery order 3');
INSERT INTO log VALUES ('581', '2012-10-27 21:19:35', 'admin', 'Delete delivery order 3');
INSERT INTO log VALUES ('582', '2012-10-27 16:44:11', 'admin', 'logout');
INSERT INTO log VALUES ('583', '2012-10-28 13:54:34', 'admin', 'login');
INSERT INTO log VALUES ('584', '2012-10-28 14:16:03', 'admin', 'Add po 6');
INSERT INTO log VALUES ('585', '2012-10-28 14:17:03', 'admin', 'Add matin 2');
INSERT INTO log VALUES ('586', '2012-10-28 09:29:18', 'admin', 'logout');
INSERT INTO log VALUES ('587', '2012-10-28 16:55:22', 'admin', 'login');
INSERT INTO log VALUES ('588', '2012-10-28 17:03:40', 'admin', 'tambah data barang SC001');
INSERT INTO log VALUES ('589', '2012-10-28 17:04:25', 'admin', 'Add initial balance machine & office equipment  2012-10-28 12');
INSERT INTO log VALUES ('590', '2012-10-28 17:19:36', 'admin', 'Add matin 3');
INSERT INTO log VALUES ('591', '2012-10-28 17:36:23', 'admin', 'Add outgoing material 5');
INSERT INTO log VALUES ('592', '2012-10-28 17:39:39', 'admin', 'Edit initial balance machine & office equipment  2012-10-28 12');
INSERT INTO log VALUES ('593', '2012-10-28 17:42:47', 'admin', 'Add stock opname 3');
INSERT INTO log VALUES ('594', '2012-10-28 17:43:50', 'admin', 'Add stock adjustment 4');
INSERT INTO log VALUES ('595', '2012-10-28 18:50:40', 'admin', 'login');
INSERT INTO log VALUES ('596', '2012-10-28 18:51:03', 'admin', 'Edit initial balance machine & office equipment  2012-10-27 12');
INSERT INTO log VALUES ('597', '2012-10-28 19:07:33', 'admin', 'Delete initial balance machine & office equipment 2012-09-30 12');
INSERT INTO log VALUES ('598', '2012-10-28 19:08:33', 'admin', 'Add initial balance machine & office equipment 1 2012-10-28 12');
INSERT INTO log VALUES ('599', '2012-10-28 19:11:42', 'admin', 'Edit initial balance machine & office equipment  2012-10-28 12');
INSERT INTO log VALUES ('600', '2012-10-28 19:12:41', 'admin', 'Add stock adjustment 4');
INSERT INTO log VALUES ('601', '2012-10-28 19:20:41', 'admin', 'Edit initial balance machine & office equipment  2012-10-15 3');
INSERT INTO log VALUES ('602', '2012-10-28 19:21:01', 'admin', 'Edit initial balance machine & office equipment  2012-10-15 5');
INSERT INTO log VALUES ('603', '2012-10-28 19:22:32', 'admin', 'Edit matin 2');
INSERT INTO log VALUES ('604', '2012-10-28 19:24:40', 'admin', 'Add outgoing material 6');
INSERT INTO log VALUES ('605', '2012-10-28 19:26:34', 'admin', 'Edit stock opname 3');
INSERT INTO log VALUES ('606', '2012-10-28 19:27:07', 'admin', 'Add stock adjustment 4');
INSERT INTO log VALUES ('607', '2012-10-28 14:12:19', 'admin', 'logout');
INSERT INTO log VALUES ('608', '2012-10-29 08:06:12', 'admin', 'login');
INSERT INTO log VALUES ('609', '2012-10-29 10:53:09', 'admin', 'login');
INSERT INTO log VALUES ('610', '2012-10-29 11:16:19', 'admin', 'login');
INSERT INTO log VALUES ('611', '2012-10-29 12:47:36', 'admin', 'login');
INSERT INTO log VALUES ('612', '2012-10-29 13:15:20', 'admin', 'login');
INSERT INTO log VALUES ('613', '2012-10-29 13:52:29', 'admin', 'login');
INSERT INTO log VALUES ('614', '2012-10-29 15:22:45', 'admin', 'login');
INSERT INTO log VALUES ('615', '2012-10-29 15:53:48', 'admin', 'tambah data bc40 8 000002');
INSERT INTO log VALUES ('616', '2012-10-29 16:05:15', 'admin', 'ubah data bc40 8 000002');
INSERT INTO log VALUES ('617', '2012-10-29 16:07:09', 'admin', 'ubah data bc40 8 000002');
INSERT INTO log VALUES ('618', '2012-10-30 07:04:37', 'admin', 'login');
INSERT INTO log VALUES ('619', '2012-10-30 07:12:23', '', 'tambah data bc262  ');
INSERT INTO log VALUES ('620', '2012-10-30 14:15:52', 'admin', 'login');
INSERT INTO log VALUES ('621', '2012-10-30 14:19:50', '', 'tambah data bc262 5 000002');
INSERT INTO log VALUES ('622', '2012-10-30 14:20:06', '', 'hapus data bc 5 000002');
INSERT INTO log VALUES ('623', '2012-10-30 14:22:31', '', 'tambah data bc262 5 000002');
INSERT INTO log VALUES ('624', '2012-10-30 14:22:45', '', 'hapus data bc 5 000002');
INSERT INTO log VALUES ('625', '2012-10-30 14:23:22', '', 'tambah data bc262 5 000002');
INSERT INTO log VALUES ('626', '2012-10-30 14:35:39', 'admin', 'Add outgoing material 7');
INSERT INTO log VALUES ('627', '2012-10-30 14:43:52', '', 'tambah data bc41 9 000002');
INSERT INTO log VALUES ('628', '2012-10-30 14:44:17', '', 'ubah data bc41 9 000002');
INSERT INTO log VALUES ('629', '2012-10-30 14:44:41', '', 'ubah data bc41 9 000002');
INSERT INTO log VALUES ('630', '2012-10-30 14:48:05', 'admin', 'Edit outgoing material 7');
INSERT INTO log VALUES ('631', '2012-10-30 14:50:09', '', 'tambah data bc261 4 000002');
INSERT INTO log VALUES ('632', '2012-10-30 14:51:04', '', 'ubah data bc261 4 000002');
INSERT INTO log VALUES ('633', '2012-10-30 14:55:50', 'admin', 'Edit outgoing material 7');
INSERT INTO log VALUES ('634', '2012-10-30 17:13:17', 'admin', 'login');
INSERT INTO log VALUES ('635', '2012-10-31 08:48:12', 'admin', 'login');
INSERT INTO log VALUES ('636', '2012-10-31 08:49:38', '', 'tambah data bc25 3 000002');
INSERT INTO log VALUES ('637', '2012-10-31 09:25:54', 'admin', 'Edit matin 2');
INSERT INTO log VALUES ('638', '2012-10-31 09:26:34', 'admin', 'Edit outgoing material 7');
INSERT INTO log VALUES ('639', '2012-10-31 09:41:17', '', 'tambah data bc27 6 000002');
INSERT INTO log VALUES ('640', '2012-10-31 09:42:04', '', 'ubah data bc27 6 000002');
INSERT INTO log VALUES ('641', '2012-10-31 09:50:56', 'admin', 'Edit matin 2');
INSERT INTO log VALUES ('642', '2012-10-31 09:53:19', 'admin', 'tambah data bc23 1 000701');
INSERT INTO log VALUES ('643', '2012-10-31 09:56:16', 'admin', 'ubah data bc23 1 000701');
INSERT INTO log VALUES ('644', '2012-10-31 10:11:47', 'admin', 'tambah data bc30 7 000002');
INSERT INTO log VALUES ('645', '2012-10-31 10:13:33', '', 'hapus data bc 7 000002');
INSERT INTO log VALUES ('646', '2012-10-31 10:14:10', 'admin', 'tambah data bc30 7 000002');
INSERT INTO log VALUES ('647', '2012-10-31 10:17:59', '', 'hapus data bc 7 000002');
INSERT INTO log VALUES ('648', '2012-10-31 10:18:32', 'admin', 'tambah data bc30 7 000002');
INSERT INTO log VALUES ('649', '2012-10-31 04:18:50', 'admin', 'logout');
INSERT INTO log VALUES ('650', '2012-10-31 10:25:46', 'admin', 'login');
INSERT INTO log VALUES ('651', '2012-11-05 09:46:34', 'admin', 'login');
INSERT INTO log VALUES ('652', '2012-11-05 03:49:17', 'admin', 'logout');
INSERT INTO log VALUES ('653', '2012-11-13 09:15:41', 'admin', 'login');
INSERT INTO log VALUES ('654', '2012-11-13 03:19:32', 'admin', 'logout');
INSERT INTO log VALUES ('655', '2012-11-13 09:58:16', 'admin', 'login');
INSERT INTO log VALUES ('656', '2012-11-13 04:00:34', 'admin', 'logout');
INSERT INTO log VALUES ('657', '2012-11-13 13:22:59', 'admin', 'login');
INSERT INTO log VALUES ('658', '2012-11-13 14:46:37', 'admin', 'login');
INSERT INTO log VALUES ('659', '2012-11-13 14:48:03', 'admin', 'Add initial balance material 1 2012-11-13');
INSERT INTO log VALUES ('660', '2012-11-13 14:56:13', 'admin', 'Edit consumption list 123');
INSERT INTO log VALUES ('661', '2012-11-14 11:27:51', 'admin', 'login');
INSERT INTO log VALUES ('662', '2012-11-14 05:28:17', 'admin', 'logout');
INSERT INTO log VALUES ('663', '2012-11-14 21:26:10', 'admin', 'login');
INSERT INTO log VALUES ('664', '2012-11-14 16:02:22', 'admin', 'logout');
INSERT INTO log VALUES ('665', '2012-11-14 22:02:30', 'admin', 'login');
INSERT INTO log VALUES ('666', '2012-11-14 16:15:19', 'admin', 'logout');
INSERT INTO log VALUES ('667', '2012-11-14 22:15:28', 'admin', 'login');
INSERT INTO log VALUES ('668', '2012-11-14 22:40:06', 'admin', 'login');
INSERT INTO log VALUES ('669', '2012-11-14 16:58:12', 'admin', 'logout');
INSERT INTO log VALUES ('670', '2012-11-14 22:58:22', 'bc', 'login');
INSERT INTO log VALUES ('671', '2012-11-14 16:58:28', 'bc', 'logout');
INSERT INTO log VALUES ('672', '2012-11-14 22:58:42', 'exim', 'login');
INSERT INTO log VALUES ('673', '2012-11-14 16:58:48', 'exim', 'logout');
INSERT INTO log VALUES ('674', '2012-11-14 22:59:42', 'admin', 'login');
INSERT INTO log VALUES ('675', '2012-11-14 23:00:32', 'admin', 'ubah data user administration asep');
INSERT INTO log VALUES ('676', '2012-11-14 23:01:41', 'admin', 'ubah data user administration asep');
INSERT INTO log VALUES ('677', '2012-11-14 17:01:46', 'admin', 'logout');
INSERT INTO log VALUES ('678', '2012-11-14 23:02:13', 'exim', 'login');
INSERT INTO log VALUES ('679', '2012-11-14 17:02:21', 'exim', 'logout');
INSERT INTO log VALUES ('680', '2012-11-14 23:02:28', 'admin', 'login');
INSERT INTO log VALUES ('681', '2012-11-14 23:02:48', 'admin', 'ubah data user administration asep');
INSERT INTO log VALUES ('682', '2012-11-14 17:02:54', 'admin', 'logout');
INSERT INTO log VALUES ('683', '2012-11-14 23:03:01', 'asep', 'login');
INSERT INTO log VALUES ('684', '2012-11-14 17:03:08', 'asep', 'logout');
INSERT INTO log VALUES ('685', '2012-11-14 23:03:16', 'admin', 'login');
INSERT INTO log VALUES ('686', '2012-11-14 23:03:33', 'admin', 'ubah data user administration asep');
INSERT INTO log VALUES ('687', '2012-11-14 17:03:37', 'admin', 'logout');
INSERT INTO log VALUES ('688', '2012-11-14 23:03:45', 'asep', 'login');
INSERT INTO log VALUES ('689', '2012-11-14 17:04:00', 'asep', 'logout');
INSERT INTO log VALUES ('690', '2012-11-14 23:44:09', 'admin', 'login');
INSERT INTO log VALUES ('691', '2012-11-14 17:44:14', 'admin', 'logout');
INSERT INTO log VALUES ('692', '2012-11-19 16:56:59', 'admin', 'login');
INSERT INTO log VALUES ('693', '2012-11-21 16:33:06', 'admin', 'login');
INSERT INTO log VALUES ('694', '2012-11-25 13:37:08', 'admin', 'login');
INSERT INTO log VALUES ('695', '2012-11-26 11:16:48', 'admin', 'login');
INSERT INTO log VALUES ('696', '2012-11-26 11:54:53', 'admin', 'login');
INSERT INTO log VALUES ('697', '2012-11-26 11:58:57', 'admin', 'Edit matin 2');
INSERT INTO log VALUES ('698', '2012-11-26 11:59:55', 'admin', 'tambah data bc40 8 000003');
INSERT INTO log VALUES ('699', '2012-11-26 13:26:13', 'admin', 'login');
INSERT INTO log VALUES ('700', '2012-11-26 13:36:46', 'admin', 'tambah data user administration nunik');
INSERT INTO log VALUES ('701', '2012-11-26 13:37:21', 'admin', 'ubah data user administration nunik');
INSERT INTO log VALUES ('702', '2012-11-26 13:37:28', 'admin', 'hapus data user administration nunik2');
INSERT INTO log VALUES ('703', '2012-11-26 13:41:48', 'admin', 'add material RAE-0001');
INSERT INTO log VALUES ('704', '2012-11-26 13:42:26', 'admin', 'ubah data material group RAE');
INSERT INTO log VALUES ('705', '2012-11-26 13:44:32', 'admin', 'edit material RAE-0001');
INSERT INTO log VALUES ('706', '2012-11-26 13:55:33', 'admin', 'add finished goods FBI-0001');
INSERT INTO log VALUES ('707', '2012-11-26 13:56:15', 'admin', 'delete data finished goods WIP4');
INSERT INTO log VALUES ('708', '2012-11-26 13:56:20', 'admin', 'delete data finished goods WIP3');
INSERT INTO log VALUES ('709', '2012-11-26 13:57:30', 'admin', 'add finished goods WBI-0001');
INSERT INTO log VALUES ('710', '2012-11-26 13:57:35', 'admin', 'delete data finished goods WIP1');
INSERT INTO log VALUES ('711', '2012-11-26 13:57:41', 'admin', 'delete data finished goods WIP2');
INSERT INTO log VALUES ('712', '2012-11-26 14:03:44', 'admin', 'Add initial balance material 1 2012-11-26');
INSERT INTO log VALUES ('713', '2012-11-26 14:04:05', 'admin', 'Delete initial balance material 1 2012-11-26');
INSERT INTO log VALUES ('714', '2012-11-26 14:04:18', 'admin', 'Delete initial balance material 1 2012-10-17');
INSERT INTO log VALUES ('715', '2012-11-26 14:04:27', 'admin', 'Delete initial balance material 1 2012-11-13');
INSERT INTO log VALUES ('716', '2012-11-26 14:04:57', 'admin', 'Add initial balance material 1 2012-11-26');
INSERT INTO log VALUES ('717', '2012-11-26 14:05:16', 'admin', 'Delete initial balance material 3 2012-10-17');
INSERT INTO log VALUES ('718', '2012-11-26 14:05:41', 'admin', 'Add initial balance material 3 2012-11-26');
INSERT INTO log VALUES ('719', '2012-11-26 14:06:12', 'admin', 'Add initial balance wip 2 2012-11-26');
INSERT INTO log VALUES ('720', '2012-11-26 14:16:03', 'admin', 'Add initial balance machine & office equipment 1 2012-11-26 12');
INSERT INTO log VALUES ('721', '2012-11-26 14:16:34', 'admin', 'Delete consumption list 123');
INSERT INTO log VALUES ('722', '2012-11-26 14:54:10', 'admin', 'Add consumption list FBI-0001');
INSERT INTO log VALUES ('723', '2012-11-26 14:54:18', 'admin', 'Delete consumption list FBI-0001');
INSERT INTO log VALUES ('724', '2012-11-26 14:55:46', 'admin', 'Add consumption list FBI-0001');
INSERT INTO log VALUES ('725', '2012-11-26 09:13:41', 'admin', 'logout');
INSERT INTO log VALUES ('726', '2012-11-26 15:15:31', 'admin', 'login');
INSERT INTO log VALUES ('727', '2012-11-26 09:21:14', 'admin', 'logout');
INSERT INTO log VALUES ('728', '2012-11-28 13:59:00', 'admin', 'login');
INSERT INTO log VALUES ('729', '2012-11-28 13:59:57', 'admin', 'ubah data unit of items KGM');
INSERT INTO log VALUES ('730', '2012-11-28 15:28:07', 'admin', 'login');
INSERT INTO log VALUES ('731', '2012-11-28 09:56:18', 'admin', 'logout');
INSERT INTO log VALUES ('732', '2012-11-29 08:28:59', 'admin', 'login');
INSERT INTO log VALUES ('733', '2012-12-04 09:34:49', 'admin', 'login');
INSERT INTO log VALUES ('734', '2012-12-04 12:32:01', 'admin', 'login');
INSERT INTO log VALUES ('735', '2012-12-04 06:32:38', 'admin', 'logout');
INSERT INTO log VALUES ('736', '2012-12-04 19:48:03', 'admin', 'login');
INSERT INTO log VALUES ('737', '2012-12-04 20:16:50', 'admin', 'tambah data company PT. INDAL');
INSERT INTO log VALUES ('738', '2012-12-06 10:53:36', 'admin', 'login');

-- ----------------------------
-- Table structure for `mat_group`
-- ----------------------------
DROP TABLE IF EXISTS `mat_group`;
CREATE TABLE `mat_group` (
  `matgroup_code` varchar(4) NOT NULL,
  `matgroup_name` varchar(30) DEFAULT NULL,
  `HsNo` varchar(20) DEFAULT NULL,
  `desc` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`matgroup_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mat_group
-- ----------------------------
INSERT INTO mat_group VALUES ('RAC', 'Aluminium Coil', '7606.12.90.00', null);
INSERT INTO mat_group VALUES ('RAE', 'Aluminium Extrusion', '7604.29.90.00', null);
INSERT INTO mat_group VALUES ('RAR', 'Aluminium Circle', null, null);
INSERT INTO mat_group VALUES ('RAS', 'Aluminium Sheet', '-', null);
INSERT INTO mat_group VALUES ('RMO', 'Others', '-', null);
INSERT INTO mat_group VALUES ('STL', 'Steel', null, null);
INSERT INTO mat_group VALUES ('ZSNC', 'ZSNC Ecotrio', '7210.49.19.00', null);

-- ----------------------------
-- Table structure for `mat_incdet`
-- ----------------------------
DROP TABLE IF EXISTS `mat_incdet`;
CREATE TABLE `mat_incdet` (
  `matin_id` int(10) NOT NULL DEFAULT '0' COMMENT 'Nomor ID Transaksi Incoming Material',
  `child_no` int(10) NOT NULL DEFAULT '0' COMMENT 'Nomor Item di Transaksi Detail',
  `mat_id` varchar(20) NOT NULL DEFAULT '0' COMMENT 'ID Material Yang Masuk',
  `qty` decimal(9,2) NOT NULL DEFAULT '0.00' COMMENT 'Jumlah Quantity Saat Masuk',
  `price` decimal(12,2) DEFAULT NULL,
  PRIMARY KEY (`matin_id`,`child_no`),
  CONSTRAINT `mat_incdet_ibfk_1` FOREIGN KEY (`matin_id`) REFERENCES `mat_inchdr` (`matin_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Detail Transaksi Incoming Material';

-- ----------------------------
-- Records of mat_incdet
-- ----------------------------
INSERT INTO mat_incdet VALUES ('1', '1', 'ALME0002', '200.00', '100.00');
INSERT INTO mat_incdet VALUES ('2', '1', 'M001', '100.00', '200.00');
INSERT INTO mat_incdet VALUES ('2', '2', 'P001', '200.00', '100.00');
INSERT INTO mat_incdet VALUES ('3', '1', 'SC001', '40.00', '0.00');

-- ----------------------------
-- Table structure for `mat_inchdr`
-- ----------------------------
DROP TABLE IF EXISTS `mat_inchdr`;
CREATE TABLE `mat_inchdr` (
  `matin_id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Nomor ID Incoming',
  `matin_type` enum('0','1','2','3') DEFAULT '0' COMMENT '0=purchase,1=replacement,2=from production,3=scrap',
  `matin_no` varchar(30) NOT NULL COMMENT 'Nomor Transaksi Masuk Barang',
  `matin_date` date NOT NULL COMMENT 'Tanggal dan Jam Kedatangan Barang',
  `currency` varchar(3) DEFAULT NULL,
  `po_id` int(10) NOT NULL DEFAULT '0' COMMENT 'Nomor ID Purchase Order',
  `wh_id` int(2) NOT NULL DEFAULT '0' COMMENT 'Gudang Tempat Menyimpan Barang',
  `supplier` varchar(50) DEFAULT NULL,
  `supl_do` varchar(20) NOT NULL DEFAULT '' COMMENT 'Nomor Surat Jalan dari Supplier',
  `supl_inv` varchar(20) DEFAULT NULL,
  `KdJnsDok` tinyint(1) DEFAULT NULL,
  `CAR` varchar(6) DEFAULT NULL,
  `tot_qty` decimal(9,0) NOT NULL DEFAULT '0' COMMENT 'Jumlah Dalam Bentuang Rupiah',
  `tot_amount` decimal(12,2) DEFAULT NULL,
  `notes` varchar(80) NOT NULL DEFAULT '' COMMENT 'Catatan dari Kedatangan Barang',
  PRIMARY KEY (`matin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COMMENT='Header Incoming Material';

-- ----------------------------
-- Records of mat_inchdr
-- ----------------------------
INSERT INTO mat_inchdr VALUES ('1', '1', '001', '2012-08-06', 'USD', '5', '0', 'PT. ALUMINDO LIGHT METAL INDUSTRY', 'do001', '', '5', null, '0', null, '3');
INSERT INTO mat_inchdr VALUES ('2', '0', '002', '2012-10-28', 'Rp', '6', '0', 'PT. DIHEN BERSAMA', '003', '', '8', null, '0', null, 'Just a test');
INSERT INTO mat_inchdr VALUES ('3', '2', '003', '2012-10-28', '', '0', '0', '', '', '', '0', null, '0', null, 'tes scrap');

-- ----------------------------
-- Table structure for `mat_opnamedet`
-- ----------------------------
DROP TABLE IF EXISTS `mat_opnamedet`;
CREATE TABLE `mat_opnamedet` (
  `opname_id` int(10) NOT NULL,
  `child_no` int(10) NOT NULL,
  `mat_id` varchar(8) NOT NULL,
  `qty` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT 'jumlah stok opname',
  `qty_bal` decimal(12,2) DEFAULT NULL,
  `qty_diff` decimal(12,2) DEFAULT NULL,
  `qty_in` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT 'adjustment (tambah)',
  `qty_out` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT 'adjustment (kurang)',
  PRIMARY KEY (`opname_id`,`child_no`),
  CONSTRAINT `mat_opnamedet_ibfk_1` FOREIGN KEY (`opname_id`) REFERENCES `mat_opnamehdr` (`opname_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mat_opnamedet
-- ----------------------------
INSERT INTO mat_opnamedet VALUES ('1', '1', '123', '50.00', '105.00', '55.00', '0.00', '55.00');
INSERT INTO mat_opnamedet VALUES ('2', '1', 'ALME0002', '60.00', '-100.00', '160.00', '160.00', '0.00');
INSERT INTO mat_opnamedet VALUES ('2', '2', 'ALME0003', '900.00', '0.00', '900.00', '900.00', '0.00');
INSERT INTO mat_opnamedet VALUES ('3', '1', 'SC001', '30.00', '40.00', '10.00', '0.00', '10.00');
INSERT INTO mat_opnamedet VALUES ('3', '2', 'M001', '5.00', '10.00', '5.00', '0.00', '5.00');
INSERT INTO mat_opnamedet VALUES ('3', '3', 'P001', '5.00', '5.00', '0.00', '0.00', '0.00');

-- ----------------------------
-- Table structure for `mat_opnamehdr`
-- ----------------------------
DROP TABLE IF EXISTS `mat_opnamehdr`;
CREATE TABLE `mat_opnamehdr` (
  `opname_id` int(10) NOT NULL AUTO_INCREMENT,
  `opname_date` date NOT NULL,
  `wh_id` int(10) NOT NULL COMMENT 'Warehouse ID',
  `mat_type` enum('0','1','2') DEFAULT NULL COMMENT '0= Finished Goods, 1= material, 2=wip',
  `tot_qty` decimal(12,2) DEFAULT NULL,
  `status` enum('0','1') DEFAULT '0' COMMENT '0=opname,1=adjust',
  `notes` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`opname_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mat_opnamehdr
-- ----------------------------
INSERT INTO mat_opnamehdr VALUES ('1', '2012-09-12', '3', '0', '50.00', '1', null);
INSERT INTO mat_opnamehdr VALUES ('2', '2012-09-12', '1', '1', '960.00', '1', null);
INSERT INTO mat_opnamehdr VALUES ('3', '2012-10-28', '1', '1', '40.00', '1', '');

-- ----------------------------
-- Table structure for `mat_outdet`
-- ----------------------------
DROP TABLE IF EXISTS `mat_outdet`;
CREATE TABLE `mat_outdet` (
  `matout_id` int(10) NOT NULL DEFAULT '0' COMMENT 'ID Transaksi OutGoing Material',
  `child_no` int(10) NOT NULL DEFAULT '0' COMMENT 'Nomor Item detail OutGoing',
  `mat_id` varchar(20) NOT NULL DEFAULT '0' COMMENT 'ID Material Yang Dikeluarkan',
  `qty` decimal(9,2) NOT NULL DEFAULT '0.00' COMMENT 'Jumlah Quantity yang dikeluarkan',
  PRIMARY KEY (`matout_id`,`child_no`),
  KEY `MAT_ID` (`matout_id`,`child_no`),
  CONSTRAINT `mat_outdet_ibfk_1` FOREIGN KEY (`matout_id`) REFERENCES `mat_outhdr` (`matout_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Detail Transaksi Outgoing Material';

-- ----------------------------
-- Records of mat_outdet
-- ----------------------------
INSERT INTO mat_outdet VALUES ('3', '1', 'ALME0002', '500.00');
INSERT INTO mat_outdet VALUES ('4', '1', 'ALME0002', '500.00');
INSERT INTO mat_outdet VALUES ('5', '1', 'SC001', '10.00');
INSERT INTO mat_outdet VALUES ('6', '1', 'M001', '100.00');
INSERT INTO mat_outdet VALUES ('6', '2', 'P001', '200.00');
INSERT INTO mat_outdet VALUES ('7', '1', 'M001', '5.00');

-- ----------------------------
-- Table structure for `mat_outhdr`
-- ----------------------------
DROP TABLE IF EXISTS `mat_outhdr`;
CREATE TABLE `mat_outhdr` (
  `matout_id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'ID Transaksi OutGoing Material',
  `matout_type` enum('0','1','2','3') DEFAULT '0' COMMENT '0=Consumption, 1=Return, 2=From Production, 3=scrap',
  `matout_no` varchar(20) NOT NULL DEFAULT '' COMMENT 'Nomor Transaksi Pengeluaran',
  `matout_date` date NOT NULL COMMENT 'Tanggal dan Jam PengeluaranMaterial',
  `wo_id` int(10) NOT NULL COMMENT 'ID Work Order',
  `ref_id` int(10) DEFAULT NULL,
  `ref_no` varchar(20) DEFAULT NULL,
  `from_wh_id` int(2) NOT NULL DEFAULT '0' COMMENT 'Digunakan Jika Out Type T',
  `to_wh_id` int(2) NOT NULL DEFAULT '0' COMMENT 'Digunakan Jika Out Type T',
  `tot_qty` decimal(12,2) DEFAULT NULL,
  `notes` char(80) NOT NULL DEFAULT '' COMMENT 'Catatan Pengeluaran',
  `KdJnsDok` tinyint(1) DEFAULT NULL,
  `CAR` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`matout_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 COMMENT='Header Transaksi Outgoing Material';

-- ----------------------------
-- Records of mat_outhdr
-- ----------------------------
INSERT INTO mat_outhdr VALUES ('3', '0', '001', '2012-08-08', '3', null, null, '0', '0', '500.00', 'tes', null, null);
INSERT INTO mat_outhdr VALUES ('4', '3', '001', '2012-09-26', '0', '3', '001', '0', '0', '500.00', '', null, null);
INSERT INTO mat_outhdr VALUES ('5', '2', '002', '2012-10-28', '0', null, null, '0', '0', '10.00', 'Tes scrap out', null, null);
INSERT INTO mat_outhdr VALUES ('6', '2', '003', '2012-10-28', '0', null, null, '0', '0', '300.00', '', null, null);
INSERT INTO mat_outhdr VALUES ('7', '1', '004', '2012-10-30', '0', null, null, '0', '0', '5.00', 'tes BC 41', '6', null);

-- ----------------------------
-- Table structure for `mat_stockcard`
-- ----------------------------
DROP TABLE IF EXISTS `mat_stockcard`;
CREATE TABLE `mat_stockcard` (
  `kd_fac` char(2) NOT NULL COMMENT 'Kode Factory',
  `wh_id` int(10) NOT NULL COMMENT 'Warehouse ID',
  `mat_type` tinyint(2) NOT NULL,
  `mat_id` varchar(20) NOT NULL DEFAULT '0' COMMENT 'ID Material',
  `date` date NOT NULL COMMENT 'Tanggal dan Waktu Transaksi',
  `type` char(1) NOT NULL DEFAULT 'B' COMMENT 'B=Begining,I=Incoming,O=Outgoing,R=Retur,D=Damage/Missing',
  `qty` decimal(9,2) NOT NULL DEFAULT '0.00' COMMENT 'Jumlah Quantity Transaksi',
  `price` decimal(19,3) NOT NULL DEFAULT '0.000' COMMENT 'Harga Satuan Transaksi',
  `qty_bal` decimal(8,0) NOT NULL DEFAULT '0' COMMENT 'Jumlah Quantity Saldo',
  `amt_bal` decimal(19,3) NOT NULL DEFAULT '0.000' COMMENT 'Jumlah Amount Rupiah Saldo',
  PRIMARY KEY (`kd_fac`,`wh_id`,`mat_id`,`date`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Transaksi Stock Card';

-- ----------------------------
-- Records of mat_stockcard
-- ----------------------------
INSERT INTO mat_stockcard VALUES ('01', '1', '12', 'SC001', '2012-11-26', 'B', '100.00', '0.000', '100', '0.000');
INSERT INTO mat_stockcard VALUES ('01', '2', '11', 'WBI-0001', '2012-11-26', 'B', '200.00', '0.000', '200', '0.000');
INSERT INTO mat_stockcard VALUES ('01', '3', '0', 'FBI-0001', '2012-11-26', 'B', '100.00', '0.000', '100', '0.000');
INSERT INTO mat_stockcard VALUES ('01', '2', '11', 'WIP1', '2012-10-18', 'B', '25.00', '0.000', '25', '0.000');
INSERT INTO mat_stockcard VALUES ('01', '2', '11', 'WIP2', '2012-10-18', 'B', '50.00', '0.000', '50', '0.000');
INSERT INTO mat_stockcard VALUES ('01', '2', '11', 'WIP4', '2012-10-18', 'B', '75.00', '0.000', '75', '0.000');
INSERT INTO mat_stockcard VALUES ('01', '1', '3', 'M002', '2012-09-30', 'B', '20.00', '0.000', '20', '0.000');
INSERT INTO mat_stockcard VALUES ('01', '1', '3', 'M001', '2012-09-30', 'B', '10.00', '0.000', '10', '0.000');
INSERT INTO mat_stockcard VALUES ('01', '1', '5', 'P002', '2012-09-30', 'B', '10.00', '0.000', '10', '0.000');
INSERT INTO mat_stockcard VALUES ('01', '1', '5', 'P001', '2012-09-30', 'B', '5.00', '0.000', '5', '0.000');
INSERT INTO mat_stockcard VALUES ('01', '2', '11', 'WIP1', '2012-10-18', 'I', '222.00', '0.000', '222', '0.000');
INSERT INTO mat_stockcard VALUES ('01', '2', '11', 'WIP1', '2012-10-18', 'O', '2.00', '0.000', '2', '0.000');
INSERT INTO mat_stockcard VALUES ('01', '3', '0', '123', '2012-10-18', 'I', '100.00', '0.000', '100', '0.000');
INSERT INTO mat_stockcard VALUES ('01', '1', '12', 'SC001', '2012-10-28', 'B', '10.00', '0.000', '10', '0.000');
INSERT INTO mat_stockcard VALUES ('01', '1', '12', 'SC001', '2012-09-30', 'B', '10.00', '0.000', '10', '0.000');
INSERT INTO mat_stockcard VALUES ('01', '1', '3', 'M003', '2012-09-30', 'B', '30.00', '0.000', '30', '0.000');
INSERT INTO mat_stockcard VALUES ('01', '1', '5', 'P003', '2012-09-30', 'B', '15.00', '0.000', '15', '0.000');
INSERT INTO mat_stockcard VALUES ('01', '1', '1', 'RAE-0001', '2012-11-26', 'B', '100.00', '0.000', '100', '0.000');

-- ----------------------------
-- Table structure for `mat_warehouse`
-- ----------------------------
DROP TABLE IF EXISTS `mat_warehouse`;
CREATE TABLE `mat_warehouse` (
  `wh_id` int(2) NOT NULL DEFAULT '0' COMMENT 'Nomor Id Warehouse',
  `wh_name` varchar(50) NOT NULL DEFAULT '' COMMENT 'Nama Warehouse',
  PRIMARY KEY (`wh_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Master Gudang';

-- ----------------------------
-- Records of mat_warehouse
-- ----------------------------
INSERT INTO mat_warehouse VALUES ('1', 'WAREHOUSE MATERIAL');
INSERT INTO mat_warehouse VALUES ('2', 'WAREHOUSE PRODUKSI');
INSERT INTO mat_warehouse VALUES ('3', 'WAREHOUSE FINISHED GOODS');
INSERT INTO mat_warehouse VALUES ('4', 'WAREHOUSE SCRAP');

-- ----------------------------
-- Table structure for `mkt_comminvdet`
-- ----------------------------
DROP TABLE IF EXISTS `mkt_comminvdet`;
CREATE TABLE `mkt_comminvdet` (
  `comm_id` int(10) NOT NULL DEFAULT '0' COMMENT 'Id Paking',
  `child_no` int(10) NOT NULL,
  `fg_id` varchar(20) DEFAULT NULL,
  `qty` decimal(8,0) NOT NULL DEFAULT '0' COMMENT 'Jumlah quantity / pasang',
  `price` decimal(8,3) NOT NULL DEFAULT '0.000' COMMENT 'Jumlah Karton',
  PRIMARY KEY (`comm_id`,`child_no`),
  CONSTRAINT `mkt_comminvdet_ibfk_1` FOREIGN KEY (`comm_id`) REFERENCES `mkt_comminvhdr` (`comm_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mkt_comminvdet
-- ----------------------------
INSERT INTO mkt_comminvdet VALUES ('1', '1', 'LUS23003AY', '100', '200.000');

-- ----------------------------
-- Table structure for `mkt_comminvhdr`
-- ----------------------------
DROP TABLE IF EXISTS `mkt_comminvhdr`;
CREATE TABLE `mkt_comminvhdr` (
  `comm_id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Id Commercial Invoice',
  `comm_no` varchar(25) CHARACTER SET latin1 NOT NULL DEFAULT '' COMMENT 'Nomor Commercial Invoice',
  `comm_date` date NOT NULL COMMENT 'Tanggal Commercial Invoice',
  `do_id` int(10) NOT NULL DEFAULT '0' COMMENT 'ID Delevery Order Yang Dipilih',
  `payment` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pol` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pod` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `container` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency` char(5) CHARACTER SET latin1 NOT NULL DEFAULT '''USD''' COMMENT 'Jenis Mata Uang',
  `vessel` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `voy_no` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sail_date` date DEFAULT NULL,
  `fob` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT 'PPN 10%',
  `freight` decimal(12,2) NOT NULL COMMENT 'Ongkos Angkut',
  `insurance` decimal(12,2) NOT NULL COMMENT 'Asuransi',
  `cnf` decimal(12,2) DEFAULT NULL,
  `tot_qty` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT 'Total Quantity',
  `tot_amount` decimal(14,2) NOT NULL DEFAULT '0.00' COMMENT 'Total Uang',
  `notify` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `auth_sign` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notes` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`comm_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of mkt_comminvhdr
-- ----------------------------
INSERT INTO mkt_comminvhdr VALUES ('1', '111', '2012-09-04', '1', 'LC', 'A', 'B', '123456', 'USD', '1', '2', '0000-00-00', '3.00', '4.00', '5.00', '6.00', '100.00', '20000.00', null, null, null);

-- ----------------------------
-- Table structure for `mkt_dodet`
-- ----------------------------
DROP TABLE IF EXISTS `mkt_dodet`;
CREATE TABLE `mkt_dodet` (
  `do_id` int(10) NOT NULL DEFAULT '0' COMMENT 'Nomor ID Transaksi Sales Order',
  `child_no` int(10) NOT NULL DEFAULT '0' COMMENT 'Nomor Item Detail Transaksi',
  `fg_id` varchar(10) NOT NULL DEFAULT '0' COMMENT 'Nomor ID Finish Good',
  `qty` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT 'Quatity yang ditawarkan',
  `price` decimal(12,2) DEFAULT NULL,
  PRIMARY KEY (`do_id`,`child_no`),
  CONSTRAINT `mkt_dodet_ibfk_1` FOREIGN KEY (`do_id`) REFERENCES `mkt_dohdr` (`do_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Detail Transaksi Pemesanan Barang Produk dari Customer';

-- ----------------------------
-- Records of mkt_dodet
-- ----------------------------
INSERT INTO mkt_dodet VALUES ('2', '1', '123', '200.00', '3.00');

-- ----------------------------
-- Table structure for `mkt_dohdr`
-- ----------------------------
DROP TABLE IF EXISTS `mkt_dohdr`;
CREATE TABLE `mkt_dohdr` (
  `do_id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Nomor ID Transaksi Delivery Order',
  `do_no` char(25) NOT NULL DEFAULT '' COMMENT 'Nomor Delivery Order',
  `do_date` date NOT NULL COMMENT 'Tanggal dan Waktu Transaksi',
  `so_id` int(10) NOT NULL DEFAULT '0' COMMENT 'ID Work Instruction',
  `vehicle_no` varchar(15) NOT NULL DEFAULT '' COMMENT 'Nomor Polisi Kendaraan',
  `driver` varchar(30) NOT NULL DEFAULT '' COMMENT 'Nama Sopir Pengirim',
  `tot_qty` decimal(9,2) DEFAULT NULL,
  `tot_amount` decimal(15,2) DEFAULT NULL,
  `notes` char(80) NOT NULL DEFAULT '' COMMENT 'Catatan Transaksi Pesanan',
  PRIMARY KEY (`do_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COMMENT='Table Header Pemesanan dari Customer';

-- ----------------------------
-- Records of mkt_dohdr
-- ----------------------------
INSERT INTO mkt_dohdr VALUES ('2', '111', '2012-09-27', '25', '1', '1', '200.00', '600.00', 'aaa');

-- ----------------------------
-- Table structure for `mkt_packingdet`
-- ----------------------------
DROP TABLE IF EXISTS `mkt_packingdet`;
CREATE TABLE `mkt_packingdet` (
  `pack_id` int(10) NOT NULL DEFAULT '0' COMMENT 'Id Paking',
  `child_no` int(10) NOT NULL,
  `fg_id` varchar(20) DEFAULT NULL,
  `fromct` int(10) DEFAULT NULL,
  `toct` int(10) DEFAULT NULL,
  `qty` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT 'Jumlah quantity / pasang',
  `amount` decimal(12,2) DEFAULT NULL,
  `remark` varchar(40) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '' COMMENT 'Keterangan Detail',
  PRIMARY KEY (`pack_id`,`child_no`),
  CONSTRAINT `mkt_packingdet_ibfk_1` FOREIGN KEY (`pack_id`) REFERENCES `mkt_packinghdr` (`pack_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mkt_packingdet
-- ----------------------------

-- ----------------------------
-- Table structure for `mkt_packinghdr`
-- ----------------------------
DROP TABLE IF EXISTS `mkt_packinghdr`;
CREATE TABLE `mkt_packinghdr` (
  `pack_id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Id Packing',
  `pack_no` varchar(25) NOT NULL DEFAULT '' COMMENT 'Nomor Packing',
  `pack_date` date NOT NULL COMMENT 'Tanggal dan Waktu Pengiriman',
  `comm_id` int(10) NOT NULL DEFAULT '0' COMMENT 'ID Sales Order yang pilih',
  `tot_ctn` decimal(8,0) NOT NULL DEFAULT '0' COMMENT 'Total Carton',
  `tot_amount` decimal(12,2) DEFAULT NULL,
  `size` varchar(100) NOT NULL,
  `notes` varchar(80) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '' COMMENT 'Keterangan dari Entry Packing',
  PRIMARY KEY (`pack_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mkt_packinghdr
-- ----------------------------

-- ----------------------------
-- Table structure for `mkt_sorderdet`
-- ----------------------------
DROP TABLE IF EXISTS `mkt_sorderdet`;
CREATE TABLE `mkt_sorderdet` (
  `so_id` int(10) NOT NULL DEFAULT '0' COMMENT 'Nomor ID Transaksi Sales Order',
  `child_no` int(10) NOT NULL DEFAULT '0' COMMENT 'Nomor Item Detail Transaksi',
  `fg_id` varchar(20) NOT NULL DEFAULT '0' COMMENT 'Nomor ID Finish Good',
  `qty` decimal(9,0) NOT NULL DEFAULT '0' COMMENT 'Quantity yang Dipesan',
  `price` decimal(19,3) NOT NULL DEFAULT '0.000' COMMENT 'Harga Baran Jadi',
  PRIMARY KEY (`so_id`,`child_no`),
  CONSTRAINT `mkt_sorderdet_ibfk_1` FOREIGN KEY (`so_id`) REFERENCES `mkt_sorderhdr` (`so_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Detail Transaksi Pemesanan Barang Produk dari Customer';

-- ----------------------------
-- Records of mkt_sorderdet
-- ----------------------------
INSERT INTO mkt_sorderdet VALUES ('25', '1', '123', '300', '2.000');

-- ----------------------------
-- Table structure for `mkt_sorderhdr`
-- ----------------------------
DROP TABLE IF EXISTS `mkt_sorderhdr`;
CREATE TABLE `mkt_sorderhdr` (
  `so_id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Nomor ID Transaksi Sales Order',
  `so_no` varchar(20) NOT NULL DEFAULT '' COMMENT 'Nomor Pesanan Customer',
  `so_date` date NOT NULL COMMENT 'Tanggal dan Waktu Transaksi',
  `cust` varchar(50) NOT NULL COMMENT 'Kode Customer',
  `currency` varchar(3) NOT NULL DEFAULT 'IDR' COMMENT 'Jenis Matauang yang digunakan',
  `due_date` date NOT NULL,
  `tot_qty` decimal(9,2) NOT NULL DEFAULT '0.00' COMMENT 'Total Qty Pesanan',
  `tot_amount` decimal(15,2) DEFAULT NULL,
  `notes` varchar(80) NOT NULL DEFAULT '' COMMENT 'Catatan Transaksi Pesanan',
  PRIMARY KEY (`so_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1 COMMENT='Table Header Pemesanan dari Customer';

-- ----------------------------
-- Records of mkt_sorderhdr
-- ----------------------------
INSERT INTO mkt_sorderhdr VALUES ('25', '002', '2012-09-11', 'DENON', 'USD', '2012-09-13', '300.00', '600.00', '1222');

-- ----------------------------
-- Table structure for `mst_bank`
-- ----------------------------
DROP TABLE IF EXISTS `mst_bank`;
CREATE TABLE `mst_bank` (
  `KdBank` varchar(3) NOT NULL DEFAULT '',
  `NmBank` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`KdBank`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mst_bank
-- ----------------------------
INSERT INTO mst_bank VALUES ('002', 'Bank BRI');
INSERT INTO mst_bank VALUES ('008', 'Bank Mandiri');
INSERT INTO mst_bank VALUES ('009', 'Bank BNI');
INSERT INTO mst_bank VALUES ('011', 'Bank Danamon');
INSERT INTO mst_bank VALUES ('013', 'Bank Permata');
INSERT INTO mst_bank VALUES ('016', 'Bank BII');
INSERT INTO mst_bank VALUES ('019', 'Bank Panin');
INSERT INTO mst_bank VALUES ('020', 'Bank Arta Niaga Kenc');
INSERT INTO mst_bank VALUES ('022', 'Bank Niaga');
INSERT INTO mst_bank VALUES ('023', 'Bank UOB Buana');
INSERT INTO mst_bank VALUES ('026', 'LippoBank');
INSERT INTO mst_bank VALUES ('028', 'Bank NISP');
INSERT INTO mst_bank VALUES ('050', 'Standard Chartered B');
INSERT INTO mst_bank VALUES ('052', 'ABN AMRO');
INSERT INTO mst_bank VALUES ('093', 'Bank IFI');
INSERT INTO mst_bank VALUES ('097', 'Bank Mayapada');
INSERT INTO mst_bank VALUES ('110', 'Bank Jabar');
INSERT INTO mst_bank VALUES ('111', 'Bank DKI');
INSERT INTO mst_bank VALUES ('112', 'Bank BPD DIY');
INSERT INTO mst_bank VALUES ('114', 'Bank Jatim');
INSERT INTO mst_bank VALUES ('115', 'Bank BPD Jambi');
INSERT INTO mst_bank VALUES ('116', 'Bank BPD Aceh');
INSERT INTO mst_bank VALUES ('117', 'Bank Sumut');
INSERT INTO mst_bank VALUES ('118', 'Bank Nagari');
INSERT INTO mst_bank VALUES ('119', 'Bank Riau');
INSERT INTO mst_bank VALUES ('121', 'Bank Lampung');
INSERT INTO mst_bank VALUES ('122', 'Bank Kalsel');
INSERT INTO mst_bank VALUES ('124', 'Bank BPD Kaltim');
INSERT INTO mst_bank VALUES ('126', 'Bank Sulsel');
INSERT INTO mst_bank VALUES ('127', 'Bank Sulut');
INSERT INTO mst_bank VALUES ('128', 'Bank BPD NTB');
INSERT INTO mst_bank VALUES ('129', 'Bank BPD Bali');
INSERT INTO mst_bank VALUES ('130', 'Bank NTT');
INSERT INTO mst_bank VALUES ('131', 'Bank Maluku');
INSERT INTO mst_bank VALUES ('132', 'Bank Papua');
INSERT INTO mst_bank VALUES ('133', 'Bank Bengkulu');
INSERT INTO mst_bank VALUES ('135', 'Bank Sultra');
INSERT INTO mst_bank VALUES ('145', 'Bank Nusantara Parah');
INSERT INTO mst_bank VALUES ('147', 'Bank Muamalat');
INSERT INTO mst_bank VALUES ('151', 'Bank Mestika');
INSERT INTO mst_bank VALUES ('212', 'Bank Saudara');
INSERT INTO mst_bank VALUES ('426', 'Bank Mega');
INSERT INTO mst_bank VALUES ('441', 'Bank Bukopin');
INSERT INTO mst_bank VALUES ('451', 'Bank Syariah Mandiri');
INSERT INTO mst_bank VALUES ('485', 'Bank Bumiputera');
INSERT INTO mst_bank VALUES ('494', 'Bank Agroniaga');
INSERT INTO mst_bank VALUES ('506', 'Bank Syariah Mega In');
INSERT INTO mst_bank VALUES ('513', 'Bank Ina Perdana');
INSERT INTO mst_bank VALUES ('558', 'Bank Eksekutif');
INSERT INTO mst_bank VALUES ('950', 'Bank Commonwealth');

-- ----------------------------
-- Table structure for `mst_barang`
-- ----------------------------
DROP TABLE IF EXISTS `mst_barang`;
CREATE TABLE `mst_barang` (
  `KdBarang` varchar(8) NOT NULL DEFAULT '',
  `TpBarang` tinyint(2) DEFAULT NULL,
  `MatGroup` varchar(4) DEFAULT NULL,
  `PartNo` varchar(100) DEFAULT NULL,
  `NmBarang` varchar(25) DEFAULT NULL,
  `HsNo` varchar(12) DEFAULT NULL,
  `DieNo` varchar(30) DEFAULT NULL,
  `UWm` decimal(10,4) DEFAULT NULL,
  `LPc` decimal(10,4) DEFAULT NULL,
  `WPcs` decimal(10,4) DEFAULT NULL,
  `LBar` decimal(10,0) DEFAULT NULL,
  `PcBar` decimal(10,0) DEFAULT NULL,
  `WBar` decimal(10,4) DEFAULT NULL,
  `Finish` varchar(10) DEFAULT NULL,
  `twhmp` varchar(25) DEFAULT NULL,
  `Sat` varchar(3) DEFAULT NULL,
  `Harga` decimal(12,2) DEFAULT NULL,
  `Treatment` varchar(15) DEFAULT NULL COMMENT 'Support Treatment',
  `Ket` varchar(100) DEFAULT NULL,
  `cust` varchar(50) DEFAULT NULL COMMENT 'Nama Customer',
  PRIMARY KEY (`KdBarang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mst_barang
-- ----------------------------
INSERT INTO mst_barang VALUES ('FAB-0001', '0', '', 'VF2A00189400', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'ALL BRILIANT');
INSERT INTO mst_barang VALUES ('FGE-0001', '0', '', '101-08-178-80/500SERIES', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'TOA GALINDRA');
INSERT INTO mst_barang VALUES ('FGE-0002', '0', '', '501-08-117-90', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'TOA GALINDRA');
INSERT INTO mst_barang VALUES ('FGE-0003', '0', '', '501-08-127-40A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'TOA GALINDRA');
INSERT INTO mst_barang VALUES ('FGE-0004', '0', '', '501-08-130-20A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'TOA GALINDRA');
INSERT INTO mst_barang VALUES ('FGE-0005', '0', '', '501-08-131-30', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'TOA GALINDRA');
INSERT INTO mst_barang VALUES ('FGE-0006', '0', '', '501-08-164-80', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'TOA GALINDRA');
INSERT INTO mst_barang VALUES ('FGE-0007', '0', '', '501-08-150-20', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'TOA GALINDRA');
INSERT INTO mst_barang VALUES ('FGE-0008', '0', '', '501-08-151-30', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'TOA GALINDRA');
INSERT INTO mst_barang VALUES ('FGE-0009', '0', '', '501-08-152-60', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'TOA GALINDRA');
INSERT INTO mst_barang VALUES ('FGE-0010', '0', '', '501-08-154-80', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'TOA GALINDRA');
INSERT INTO mst_barang VALUES ('FGE-0011', '0', '', '501-08-155-70', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'TOA GALINDRA');
INSERT INTO mst_barang VALUES ('FIM-0001', '0', '', '446S267010 ( Fin only )', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'IWAI METAL');
INSERT INTO mst_barang VALUES ('FJI-0001', '0', '', 'FSMH3001-201', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('FJI-0002', '0', '', 'GE30938-003A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('FJI-0003', '0', '', 'GE31894-001A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('FJI-0004', '0', '', 'GE32360-001A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('FJI-0005', '0', '', 'GE32823-004A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('FJI-0006', '0', '', 'GE32823-007A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('FJI-0007', '0', '', 'GE32823-009A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('FJI-0008', '0', '', 'GE32823-010A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('FJI-0009', '0', '', 'GE32927-001A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('FJI-0010', '0', '', 'GE32927-002A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('FJI-0011', '0', '', 'GE33234-001A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('FJI-0012', '0', '', 'GE33234-002A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('FJI-0013', '0', '', 'GE33323-001A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('FJI-0014', '0', '', 'GE33323-002A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('FJI-0015', '0', '', 'GE33544-001A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('FJI-0016', '0', '', 'GE33962-001A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('FJI-0017', '0', '', 'GE33962-002A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('FJI-0018', '0', '', 'GE34070-001A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('FJI-0019', '0', '', 'GE34070-002A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('FJI-0020', '0', '', 'GE34070-003A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('FJI-0021', '0', '', 'GE34070-004A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('FJI-0022', '0', '', 'GE34810-001A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('FJI-0023', '0', '', 'GE40107-002A t=1.5', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('FJI-0024', '0', '', 'GE40124-003A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('FJI-0025', '0', '', 'GE40172-005A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('FJI-0026', '0', '', 'GE40395-001A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('FJI-0027', '0', '', 'GE40395-002A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('FJI-0028', '0', '', 'GE40395-005A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('FJI-0029', '0', '', 'GE40395-006A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('FJI-0030', '0', '', 'GE40499-001A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('FJI-0031', '0', '', 'GE40499-002A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('FJI-0032', '0', '', 'GE40642-001A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('FJI-0033', '0', '', 'LV20916-003A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('FJI-0034', '0', '', 'LV20916-004A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('FJI-0035', '0', '', 'LV34061-001A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('FJI-0036', '0', '', 'LV34655-001A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('FJI-0037', '0', '', 'LV34655-002A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('FJI-0038', '0', '', 'LV35331-003A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('FJI-0039', '0', '', 'LV37016-201A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('FJI-0040', '0', '', 'LV37858-001A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('FJI-0041', '0', '', 'LV37859-001A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('FJI-0042', '0', '', 'LV37875-001A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('FJI-0043', '0', '', 'LV37896-002A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('FJI-0044', '0', '', 'LV37970-01A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('FJI-0045', '0', '', 'LV38527-001A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('FJI-0046', '0', '', 'LV38882-001MF', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('FJI-0047', '0', '', 'LV38882-003BA', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('FJI-0048', '0', '', 'LV38883-001', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('FJI-0049', '0', '', 'LV39078-001A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('FJI-0050', '0', '', 'LV39126-001A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('FJI-0051', '0', '', 'LV39126-002A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('FJI-0052', '0', '', 'LV39538-001A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('FJI-0053', '0', '', 'LV39607-001A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('FJI-0054', '0', '', 'LV42152-002A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('FJI-0055', '0', '', 'LV43349-002A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('FJI-0056', '0', '', 'LV43967-001A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('FJI-0057', '0', '', 'LV43968-001A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('FJI-0058', '0', '', 'LV44335-001ABA', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('FJI-0059', '0', '', 'VKL 7059', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('FJI-0060', '0', '', 'LV44972-001A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('FJI-0061', '0', '', 'GE40642-001A-PP', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('FJI-0062', '0', '', 'LV20916-003A-NK', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('FKI-0001', '0', '', 'APFB-0003', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'KAWAI INDONESIA');
INSERT INTO mst_barang VALUES ('FKI-0002', '0', '', 'KLFB-0014', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'KAWAI INDONESIA');
INSERT INTO mst_barang VALUES ('FKI-0003', '0', '', 'KLFB-0017', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'KAWAI INDONESIA');
INSERT INTO mst_barang VALUES ('FKI-0004', '0', '', 'KMFB-0170', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'KAWAI INDONESIA');
INSERT INTO mst_barang VALUES ('FKI-0005', '0', '', 'KMFB-0210', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'KAWAI INDONESIA');
INSERT INTO mst_barang VALUES ('FKI-0006', '0', '', 'KMFB-0217', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'KAWAI INDONESIA');
INSERT INTO mst_barang VALUES ('FKI-0007', '0', '', 'KPFB-0260 Rev : 100', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'KAWAI INDONESIA');
INSERT INTO mst_barang VALUES ('FKI-0008', '0', '', 'KPFB-0260 Rev : 102', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'KAWAI INDONESIA');
INSERT INTO mst_barang VALUES ('FKI-0009', '0', '', 'KPFB-0318', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'KAWAI INDONESIA');
INSERT INTO mst_barang VALUES ('FKI-0010', '0', '', 'KPFB-0457', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'KAWAI INDONESIA');
INSERT INTO mst_barang VALUES ('FKI-0011', '0', '', 'KPFB-0547', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'KAWAI INDONESIA');
INSERT INTO mst_barang VALUES ('FKI-0012', '0', '', 'KPFB-0568/KPFB-0378BA', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'KAWAI INDONESIA');
INSERT INTO mst_barang VALUES ('FKI-0013', '0', '', 'KPFB-0568/KPFB-0378MF', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'KAWAI INDONESIA');
INSERT INTO mst_barang VALUES ('FKI-0014', '0', '', 'KPFB-1070', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'KAWAI INDONESIA');
INSERT INTO mst_barang VALUES ('FKI-0015', '0', '', 'KPFB-0590 Rev101L=150 WA', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'KAWAI INDONESIA');
INSERT INTO mst_barang VALUES ('FKI-0016', '0', '', 'KPFB-0590 Rev102L=120 WA', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'KAWAI INDONESIA');
INSERT INTO mst_barang VALUES ('FKI-0017', '0', '', 'KPFB-0590 Rev102L=90 WA', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'KAWAI INDONESIA');
INSERT INTO mst_barang VALUES ('FKI-0018', '0', '', 'KPFB-0590 Rev102L=60 WA', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'KAWAI INDONESIA');
INSERT INTO mst_barang VALUES ('FKI-0019', '0', '', 'KPFB-0612', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'KAWAI INDONESIA');
INSERT INTO mst_barang VALUES ('FKI-0020', '0', '', 'KPFB-0799', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'KAWAI INDONESIA');
INSERT INTO mst_barang VALUES ('FKI-0021', '0', '', 'KPFB-0801', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'KAWAI INDONESIA');
INSERT INTO mst_barang VALUES ('FKI-0022', '0', '', 'KPFB-0850', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'KAWAI INDONESIA');
INSERT INTO mst_barang VALUES ('FKI-0023', '0', '', 'KPFB-0851', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'KAWAI INDONESIA');
INSERT INTO mst_barang VALUES ('FKI-0024', '0', '', 'KPFB-0960', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'KAWAI INDONESIA');
INSERT INTO mst_barang VALUES ('FKI-0025', '0', '', 'KPFB-0961', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'KAWAI INDONESIA');
INSERT INTO mst_barang VALUES ('FKI-0026', '0', '', 'KPFB-1030', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'KAWAI INDONESIA');
INSERT INTO mst_barang VALUES ('FKI-0027', '0', '', 'KPFB-1046', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'KAWAI INDONESIA');
INSERT INTO mst_barang VALUES ('FKI-0028', '0', '', 'KPFB1073', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'KAWAI INDONESIA');
INSERT INTO mst_barang VALUES ('FKI-0029', '0', '', 'KPFB1075', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'KAWAI INDONESIA');
INSERT INTO mst_barang VALUES ('FKI-0030', '0', '', 'KPFB1070', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'KAWAI INDONESIA');
INSERT INTO mst_barang VALUES ('FKS-0001', '0', '', '5010-102-231-12', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'Kasen');
INSERT INTO mst_barang VALUES ('FKS-0002', '0', '', '5010-102-233-11', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'Kasen');
INSERT INTO mst_barang VALUES ('FKS-0003', '0', '', '5010-312-430-12', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'Kasen');
INSERT INTO mst_barang VALUES ('FKS-0004', '0', '', '5010-312-381-11', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'Kasen');
INSERT INTO mst_barang VALUES ('FKS-0005', '0', '', '5010-404-227-12', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'Kasen');
INSERT INTO mst_barang VALUES ('FKT-0001', '0', '', 'APFB-0003', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'KATOLEC INDONESIA');
INSERT INTO mst_barang VALUES ('FKT-0002', '0', '', 'KLFB-0014', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'KATOLEC INDONESIA');
INSERT INTO mst_barang VALUES ('FKT-0003', '0', '', 'KPFB-0260 REV 102', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'KATOLEC INDONESIA');
INSERT INTO mst_barang VALUES ('FKT-0004', '0', '', 'KPFB-0547 L=90 mm', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'KATOLEC INDONESIA');
INSERT INTO mst_barang VALUES ('FKT-0005', '0', '', 'KPFB-0590 Rev102 L= 60 mm (White Anodize)', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'KATOLEC INDONESIA');
INSERT INTO mst_barang VALUES ('FKT-0006', '0', '', 'KPFB-0590 Rev102 L= 90 mm (White Anodize)', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'KATOLEC INDONESIA');
INSERT INTO mst_barang VALUES ('FKT-0007', '0', '', 'KPFB-0590 Rev102 L= 120 mm (White anodize)', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'KATOLEC INDONESIA');
INSERT INTO mst_barang VALUES ('FKT-0008', '0', '', 'KPFB-0612', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'KATOLEC INDONESIA');
INSERT INTO mst_barang VALUES ('FKT-0009', '0', '', 'KPFB-1073', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'KATOLEC INDONESIA');
INSERT INTO mst_barang VALUES ('FKT-0010', '0', '', 'KPFB-1075', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'KATOLEC INDONESIA');
INSERT INTO mst_barang VALUES ('FKT-0011', '0', '', 'KPFB-0960', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'KATOLEC INDONESIA');
INSERT INTO mst_barang VALUES ('FKT-0012', '0', '', 'KPFB-0961', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'KATOLEC INDONESIA');
INSERT INTO mst_barang VALUES ('FLT-0001', '0', '', 'AT-0606-02-00(L=296)', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'LIMA TEKNO');
INSERT INTO mst_barang VALUES ('FLT-0002', '0', '', 'AT-0606-02-00(L=446)', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'LIMA TEKNO');
INSERT INTO mst_barang VALUES ('FLT-0003', '0', '', 'AT-0606-02-00(L=596)', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'LIMA TEKNO');
INSERT INTO mst_barang VALUES ('FLT-0004', '0', '', 'AT-0606-11-00(L=296)', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'LIMA TEKNO');
INSERT INTO mst_barang VALUES ('FLT-0005', '0', '', 'AT-0606-11-00(L=446)', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'LIMA TEKNO');
INSERT INTO mst_barang VALUES ('FLT-0006', '0', '', 'AT-0606-11-00(L=596)', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'LIMA TEKNO');
INSERT INTO mst_barang VALUES ('FLT-0007', '0', '', 'AT-0607-02-00(L=446)', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'LIMA TEKNO');
INSERT INTO mst_barang VALUES ('FLT-0008', '0', '', 'AT-0607-02-00(L=896)', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'LIMA TEKNO');
INSERT INTO mst_barang VALUES ('FLT-0009', '0', '', 'AT-0607-02-00(L=1196)', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'LIMA TEKNO');
INSERT INTO mst_barang VALUES ('FLT-0010', '0', '', 'AT-0607-05-00(L=418)', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'LIMA TEKNO');
INSERT INTO mst_barang VALUES ('FLT-0011', '0', '', 'AT-0607-06-00(L=391)', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'LIMA TEKNO');
INSERT INTO mst_barang VALUES ('FLT-0012', '0', '', 'AT-0607-15-00(L=446)', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'LIMA TEKNO');
INSERT INTO mst_barang VALUES ('FLT-0013', '0', '', 'AT-0607-15-00(L=896)', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'LIMA TEKNO');
INSERT INTO mst_barang VALUES ('FLT-0014', '0', '', 'AT-0607-15-00(L=1196)', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'LIMA TEKNO');
INSERT INTO mst_barang VALUES ('FMP-0001', '0', '', '3F-070015', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'MATSUZAWA');
INSERT INTO mst_barang VALUES ('FMP-0002', '0', '', '3F-070016', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'MATSUZAWA');
INSERT INTO mst_barang VALUES ('FPB-0001', '0', '', '3F-00000S1', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('FPB-0002', '0', '', '3F-00000S2', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('FPB-0003', '0', '', '3F09291400A0-000', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('FPB-0004', '0', '', '3F-01628300AO-000', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('FPB-0005', '0', '', '3A10028200A0-000', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('FPB-0006', '0', '', '3A10028900A0-000', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('FPB-0007', '0', '', '3A10029300A0-000', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('FPB-0008', '0', '', '3F-06905200A1-000', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('FPB-0009', '0', '', '3F-06905300A1-001', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('FPB-0010', '0', '', '3F-06905500A1-002', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('FPB-0011', '0', '', '3F-06905700A1-003', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('FPB-0012', '0', '', '3F-06971800AO-000', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('FPB-0013', '0', '', '3A10030100A0-000', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('FPB-0014', '0', '', '3F-06971800AO-002', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('FPB-0015', '0', '', '3F-07001400AO-000', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('FPB-0016', '0', '', '3F-070015 MF', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('FPB-0017', '0', '', '3F-07001500A0-000', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('FPB-0018', '0', '', '3F-07001500B0-000', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('FPB-0019', '0', '', '3F-07001500C2-000MOK', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('FPB-0020', '0', '', '3F-070016 MF', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('FPB-0021', '0', '', '3F-07001600A0-000', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('FPB-0022', '0', '', '3F-07001600B0-000', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('FPB-0023', '0', '', '3F-07001600C2-000MOAK', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('FPB-0024', '0', '', '3F-076636', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('FPB-0025', '0', '', '3F-076637', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('FPB-0026', '0', '', '3F-076639', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('FPB-0027', '0', '', '3F-077147 SB', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('FPB-0028', '0', '', '3F-077155 SB', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('FPB-0029', '0', '', '3F-077156 SB', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('FPB-0030', '0', '', '3F-077479', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('FPB-0031', '0', '', '3F-078383', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('FPB-0032', '0', '', '3F-08201400AO-000 ( L=617)', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('FPB-0033', '0', '', '3F-090350', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('FPB-0034', '0', '', '3K-00045300A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('FPB-0035', '0', '', '3K-00822400A2-0002FINISH', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('FPB-0036', '0', '', '3K-00822400A2-0002MATERIAL', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('FPB-0037', '0', '', '3K-01064300A3', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('FPB-0038', '0', '', '3K-010644-00A0(L=2940)-YS', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('FPB-0039', '0', '', '3K-010644-00B0-0001-YS', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('FPB-0040', '0', '', '3K-01064500AO-0001', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('FPB-0041', '0', '', '3K-01064500AO-0001 (material indal)', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('FPB-0042', '0', '', '3K-01064600A2-000', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('FPB-0043', '0', '', '3K-010646E', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('FPB-0044', '0', '', '3K-01064700A1-1/21', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('FPB-0045', '0', '', '3K-010648', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('FPB-0046', '0', '', '3K-01181800AO-0001', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('FPB-0047', '0', '', '3K-015326', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('FPB-0048', '0', '', '3K-015327', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('FPB-0049', '0', '', '3K-015328', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('FPB-0050', '0', '', '3k-082014-00', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('FPB-0051', '0', '', '3S000007', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('FPB-0052', '0', '', '3S000008', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('FPB-0053', '0', '', 'MAOR0014 ( nut )', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('FPB-0054', '0', '', 'MAOR001500A1-000  ( 19.6)', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('FPB-0055', '0', '', 'MAOR001600A1-000', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('FPB-0056', '0', '', 'MAPB-001701', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('FPB-0057', '0', '', 'MAPB-001701A1-000/headrallright', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('FPB-0058', '0', '', 'MAPB-001702A1-000/headrallleft', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('FPB-0059', '0', '', 'PBC00001000AO', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('FPB-0060', '0', '', 'Pipe dia 9.5mm L=697mm/3F0821000A0-000', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('FPB-0061', '0', '', 'WPSP-0008', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('FPG-0001', '0', '', 'FL0501-07-00/BaseIL600', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC GOBEL');
INSERT INTO mst_barang VALUES ('FPG-0002', '0', '', 'FL0502-07-00/BaseIL900', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC GOBEL');
INSERT INTO mst_barang VALUES ('FPG-0003', '0', '', 'I-10758-1(CaseA)O3.72', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC GOBEL');
INSERT INTO mst_barang VALUES ('FPG-0004', '0', '', 'FZ322959121.2(CaseB)', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC GOBEL');
INSERT INTO mst_barang VALUES ('FPG-0005', '0', '', 'NKB50-1128-2', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC GOBEL');
INSERT INTO mst_barang VALUES ('FPG-0006', '0', '', 'YJI-001 BA', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC GOBEL');
INSERT INTO mst_barang VALUES ('FPH-0001', '0', '', 'LSCC0854 ', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC HEALTHCARE');
INSERT INTO mst_barang VALUES ('FPH-0002', '0', '', 'LSEK00780-2', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC HEALTHCARE');
INSERT INTO mst_barang VALUES ('FPH-0003', '0', '', 'LSEK00781', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC HEALTHCARE');
INSERT INTO mst_barang VALUES ('FPH-0004', '0', '', 'LSEK00782', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC HEALTHCARE');
INSERT INTO mst_barang VALUES ('FPH-0005', '0', '', 'LSEK00783-1', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC HEALTHCARE');
INSERT INTO mst_barang VALUES ('FPH-0006', '0', '', 'LSEK0849', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC HEALTHCARE');
INSERT INTO mst_barang VALUES ('FPH-0007', '0', '', 'LSEK0851', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC HEALTHCARE');
INSERT INTO mst_barang VALUES ('FPH-0008', '0', '', 'LSEK0881', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC HEALTHCARE');
INSERT INTO mst_barang VALUES ('FPH-0009', '0', '', 'LSEK0882', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC HEALTHCARE');
INSERT INTO mst_barang VALUES ('FPH-0010', '0', '', 'LSEK0883', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC HEALTHCARE');
INSERT INTO mst_barang VALUES ('FPH-0011', '0', '', 'LSEK0884', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC HEALTHCARE');
INSERT INTO mst_barang VALUES ('FPH-0012', '0', '', 'LSEK0894', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC HEALTHCARE');
INSERT INTO mst_barang VALUES ('FPH-0013', '0', '', 'LSEK0922', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC HEALTHCARE');
INSERT INTO mst_barang VALUES ('FPH-0014', '0', '', 'LSEK0938', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC HEALTHCARE');
INSERT INTO mst_barang VALUES ('FPH-0015', '0', '', 'LSEK0939', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC HEALTHCARE');
INSERT INTO mst_barang VALUES ('FPH-0016', '0', '', 'LSEK0940', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC HEALTHCARE');
INSERT INTO mst_barang VALUES ('FPH-0017', '0', '', 'LSEK0941', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC HEALTHCARE');
INSERT INTO mst_barang VALUES ('FPH-0018', '0', '', 'LSEK0942', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC HEALTHCARE');
INSERT INTO mst_barang VALUES ('FPH-0019', '0', '', 'LSEK0943', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC HEALTHCARE');
INSERT INTO mst_barang VALUES ('FPH-0020', '0', '', 'LSEK0944', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC HEALTHCARE');
INSERT INTO mst_barang VALUES ('FPH-0021', '0', '', 'LSEK0945', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC HEALTHCARE');
INSERT INTO mst_barang VALUES ('FPH-0022', '0', '', 'LSEK0946', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC HEALTHCARE');
INSERT INTO mst_barang VALUES ('FPH-0023', '0', '', 'LSEK0964', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC HEALTHCARE');
INSERT INTO mst_barang VALUES ('FPH-0024', '0', '', 'LSEK0970', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC HEALTHCARE');
INSERT INTO mst_barang VALUES ('FPH-0025', '0', '', 'LSEK0972', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC HEALTHCARE');
INSERT INTO mst_barang VALUES ('FPH-0026', '0', '', 'LSSC0766', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC HEALTHCARE');
INSERT INTO mst_barang VALUES ('FPH-0027', '0', '', 'LSSC0796', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC HEALTHCARE');
INSERT INTO mst_barang VALUES ('FPH-0028', '0', '', 'LSSC0797', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC HEALTHCARE');
INSERT INTO mst_barang VALUES ('FPH-0029', '0', '', 'LSSC0798', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC HEALTHCARE');
INSERT INTO mst_barang VALUES ('FPH-0030', '0', '', 'LSSC0799', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC HEALTHCARE');
INSERT INTO mst_barang VALUES ('FPH-0031', '0', '', 'LSSC0800', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC HEALTHCARE');
INSERT INTO mst_barang VALUES ('FPH-0032', '0', '', 'LSSC0812-3', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC HEALTHCARE');
INSERT INTO mst_barang VALUES ('FPH-0033', '0', '', 'LSSC0814', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC HEALTHCARE');
INSERT INTO mst_barang VALUES ('FPH-0034', '0', '', 'LSSC0815', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC HEALTHCARE');
INSERT INTO mst_barang VALUES ('FPH-0035', '0', '', 'LSSC0816', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC HEALTHCARE');
INSERT INTO mst_barang VALUES ('FPH-0036', '0', '', 'LSSC0817', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC HEALTHCARE');
INSERT INTO mst_barang VALUES ('FPH-0037', '0', '', 'LSSC0856', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC HEALTHCARE');
INSERT INTO mst_barang VALUES ('FPH-0038', '0', '', 'LSSC1116', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC HEALTHCARE');
INSERT INTO mst_barang VALUES ('FPH-0039', '0', '', 'AL BLANK SHEET A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC HEALTHCARE');
INSERT INTO mst_barang VALUES ('FPH-0040', '0', '', 'AL BLANK SHEET B', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC HEALTHCARE');
INSERT INTO mst_barang VALUES ('FPH-0041', '0', '', 'AL BLANK SHEET C', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC HEALTHCARE');
INSERT INTO mst_barang VALUES ('FPH-0042', '0', '', 'AL BLANK SHEET D', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC HEALTHCARE');
INSERT INTO mst_barang VALUES ('FPH-0043', '0', '', 'AL BLANK SHEET E', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC HEALTHCARE');
INSERT INTO mst_barang VALUES ('FPH-0044', '0', '', 'AL BLANK SHEET F', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC HEALTHCARE');
INSERT INTO mst_barang VALUES ('FPM-0001', '0', '', 'RMYN0017', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC MANUFACTURING INDONESIA');
INSERT INTO mst_barang VALUES ('FPM-0002', '0', '', 'RMYN0018', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC MANUFACTURING INDONESIA');
INSERT INTO mst_barang VALUES ('FPM-0003', '0', '', 'RMYN0018 ( Tembaga )', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC MANUFACTURING INDONESIA');
INSERT INTO mst_barang VALUES ('FPM-0004', '0', '', 'RMYN0018 ( Platting )', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC MANUFACTURING INDONESIA');
INSERT INTO mst_barang VALUES ('FPM-0005', '0', '', 'RMYN0018A-1 ( Tembaga+ ED Coating )', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC MANUFACTURING INDONESIA');
INSERT INTO mst_barang VALUES ('FPM-0006', '0', '', 'RMYN0019', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC MANUFACTURING INDONESIA');
INSERT INTO mst_barang VALUES ('FPM-0007', '0', '', 'TUC4N07300', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC MANUFACTURING INDONESIA');
INSERT INTO mst_barang VALUES ('FPM-0008', '0', '', 'TUC4N07301', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC MANUFACTURING INDONESIA');
INSERT INTO mst_barang VALUES ('FPM-0009', '0', '', 'TUC4N07400', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC MANUFACTURING INDONESIA');
INSERT INTO mst_barang VALUES ('FPT-0001', '0', '', 'DN31A367MOI', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'POLYTRON');
INSERT INTO mst_barang VALUES ('FPT-0002', '0', '', 'PN2201143', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'POLYTRON');
INSERT INTO mst_barang VALUES ('FPT-0003', '0', '', 'DN34D062', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'POLYTRON');
INSERT INTO mst_barang VALUES ('FPT-0004', '0', '', 'PN2201225', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'POLYTRON');
INSERT INTO mst_barang VALUES ('FSE-0001', '0', '', 'CF12C Heat sink', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SIIX EMS INDONESIA');
INSERT INTO mst_barang VALUES ('FSI-0001', '0', '', 'AP43456-125-02D', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0002', '0', '', 'AP47039-275-12', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0003', '0', '', 'APB42200-502A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0004', '0', '', 'APB42200-508', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0005', '0', '', 'APC32000-510B', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0006', '0', '', 'APC32000-512A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0007', '0', '', 'APC42200-503A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0008', '0', '', 'APC42200-525', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0009', '0', '', 'APC42200-530C', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0010', '0', '', 'APC42200-541', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0011', '0', '', 'APC42200-542', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0012', '0', '', 'APC42200-543', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0013', '0', '', 'APC46100-501A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0014', '0', '', 'APC46400-502A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0015', '0', '', 'APC47100-501B', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0016', '0', '', 'APE46100-537', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0017', '0', '', 'APH24000-023E', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0018', '0', '', 'APH24000-504E', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0019', '0', '', 'APH24000-506', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0020', '0', '', 'APH24000-507', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0021', '0', '', 'APH24400-501A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0022', '0', '', 'APH24400-502', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0023', '0', '', 'APH24400-502A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0024', '0', '', 'APH34000-109A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0025', '0', '', 'APH34000-504B', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0026', '0', '', 'APH34000-506C', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0027', '0', '', 'APH34000-530(Thernsheet)', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0028', '0', '', 'APH34000-540', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0029', '0', '', 'APH34000-555/APH34000-555A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0030', '0', '', 'APH34000-556A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0031', '0', '', 'APH34000-561EThernsheet besar', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0032', '0', '', 'APH34000-561EThernsheetkecil', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0033', '0', '', 'APH34000-567A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0034', '0', '', 'APH34000-567AECOTORIO', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0035', '0', '', 'APH34000-583A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0036', '0', '', 'APH34000-590', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0037', '0', '', 'APH34000-598', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0038', '0', '', 'APH34000-646', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0039', '0', '', 'APH34000-647', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0040', '0', '', 'APH34000-658', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0041', '0', '', 'APH34000-701-2A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0042', '0', '', 'APH34000-733', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0043', '0', '', 'APH34000-737', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0044', '0', '', 'APH34000-738A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0045', '0', '', 'APH34000-759MF', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0046', '0', '', 'APH34000-832-A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0047', '0', '', 'APH34000-855-2A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0048', '0', '', 'APH34100-526D(Thernsheetkecil)', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0049', '0', '', 'APH34100-526D(thernsheetbesar)', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0050', '0', '', 'APH34100-549A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0051', '0', '', 'APH34100-551', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0052', '0', '', 'APH34100-557', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0053', '0', '', 'APH34100-558', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0054', '0', '', 'APH34200-307C', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0055', '0', '', 'APH34200-308', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0056', '0', '', 'APH34200-518', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0057', '0', '', 'APH34200-599A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0058', '0', '', 'APH34200-601A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0059', '0', '', 'APH34200-606', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0060', '0', '', 'APH34200-625A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0061', '0', '', 'APH34200-641', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0062', '0', '', 'APH34200-642A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0063', '0', '', 'APH34200-643A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0064', '0', '', 'APH34200-644B', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0065', '0', '', 'APH34200-645A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0066', '0', '', 'APH34200-646', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0067', '0', '', 'APH34200-650C', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0068', '0', '', 'APH34200-667B', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0069', '0', '', 'APH34200-669', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0070', '0', '', 'APH34200-670', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0071', '0', '', 'APH34300-525C', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0072', '0', '', 'APH34400-564', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0073', '0', '', 'APH36300-501A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0074', '0', '', 'APH36300-503', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0075', '0', '', 'APH42100-504', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0076', '0', '', 'APH42100-506A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0077', '0', '', 'APH42300-502C', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0078', '0', '', 'APH44000-175Bthernsheet', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0079', '0', '', 'APH44000-513A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0080', '0', '', 'APH44000-515/APH44000-515A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0081', '0', '', 'APH44000-551/APH44000-551A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0082', '0', '', 'APH44000-586', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0083', '0', '', 'APH44000-591', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0084', '0', '', 'APH44000-599/APH4000-599A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0085', '0', '', 'APH44000-630C', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0086', '0', '', 'APH44000-631D', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0087', '0', '', 'APH44000-635B', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0088', '0', '', 'APH44000-636', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0089', '0', '', 'APH44000-637', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0090', '0', '', 'APH44000-637B', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0091', '0', '', 'APH44000-638B', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0092', '0', '', 'APH44000-651BA', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0093', '0', '', 'APH44000-652BA', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0094', '0', '', 'APH44000-682', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0095', '0', '', 'APH44000-688ECOTORIO', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0096', '0', '', 'APH44000-710/APH44000-710A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0097', '0', '', 'APH44000-738', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0098', '0', '', 'APH44000-739', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0099', '0', '', 'APH44000-742-A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0100', '0', '', 'APH44000-746A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0101', '0', '', 'APH44000-751', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0102', '0', '', 'APH44000-754', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0103', '0', '', 'APH44000-759MF', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0104', '0', '', 'APH44000-759WA', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0105', '0', '', 'APH44000-760MF', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0106', '0', '', 'APH44000-760WA', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0107', '0', '', 'APH44000-761MF', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0108', '0', '', 'APH44000-737', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0109', '0', '', 'APH44000-773', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0110', '0', '', 'APH44000-780-1', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0111', '0', '', 'APH44000-785', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0112', '0', '', 'APH44000-790-1BA', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0113', '0', '', 'APH44000-791-3', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0114', '0', '', 'APH44000-792-3', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0115', '0', '', 'APH44000-797-3', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0116', '0', '', 'APH44000-809-2', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0117', '0', '', 'APH44000-809-3', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0118', '0', '', 'APH44000-810', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0119', '0', '', 'APH44000-814-2', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0120', '0', '', 'APH44000-814-3', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0121', '0', '', 'APH44000-815-2', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0122', '0', '', 'APH44000-815-3', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0123', '0', '', 'APH44000-817A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0124', '0', '', 'APH44000-819', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0125', '0', '', 'APH44000-820', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0126', '0', '', 'APH44000-821', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0127', '0', '', 'APH44000-822', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0128', '0', '', 'APH44000-829', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0129', '0', '', 'APH44000-830-3A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0130', '0', '', 'APH44000-831-3A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0131', '0', '', 'APH44000-937', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0132', '0', '', 'APH44000-942-2', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0133', '0', '', 'APH44000-943-2', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0134', '0', '', 'APH44000-949-2', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0135', '0', '', 'APH44000-954-2', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0136', '0', '', 'APH44000-984BA', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0137', '0', '', 'APH44000-984WA', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0138', '0', '', 'APH44000-988-2', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0139', '0', '', 'APH44001-511-2B', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0140', '0', '', 'APH44001-512-2A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0141', '0', '', 'APH44001-516-2A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0142', '0', '', 'APH44001-517-2', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0143', '0', '', 'APH44001-521', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0144', '0', '', 'APH44001-528-3A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0145', '0', '', 'APH44001-535', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0146', '0', '', 'APH44001-536', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0147', '0', '', 'APH44001-540', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0148', '0', '', 'APH44001-544-2', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0149', '0', '', 'APH44001-545-2', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0150', '0', '', 'APH44001-546-2B', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0151', '0', '', 'APH44001-547-2', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0152', '0', '', 'APH44001-558-2', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0153', '0', '', 'APH44001-559', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0154', '0', '', 'APH44001-560-2', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0155', '0', '', 'APH44001-562', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0156', '0', '', 'APH44001-563', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0157', '0', '', 'APH44001-564', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0158', '0', '', 'APH44001-569-2', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0159', '0', '', 'APH44001-581-2A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0160', '0', '', 'APH44001-585-2', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0161', '0', '', 'APH44001-586-2', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0162', '0', '', 'APH44001-590-2', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0163', '0', '', 'APH44001-590-2 Eksport', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0164', '0', '', 'APH44001-595A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0165', '0', '', 'APH44001-595A Eksport', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0166', '0', '', 'APH44001-597B', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0167', '0', '', 'APH44100-511A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0168', '0', '', 'APH44100-588', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0169', '0', '', 'APH44100-604B', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0170', '0', '', 'APH44100-632A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0171', '0', '', 'APH44100-638B', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0172', '0', '', 'APH44100-656D', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0173', '0', '', 'APH44100-657A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0174', '0', '', 'APH44100-730A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0175', '0', '', 'APH44100-742B', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0176', '0', '', 'APH44100-748B', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0177', '0', '', 'APH44100-751A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0178', '0', '', 'APH44100-767', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0179', '0', '', 'APH44100-773', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0180', '0', '', 'APH44100-774', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0181', '0', '', 'APH44100-775A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0182', '0', '', 'APH44100-775A eksport', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0183', '0', '', 'APH44100-778A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0184', '0', '', 'APH44100-779C', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0185', '0', '', 'APH44200-536A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0186', '0', '', 'APH44200-537A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0187', '0', '', 'APH44200-588A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0188', '0', '', 'APH44200-589', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0189', '0', '', 'APH44200-594', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0190', '0', '', 'APH44200-601B', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0191', '0', '', 'APH44200-609', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0192', '0', '', 'APH44200-612', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0193', '0', '', 'APH44200-621', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0194', '0', '', 'APH44200-623', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0195', '0', '', 'APH44200-632A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0196', '0', '', 'APH44200-640', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0197', '0', '', 'APH44200-680', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0198', '0', '', 'APH44200-704', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0199', '0', '', 'APH44200-705', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0200', '0', '', 'APH44200-712', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0201', '0', '', 'APH44300-517/APH44300-517A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0202', '0', '', 'APH44400-599A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0203', '0', '', 'APH44400-603C', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0204', '0', '', 'APH44400-607A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0205', '0', '', 'APH44400-610', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0206', '0', '', 'APH44400-616-2', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0207', '0', '', 'APH44600-507A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0208', '0', '', 'APH46100-547', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0209', '0', '', 'APH46400-540', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0210', '0', '', 'APJ42200-508', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0211', '0', '', 'APJ43400-501B', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0212', '0', '', 'HAP33494-927C/D', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0213', '0', '', 'HAP33494-928C/D', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0214', '0', '', 'HAP33495-871A/B', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0215', '0', '', 'HAP33495-872A/B', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0216', '0', '', 'HAP33497-684A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0217', '0', '', 'HAP33497-685A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0218', '0', '', 'HAP33503-780', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0219', '0', '', 'HAP33503-781', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0220', '0', '', 'HAP33522-828', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0221', '0', '', 'HAP33522-829', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0222', '0', '', 'HAP43962-730-C', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0223', '0', '', 'HAP44029-942', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0224', '0', '', 'HAP44029-723', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0225', '0', '', 'OSH-1625-SPL', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0226', '0', '', 'OSH-1640-MP', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0227', '0', '', 'APH44001-503-2', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0228', '0', '', 'OSH-2428-SPL', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0229', '0', '', 'PC0615-53-PB', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0230', '0', '', 'PC1724B-40-PB/CX47100-144', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0231', '0', '', 'PUE16-25/OSH-1625-MP/OSH-1625-MF', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0232', '0', '', 'TR2215B', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0233', '0', '', 'TR3015B', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0234', '0', '', 'TR4515B', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0235', '0', '', 'APH34200-673A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0236', '0', '', 'APH44100-782A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0237', '0', '', 'APH44200-669', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0238', '0', '', 'APH44200-740', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0239', '0', '', 'APH44400-623', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0240', '0', '', 'APH46100-570', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0241', '0', '', 'APH44001-605-2  A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0242', '0', '', 'APH44200-738', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0243', '0', '', 'APH44200-739', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSI-0244', '0', '', 'APH44400-621    A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN');
INSERT INTO mst_barang VALUES ('FSJ-0001', '0', '', 'HAP33513-723A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN JAPAN');
INSERT INTO mst_barang VALUES ('FTG-0001', '0', '', '501-07-024-70/CP187nobuffing', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'TOA GALVA');
INSERT INTO mst_barang VALUES ('FTG-0002', '0', '', '501-07-026-70/CP237', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'TOA GALVA');
INSERT INTO mst_barang VALUES ('FTG-0003', '0', '', '501-07-142-00/handlebracketMF', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'TOA GALVA');
INSERT INTO mst_barang VALUES ('FTG-0004', '0', '', '501-07-206-90/controlpanel', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'TOA GALVA');
INSERT INTO mst_barang VALUES ('FTG-0005', '0', '', '501-07-207-20/tunercase', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'TOA GALVA');
INSERT INTO mst_barang VALUES ('FTG-0006', '0', '', '501-07-208-70/tunercover', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'TOA GALVA');
INSERT INTO mst_barang VALUES ('FTG-0007', '0', '', '501-07-253-70/F1000WPWallBracket', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'TOA GALVA');
INSERT INTO mst_barang VALUES ('FTG-0008', '0', '', '501-07-254-40/F2000WPWallBracket', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'TOA GALVA');
INSERT INTO mst_barang VALUES ('FTG-0009', '0', '', '501-07-255-30/F1000WPSpeakerbracket', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'TOA GALVA');
INSERT INTO mst_barang VALUES ('FTG-0010', '0', '', '501-07-256-40/F2000WPSpeakerbracket', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'TOA GALVA');
INSERT INTO mst_barang VALUES ('FTG-0011', '0', '', '501-07-408-50/BS-1015BS', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'TOA GALVA');
INSERT INTO mst_barang VALUES ('FTG-0012', '0', '', '501-08-136-80/heatsink', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'TOA GALVA');
INSERT INTO mst_barang VALUES ('FTG-0013', '0', '', '501-27-196-50/handlebracketw/blk', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'TOA GALVA');
INSERT INTO mst_barang VALUES ('FTG-0014', '0', '', '501-27-365-70/PE-154BS', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'TOA GALVA');
INSERT INTO mst_barang VALUES ('FYA-0001', '0', '', 'V702680', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('FYA-0002', '0', '', 'V776520', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('FYA-0003', '0', '', 'V786660WA', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('FYA-0004', '0', '', 'WC40830', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('FYA-0005', '0', '', 'WD18590 MODIF.', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('FYA-0006', '0', '', 'WD34730', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('FYA-0007', '0', '', 'WD94300A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('FYA-0008', '0', '', 'WE08730', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('FYA-0009', '0', '', 'WE15330/WG80390', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('FYA-0010', '0', '', 'WE15890/WG80380', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('FYA-0011', '0', '', 'WE15900/WG80370', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('FYA-0012', '0', '', 'WF54840', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('FYA-0013', '0', '', 'WF54850/WG80410', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('FYA-0014', '0', '', 'WG12050/WG80420', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('FYA-0015', '0', '', 'WG12060/WG80430', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('FYA-0016', '0', '', 'WG12070/WG80400', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('FYA-0017', '0', '', 'WG79990(Thern sheet only)', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('FYA-0018', '0', '', 'WG81820', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('FYA-0019', '0', '', 'WG98730BA', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('FYA-0020', '0', '', 'WG98730MF', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('FYA-0021', '0', '', 'WH00930', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('FYA-0022', '0', '', 'WH13020BA', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('FYA-0023', '0', '', 'WH13020MF', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('FYA-0024', '0', '', 'WH15130', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('FYA-0025', '0', '', 'WH15140', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('FYA-0026', '0', '', 'WH15150', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('FYA-0027', '0', '', 'WH45700', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('FYA-0028', '0', '', 'WJ14710', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('FYA-0029', '0', '', 'WJ14720', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('FYA-0030', '0', '', 'WJ16500', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('FYA-0031', '0', '', 'WJ17290', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('FYA-0032', '0', '', 'WJ45230', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('FYA-0033', '0', '', 'WJ91580', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('FYA-0034', '0', '', 'WJ94790BA', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('FYA-0035', '0', '', 'WJ94790MF', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('FYA-0036', '0', '', 'WK14070', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('FYA-0037', '0', '', 'WK14080', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('FYA-0038', '0', '', 'WK78660', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('FYA-0039', '0', '', 'WK79870 BA', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('FYA-0040', '0', '', 'WK79870 MF', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('FYA-0041', '0', '', 'WK79880 ( L )', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('FYA-0042', '0', '', 'WK79940 ( R )', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('FYA-0043', '0', '', 'WM14970', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('FYA-0044', '0', '', 'WM14980', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('FYA-0045', '0', '', 'WM47210', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('FYA-0046', '0', '', 'WM69000', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('FYA-0047', '0', '', 'WM69020', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('FYA-0048', '0', '', 'WM69030', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('FYA-0049', '0', '', 'WM83390', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('FYA-0050', '0', '', 'WN12150', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('FYA-0051', '0', '', 'WN13310', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('FYA-0052', '0', '', 'WN53320', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('FYA-0053', '0', '', 'WP01280', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('FYA-0054', '0', '', 'WP20300', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('FYA-0055', '0', '', 'WP20580', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('FYA-0056', '0', '', 'WP20600', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('FYA-0057', '0', '', 'WP21310', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('FYA-0058', '0', '', 'WP22570', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('FYA-0059', '0', '', 'WP22630', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('FYA-0060', '0', '', 'WP22700 BA', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('FYA-0061', '0', '', 'WP22700 MF', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('FYA-0062', '0', '', 'WP27730', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('FYA-0063', '0', '', 'WP93120', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('FYA-0064', '0', '', 'WP93130', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('FYA-0065', '0', '', 'WP93140', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('FYA-0066', '0', '', 'WP93150', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('FYA-0067', '0', '', 'WS08710', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('FYA-0068', '0', '', 'WS39620', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('FYA-0069', '0', '', 'WT46090', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('FYA-0070', '0', '', 'WT46110', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('FYA-0071', '0', '', 'WT87950', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('FYA-0072', '0', '', 'WT87970', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('FYA-0073', '0', '', 'WU12800', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('FYA-0074', '0', '', 'WU13170', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('FYA-0075', '0', '', 'WU30150', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('FYA-0076', '0', '', 'WV38420', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('FYA-0077', '0', '', 'WV50980', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('FYA-0078', '0', '', 'WV50990', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('FYA-0079', '0', '', 'WW31910', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('FYA-0080', '0', '', 'WY91820', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('FYA-0081', '0', '', 'ZC89370', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('FYA-0082', '0', '', 'ZA88180', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('FYA-0083', '0', '', 'ZA99150', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('FYA-0084', '0', '', 'ZE26630', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('FYA-0085', '0', '', 'ZF38310', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('FYA-0086', '0', '', 'ZF38320', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('FYA-0087', '0', '', 'ZF38330', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('FYA-0088', '0', '', 'ZF38340', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('FYA-0089', '0', '', 'ZE63230', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('FYA-0090', '0', '', 'ZF60070', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('FYI-0001', '0', '', 'V696570', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YEMI');
INSERT INTO mst_barang VALUES ('FYI-0002', '0', '', 'V986330', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YEMI');
INSERT INTO mst_barang VALUES ('FYI-0003', '0', '', 'V986680', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YEMI');
INSERT INTO mst_barang VALUES ('FYI-0004', '0', '', 'WA10780BA', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YEMI');
INSERT INTO mst_barang VALUES ('FYI-0005', '0', '', 'WA10780MF3mm', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YEMI');
INSERT INTO mst_barang VALUES ('FYI-0006', '0', '', 'WB27950BA(t=3mm)', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YEMI');
INSERT INTO mst_barang VALUES ('FYI-0007', '0', '', 'WB27950MF(t=3mm)', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YEMI');
INSERT INTO mst_barang VALUES ('FYI-0008', '0', '', 'WB27960BA(t=3mm)', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YEMI');
INSERT INTO mst_barang VALUES ('FYI-0009', '0', '', 'WB27960MF(t=3mm)', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YEMI');
INSERT INTO mst_barang VALUES ('FYI-0010', '0', '', 'WB96410', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YEMI');
INSERT INTO mst_barang VALUES ('FYI-0011', '0', '', 'WD58680', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YEMI');
INSERT INTO mst_barang VALUES ('FYI-0012', '0', '', 'WF33690', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YEMI');
INSERT INTO mst_barang VALUES ('FYI-0013', '0', '', 'WF60800', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YEMI');
INSERT INTO mst_barang VALUES ('FYI-0014', '0', '', 'WF85590', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YEMI');
INSERT INTO mst_barang VALUES ('FYI-0015', '0', '', 'WH79060', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YEMI');
INSERT INTO mst_barang VALUES ('FYI-0016', '0', '', 'WK12380BA', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YEMI');
INSERT INTO mst_barang VALUES ('FYI-0017', '0', '', 'WK12380MF', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YEMI');
INSERT INTO mst_barang VALUES ('FYI-0018', '0', '', 'WK87830', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YEMI');
INSERT INTO mst_barang VALUES ('FYI-0019', '0', '', 'WK87850', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YEMI');
INSERT INTO mst_barang VALUES ('FYI-0020', '0', '', 'WP49440', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YEMI');
INSERT INTO mst_barang VALUES ('FYI-0021', '0', '', 'WY74640', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YEMI');
INSERT INTO mst_barang VALUES ('FYI-0022', '0', '', 'WY74650', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YEMI');
INSERT INTO mst_barang VALUES ('FYI-0023', '0', '', 'ZC64240', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YEMI');
INSERT INTO mst_barang VALUES ('FYI-0024', '0', '', 'ZD93680', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YEMI');
INSERT INTO mst_barang VALUES ('FYI-0025', '0', '', 'ZD21910', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YEMI');
INSERT INTO mst_barang VALUES ('FYI-0026', '0', '', 'ZD21920', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YEMI');
INSERT INTO mst_barang VALUES ('FYI-0027', '0', '', 'ZD55040', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YEMI');
INSERT INTO mst_barang VALUES ('FYI-0028', '0', '', 'ZD22000', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YEMI');
INSERT INTO mst_barang VALUES ('FYI-0029', '0', '', 'ZD91900', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YEMI');
INSERT INTO mst_barang VALUES ('FYI-0030', '0', '', 'ZD91920', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YEMI');
INSERT INTO mst_barang VALUES ('FYJ-0001', '0', '', 'WM47211', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YAMAHA CORPORATION');
INSERT INTO mst_barang VALUES ('RAC-0001', '1', 'RAC', '', 'Aluminium Coil', '', '', null, null, null, null, null, null, '', '0.40x114.20mm', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('RAC-0002', '1', 'RAC', '', 'Aluminium Coil', '', '', null, null, null, null, null, null, '', '0.50x114.20mm', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('RAC-0003', '1', 'RAC', '', 'Aluminium Coil', '', '', null, null, null, null, null, null, '', '0.5x70mmxCoil H12', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('RAC-0004', '1', 'RAC', '', 'Aluminium Coil', '', '', null, null, null, null, null, null, '', '0.50x45mm', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('RAC-0005', '1', 'RAC', '', 'Aluminium Coil', '', '', null, null, null, null, null, null, '', '0.50x55mm', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('RAC-0006', '1', 'RAC', '', 'Aluminium Coil', '', '', null, null, null, null, null, null, '', '0.50x80mm', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('RAC-0007', '1', 'RAC', '', 'Aluminium Coil', '', '', null, null, null, null, null, null, '', '0.50x89.5mm', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('RAC-0008', '1', 'RAC', '', 'Aluminium Coil', '', '', null, null, null, null, null, null, '', '1.5x33mm', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('RAC-0009', '1', 'RAC', '', 'Aluminium Coil', '', '', null, null, null, null, null, null, '', '1.5x35mm', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('RAC-0010', '1', 'RAC', '', 'Aluminium Coil', '', '', null, null, null, null, null, null, '', '1.5x49mm', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('RAC-0011', '1', 'RAC', '', 'Aluminium Coil', '', '', null, null, null, null, null, null, '', '1.5x60mm', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('RAO-0001', '1', 'RAR', '', 'Aluminium Circle', '', '', null, null, null, null, null, null, '', '1.0X.245 ', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('RAO-0002', '1', 'RAR', '', 'Aluminium Circle', '', '', null, null, null, null, null, null, '', 'Ø 200,  T=1.0', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('RAO-0003', '1', 'RAR', '', 'Aluminium Circle', '', '', null, null, null, null, null, null, '', 'Ø 203, T=1.0', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('RAS-0001', '1', 'RAS', '', 'Aluminium Sheet', '', '', null, null, null, null, null, null, '', '2 X 1220 X 2440', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('RAS-0002', '1', 'RAS', '', 'Aluminium Sheet', '', '', null, null, null, null, null, null, '', '1.0x1000x2000 H12', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('RAS-0003', '1', 'RAS', '', 'Aluminium Sheet', '', '', null, null, null, null, null, null, '', '1.5x1000x2000', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('RAS-0004', '1', 'RAS', '', 'Aluminium Sheet', '', '', null, null, null, null, null, null, '', '2.0x1000x2000', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('RAS-0005', '1', 'RAS', '', 'Aluminium Sheet', '', '', null, null, null, null, null, null, '', '3.0x1000x2000', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('RAS-0006', '1', 'RAS', '', 'Aluminium Sheet', '', '', null, null, null, null, null, null, '', '3 X 1220 X 2440', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('RAS-0007', '1', 'RAS', '', 'Aluminium Sheet', '', '', null, null, null, null, null, null, '', '1.5 X 1220 X 2440', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('RAS-0008', '1', 'RAS', '', 'Aluminium Sheet', '', '', null, null, null, null, null, null, '', '1.6 X 914 X 4800', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('RCU-0001', '1', 'RMO', '', 'Copper', '', '', null, null, null, null, null, null, '', '0.5 x 365x 1200 Tembaga', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('REA-0001', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3130', null, null, 'NA', '2975', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0002', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3970', null, null, 'MF', '3393', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0003', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '1990', null, null, 'NA', '3990', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0004', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3970', null, null, 'NA', '3991', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0005', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '4000', null, null, 'NA', '3991', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0006', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3980', null, null, 'MF', '3992', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0007', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3740', null, null, 'NA', '3993', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0008', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '2000', null, null, 'NA', '4127', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0009', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '2000', null, null, 'MF', '4146', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0010', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3940', null, null, 'BA', '4166', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0011', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3980', null, null, 'BA', '4166', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0012', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3940', null, null, 'MF', '4166', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0013', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3960', null, null, 'MF', '4166', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0014', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '4000', null, null, 'MF', '4169', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0015', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3970', null, null, 'MF', '4172', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0016', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '4010', null, null, 'MF', '4178', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0017', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '2000', null, null, 'NA', '4186', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0018', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3840', null, null, 'NA', '4186', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0019', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3990', null, null, 'NA', '4186', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0020', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '4000', null, null, 'NA', '4186', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0021', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '2000', null, null, 'MF', '4186', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0022', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3840', null, null, 'MF', '4186', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0023', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3990', null, null, 'MF', '4186', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0024', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '4000', null, null, 'MF', '4186', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0025', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3900', null, null, 'NA', '4194', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0026', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3980', null, null, 'NA', '4194', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0027', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '4010', null, null, 'NA', '4194', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0028', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '2010', null, null, 'MF', '4199', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0029', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3850', null, null, 'MF', '4367', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0030', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3950', null, null, 'MF', '4372', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0031', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3990', null, null, 'BA', '4374', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0032', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '2010', null, null, 'MF', '4374', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0033', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3980', null, null, 'NA', '4393', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0034', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3980', null, null, 'BA', '4396', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0035', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '4000', null, null, 'BA', '4396', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0036', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3890', null, null, 'NA', '4396', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0037', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3950', null, null, 'NA', '4396', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0038', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3940', null, null, 'BA', '4397', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0039', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '4000', null, null, 'BA', '4397', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0040', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3960', null, null, 'MF', '4397', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0041', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3980', null, null, 'MF', '4399', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0042', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3990', null, null, 'BA', '4441', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0043', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3990', null, null, 'NA', '4441', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0044', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3900', null, null, 'MF', '4443', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0045', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3850', null, null, 'BA', '4446', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0046', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '4000', null, null, 'BA', '4446', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0047', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3940', null, null, 'NA', '4446', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0048', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3960', null, null, 'NA', '4446', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0049', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '4000', null, null, 'NA', '4446', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0050', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '4000', null, null, 'MF', '4446', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0051', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3980', null, null, 'NA', '4447', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0052', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3930', null, null, 'MF', '4449', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0053', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3940', null, null, 'MF', '4449', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0054', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3970', null, null, 'MF', '4449', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0055', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '4000', null, null, 'MF', '4449', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0056', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '1000', null, null, 'MF', '4450', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0057', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3920', null, null, 'MF', '4451', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0058', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3970', null, null, 'MF', '4451', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0059', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3920', null, null, 'MF', '4452', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0060', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3940', null, null, 'MF', '4452', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0061', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3840', null, null, 'MF', '4454', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0062', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3940', null, null, 'MF', '4454', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0063', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3960', null, null, 'NA', '4460', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0064', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3980', null, null, 'NA', '4461', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0065', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3880', null, null, 'MF', '4464', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0066', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3890', null, null, 'MF', '4464', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0067', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3960', null, null, 'MF', '4464', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0068', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3990', null, null, 'BA', '4465', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0069', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3920', null, null, 'MF', '4466', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0070', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3900', null, null, 'NA', '4467', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0071', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3950', null, null, 'NA', '4467', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0072', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '2010', null, null, 'MF', '4468', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0073', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '2010', null, null, 'BA', '4471', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0074', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '2010', null, null, 'MF', '4471', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0075', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3980', null, null, 'MF', '4471', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0076', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3500', null, null, 'NA', '4472', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0077', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3570', null, null, 'NA', '4472', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0078', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3680', null, null, 'NA', '4472', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0079', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '2390', null, null, 'MF', '4474', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0080', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '2620', null, null, 'MF', '4474', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0081', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '2840', null, null, 'MF', '4474', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0082', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3940', null, null, 'MF', '4474', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0083', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3940', null, null, 'MF', '4476', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0084', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '4000', null, null, 'BA', '4477', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0085', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '4000', null, null, 'NA', '4477', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0086', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3900', null, null, 'BA', '4478', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0087', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3990', null, null, 'MF', '4478', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0088', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3520', null, null, 'BA', '4479', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0089', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3980', null, null, 'NA', '4480', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0090', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '2000', null, null, 'BA', '9401', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0091', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3980', null, null, 'BA', '9401', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0092', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '2000', null, null, 'MF', '9401', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0093', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3880', null, null, 'MF', '9403', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0094', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3880', null, null, 'MF', '9404', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0095', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3960', null, null, 'BA', '9405', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0096', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3930', null, null, 'BA', '9406', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0097', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3880', null, null, 'NA', '9407', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0098', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3990', null, null, 'MF', '9407', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0099', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3980', null, null, 'BA', '9409', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0100', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '2520', null, null, 'NA', '9411', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0101', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '4090', null, null, 'NA', '9412', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0102', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '4000', null, null, 'NA', '9413', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0103', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '2990', null, null, 'NA', '9414', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0104', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3980', null, null, 'NA', '9416', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0105', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3900', null, null, 'MF', '9417', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0106', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3940', null, null, 'MF', '9417', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0107', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3920', null, null, 'MF', '9419', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0108', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3950', null, null, 'MF', '9419', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0109', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3970', null, null, 'BA', '9420', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0110', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3990', null, null, 'BA', '9420', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0111', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '4000', null, null, 'BA', '9420', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0112', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3940', null, null, 'MF', '9420', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0113', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3990', null, null, 'MF', '9420', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0114', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '4000', null, null, 'MF', '9420', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0115', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3980', null, null, 'NA', '9422', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0116', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3980', null, null, 'MF', '9422', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0117', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3900', null, null, 'BA', '9427', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0118', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3900', null, null, 'MF', '9427', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0119', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '1330', null, null, 'MF', '9428', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0120', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3150', null, null, 'NA', '9429', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0121', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3920', null, null, 'NA', '9429', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0122', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3970', null, null, 'NA', '9430', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0123', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '4000', null, null, 'NA', '9430', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0124', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '4040', null, null, 'NA', '9430', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0125', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3960', null, null, 'BA', '9431', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0126', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '2010', null, null, 'BA', '9432', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0127', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3970', null, null, 'NA', '9433', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0128', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3900', null, null, 'MF', '9434', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0129', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '4090', null, null, 'MF', '9434', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0130', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3900', null, null, 'NA', '9438', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0131', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3980', null, null, 'NA', '9439', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0132', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '2000', null, null, 'NA', '4126R', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0133', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3840', null, null, 'MF', '4459R', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0134', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3980', null, null, 'MF', '4459R', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0135', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '2000', null, null, 'BA', '9402R', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0136', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3960', null, null, 'MF', '4471', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0137', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3950', null, null, 'MF', '4464', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REA-0138', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3950', null, null, 'BA', '9405', 'KG', null, '', '', 'ALEXINDO');
INSERT INTO mst_barang VALUES ('REI-0001', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3790', null, null, 'NA 10 MC', '4273', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0002', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '4400', null, null, 'NA 10 MC', '4274', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0003', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '1330', null, null, 'MF', '6819', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0004', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '2000', null, null, 'BA', '8271', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0005', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '2050', null, null, 'MF', '8490', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0006', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '2010', null, null, 'MF', '8490', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0007', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '4000', null, null, 'NA', '8610', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0008', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '2050', null, null, 'NA', '8610', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0009', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3940', null, null, 'MF', '8610', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0010', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '4010', null, null, 'MF', '8615', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0011', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '4010', null, null, 'MF', '8616', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0012', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '4010', null, null, 'NA', '8618', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0013', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3990', null, null, 'NA', '8618', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0014', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3980', null, null, 'NA', '8618', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0015', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3950', null, null, 'NA', '8618', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0016', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '2000', null, null, 'MF', '8619', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0017', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3840', null, null, 'NA', '8620', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0018', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3840', null, null, 'MF', '8620', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0019', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '2000', null, null, 'MF', '8620', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0020', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '4010', null, null, 'MF', '8623', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0021', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '4070', null, null, 'BA', '8624', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0022', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3960', null, null, 'BA', '8624', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0023', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3980', null, null, 'BA', '8626', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0024', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3980', null, null, 'NA', '8626', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0025', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3960', null, null, 'MF', '8628', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0026', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '4010', null, null, 'MF', '8629', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0027', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3940', null, null, 'MF', '8630', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0028', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3980', null, null, 'NA', '8631', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0029', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3980', null, null, 'MF', '8631', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0030', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '4000', null, null, 'NA', '8634', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0031', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '4000', null, null, 'BA', '8635', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0032', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '4000', null, null, 'MF', '8635', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0033', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3990', null, null, 'MF', '8635', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0034', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '4000', null, null, 'MF', '8637', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0035', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3950', null, null, 'NA', '8638', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0036', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3900', null, null, 'NA', '8638', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0037', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '4000', null, null, 'BA', '8639', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0038', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '4000', null, null, 'NA', '8639', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0039', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '4000', null, null, 'MF', '8640', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0040', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '4000', null, null, 'MF', '8644', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0041', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '4000', null, null, 'MF', '8645', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0042', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '4000', null, null, 'BA', '8646', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0043', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '4000', null, null, 'NA', '8646', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0044', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3880', null, null, 'NA', '8646', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0045', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3700', null, null, 'NA', '8646', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0046', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '4010', null, null, 'MF', '8646', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0047', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '4000', null, null, 'MF', '8646', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0048', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3990', null, null, 'MF', '8646', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0049', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3970', null, null, 'MF', '8646', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0050', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3930', null, null, 'MF', '8646', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0051', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3880', null, null, 'MF', '8646', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0052', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '4100', null, null, 'BA', '8648', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0053', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '4000', null, null, 'BA', '8648', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0054', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3990', null, null, 'BA', '8648', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0055', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '2050', null, null, 'BA', '8648', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0056', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '4100', null, null, 'MF', '8648', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0057', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '4000', null, null, 'MF', '8648', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0058', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3970', null, null, 'MF', '8648', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0059', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '2100', null, null, 'MF', '8648', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0060', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3960', null, null, 'MF', '8649', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0061', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '4000', null, null, 'BA', '8650', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0062', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3990', null, null, 'BA', '8650', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0063', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3970', null, null, 'BA', '8650', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0064', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '2050', null, null, 'BA', '8650', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0065', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '4000', null, null, 'MF', '8650', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0066', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3990', null, null, 'MF', '8650', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0067', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3940', null, null, 'MF', '8650', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0068', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '2050', null, null, 'MF', '8650', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0069', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3980', null, null, 'BA', '8651', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0070', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '4100', null, null, 'NA', '8653', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0071', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3940', null, null, 'MF', '8653', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0072', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3990', null, null, 'BA', '8654', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0073', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3900', null, null, 'BA', '8654', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0074', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3990', null, null, 'MF', '8654', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0075', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '1970', null, null, 'MF', '8655', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0076', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3950', null, null, 'BA', '8656', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0077', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3880', null, null, 'NA', '8656', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0078', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '4010', null, null, 'BA', '8658', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0079', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '4000', null, null, 'BA', '8658', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0080', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3970', null, null, 'BA', '8658', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0081', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3930', null, null, 'BA', '8658', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0082', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3850', null, null, 'BA', '8658', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0083', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3940', null, null, 'NA', '8658', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0084', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '4000', null, null, 'MF', '8658', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0085', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3980', null, null, 'MF', '8659', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0086', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '4000', null, null, 'BA', '8670', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0087', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3940', null, null, 'BA', '8670', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0088', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3850', null, null, 'BA', '8670', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0089', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3960', null, null, 'MF', '8670', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0090', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3980', null, null, 'BA', '8673', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0091', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3960', null, null, 'BA', '8673', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0092', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '2010', null, null, 'BA', '8673', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0093', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3980', null, null, 'MF', '8673', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0094', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '2010', null, null, 'MF', '8673', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0095', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3960', null, null, 'MF', '8676', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0096', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3890', null, null, 'MF', '8676', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0097', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3980', null, null, 'NA', '8683', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0098', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3970', null, null, 'MF', '8684', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0099', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3930', null, null, 'MF', '8684', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0100', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3500', null, null, 'NA', '8688', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0101', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3980', null, null, 'NA', '8689', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0102', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '2520', null, null, 'NA', '8690', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0103', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '1260', null, null, 'NA', '8690', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0104', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '4010', null, null, 'NA', '8691', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0105', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3980', null, null, 'NA', '8691', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0106', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3840', null, null, 'MF', '8692', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0107', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3940', null, null, 'MF', '8693', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0108', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3990', null, null, 'MF', '8694', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0109', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3990', null, null, 'BA', '8695', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0110', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3970', null, null, 'BA', '8695', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0111', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '2010', null, null, 'BA', '8695', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0112', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '2010', null, null, 'MF', '8695', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0113', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3990', null, null, 'NA', '8696', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0114', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3980', null, null, 'BA', '8697', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0115', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3980', null, null, 'NA', '8697', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0116', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '4090', null, null, 'NA', '8698', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0117', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '4075', null, null, 'NA', '8698', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0118', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '4070', null, null, 'NA', '8698', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0119', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '2060', null, null, 'NA', '8698', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0120', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '4075', null, null, 'MF', '8698', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0121', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3880', null, null, 'MF', '8699', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0122', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3940', null, null, 'MF', '9701', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0123', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '4000', null, null, 'MF', '9702', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0124', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '4000', null, null, 'BA', '9703', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0125', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3980', null, null, 'BA', '9703', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0126', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3930', null, null, 'BA', '9703', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0127', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '4000', null, null, 'NA', '9703', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0128', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3950', null, null, 'NA', '9703', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0129', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3930', null, null, 'NA', '9703', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0130', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3890', null, null, 'NA', '9703', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0131', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '1316', null, null, 'NA', '9703', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0132', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '2990', null, null, 'NA', '9708', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0133', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '2990', null, null, 'MF', '9708', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0134', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3980', null, null, 'NA', '9711', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0135', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3980', null, null, 'NA', '9714', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0136', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3970', null, null, 'NA', '9720', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0137', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '2060', null, null, 'NA', '9720', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0138', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '4040', null, null, 'NA', '9723', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0139', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3150', null, null, 'NA', '9724', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0140', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '1820', null, null, 'BA', '9725', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0141', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3980', null, null, 'NA', '9728', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0142', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3900', null, null, 'NA', '9729', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0143', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '1950', null, null, 'NA', '9729', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0144', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3980', null, null, 'MF', '9733', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0145', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '1538', null, null, 'NA', '9734', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0146', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '1533', null, null, 'NA', '9734', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0147', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '1533', null, null, 'NA', '9734', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0148', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '855', null, null, 'NA', '9735', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0149', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '850', null, null, 'NA', '9735', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0150', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '850', null, null, 'NA', '9735', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0151', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '1345', null, null, 'MF', '9738', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0152', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '1330', null, null, 'MF', '9738', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0153', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3960', null, null, 'NA', '9739', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0154', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '4090', null, null, 'MF', '9740', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0155', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3900', null, null, 'MF', '9740', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0156', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '2050', null, null, 'MF', '9740', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0157', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3920', null, null, 'MF', '9741', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0158', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '2050', null, null, 'MF', '9741', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0159', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3920', null, null, 'MF', '9743', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0160', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3970', null, null, 'MF', '9744', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0161', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3850', null, null, 'MF', '9745', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0162', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3980', null, null, 'NA', '9746', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0163', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '2990', null, null, 'NA', '9751', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0164', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '1990', null, null, 'NA', '9751', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0165', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '4000', null, null, 'NA', '9752', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0166', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3970', null, null, 'NA', '9752', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0167', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '1322', null, null, 'NA', '9752', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0168', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3940', null, null, 'MF', '9753', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0169', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3950', null, null, 'MF', '9754', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0170', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3980', null, null, 'MF', '9755', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0171', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3900', null, null, 'MF', '9756', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0172', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3980', null, null, 'BA', '9757', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0173', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3980', null, null, 'MF', '9757', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0174', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3900', null, null, 'MF', '9759', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0175', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3570', null, null, 'MF', '9759', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0176', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3960', null, null, 'NA 10 MC', '9760', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0177', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3730', null, null, 'NA 10 MC', '9761', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0178', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3580', null, null, 'SB + NA 10', '9761', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0179', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3580', null, null, 'NA 10 MC', '9761', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0180', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '1330', null, null, 'MF', '9763', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0181', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3705', null, null, 'MF', '9764', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0182', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3435', null, null, 'MF', '9765', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0183', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3420', null, null, 'MF', '9765', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0184', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3980', null, null, 'MF', '9766', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0185', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3740', null, null, 'NA', '9768', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0186', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3980', null, null, 'NA', '9769', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0187', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3970', null, null, 'NA', '9769', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0188', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '4000', null, null, 'MF', '9770', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0189', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '4000', null, null, 'MF', '9770', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0190', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3980', null, null, 'MF', '9773', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0191', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3680', null, null, 'NA', '9774', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0192', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3990', null, null, 'BA', '9775', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0193', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3030', null, null, 'MF', '9776', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0194', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '4000', null, null, 'MF', '9777', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0195', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3900', null, null, 'BA', '26062', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0196', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '2980', null, null, 'MF', '26124', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0197', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3940', null, null, 'MF', '27003', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0198', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3900', null, null, 'MF', '27024', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0199', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3820', null, null, 'NA', '28008', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0200', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3130', null, null, 'NA', '28062', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0201', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3980', null, null, 'NA', '8609A', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0202', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '1330', null, null, 'MF', '9713A', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0203', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3890', null, null, 'BA', '26062', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0204', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '2790', null, null, 'MF', '26124', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0205', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3930', null, null, 'MF', '27003', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0206', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '1320', null, null, 'MF', '6819', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0207', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3900', null, null, 'NA', '8638', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0208', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3970', null, null, 'NA', '8650', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0209', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3990', null, null, 'BA', '8670', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0210', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '2100', null, null, 'MF', '8673', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0211', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '2000', null, null, 'MF', '8695', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0212', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3980', null, null, 'BA', '8695', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0213', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '2990', null, null, 'NA', '9708', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0214', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3980', null, null, 'NA', '9711', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0215', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '1990', null, null, 'NA', '9714', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0216', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3980', null, null, 'NA', '9714', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0217', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3920', null, null, 'MF', '9743', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0218', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3970', null, null, 'MF', '9744', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0219', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '1990', null, null, 'NA', '9746', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0220', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3980', null, null, 'NA', '9746', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0221', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '1990', null, null, 'NA', '9751', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0222', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '1322', null, null, 'NA', '9752', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0223', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3970', null, null, 'MF', '9755', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0224', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '1320', null, null, 'MF', '9763', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0225', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3970', null, null, 'MF', '9766', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0226', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3740', null, null, 'NA', '9768', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0227', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '1320', null, null, 'NA', '9769', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0228', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '2000', null, null, 'MF', '9770', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0229', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3980', null, null, 'MF', '9773', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0230', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3670', null, null, 'NA', '9774', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REI-0231', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3980', null, null, 'BA', '9775', 'KG', null, '', '', 'INDALEX');
INSERT INTO mst_barang VALUES ('REY-0001', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3790', null, null, 'YS-1N', '9K98047', 'KG', null, '', '', 'YKK');
INSERT INTO mst_barang VALUES ('REY-0002', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3576', null, null, 'YS-1', '9K98249', 'KG', null, '', '', 'YKK');
INSERT INTO mst_barang VALUES ('REY-0003', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3470', null, null, 'MF', '9K98305', 'KG', null, '', '', 'YKK');
INSERT INTO mst_barang VALUES ('REY-0004', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3650', null, null, 'YS-1', '9K98350', 'KG', null, '', '', 'YKK');
INSERT INTO mst_barang VALUES ('REY-0005', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3830', null, null, 'YS-1', '9K98351', 'KG', null, '', '', 'YKK');
INSERT INTO mst_barang VALUES ('REY-0006', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3650', null, null, 'YS-1', '9K98352', 'KG', null, '', '', 'YKK');
INSERT INTO mst_barang VALUES ('REY-0007', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3970', null, null, 'YS-1', '9K98353', 'KG', null, '', '', 'YKK');
INSERT INTO mst_barang VALUES ('REY-0008', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3830', null, null, 'YS-1', '9K98395', 'KG', null, '', '', 'YKK');
INSERT INTO mst_barang VALUES ('REY-0009', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3000', null, null, 'YS-1', '9K98395', 'KG', null, '', '', 'YKK');
INSERT INTO mst_barang VALUES ('REY-0010', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3920', null, null, 'YS-1', '9K98395', 'KG', null, '', '', 'YKK');
INSERT INTO mst_barang VALUES ('REY-0011', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '4080', null, null, 'YS-1', '9K98395', 'KG', null, '', '', 'YKK');
INSERT INTO mst_barang VALUES ('REY-0012', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '4140', null, null, 'YS-1', '9K98395', 'KG', null, '', '', 'YKK');
INSERT INTO mst_barang VALUES ('REY-0013', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3880', null, null, 'MF', '9K99411', 'KG', null, '', '', 'YKK');
INSERT INTO mst_barang VALUES ('REY-0014', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3040', null, null, 'MF', '9K99462', 'KG', null, '', '', 'YKK');
INSERT INTO mst_barang VALUES ('REY-0015', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '2000', null, null, 'MF', '9K99464', 'KG', null, '', '', 'YKK');
INSERT INTO mst_barang VALUES ('REY-0016', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '3790', null, null, 'YS-1N', '9K99637', 'KG', null, '', '', 'YKK');
INSERT INTO mst_barang VALUES ('REY-0017', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '4220', null, null, 'YS-1N', '9K99638', 'KG', null, '', '', 'YKK');
INSERT INTO mst_barang VALUES ('REY-0018', '1', 'RAE', '', 'EXTRUSION', '', '', null, null, null, '4400', null, null, 'YS-1N', '9K99638', 'KG', null, '', '', 'YKK');
INSERT INTO mst_barang VALUES ('RMO-0001', '1', 'RMO', '', 'Others', '', '', null, null, null, null, null, null, '', 'PIN HEAT SINK', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('RMS-0001', '1', 'STL', '', 'Steel', '', '', null, null, null, null, null, null, '', '0.3X180X960 SPTE', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('RMS-0002', '1', 'STL', '', 'Steel', '', '', null, null, null, null, null, null, '', '0.8 X 91 X 1219 ZSNC', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('RMS-0003', '1', 'STL', '', 'Steel', '', '', null, null, null, null, null, null, '', '0.50x 114.20 SPTE', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('RMS-0004', '1', 'STL', '', 'Steel', '', '', null, null, null, null, null, null, '', '0.50x46 SPTE', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('RMS-0005', '1', 'STL', '', 'Steel', '', '', null, null, null, null, null, null, '', '0.8X101 ZSNC', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('RMS-0006', '1', 'STL', '', 'Steel', '', '', null, null, null, null, null, null, '', '0.8 X 44 X 1219 ZSNC', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('RMS-0007', '1', 'STL', '', 'Steel', '', '', null, null, null, null, null, null, '', '0.8X16 ZSNC', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('RMS-0008', '1', 'STL', '', 'Steel', '', '', null, null, null, null, null, null, '', '0.8X19 ZSNC', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('RMS-0009', '1', 'STL', '', 'Steel', '', '', null, null, null, null, null, null, '', '0.8X32 ZSNC', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('RMS-0010', '1', 'STL', '', 'Steel', '', '', null, null, null, null, null, null, '', '0.8X39, 80 ZSNC', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('RMS-0011', '1', 'STL', '', 'Steel', '', '', null, null, null, null, null, null, '', '0.8X53 ZSNC', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('RMS-0012', '1', 'STL', '', 'Steel', '', '', null, null, null, null, null, null, '', '0.8X54 ZSNC', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('RMS-0013', '1', 'STL', '', 'Steel', '', '', null, null, null, null, null, null, '', '0.8X56 ZSNC', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('RMS-0014', '1', 'STL', '', 'Steel', '', '', null, null, null, null, null, null, '', '0.8X66 ZSNC', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('RMS-0015', '1', 'STL', '', 'Steel', '', '', null, null, null, null, null, null, '', '0.80X30 ZSNC', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('RMS-0016', '1', 'STL', '', 'Steel', '', '', null, null, null, null, null, null, '', '0.80X34 ZSNC', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('RMS-0017', '1', 'STL', '', 'Steel', '', '', null, null, null, null, null, null, '', '0.8x58 ZSNC', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('RMS-0018', '1', 'STL', '', 'Steel', '', '', null, null, null, null, null, null, '', '1.0X47.50X980 ZSNC', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('RMS-0019', '1', 'STL', '', 'Steel', '', '', null, null, null, null, null, null, '', '1.0X31.6X954 ZSNC', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('RMS-0020', '1', 'STL', '', 'Steel', '', '', null, null, null, null, null, null, '', '1.0X136X1000 ZSNC', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('RMS-0021', '1', 'STL', '', 'Steel', '', '', null, null, null, null, null, null, '', '1.0x 62 ZSNC', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('RMS-0022', '1', 'STL', '', 'Steel', '', '', null, null, null, null, null, null, '', '1.0X46 ZSNC', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('RMS-0023', '1', 'STL', '', 'Steel', '', '', null, null, null, null, null, null, '', '1.0X42 ZSNC', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('RMS-0024', '1', 'STL', '', 'Steel', '', '', null, null, null, null, null, null, '', '0.35X374X1341 mm', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('RMS-0025', '1', 'STL', '', 'Steel', '', '', null, null, null, null, null, null, '', '0.35X154.50X1297 mm', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('RMS-0026', '1', 'STL', '', 'Steel', '', '', null, null, null, null, null, null, '', '0.35X119.50X1377 mm', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('RMS-0027', '1', 'STL', '', 'Steel', '', '', null, null, null, null, null, null, '', '0.35X112 mm', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('RMS-0028', '1', 'STL', '', 'Steel', '', '', null, null, null, null, null, null, '', '0.35X71X1335 mm', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('RMS-0029', '1', 'STL', '', 'Steel', '', '', null, null, null, null, null, null, '', '08 X19  SPCC', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('RMS-0030', '1', 'STL', '', 'Steel', '', '', null, null, null, null, null, null, '', '05 X19  SPCC', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('RMS-0031', '1', 'STL', '', 'Steel', '', '', null, null, null, null, null, null, '', '1.2X117X1219 SPCC', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('RMS-0032', '1', 'STL', '', 'Steel', '', '', null, null, null, null, null, null, '', '1.6 X 110 X 1219 SPCC', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('RMS-0033', '1', 'STL', '', 'Steel', '', '', null, null, null, null, null, null, '', '1.6X131.40X1219 SPCC', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('RMS-0034', '1', 'STL', '', 'Steel', '', '', null, null, null, null, null, null, '', '1,6X157X1219 SPCC', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('RMS-0035', '1', 'STL', '', 'Steel', '', '', null, null, null, null, null, null, '', '2.0X188X1219 SPCC', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('RMS-0036', '1', 'STL', '', 'Steel', '', '', null, null, null, null, null, null, '', '2.0X188X1290 SPCC', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('RMS-0037', '1', 'STL', '', 'Steel', '', '', null, null, null, null, null, null, '', '0.8x30 mm', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('RMS-0038', '1', 'STL', '', 'Steel', '', '', null, null, null, null, null, null, '', '08x72x1219 mm', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('RMS-0039', '1', 'STL', '', 'Steel', '', '', null, null, null, null, null, null, '', '1.0 X 44 X 1219mm', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('RMS-0040', '1', 'STL', '', 'Steel', '', '', null, null, null, null, null, null, '', '1.0 X 83 X 1219 mm', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('RMS-0041', '1', 'STL', '', 'Steel', '', '', null, null, null, null, null, null, '', '1.0X38 mm', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('RMS-0042', '1', 'STL', '', 'Steel', '', '', null, null, null, null, null, null, '', '1.0X46 mm', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('RMS-0043', '1', 'STL', '', 'Steel', '', '', null, null, null, null, null, null, '', '1.0X52x1219 mm', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('RMS-0044', '1', 'STL', '', 'Steel', '', '', null, null, null, null, null, null, '', '1.0X166 X 1219 mm', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('RMS-0045', '1', 'STL', '', 'Steel', '', '', null, null, null, null, null, null, '', '1.0X60x1219 mm', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('RMS-0046', '1', 'STL', '', 'Steel', '', '', null, null, null, null, null, null, '', '1.0X67X1163 mm', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('RMS-0047', '1', 'STL', '', 'Steel', '', '', null, null, null, null, null, null, '', '1.0X72.50X1219 mm', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('RMS-0048', '1', 'STL', '', 'Steel', '', '', null, null, null, null, null, null, '', '1.0X40X1219 mm', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('RMS-0049', '1', 'STL', '', 'Steel', '', '', null, null, null, null, null, null, '', '1.0X120X1219 mm', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('RMS-0050', '1', 'STL', '', 'Steel', '', '', null, null, null, null, null, null, '', '1.0X204X1000 mm', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('RMS-0051', '1', 'STL', '', 'Steel', '', '', null, null, null, null, null, null, '', '1.5X1220X2440 mm', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('RMS-0052', '1', 'STL', '', 'Steel', '', '', null, null, null, null, null, null, '', '2.0X1220X2440 mm', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('RMS-0053', '1', 'STL', '', 'Steel', '', '', null, null, null, null, null, null, '', '1.2X38 mm', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('RMS-0054', '1', 'STL', '', 'Steel Pipe', '', '', null, null, null, null, null, null, '', '1.6 X 30 X 50 X 223', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('RMS-0055', '1', 'STL', '', 'Steel Pipe', '', '', null, null, null, null, null, null, '', '2.3 X 30 X 60 X 670', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('RMS-0056', '1', 'STL', '', 'Steel Pipe', '', '', null, null, null, null, null, null, '', '2.3 X 30 X 50 X 843', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('RMS-0057', '1', 'STL', '', 'Steel Pipe', '', '', null, null, null, null, null, null, '', '2.3 X 30 X 50 X 2065', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('RMS-0058', '1', 'STL', '', 'Steel Pipe', '', '', null, null, null, null, null, null, '', '1.2X17.5X17.5X382.50 mm', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('RMS-0059', '1', 'STL', '', 'Steel Pipe', '', '', null, null, null, null, null, null, '', '1.6X15.0X30X1391.50 mm', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('RMS-0060', '1', 'STL', '', 'Steel', '', '', null, null, null, null, null, null, '', '1.2X102.50X 956 mm', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('RMS-0061', '1', 'STL', '', 'Steel', '', '', null, null, null, null, null, null, '', '1.6 X 161 X 1219 ', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('RMS-0062', '1', 'STL', '', 'Steel', '', '', null, null, null, null, null, null, '', '1.6X54X1050 mm', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('RMS-0063', '1', 'STL', '', 'Steel', '', '', null, null, null, null, null, null, '', '1.6X188X1219 mm', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('RMS-0064', '1', 'STL', '', 'Steel', '', '', null, null, null, null, null, null, '', '2.0x393.50x1093mm', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('RMS-0065', '1', 'STL', '', 'Stainless Steel', '', '', null, null, null, null, null, null, '', 'Ø6   X  6M', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('RMS-0066', '1', 'STL', '', 'Stainless Steel', '', '', null, null, null, null, null, null, '', 'Ø12  X  6M', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('RMS-0067', '1', 'STL', '', 'Stainless Steel', '', '', null, null, null, null, null, null, '', 'Ø19.60X1.2X 2630', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('RMS-0068', '1', 'STL', '', 'Stainless Steel', '', '', null, null, null, null, null, null, '', '304 5 / 8 X 6 M', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('RMS-0069', '1', 'STL', '', 'Stainless Steel', '', '', null, null, null, null, null, null, '', 'Ø15.90X1.2X 1856', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('RMS-0070', '1', 'STL', '', 'Stainless Steel', '', '', null, null, null, null, null, null, '', '05 X 76 mm', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('RMS-0071', '1', 'STL', '', 'Stainless Steel', '', '', null, null, null, null, null, null, '', '08 X 100 mm', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('RMS-0072', '1', 'STL', '', 'Stainless Steel', '', '', null, null, null, null, null, null, '', '2.0x393.50x1083mm', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('RWP-0001', '1', 'RMO', '', 'Wire Pin', '', '', null, null, null, null, null, null, '', 'Wire Pin', 'KG', null, '', '', '');
INSERT INTO mst_barang VALUES ('WAB-0001', '11', '', 'VF2A00189400', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'ALL BRILIANT');
INSERT INTO mst_barang VALUES ('WGE-0001', '11', '', '101-08-178-80/500SERIES', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'TOA GALINDRA ELECTRONIC');
INSERT INTO mst_barang VALUES ('WGE-0002', '11', '', '501-08-117-90', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'TOA GALINDRA ELECTRONIC');
INSERT INTO mst_barang VALUES ('WGE-0003', '11', '', '501-08-127-40A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'TOA GALINDRA ELECTRONIC');
INSERT INTO mst_barang VALUES ('WGE-0004', '11', '', '501-08-130-20A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'TOA GALINDRA ELECTRONIC');
INSERT INTO mst_barang VALUES ('WGE-0005', '11', '', '501-08-131-30', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'TOA GALINDRA ELECTRONIC');
INSERT INTO mst_barang VALUES ('WGE-0006', '11', '', '501-08-164-80', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'TOA GALINDRA ELECTRONIC');
INSERT INTO mst_barang VALUES ('WGE-0007', '11', '', '501-08-150-20', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'TOA GALINDRA ELECTRONIC');
INSERT INTO mst_barang VALUES ('WGE-0008', '11', '', '501-08-151-30', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'TOA GALINDRA ELECTRONIC');
INSERT INTO mst_barang VALUES ('WGE-0009', '11', '', '501-08-152-60', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'TOA GALINDRA ELECTRONIC');
INSERT INTO mst_barang VALUES ('WGE-0010', '11', '', '501-08-154-80', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'TOA GALINDRA ELECTRONIC');
INSERT INTO mst_barang VALUES ('WGE-0011', '11', '', '501-08-155-70', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'TOA GALINDRA ELECTRONIC');
INSERT INTO mst_barang VALUES ('WIM-0001', '11', '', '446S267010 ( Fin only )', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'IWAI METAL');
INSERT INTO mst_barang VALUES ('WJI-0001', '11', '', 'FSMH3001-201', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('WJI-0002', '11', '', 'GE30938-003A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('WJI-0003', '11', '', 'GE31894-001A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('WJI-0004', '11', '', 'GE32360-001A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('WJI-0005', '11', '', 'GE32823-004A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('WJI-0006', '11', '', 'GE32823-007A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('WJI-0007', '11', '', 'GE32823-009A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('WJI-0008', '11', '', 'GE32823-010A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('WJI-0009', '11', '', 'GE32927-001A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('WJI-0010', '11', '', 'GE32927-002A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('WJI-0011', '11', '', 'GE33234-001A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('WJI-0012', '11', '', 'GE33234-002A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('WJI-0013', '11', '', 'GE33323-001A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('WJI-0014', '11', '', 'GE33323-002A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('WJI-0015', '11', '', 'GE33544-001A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('WJI-0016', '11', '', 'GE33962-001A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('WJI-0017', '11', '', 'GE33962-002A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('WJI-0018', '11', '', 'GE34070-001A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('WJI-0019', '11', '', 'GE34070-002A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('WJI-0020', '11', '', 'GE34070-003A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('WJI-0021', '11', '', 'GE34070-004A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('WJI-0022', '11', '', 'GE34810-001A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('WJI-0023', '11', '', 'GE40107-002A t=1.5', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('WJI-0024', '11', '', 'GE40124-003A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('WJI-0025', '11', '', 'GE40172-005A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('WJI-0026', '11', '', 'GE40395-001A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('WJI-0027', '11', '', 'GE40395-002A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('WJI-0028', '11', '', 'GE40395-005A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('WJI-0029', '11', '', 'GE40395-006A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('WJI-0030', '11', '', 'GE40499-001A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('WJI-0031', '11', '', 'GE40499-002A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('WJI-0032', '11', '', 'GE40642-001A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('WJI-0033', '11', '', 'LV20916-003A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('WJI-0034', '11', '', 'LV20916-004A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('WJI-0035', '11', '', 'LV34061-001A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('WJI-0036', '11', '', 'LV34655-001A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('WJI-0037', '11', '', 'LV34655-002A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('WJI-0038', '11', '', 'LV35331-003A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('WJI-0039', '11', '', 'LV37016-201A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('WJI-0040', '11', '', 'LV37858-001A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('WJI-0041', '11', '', 'LV37859-001A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('WJI-0042', '11', '', 'LV37875-001A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('WJI-0043', '11', '', 'LV37896-002A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('WJI-0044', '11', '', 'LV37970-01A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('WJI-0045', '11', '', 'LV38527-001A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('WJI-0046', '11', '', 'LV38882-001MF', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('WJI-0047', '11', '', 'LV38882-003BA', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('WJI-0048', '11', '', 'LV38883-001', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('WJI-0049', '11', '', 'LV39078-001A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('WJI-0050', '11', '', 'LV39126-001A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('WJI-0051', '11', '', 'LV39126-002A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('WJI-0052', '11', '', 'LV39538-001A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('WJI-0053', '11', '', 'LV39607-001A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('WJI-0054', '11', '', 'LV42152-002A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('WJI-0055', '11', '', 'LV43349-002A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('WJI-0056', '11', '', 'LV43967-001A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('WJI-0057', '11', '', 'LV43968-001A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('WJI-0058', '11', '', 'LV44335-001ABA', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('WJI-0059', '11', '', 'VKL7059-002S', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('WJI-0060', '11', '', 'LV44972-001A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'JVC');
INSERT INTO mst_barang VALUES ('WKI-0001', '11', '', 'APFB-0003', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'KAWAI INDONESIA');
INSERT INTO mst_barang VALUES ('WKI-0002', '11', '', 'KLFB-0014', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'KAWAI INDONESIA');
INSERT INTO mst_barang VALUES ('WKI-0003', '11', '', 'KLFB-0017', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'KAWAI INDONESIA');
INSERT INTO mst_barang VALUES ('WKI-0004', '11', '', 'KMFB-0170', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'KAWAI INDONESIA');
INSERT INTO mst_barang VALUES ('WKI-0005', '11', '', 'KMFB-0210', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'KAWAI INDONESIA');
INSERT INTO mst_barang VALUES ('WKI-0006', '11', '', 'KMFB-0217', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'KAWAI INDONESIA');
INSERT INTO mst_barang VALUES ('WKI-0007', '11', '', 'KPFB-0260 Rev : 100', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'KAWAI INDONESIA');
INSERT INTO mst_barang VALUES ('WKI-0008', '11', '', 'KPFB-0260 Rev : 102', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'KAWAI INDONESIA');
INSERT INTO mst_barang VALUES ('WKI-0009', '11', '', 'KPFB-0318', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'KAWAI INDONESIA');
INSERT INTO mst_barang VALUES ('WKI-0010', '11', '', 'KPFB-0457', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'KAWAI INDONESIA');
INSERT INTO mst_barang VALUES ('WKI-0011', '11', '', 'KPFB-0547', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'KAWAI INDONESIA');
INSERT INTO mst_barang VALUES ('WKI-0012', '11', '', 'KPFB-0568/KPFB-0378BA', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'KAWAI INDONESIA');
INSERT INTO mst_barang VALUES ('WKI-0013', '11', '', 'KPFB-0568/KPFB-0378MF', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'KAWAI INDONESIA');
INSERT INTO mst_barang VALUES ('WKI-0014', '11', '', 'KPFB-1070', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'KAWAI INDONESIA');
INSERT INTO mst_barang VALUES ('WKI-0015', '11', '', 'KPFB-0590 Rev101L=60 WA', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'KAWAI INDONESIA');
INSERT INTO mst_barang VALUES ('WKI-0016', '11', '', 'KPFB-0590 Rev102L=90 WA', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'KAWAI INDONESIA');
INSERT INTO mst_barang VALUES ('WKI-0017', '11', '', 'KPFB-0590 Rev102L=120 WA', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'KAWAI INDONESIA');
INSERT INTO mst_barang VALUES ('WKI-0018', '11', '', 'KPFB-0590 Rev102L=150 WA', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'KAWAI INDONESIA');
INSERT INTO mst_barang VALUES ('WKI-0019', '11', '', 'KPFB-0612', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'KAWAI INDONESIA');
INSERT INTO mst_barang VALUES ('WKI-0020', '11', '', 'KPFB-0799', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'KAWAI INDONESIA');
INSERT INTO mst_barang VALUES ('WKI-0021', '11', '', 'KPFB-0801', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'KAWAI INDONESIA');
INSERT INTO mst_barang VALUES ('WKI-0022', '11', '', 'KPFB-0850', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'KAWAI INDONESIA');
INSERT INTO mst_barang VALUES ('WKI-0023', '11', '', 'KPFB-0851', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'KAWAI INDONESIA');
INSERT INTO mst_barang VALUES ('WKI-0024', '11', '', 'KPFB-0960', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'KAWAI INDONESIA');
INSERT INTO mst_barang VALUES ('WKI-0025', '11', '', 'KPFB-0961', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'KAWAI INDONESIA');
INSERT INTO mst_barang VALUES ('WKI-0026', '11', '', 'KPFB-1030', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'KAWAI INDONESIA');
INSERT INTO mst_barang VALUES ('WKI-0027', '11', '', 'KPFB-1046', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'KAWAI INDONESIA');
INSERT INTO mst_barang VALUES ('WKI-0028', '11', '', 'KPFB-1073', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'KAWAI INDONESIA');
INSERT INTO mst_barang VALUES ('WKI-0029', '11', '', 'KPFB-1075', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'KAWAI INDONESIA');
INSERT INTO mst_barang VALUES ('WKS-0001', '11', '', '5010-102-231-12', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'KASEN');
INSERT INTO mst_barang VALUES ('WKS-0002', '11', '', '5010-102-233-11', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'KASEN');
INSERT INTO mst_barang VALUES ('WKS-0003', '11', '', '5010-312-430-12', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'KASEN');
INSERT INTO mst_barang VALUES ('WKS-0004', '11', '', '5010-312-381-11', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'KASEN');
INSERT INTO mst_barang VALUES ('WKS-0005', '11', '', '5010-404-227-12', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'KASEN');
INSERT INTO mst_barang VALUES ('WKT-0001', '11', '', 'APFB-0003', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'KATOLEC INDONESIA');
INSERT INTO mst_barang VALUES ('WKT-0002', '11', '', 'KLFB-0014', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'KATOLEC INDONESIA');
INSERT INTO mst_barang VALUES ('WKT-0003', '11', '', 'KPFB-0260 REV 102', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'KATOLEC INDONESIA');
INSERT INTO mst_barang VALUES ('WKT-0004', '11', '', 'KPFB-0547 L=90 mm', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'KATOLEC INDONESIA');
INSERT INTO mst_barang VALUES ('WKT-0005', '11', '', 'KPFB-0590 Rev102 L= 60 mm (White Anodize)', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'KATOLEC INDONESIA');
INSERT INTO mst_barang VALUES ('WKT-0006', '11', '', 'KPFB-0590 Rev102 L= 90 mm (White Anodize)', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'KATOLEC INDONESIA');
INSERT INTO mst_barang VALUES ('WKT-0007', '11', '', 'KPFB-0590 Rev102 L= 120 mm (White anodize)', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'KATOLEC INDONESIA');
INSERT INTO mst_barang VALUES ('WKT-0008', '11', '', 'KPFB-0612', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'KATOLEC INDONESIA');
INSERT INTO mst_barang VALUES ('WKT-0009', '11', '', 'KPFB-1073', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'KATOLEC INDONESIA');
INSERT INTO mst_barang VALUES ('WKT-0010', '11', '', 'KPFB-1075', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'KATOLEC INDONESIA');
INSERT INTO mst_barang VALUES ('WKT-0011', '11', '', 'KPFB-0960', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'KATOLEC INDONESIA');
INSERT INTO mst_barang VALUES ('WKT-0012', '11', '', 'KPFB-0961', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'KATOLEC INDONESIA');
INSERT INTO mst_barang VALUES ('WLT-0001', '11', '', 'AT-0606-02-00(L=296)', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'LIMA TEKNO');
INSERT INTO mst_barang VALUES ('WLT-0002', '11', '', 'AT-0606-02-00(L=446)', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'LIMA TEKNO');
INSERT INTO mst_barang VALUES ('WLT-0003', '11', '', 'AT-0606-02-00(L=596)', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'LIMA TEKNO');
INSERT INTO mst_barang VALUES ('WLT-0004', '11', '', 'AT-0606-11-00(L=296)', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'LIMA TEKNO');
INSERT INTO mst_barang VALUES ('WLT-0005', '11', '', 'AT-0606-11-00(L=446)', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'LIMA TEKNO');
INSERT INTO mst_barang VALUES ('WLT-0006', '11', '', 'AT-0606-11-00(L=596)', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'LIMA TEKNO');
INSERT INTO mst_barang VALUES ('WLT-0007', '11', '', 'AT-0607-02-00(L=446)', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'LIMA TEKNO');
INSERT INTO mst_barang VALUES ('WLT-0008', '11', '', 'AT-0607-02-00(L=896)', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'LIMA TEKNO');
INSERT INTO mst_barang VALUES ('WLT-0009', '11', '', 'AT-0607-02-00(L=1196)', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'LIMA TEKNO');
INSERT INTO mst_barang VALUES ('WLT-0010', '11', '', 'AT-0607-05-00(L=418)', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'LIMA TEKNO');
INSERT INTO mst_barang VALUES ('WLT-0011', '11', '', 'AT-0607-06-00(L=391)', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'LIMA TEKNO');
INSERT INTO mst_barang VALUES ('WLT-0012', '11', '', 'AT-0607-15-00(L=446)', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'LIMA TEKNO');
INSERT INTO mst_barang VALUES ('WLT-0013', '11', '', 'AT-0607-15-00(L=896)', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'LIMA TEKNO');
INSERT INTO mst_barang VALUES ('WLT-0014', '11', '', 'AT-0607-15-00(L=1196)', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'LIMA TEKNO');
INSERT INTO mst_barang VALUES ('WPB-0001', '11', '', '3F-00000S1', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('WPB-0002', '11', '', '3F-00000S2', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('WPB-0003', '11', '', '3F-00000S2 ANODIZE', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('WPB-0004', '11', '', '3F-01628300AO-000', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('WPB-0005', '11', '', '3F-016289', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('WPB-0006', '11', '', '3F-017905', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('WPB-0007', '11', '', '3F-050235', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('WPB-0008', '11', '', '3F-06905200A1-000', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('WPB-0009', '11', '', '3F-06905300A1-001', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('WPB-0010', '11', '', '3F-06905500A1-002', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('WPB-0011', '11', '', '3F-06905700A1-003', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('WPB-0012', '11', '', '3F-06971800AO-000', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('WPB-0013', '11', '', '3F-06971800AO-001', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('WPB-0014', '11', '', '3F-06971800AO-002', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('WPB-0015', '11', '', '3F-07001400AO-000', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('WPB-0016', '11', '', '3F-070015 MF', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('WPB-0017', '11', '', '3F-07001500A0-000', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('WPB-0018', '11', '', '3F-07001500B0-000', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('WPB-0019', '11', '', '3F-07001500C2-000MOK', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('WPB-0020', '11', '', '3F-070016 MF', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('WPB-0021', '11', '', '3F-07001600A0-000', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('WPB-0022', '11', '', '3F-07001600B0-000', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('WPB-0023', '11', '', '3F-07001600C2-000MOAK', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('WPB-0024', '11', '', '3F-076636', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('WPB-0025', '11', '', '3F-076637', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('WPB-0026', '11', '', '3F-076639', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('WPB-0027', '11', '', '3F-077147 SB', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('WPB-0028', '11', '', '3F-077155 SB', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('WPB-0029', '11', '', '3F-077156 SB', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('WPB-0030', '11', '', '3F-077479', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('WPB-0031', '11', '', '3F-078383', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('WPB-0032', '11', '', '3F-08201400AO-000 ( L=617)', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('WPB-0033', '11', '', '3F-090350', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('WPB-0034', '11', '', '3K-00045300A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('WPB-0035', '11', '', '3K-00822400A2-0002FINISH', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('WPB-0036', '11', '', '3K-00822400A2-0002MATERIAL', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('WPB-0037', '11', '', '3K-01064300A3', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('WPB-0038', '11', '', '3K-010644-00A0(L=2940)-YS', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('WPB-0039', '11', '', '3K-010644-00B0-0001-YS', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('WPB-0040', '11', '', '3K-01064500AO-0001', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('WPB-0041', '11', '', '3K-010645NA', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('WPB-0042', '11', '', '3K-01064600A2-000', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('WPB-0043', '11', '', '3K-010646E', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('WPB-0044', '11', '', '3K-01064700A1-1/21', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('WPB-0045', '11', '', '3K-010648', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('WPB-0046', '11', '', '3K-01181800AO-0001', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('WPB-0047', '11', '', '3K-015326', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('WPB-0048', '11', '', '3K-015327', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('WPB-0049', '11', '', '3K-015328', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('WPB-0050', '11', '', '3k-082014-00', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('WPB-0051', '11', '', '3S000007', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('WPB-0052', '11', '', '3S000008', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('WPB-0053', '11', '', 'MAOR0014 ( nut )', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('WPB-0054', '11', '', 'MAOR001500A1-000  ( 19.6)', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('WPB-0055', '11', '', 'MAOR001600A1-000', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('WPB-0056', '11', '', 'MAPB-001701', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('WPB-0057', '11', '', 'MAPB-001701A1-000/headrallright', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('WPB-0058', '11', '', 'MAPB-001702A1-000/headrallleft', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('WPB-0059', '11', '', 'PBC00001000AO', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('WPB-0060', '11', '', 'Pipe dia 9.5mm L=697mm/3F0821000AO-000', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('WPB-0061', '11', '', 'WPSP-0008', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PARAMOUNT');
INSERT INTO mst_barang VALUES ('WPG-0001', '11', '', 'FL0501-07-00/BaseIL600', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC GOBEL');
INSERT INTO mst_barang VALUES ('WPG-0002', '11', '', 'FL0502-07-00/BaseIL900', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC GOBEL');
INSERT INTO mst_barang VALUES ('WPG-0003', '11', '', 'I-10758-1(CaseA)O3.72', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC GOBEL');
INSERT INTO mst_barang VALUES ('WPG-0004', '11', '', 'FZ322959121.2(CaseB)', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC GOBEL');
INSERT INTO mst_barang VALUES ('WPG-0005', '11', '', 'NKB50-1128-2', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC GOBEL');
INSERT INTO mst_barang VALUES ('WPG-0006', '11', '', 'YJI-001 BA', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC GOBEL');
INSERT INTO mst_barang VALUES ('WPH-0001', '11', '', 'LSCC0854 ', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC HEALTHCARE');
INSERT INTO mst_barang VALUES ('WPH-0002', '11', '', 'LSEK00780-2', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC HEALTHCARE');
INSERT INTO mst_barang VALUES ('WPH-0003', '11', '', 'LSEK00781', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC HEALTHCARE');
INSERT INTO mst_barang VALUES ('WPH-0004', '11', '', 'LSEK00782', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC HEALTHCARE');
INSERT INTO mst_barang VALUES ('WPH-0005', '11', '', 'LSEK00783-1', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC HEALTHCARE');
INSERT INTO mst_barang VALUES ('WPH-0006', '11', '', 'LSEK0849', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC HEALTHCARE');
INSERT INTO mst_barang VALUES ('WPH-0007', '11', '', 'LSEK0851', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC HEALTHCARE');
INSERT INTO mst_barang VALUES ('WPH-0008', '11', '', 'LSEK0881', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC HEALTHCARE');
INSERT INTO mst_barang VALUES ('WPH-0009', '11', '', 'LSEK0882', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC HEALTHCARE');
INSERT INTO mst_barang VALUES ('WPH-0010', '11', '', 'LSEK0883', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC HEALTHCARE');
INSERT INTO mst_barang VALUES ('WPH-0011', '11', '', 'LSEK0884', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC HEALTHCARE');
INSERT INTO mst_barang VALUES ('WPH-0012', '11', '', 'LSEK0894', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC HEALTHCARE');
INSERT INTO mst_barang VALUES ('WPH-0013', '11', '', 'LSEK0922', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC HEALTHCARE');
INSERT INTO mst_barang VALUES ('WPH-0014', '11', '', 'LSEK0938', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC HEALTHCARE');
INSERT INTO mst_barang VALUES ('WPH-0015', '11', '', 'LSEK0939', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC HEALTHCARE');
INSERT INTO mst_barang VALUES ('WPH-0016', '11', '', 'LSEK0940', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC HEALTHCARE');
INSERT INTO mst_barang VALUES ('WPH-0017', '11', '', 'LSEK0941', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC HEALTHCARE');
INSERT INTO mst_barang VALUES ('WPH-0018', '11', '', 'LSEK0942', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC HEALTHCARE');
INSERT INTO mst_barang VALUES ('WPH-0019', '11', '', 'LSEK0943', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC HEALTHCARE');
INSERT INTO mst_barang VALUES ('WPH-0020', '11', '', 'LSEK0944', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC HEALTHCARE');
INSERT INTO mst_barang VALUES ('WPH-0021', '11', '', 'LSEK0945', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC HEALTHCARE');
INSERT INTO mst_barang VALUES ('WPH-0022', '11', '', 'LSEK0946', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC HEALTHCARE');
INSERT INTO mst_barang VALUES ('WPH-0023', '11', '', 'LSEK0964', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC HEALTHCARE');
INSERT INTO mst_barang VALUES ('WPH-0024', '11', '', 'LSEK0970', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC HEALTHCARE');
INSERT INTO mst_barang VALUES ('WPH-0025', '11', '', 'LSEK0972', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC HEALTHCARE');
INSERT INTO mst_barang VALUES ('WPH-0026', '11', '', 'LSSC0766', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC HEALTHCARE');
INSERT INTO mst_barang VALUES ('WPH-0027', '11', '', 'LSSC0796', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC HEALTHCARE');
INSERT INTO mst_barang VALUES ('WPH-0028', '11', '', 'LSSC0797', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC HEALTHCARE');
INSERT INTO mst_barang VALUES ('WPH-0029', '11', '', 'LSSC0798', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC HEALTHCARE');
INSERT INTO mst_barang VALUES ('WPH-0030', '11', '', 'LSSC0799', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC HEALTHCARE');
INSERT INTO mst_barang VALUES ('WPH-0031', '11', '', 'LSSC0800', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC HEALTHCARE');
INSERT INTO mst_barang VALUES ('WPH-0032', '11', '', 'LSSC0812-3', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC HEALTHCARE');
INSERT INTO mst_barang VALUES ('WPH-0033', '11', '', 'LSSC0814', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC HEALTHCARE');
INSERT INTO mst_barang VALUES ('WPH-0034', '11', '', 'LSSC0815', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC HEALTHCARE');
INSERT INTO mst_barang VALUES ('WPH-0035', '11', '', 'LSSC0816', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC HEALTHCARE');
INSERT INTO mst_barang VALUES ('WPH-0036', '11', '', 'LSSC0817', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC HEALTHCARE');
INSERT INTO mst_barang VALUES ('WPH-0037', '11', '', 'LSSC0657', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC HEALTHCARE');
INSERT INTO mst_barang VALUES ('WPH-0038', '11', '', 'LSSC1116', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC HEALTHCARE');
INSERT INTO mst_barang VALUES ('WPH-0039', '11', '', 'AL BLANK SHEET A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC HEALTHCARE');
INSERT INTO mst_barang VALUES ('WPH-0040', '11', '', 'AL BLANK SHEET B', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC HEALTHCARE');
INSERT INTO mst_barang VALUES ('WPH-0041', '11', '', 'AL BLANK SHEET C', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC HEALTHCARE');
INSERT INTO mst_barang VALUES ('WPH-0042', '11', '', 'AL BLANK SHEET D', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC HEALTHCARE');
INSERT INTO mst_barang VALUES ('WPH-0043', '11', '', 'AL BLANK SHEET E', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC HEALTHCARE');
INSERT INTO mst_barang VALUES ('WPH-0044', '11', '', 'AL BLANK SHEET F', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC HEALTHCARE');
INSERT INTO mst_barang VALUES ('WPM-0001', '11', '', 'RMYN0017', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC MANUFACTURING INDONESIA');
INSERT INTO mst_barang VALUES ('WPM-0002', '11', '', 'RMYN0018', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC MANUFACTURING INDONESIA');
INSERT INTO mst_barang VALUES ('WPM-0003', '11', '', 'RMYN0018 ( Tembaga )', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC MANUFACTURING INDONESIA');
INSERT INTO mst_barang VALUES ('WPM-0004', '11', '', 'RMYN0018 ( Platting )', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC MANUFACTURING INDONESIA');
INSERT INTO mst_barang VALUES ('WPM-0005', '11', '', 'RMYN0018A-1 ( Tembaga+ ED Coating )', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC MANUFACTURING INDONESIA');
INSERT INTO mst_barang VALUES ('WPM-0006', '11', '', 'RMYN0019', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC MANUFACTURING INDONESIA');
INSERT INTO mst_barang VALUES ('WPM-0007', '11', '', 'TUC4N07300', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC MANUFACTURING INDONESIA');
INSERT INTO mst_barang VALUES ('WPM-0008', '11', '', 'TUC4N07301', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC MANUFACTURING INDONESIA');
INSERT INTO mst_barang VALUES ('WPM-0009', '11', '', 'TUC4N07400', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'PANASONIC MANUFACTURING INDONESIA');
INSERT INTO mst_barang VALUES ('WPT-0001', '11', '', 'DN31A367MOI', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'POLYTRON');
INSERT INTO mst_barang VALUES ('WPT-0002', '11', '', 'PN2201143', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'POLYTRON');
INSERT INTO mst_barang VALUES ('WPT-0003', '11', '', 'DN34D062', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'POLYTRON');
INSERT INTO mst_barang VALUES ('WPT-0004', '11', '', 'PN2201225 tskanan', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'POLYTRON');
INSERT INTO mst_barang VALUES ('WPT-0005', '11', '', 'PN2201225 tskiri', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'POLYTRON');
INSERT INTO mst_barang VALUES ('WSE-0001', '11', '', 'CF12C Heat sink', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SIIX EMS INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0001', '11', '', 'AP43456-125-02D', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0002', '11', '', 'AP47039-275-12', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0003', '11', '', 'APB42200-502A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0004', '11', '', 'APB42200-508', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0005', '11', '', 'APC32000-510B', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0006', '11', '', 'APC32000-512A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0007', '11', '', 'APC42200-503A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0008', '11', '', 'APC42200-525', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0009', '11', '', 'APC42200-530C', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0010', '11', '', 'APC42200-541', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0011', '11', '', 'APC42200-542', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0012', '11', '', 'APC42200-543', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0013', '11', '', 'APC46100-501A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0014', '11', '', 'APC46400-502A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0015', '11', '', 'APC47100-501B', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0016', '11', '', 'APE46100-537', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0017', '11', '', 'APH24000-023E', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0018', '11', '', 'APH24000-504E', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0019', '11', '', 'APH24000-506', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0020', '11', '', 'APH24000-507', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0021', '11', '', 'APH24400-501A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0022', '11', '', 'APH24400-502', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0023', '11', '', 'APH24400-502A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0024', '11', '', 'APH34000-109A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0025', '11', '', 'APH34000-504B', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0026', '11', '', 'APH34000-506C', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0027', '11', '', 'APH34000-530(Thernsheet)', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0028', '11', '', 'APH34000-540', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0029', '11', '', 'APH34000-555/APH34000-555A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0030', '11', '', 'APH34000-556A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0031', '11', '', 'APH34000-561EThernsheet besar', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0032', '11', '', 'APH34000-561EThernsheetkecil', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0033', '11', '', 'APH34000-567A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0034', '11', '', 'APH34000-567AECOTORIO', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0035', '11', '', 'APH34000-583A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0036', '11', '', 'APH34000-590', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0037', '11', '', 'APH34000-598', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0038', '11', '', 'APH34000-646', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0039', '11', '', 'APH34000-647', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0040', '11', '', 'APH34000-658', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0041', '11', '', 'APH34000-701-2A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0042', '11', '', 'APH34000-733', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0043', '11', '', 'APH34000-737', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0044', '11', '', 'APH34000-738A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0045', '11', '', 'APH34000-759MF', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0046', '11', '', 'APH34000-832-A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0047', '11', '', 'APH34000-855-2A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0048', '11', '', 'APH34100-526C(Thernsheetkecil)', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0049', '11', '', 'APH34100-526D(thernsheetbesar)', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0050', '11', '', 'APH34100-549A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0051', '11', '', 'APH34100-551', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0052', '11', '', 'APH34100-557', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0053', '11', '', 'APH34100-558', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0054', '11', '', 'APH34200-307C', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0055', '11', '', 'APH34200-308', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0056', '11', '', 'APH34200-518', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0057', '11', '', 'APH34200-599A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0058', '11', '', 'APH34200-601A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0059', '11', '', 'APH34200-606', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0060', '11', '', 'APH34200-625A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0061', '11', '', 'APH34200-641', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0062', '11', '', 'APH34200-642A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0063', '11', '', 'APH34200-643A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0064', '11', '', 'APH34200-644B', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0065', '11', '', 'APH34200-645A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0066', '11', '', 'APH34200-646', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0067', '11', '', 'APH34200-650C', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0068', '11', '', 'APH34200-667B', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0069', '11', '', 'APH34200-669', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0070', '11', '', 'APH34200-670', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0071', '11', '', 'APH34300-525C', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0072', '11', '', 'APH34400-564', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0073', '11', '', 'APH36300-501A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0074', '11', '', 'APH36300-503', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0075', '11', '', 'APH42100-504', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0076', '11', '', 'APH42100-506A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0077', '11', '', 'APH42300-502C', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0078', '11', '', 'APH44000-175Bthernsheet', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0079', '11', '', 'APH44000-513A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0080', '11', '', 'APH44000-515/APH44000-515A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0081', '11', '', 'APH44000-551/APH44000-551A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0082', '11', '', 'APH44000-586', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0083', '11', '', 'APH44000-591', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0084', '11', '', 'APH44000-599/APH4000-599A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0085', '11', '', 'APH44000-630C', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0086', '11', '', 'APH44000-631D', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0087', '11', '', 'APH44000-635B', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0088', '11', '', 'APH44000-636', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0089', '11', '', 'APH44000-637', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0090', '11', '', 'APH44000-637B', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0091', '11', '', 'APH44000-638B', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0092', '11', '', 'APH44000-651BA', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0093', '11', '', 'APH44000-652BA', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0094', '11', '', 'APH44000-682', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0095', '11', '', 'APH44000-688ECOTORIO', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0096', '11', '', 'APH44000-710/APH44000-710A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0097', '11', '', 'APH44000-738', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0098', '11', '', 'APH44000-739', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0099', '11', '', 'APH44000-742-A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0100', '11', '', 'APH44000-746A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0101', '11', '', 'APH44000-751', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0102', '11', '', 'APH44000-754', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0103', '11', '', 'APH44000-759MF', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0104', '11', '', 'APH44000-759WA', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0105', '11', '', 'APH44000-760MF', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0106', '11', '', 'APH44000-760WA', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0107', '11', '', 'APH44000-761MF', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0108', '11', '', 'APH44000-737', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0109', '11', '', 'APH44000-773', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0110', '11', '', 'APH44000-780-1', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0111', '11', '', 'APH44000-785', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0112', '11', '', 'APH44000-790-1BA', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0113', '11', '', 'APH44000-791-3', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0114', '11', '', 'APH44000-792-3', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0115', '11', '', 'APH44000-797-3', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0116', '11', '', 'APH44000-809-2', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0117', '11', '', 'APH44000-809-3', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0118', '11', '', 'APH44000-810', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0119', '11', '', 'APH44000-814-2', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0120', '11', '', 'APH44000-814-3', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0121', '11', '', 'APH44000-815-2', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0122', '11', '', 'APH44000-815-3', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0123', '11', '', 'APH44000-817A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0124', '11', '', 'APH44000-819', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0125', '11', '', 'APH44000-820', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0126', '11', '', 'APH44000-821', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0127', '11', '', 'APH44000-822', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0128', '11', '', 'APH44000-829', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0129', '11', '', 'APH44000-830-3A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0130', '11', '', 'APH44000-831-3A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0131', '11', '', 'APH44000-937', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0132', '11', '', 'APH44000-942-2', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0133', '11', '', 'APH44000-943-2', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0134', '11', '', 'APH44000-949-2', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0135', '11', '', 'APH44000-954-2', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0136', '11', '', 'APH44000-984BA', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0137', '11', '', 'APH44000-984WA', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0138', '11', '', 'APH44000-988-2', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0139', '11', '', 'APH44001-511-2B', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0140', '11', '', 'APH44001-512-2A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0141', '11', '', 'APH44001-516-2A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0142', '11', '', 'APH44001-517-2', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0143', '11', '', 'APH44001-521', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0144', '11', '', 'APH44001-528-3A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0145', '11', '', 'APH44001-535', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0146', '11', '', 'APH44001-536', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0147', '11', '', 'APH44001-540', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0148', '11', '', 'APH44001-544-2', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0149', '11', '', 'APH44001-545-2', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0150', '11', '', 'APH44001-546-2B', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0151', '11', '', 'APH44001-547-2', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0152', '11', '', 'APH44001-558-2', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0153', '11', '', 'APH44001-559', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0154', '11', '', 'APH44001-560-2', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0155', '11', '', 'APH44001-562', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0156', '11', '', 'APH44001-563', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0157', '11', '', 'APH44001-564', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0158', '11', '', 'APH44001-569-2', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0159', '11', '', 'APH44001-581-2A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0160', '11', '', 'APH44001-585-2', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0161', '11', '', 'APH44001-586-2', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0162', '11', '', 'APH44001-590-2', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0163', '11', '', 'APH44001-590-2 Export', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0164', '11', '', 'APH44001-595A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0165', '11', '', 'APH44001-595A Export', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0166', '11', '', 'APH44001-597A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0167', '11', '', 'APH44100-511A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0168', '11', '', 'APH44100-588', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0169', '11', '', 'APH44100-604B', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0170', '11', '', 'APH44100-632A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0171', '11', '', 'APH44100-638B', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0172', '11', '', 'APH44100-656D', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0173', '11', '', 'APH44100-657A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0174', '11', '', 'APH44100-730A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0175', '11', '', 'APH44100-742B', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0176', '11', '', 'APH44100-748B', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0177', '11', '', 'APH44100-751A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0178', '11', '', 'APH44100-767', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0179', '11', '', 'APH44100-773', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0180', '11', '', 'APH44100-774', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0181', '11', '', 'APH44100-775A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0182', '11', '', 'APH44100-775A Export', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0183', '11', '', 'APH44100-778A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0184', '11', '', 'APH44100-779C', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0185', '11', '', 'APH44200-536A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0186', '11', '', 'APH44200-537A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0187', '11', '', 'APH44200-588A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0188', '11', '', 'APH44200-589', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0189', '11', '', 'APH44200-594', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0190', '11', '', 'APH44200-601B', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0191', '11', '', 'APH44200-609', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0192', '11', '', 'APH44200-612', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0193', '11', '', 'APH44200-621', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0194', '11', '', 'APH44000-623', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0195', '11', '', 'APH44200-632A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0196', '11', '', 'APH44200-640', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0197', '11', '', 'APH44200-680', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0198', '11', '', 'APH44200-704', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0199', '11', '', 'APH44200-705', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0200', '11', '', 'APH44200-712', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0201', '11', '', 'APH44300-517/APH44300-517A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0202', '11', '', 'APH44400-599A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0203', '11', '', 'APH44400-603C', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0204', '11', '', 'APH44400-607A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0205', '11', '', 'APH44400-610', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0206', '11', '', 'APH44400-616-2', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0207', '11', '', 'APH44600-507A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0208', '11', '', 'APH46100-547', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0209', '11', '', 'APH46400-540', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0210', '11', '', 'APJ42200-508', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0211', '11', '', 'APJ43400-501B', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0212', '11', '', 'HAP33494-927C', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0213', '11', '', 'HAP33494-928C', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0214', '11', '', 'HAP33495-871A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0215', '11', '', 'HAP33495-872A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0216', '11', '', 'HAP33497-684A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0217', '11', '', 'HAP33497-685A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0218', '11', '', 'HAP33503-780', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0219', '11', '', 'HAP33503-781', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0220', '11', '', 'HAP33522-828', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0221', '11', '', 'HAP33522-829', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0222', '11', '', 'HAP43962-730-C', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0223', '11', '', 'HAP44029-942', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0224', '11', '', 'HAP33513-723A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0225', '11', '', 'OSH-1625-SPL', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0226', '11', '', 'OSH-1640-MP', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0227', '11', '', 'APH44001-503 2', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0228', '11', '', 'OSH-2428-SPL', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0229', '11', '', 'PC0615-53-PB', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0230', '11', '', 'PC1724B-40-PB/CX47100-144', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0231', '11', '', 'PUE16-25/OSH-1625-MP', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0232', '11', '', 'TR2215B', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0233', '11', '', 'TR3015B', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0234', '11', '', 'TR4515B', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0235', '11', '', 'APH34200-673A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0236', '11', '', 'APH44100-782A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0237', '11', '', 'APH44200-669', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0238', '11', '', 'APH44200-740', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0239', '11', '', 'APH44400-623', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0240', '11', '', 'APH46100-570', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0241', '11', '', 'APH44001-605-2  A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0242', '11', '', 'APH44200-738', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0243', '11', '', 'APH44200-739', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WSI-0244', '11', '', 'APH44400-621    A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'SANKEN INDONESIA');
INSERT INTO mst_barang VALUES ('WTG-0001', '11', '', '501-07-024-70/CP187nobuffing', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'TOAGALVA');
INSERT INTO mst_barang VALUES ('WTG-0002', '11', '', '501-07-026-70/CP237', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'TOAGALVA');
INSERT INTO mst_barang VALUES ('WTG-0003', '11', '', '501-07-142-00/handlebracketMF', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'TOAGALVA');
INSERT INTO mst_barang VALUES ('WTG-0004', '11', '', '501-07-206-90/controlpanel', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'TOAGALVA');
INSERT INTO mst_barang VALUES ('WTG-0005', '11', '', '501-07-207-20/tunercase', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'TOAGALVA');
INSERT INTO mst_barang VALUES ('WTG-0006', '11', '', '501-07-208-70/tunercover', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'TOAGALVA');
INSERT INTO mst_barang VALUES ('WTG-0007', '11', '', '501-07-253-70/F1000WPWallBracket', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'TOAGALVA');
INSERT INTO mst_barang VALUES ('WTG-0008', '11', '', '501-07-254-40/F2000WPWallBracket', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'TOAGALVA');
INSERT INTO mst_barang VALUES ('WTG-0009', '11', '', '501-07-255-30/F1000WPSpeakerbracket', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'TOAGALVA');
INSERT INTO mst_barang VALUES ('WTG-0010', '11', '', '501-07-256-40/F2000WPSpeakerbracket', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'TOAGALVA');
INSERT INTO mst_barang VALUES ('WTG-0011', '11', '', '501-07-408-50/BS-1015BS', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'TOAGALVA');
INSERT INTO mst_barang VALUES ('WTG-0012', '11', '', '501-08-136-80/heatsink', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'TOAGALVA');
INSERT INTO mst_barang VALUES ('WTG-0013', '11', '', '501-27-196-50/handlebracketw/blk', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'TOAGALVA');
INSERT INTO mst_barang VALUES ('WTG-0014', '11', '', '501-27-365-70/PE-154BS', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'TOAGALVA');
INSERT INTO mst_barang VALUES ('WYA-0001', '11', '', 'V702680', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('WYA-0002', '11', '', 'V776520', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('WYA-0003', '11', '', 'V786660WA', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('WYA-0004', '11', '', 'WC40830 ', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('WYA-0005', '11', '', 'WC40830', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('WYA-0006', '11', '', 'WD18590 MODIF.', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('WYA-0007', '11', '', 'WD34730', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('WYA-0008', '11', '', 'WD94300A', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('WYA-0009', '11', '', 'WE08730', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('WYA-0010', '11', '', 'WE08730 fin', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('WYA-0011', '11', '', 'WE15330/WG80390', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('WYA-0012', '11', '', 'WE15890/WG80380', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('WYA-0013', '11', '', 'WE15900/WG80370', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('WYA-0014', '11', '', 'WF54840', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('WYA-0015', '11', '', 'WF54850/WG80410', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('WYA-0016', '11', '', 'WG12050/WG80420', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('WYA-0017', '11', '', 'WG12060/WG80430', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('WYA-0018', '11', '', 'WG12070/WG80400', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('WYA-0019', '11', '', 'WG79990(Thern sheet only)', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('WYA-0020', '11', '', 'WG81820', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('WYA-0021', '11', '', 'WG98730BA', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('WYA-0022', '11', '', 'WG98730MF', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('WYA-0023', '11', '', 'WH00930', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('WYA-0024', '11', '', 'WH13020BA', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('WYA-0025', '11', '', 'WH13020MF', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('WYA-0026', '11', '', 'WH15130', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('WYA-0027', '11', '', 'WH15140', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('WYA-0028', '11', '', 'WH15150', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('WYA-0029', '11', '', 'WH45700', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('WYA-0030', '11', '', 'WJ14710', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('WYA-0031', '11', '', 'WJ14720', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('WYA-0032', '11', '', 'WJ16500', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('WYA-0033', '11', '', 'WJ17290', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('WYA-0034', '11', '', 'WJ45230', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('WYA-0035', '11', '', 'WJ91580', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('WYA-0036', '11', '', 'WJ94790BA', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('WYA-0037', '11', '', 'WJ94790MF', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('WYA-0038', '11', '', 'WK14070', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('WYA-0039', '11', '', 'WK14080', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('WYA-0040', '11', '', 'WK78660', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('WYA-0041', '11', '', 'WK79870 BA', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('WYA-0042', '11', '', 'WK79870 MF', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('WYA-0043', '11', '', 'WK79880 ( L )', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('WYA-0044', '11', '', 'WK79940 ( R )', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('WYA-0045', '11', '', 'WM14970', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('WYA-0046', '11', '', 'WM14980', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('WYA-0047', '11', '', 'WM47210', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('WYA-0048', '11', '', 'WM69000', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('WYA-0049', '11', '', 'WM69020', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('WYA-0050', '11', '', 'WM69030', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('WYA-0051', '11', '', 'WM83390', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('WYA-0052', '11', '', 'WN12150', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('WYA-0053', '11', '', 'WN13310', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('WYA-0054', '11', '', 'WN53320', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('WYA-0055', '11', '', 'WP01280', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('WYA-0056', '11', '', 'WP20300', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('WYA-0057', '11', '', 'WP20580', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('WYA-0058', '11', '', 'WP20600', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('WYA-0059', '11', '', 'WP21310', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('WYA-0060', '11', '', 'WP22570', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('WYA-0061', '11', '', 'WP22630', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('WYA-0062', '11', '', 'WP22700 BA', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('WYA-0063', '11', '', 'WP22700 MF', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('WYA-0064', '11', '', 'WP27730', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('WYA-0065', '11', '', 'WP93120', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('WYA-0066', '11', '', 'WP93130', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('WYA-0067', '11', '', 'WP93140', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('WYA-0068', '11', '', 'WP93150', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('WYA-0069', '11', '', 'WS08710', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('WYA-0070', '11', '', 'WS39620', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('WYA-0071', '11', '', 'WT46090', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('WYA-0072', '11', '', 'WT46110', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('WYA-0073', '11', '', 'WT87950', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('WYA-0074', '11', '', 'WT87970', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('WYA-0075', '11', '', 'WU12800', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('WYA-0076', '11', '', 'WU13170', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('WYA-0077', '11', '', 'WU30150', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('WYA-0078', '11', '', 'WV38420', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('WYA-0079', '11', '', 'WV50980', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('WYA-0080', '11', '', 'WV50990', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('WYA-0081', '11', '', 'WW31910', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('WYA-0082', '11', '', 'WY91820', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('WYA-0083', '11', '', 'ZC89370', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('WYA-0084', '11', '', 'ZA88180', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('WYA-0085', '11', '', 'ZA99150', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('WYA-0086', '11', '', 'ZE26630', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('WYA-0087', '11', '', 'ZF38310', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('WYA-0088', '11', '', 'ZF38320', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('WYA-0089', '11', '', 'ZF38330', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('WYA-0090', '11', '', 'ZF38340', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('WYA-0091', '11', '', 'ZE63230', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('WYA-0092', '11', '', 'ZF60070', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YMMA');
INSERT INTO mst_barang VALUES ('WYI-0001', '11', '', 'V696570', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YEMI');
INSERT INTO mst_barang VALUES ('WYI-0002', '11', '', 'V986330', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YEMI');
INSERT INTO mst_barang VALUES ('WYI-0003', '11', '', 'V986680', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YEMI');
INSERT INTO mst_barang VALUES ('WYI-0004', '11', '', 'WA10780BA', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YEMI');
INSERT INTO mst_barang VALUES ('WYI-0005', '11', '', 'WA10780MF3mm', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YEMI');
INSERT INTO mst_barang VALUES ('WYI-0006', '11', '', 'WB27950BA(t=3mm)', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YEMI');
INSERT INTO mst_barang VALUES ('WYI-0007', '11', '', 'WB27950MF(t=3mm)', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YEMI');
INSERT INTO mst_barang VALUES ('WYI-0008', '11', '', 'WB27960BA(t=3mm)', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YEMI');
INSERT INTO mst_barang VALUES ('WYI-0009', '11', '', 'WB27960MF(t=3mm)', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YEMI');
INSERT INTO mst_barang VALUES ('WYI-0010', '11', '', 'WB96410', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YEMI');
INSERT INTO mst_barang VALUES ('WYI-0011', '11', '', 'WD58680', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YEMI');
INSERT INTO mst_barang VALUES ('WYI-0012', '11', '', 'WF33690', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YEMI');
INSERT INTO mst_barang VALUES ('WYI-0013', '11', '', 'WF60800', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YEMI');
INSERT INTO mst_barang VALUES ('WYI-0014', '11', '', 'WF85590', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YEMI');
INSERT INTO mst_barang VALUES ('WYI-0015', '11', '', 'WH79060', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YEMI');
INSERT INTO mst_barang VALUES ('WYI-0016', '11', '', 'WK12380BA', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YEMI');
INSERT INTO mst_barang VALUES ('WYI-0017', '11', '', 'WK12380MF', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YEMI');
INSERT INTO mst_barang VALUES ('WYI-0018', '11', '', 'WK87830', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YEMI');
INSERT INTO mst_barang VALUES ('WYI-0019', '11', '', 'WK87850', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YEMI');
INSERT INTO mst_barang VALUES ('WYI-0020', '11', '', 'WP49440', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YEMI');
INSERT INTO mst_barang VALUES ('WYI-0021', '11', '', 'WY74640', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YEMI');
INSERT INTO mst_barang VALUES ('WYI-0022', '11', '', 'WY74650', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YEMI');
INSERT INTO mst_barang VALUES ('WYI-0023', '11', '', 'ZC64240-0', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YEMI');
INSERT INTO mst_barang VALUES ('WYI-0024', '11', '', 'ZD93680', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YEMI');
INSERT INTO mst_barang VALUES ('WYI-0025', '11', '', 'ZD21910', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YEMI');
INSERT INTO mst_barang VALUES ('WYI-0026', '11', '', 'ZD21920', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YEMI');
INSERT INTO mst_barang VALUES ('WYI-0027', '11', '', 'ZD55040', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YEMI');
INSERT INTO mst_barang VALUES ('WYI-0028', '11', '', 'ZD22000', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YEMI');
INSERT INTO mst_barang VALUES ('WYI-0029', '11', '', 'ZD91900', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YEMI');
INSERT INTO mst_barang VALUES ('WYI-0030', '11', '', 'ZD91920', '', '', '', null, null, null, null, null, null, '', '', 'PCS', null, '', '', 'YEMI');

-- ----------------------------
-- Table structure for `mst_caraangkut`
-- ----------------------------
DROP TABLE IF EXISTS `mst_caraangkut`;
CREATE TABLE `mst_caraangkut` (
  `KdCrAngkut` tinyint(1) NOT NULL,
  `NmCrAngkut` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`KdCrAngkut`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mst_caraangkut
-- ----------------------------
INSERT INTO mst_caraangkut VALUES ('1', 'Laut');
INSERT INTO mst_caraangkut VALUES ('2', 'Kereta Api');
INSERT INTO mst_caraangkut VALUES ('3', 'Jalan Raya');
INSERT INTO mst_caraangkut VALUES ('4', 'Udara');
INSERT INTO mst_caraangkut VALUES ('5', 'POS');
INSERT INTO mst_caraangkut VALUES ('6', 'Multimoda');
INSERT INTO mst_caraangkut VALUES ('7', 'Instalasi / Pipa');
INSERT INTO mst_caraangkut VALUES ('8', 'Sungai');
INSERT INTO mst_caraangkut VALUES ('9', 'Lainnya');

-- ----------------------------
-- Table structure for `mst_carabayar`
-- ----------------------------
DROP TABLE IF EXISTS `mst_carabayar`;
CREATE TABLE `mst_carabayar` (
  `KdCrBayar` tinyint(1) NOT NULL DEFAULT '0',
  `CrBayar` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`KdCrBayar`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mst_carabayar
-- ----------------------------
INSERT INTO mst_carabayar VALUES ('1', 'Dilakukan dimuka');
INSERT INTO mst_carabayar VALUES ('2', 'Kemudian');
INSERT INTO mst_carabayar VALUES ('3', 'Sight Letter of Cred');
INSERT INTO mst_carabayar VALUES ('4', 'Usance Letter of Cre');
INSERT INTO mst_carabayar VALUES ('5', 'Red Clause Letter of');
INSERT INTO mst_carabayar VALUES ('6', 'Wesel Inkaso');
INSERT INTO mst_carabayar VALUES ('7', 'Konsinyasi');
INSERT INTO mst_carabayar VALUES ('8', 'Interoffice Account');
INSERT INTO mst_carabayar VALUES ('9', 'Lainnya');

-- ----------------------------
-- Table structure for `mst_caradagang`
-- ----------------------------
DROP TABLE IF EXISTS `mst_caradagang`;
CREATE TABLE `mst_caradagang` (
  `KdCrDagang` tinyint(1) NOT NULL DEFAULT '0',
  `CrDagang` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`KdCrDagang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mst_caradagang
-- ----------------------------
INSERT INTO mst_caradagang VALUES ('1', 'Imbal dagang');
INSERT INTO mst_caradagang VALUES ('2', 'Lainnya');

-- ----------------------------
-- Table structure for `mst_caraserah_barang`
-- ----------------------------
DROP TABLE IF EXISTS `mst_caraserah_barang`;
CREATE TABLE `mst_caraserah_barang` (
  `KdCrSerahBrg` varchar(3) NOT NULL DEFAULT '',
  `NmCrSerahBrg` varchar(30) DEFAULT NULL,
  `KetCrSerahBrg` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`KdCrSerahBrg`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mst_caraserah_barang
-- ----------------------------
INSERT INTO mst_caraserah_barang VALUES ('CFR', 'Cost And Freight', 'diikuti nama pelabuhan bongkar');
INSERT INTO mst_caraserah_barang VALUES ('CIF', 'Cost, Insurance, And Freight', 'diikuti nama pelabuhan bongkar');
INSERT INTO mst_caraserah_barang VALUES ('CIP', 'Carriage and Insurance Paid To', null);
INSERT INTO mst_caraserah_barang VALUES ('CPT', 'Carriage Paid To', 'nama pelabuhan tujuan');
INSERT INTO mst_caraserah_barang VALUES ('DAF', 'Delivered and Frontier', null);
INSERT INTO mst_caraserah_barang VALUES ('DDP', 'Delivered Duty Paid', null);
INSERT INTO mst_caraserah_barang VALUES ('DDU', 'Delivered Duty Unpai', 'nama pelabuhan tujuan');
INSERT INTO mst_caraserah_barang VALUES ('DEQ', 'Delivered Ex Quay', 'nama pelabuhan tujuan');
INSERT INTO mst_caraserah_barang VALUES ('DES', 'Delivered Ex Ship', 'nama pelabuhan tujuan');
INSERT INTO mst_caraserah_barang VALUES ('EXW', 'Ex Works', 'diikuti nama tempat/ pabrik penjual');
INSERT INTO mst_caraserah_barang VALUES ('FAS', 'Free Alongside Ship', 'nama pelabuhan muat');
INSERT INTO mst_caraserah_barang VALUES ('FCA', 'Free Carrier', null);
INSERT INTO mst_caraserah_barang VALUES ('FOB', 'Free On Board', 'diikuti nama pelabuhan muat');

-- ----------------------------
-- Table structure for `mst_daerah`
-- ----------------------------
DROP TABLE IF EXISTS `mst_daerah`;
CREATE TABLE `mst_daerah` (
  `KdDaerah` varchar(4) NOT NULL DEFAULT '',
  `NmDaerah` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`KdDaerah`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mst_daerah
-- ----------------------------
INSERT INTO mst_daerah VALUES ('3100', 'Prov. D K I Jakarta');
INSERT INTO mst_daerah VALUES ('3200', 'Prov. Jawa Barat');
INSERT INTO mst_daerah VALUES ('3204', 'Soreang');
INSERT INTO mst_daerah VALUES ('3205', 'Garut, Jawa Barat');
INSERT INTO mst_daerah VALUES ('3213', 'Subang, Jawa Barat');
INSERT INTO mst_daerah VALUES ('3214', 'Purwakarta, Jawa Barat');

-- ----------------------------
-- Table structure for `mst_factory`
-- ----------------------------
DROP TABLE IF EXISTS `mst_factory`;
CREATE TABLE `mst_factory` (
  `kode_fac` char(2) NOT NULL COMMENT 'kode pabrik',
  `nama_fac` varchar(50) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `telp` varchar(15) NOT NULL,
  `fax` varchar(15) NOT NULL,
  `nm_pimp` varchar(30) NOT NULL COMMENT 'nama pimpinan',
  `email` varchar(30) NOT NULL,
  PRIMARY KEY (`kode_fac`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mst_factory
-- ----------------------------
INSERT INTO mst_factory VALUES ('01', 'PT. YANJIN INDONESIA FACTORY', '', '', '', '', '');

-- ----------------------------
-- Table structure for `mst_in_type`
-- ----------------------------
DROP TABLE IF EXISTS `mst_in_type`;
CREATE TABLE `mst_in_type` (
  `matin_type` varchar(1) NOT NULL DEFAULT '0',
  `matin_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`matin_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mst_in_type
-- ----------------------------
INSERT INTO mst_in_type VALUES ('0', 'Purchase');
INSERT INTO mst_in_type VALUES ('1', 'Replacement');
INSERT INTO mst_in_type VALUES ('2', 'From Production');

-- ----------------------------
-- Table structure for `mst_jenisbarang`
-- ----------------------------
DROP TABLE IF EXISTS `mst_jenisbarang`;
CREATE TABLE `mst_jenisbarang` (
  `KdJnsBarang` tinyint(2) NOT NULL DEFAULT '0',
  `JnsBarang` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`KdJnsBarang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mst_jenisbarang
-- ----------------------------
INSERT INTO mst_jenisbarang VALUES ('0', 'Barang Jadi');
INSERT INTO mst_jenisbarang VALUES ('1', 'Bahan Baku');
INSERT INTO mst_jenisbarang VALUES ('2', 'Bahan Penolong');
INSERT INTO mst_jenisbarang VALUES ('3', 'Mesin/Sparepart');
INSERT INTO mst_jenisbarang VALUES ('4', 'Peralatan Pabrik');
INSERT INTO mst_jenisbarang VALUES ('5', 'Peralatan Perkantoran');
INSERT INTO mst_jenisbarang VALUES ('6', 'Peralatan Kontruksi');
INSERT INTO mst_jenisbarang VALUES ('7', 'Brg Reimpor TPB');
INSERT INTO mst_jenisbarang VALUES ('8', 'Brg Contoh/Test');
INSERT INTO mst_jenisbarang VALUES ('9', 'Lainnya');
INSERT INTO mst_jenisbarang VALUES ('10', 'Lebih dr 1 Jenis Brg');
INSERT INTO mst_jenisbarang VALUES ('11', 'WIP');
INSERT INTO mst_jenisbarang VALUES ('12', 'Scrap');

-- ----------------------------
-- Table structure for `mst_jenisekspor`
-- ----------------------------
DROP TABLE IF EXISTS `mst_jenisekspor`;
CREATE TABLE `mst_jenisekspor` (
  `KdJnsEkspor` tinyint(1) NOT NULL DEFAULT '0',
  `JnsEkspor` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`KdJnsEkspor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mst_jenisekspor
-- ----------------------------
INSERT INTO mst_jenisekspor VALUES ('1', 'Biasa');
INSERT INTO mst_jenisekspor VALUES ('2', 'Akan Diimpor Kembali');
INSERT INTO mst_jenisekspor VALUES ('3', 'Reekspor');

-- ----------------------------
-- Table structure for `mst_kategoriekspor`
-- ----------------------------
DROP TABLE IF EXISTS `mst_kategoriekspor`;
CREATE TABLE `mst_kategoriekspor` (
  `KdKatEkspor` tinyint(2) NOT NULL DEFAULT '0',
  `KatEkspor` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`KdKatEkspor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mst_kategoriekspor
-- ----------------------------
INSERT INTO mst_kategoriekspor VALUES ('1', 'Umum');
INSERT INTO mst_kategoriekspor VALUES ('2', 'Kemudahan Impor Tujuan Ekspor (KITE) dengan pembeb');
INSERT INTO mst_kategoriekspor VALUES ('3', 'Kemudahan Impor Tujuan Eksporb (KITE) dengan pengembalian');
INSERT INTO mst_kategoriekspor VALUES ('4', 'Kemudahan Impor Tujuan Eksporb (KITE) dengan pembebasan dan pengembalian');
INSERT INTO mst_kategoriekspor VALUES ('5', 'Khusus barang kiriman');
INSERT INTO mst_kategoriekspor VALUES ('6', 'Khusus barang pindahan');
INSERT INTO mst_kategoriekspor VALUES ('7', 'Khusus barang perwakilan negara asing atau badan international');
INSERT INTO mst_kategoriekspor VALUES ('8', 'Khusus untuk keperluan ibadah untuk umum, sosial, pendidikan, kebudayaan ');
INSERT INTO mst_kategoriekspor VALUES ('9', 'Khusus barang cinderamata');
INSERT INTO mst_kategoriekspor VALUES ('10', 'Khusus barang contoh');
INSERT INTO mst_kategoriekspor VALUES ('11', 'Khusus barang keperluan penelitian');
INSERT INTO mst_kategoriekspor VALUES ('12', 'Tempat Penimbunan Berikat (TPB) dari Kawasan Berikat');
INSERT INTO mst_kategoriekspor VALUES ('13', 'Tempat Penimbunan Berikat (TPB) dari Gudang Berikat');
INSERT INTO mst_kategoriekspor VALUES ('14', 'Tempat Penimbunan Berikat (TPB) dari Tempat Pameran Berikat');
INSERT INTO mst_kategoriekspor VALUES ('15', 'Tempat Penimbunan Berikat (TPB) dari Toko Bebas Bea');
INSERT INTO mst_kategoriekspor VALUES ('16', 'Tempat Penimbunan Berikat (TPB) dari Tempat Lelang Berikat');
INSERT INTO mst_kategoriekspor VALUES ('17', 'Tempat Penimbunan Berikat (TPB) dari Kawasan Daur Ulang Berikat');

-- ----------------------------
-- Table structure for `mst_lokasiperiksa`
-- ----------------------------
DROP TABLE IF EXISTS `mst_lokasiperiksa`;
CREATE TABLE `mst_lokasiperiksa` (
  `KdLokPeriksa` tinyint(1) NOT NULL DEFAULT '0',
  `LokPeriksa` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`KdLokPeriksa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mst_lokasiperiksa
-- ----------------------------
INSERT INTO mst_lokasiperiksa VALUES ('1', 'Kawasan Pabean');
INSERT INTO mst_lokasiperiksa VALUES ('2', 'Luar Kawasan Pabean');

-- ----------------------------
-- Table structure for `mst_negara`
-- ----------------------------
DROP TABLE IF EXISTS `mst_negara`;
CREATE TABLE `mst_negara` (
  `KdNegara` varchar(2) NOT NULL DEFAULT '',
  `NmNegara` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`KdNegara`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mst_negara
-- ----------------------------
INSERT INTO mst_negara VALUES ('CN', 'Cina');
INSERT INTO mst_negara VALUES ('ID', 'Indonesia');
INSERT INTO mst_negara VALUES ('JP', 'Jepang');
INSERT INTO mst_negara VALUES ('KR', 'Korea, Republic Of');
INSERT INTO mst_negara VALUES ('US', 'United States');

-- ----------------------------
-- Table structure for `mst_out_type`
-- ----------------------------
DROP TABLE IF EXISTS `mst_out_type`;
CREATE TABLE `mst_out_type` (
  `matout_type` varchar(1) NOT NULL DEFAULT '0',
  `matout_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`matout_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mst_out_type
-- ----------------------------
INSERT INTO mst_out_type VALUES ('0', 'Consumption');
INSERT INTO mst_out_type VALUES ('1', 'Return');
INSERT INTO mst_out_type VALUES ('2', 'From Production');

-- ----------------------------
-- Table structure for `mst_pelabuhan`
-- ----------------------------
DROP TABLE IF EXISTS `mst_pelabuhan`;
CREATE TABLE `mst_pelabuhan` (
  `KdPelabuhan` varchar(5) NOT NULL DEFAULT '',
  `NmPelabuhan` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`KdPelabuhan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mst_pelabuhan
-- ----------------------------
INSERT INTO mst_pelabuhan VALUES ('IDTPP', 'Tanjung Priok');
INSERT INTO mst_pelabuhan VALUES ('KRPUS', 'Busan (ex Pusan)');
INSERT INTO mst_pelabuhan VALUES ('USFAT', 'Fresno');

-- ----------------------------
-- Table structure for `mst_penggunaanbarang`
-- ----------------------------
DROP TABLE IF EXISTS `mst_penggunaanbarang`;
CREATE TABLE `mst_penggunaanbarang` (
  `KdGuna` varchar(1) NOT NULL DEFAULT '',
  `NmGuna` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`KdGuna`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mst_penggunaanbarang
-- ----------------------------
INSERT INTO mst_penggunaanbarang VALUES ('1', 'Barang Berhubungan Langsung');
INSERT INTO mst_penggunaanbarang VALUES ('2', 'Barang Tidak Berhubungan Langsung');
INSERT INTO mst_penggunaanbarang VALUES ('3', 'Barang Konsumsi');
INSERT INTO mst_penggunaanbarang VALUES ('4', 'Hasil Olahan');
INSERT INTO mst_penggunaanbarang VALUES ('5', 'Barang Lainnya');

-- ----------------------------
-- Table structure for `mst_penimbunan`
-- ----------------------------
DROP TABLE IF EXISTS `mst_penimbunan`;
CREATE TABLE `mst_penimbunan` (
  `KdTimbun` varchar(5) NOT NULL DEFAULT '',
  `NmTimbun` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`KdTimbun`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mst_penimbunan
-- ----------------------------
INSERT INTO mst_penimbunan VALUES ('UTPK', 'UTPK III');

-- ----------------------------
-- Table structure for `mst_perusahaan`
-- ----------------------------
DROP TABLE IF EXISTS `mst_perusahaan`;
CREATE TABLE `mst_perusahaan` (
  `NmPrshn` varchar(50) NOT NULL DEFAULT '',
  `TpPrshn` enum('o','c','s','p') DEFAULT NULL COMMENT '''o''=Owner, ''c''=Customer/Buyer, ''s''=Supplier,''p''=PPJK',
  `NpwpPrshn` varchar(30) DEFAULT NULL,
  `AlmtPrshn` varchar(100) DEFAULT NULL,
  `AlmtPrshn2` varchar(100) DEFAULT NULL,
  `Kota` varchar(20) DEFAULT NULL,
  `Prov` varchar(20) DEFAULT NULL,
  `Negara` varchar(20) DEFAULT NULL,
  `fax` varchar(30) DEFAULT NULL,
  `tlp` varchar(30) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `StatusKB` enum('KB','Non KB') DEFAULT NULL,
  `NoTpb` varchar(50) DEFAULT NULL,
  `TgTpb` date DEFAULT NULL,
  `Niper` varchar(50) DEFAULT NULL,
  `NoTDP` varchar(10) DEFAULT NULL,
  `TgTDP` date DEFAULT NULL,
  `Cp` varchar(30) DEFAULT NULL,
  `NipCp` varchar(20) DEFAULT NULL,
  `NoPokokPpjk` varchar(20) DEFAULT NULL,
  `TgPokokPpjk` date DEFAULT NULL,
  `KdApi` enum('1','2') DEFAULT NULL,
  `NoApi` varchar(15) DEFAULT NULL,
  `KdPengguna` varchar(6) DEFAULT NULL,
  `NoReg1` varchar(6) DEFAULT NULL,
  `NoReg2` varchar(6) DEFAULT NULL,
  `KpbcPengawas` varchar(6) DEFAULT NULL,
  `NmPejabat` varchar(30) DEFAULT NULL,
  `NipPejabat` varchar(20) DEFAULT NULL,
  `Valuta` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`NmPrshn`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mst_perusahaan
-- ----------------------------
INSERT INTO mst_perusahaan VALUES ('CV. Jaya Mulya Mandiri', 'c', '02.356.631.8-431.000', 'Kp. Poncol Rt 006 Rw 002, Pasirsari, Cikarang Selatan, Bekasi, Jawa Barat', '', '', '', '', '', '', null, '', 'TLDDP', null, '', '', null, 'Mr. Rohman', '', '', null, '', '', '', '', '', 'TLDDP', '', '', 'Rp');
INSERT INTO mst_perusahaan VALUES ('PT. Hartono Istana Teknologi', 'c', '01.462.713.7-092.000', 'Jl. KHR. Asnawi PO BOX 126, Kaliwungu, Kudus-59332', '', '', '', '', '', '', null, '', 'TLDDP', null, '', '', null, 'Mrs. Silvy Hartono', '', '', null, '', '', '', '', '', 'TLDDP', '', '', 'USD');
INSERT INTO mst_perusahaan VALUES ('PT. INDAL', 's', '1', 'Jl.', null, '', '', 'ID', '', '', '0', '', '', null, '', null, null, '', null, '', '0000-00-00', null, null, null, null, null, null, null, null, null);
INSERT INTO mst_perusahaan VALUES ('PT. JVC Electronics Indonesia', 'c', '01.071.863.3-055.000', 'Jl. Surya Lestari Kav.I-16B, Kota Industri Surya Cipta,Teluk Jambe - Karawang', '', '', '', '', '', '', null, '', '916/KM.4/2012  ', null, '', '', null, 'Mr. Halim Napitupulu', '', '', null, '', '', '', '', '', '050800', '', '', 'USD');
INSERT INTO mst_perusahaan VALUES ('PT. Katolec Indonesia', 'c', '01.081.601.5-055.000', 'Kawasan Industri EJIP Park Plot 8F, Cikarang Selatan, Bekasi, Jawa Barat', '', '', '', '', '', '', null, '', '', null, '', '', null, 'Mr. Eddy Cahyadi', '', '', null, '', '', '', '', '', '050900', '', '', 'USD');
INSERT INTO mst_perusahaan VALUES ('PT. Kawai Indonesia', 'c', '02.026.406.5-052.000', 'KIIC Jl. Maligi Raya Lot J-4A Jl. Tol JKT-Cikampek Km. 47, Teluk Jambe, Karawang-41361', '', '', '', '', '', '', null, '', '1115/KM.4/2012  ', null, '', '', null, 'Mrs. Wati', '', '', null, '', '', '', '', '', '050800', '', '', 'USD');
INSERT INTO mst_perusahaan VALUES ('PT. Matsuzawa Pelita Furniture Indonesia', 'c', '01.081.626.2-433.000', 'Desa Cimahi Klari, Klari, Karawang - 41371', '', '', '', '', '', '', null, '', '177/KMK/04/2004', null, '', '', null, 'Mr. Agus Priyatna', '', '', null, '', '', '', '', '', '050800', '', '', 'USD');
INSERT INTO mst_perusahaan VALUES ('PT. Panasonic Gobel Eco Solutions  Manufacturing I', 'c', '01.069.575.7-055.000', 'EJIP Industrial Park Plot 3D, Cikarang Selatan, Bekasi ', '', '', '', '', '', '', null, '', '1763/KM.4/2012', null, '', '', null, 'Mr. Nur Kholik', '', '', null, '', '', '', '', '', '050900', '', '', 'USD');
INSERT INTO mst_perusahaan VALUES ('PT. Panasonic Healthcare Indonesia', 'c', '01.081.576.9-055.000', 'Kawasan Industrial MM2100  Blok O-1, Gandamekar, Cikarang Barat, Bekasi, Jawa Barat-17520', '', '', '', '', '', '', null, '', '', null, '', '', null, 'Mr. M. Arifin Kasus', '', '', null, '', '', '', '', '', '050900', '', '', 'USD');
INSERT INTO mst_perusahaan VALUES ('PT. Panasonic Manufacturing Indonesia', 'c', '01.000.604.7-092.000', 'Jl. Raya Bogor Km 29, Pekayon-Pasar rebo, Jakarta-13710', '', '', '', '', '', '', null, '', '529/KMK.05/2000', null, '', '', null, 'Mr. Hendra', '', '', null, '', '', '', '', '', '040400', '', '', 'USD');
INSERT INTO mst_perusahaan VALUES ('PT. Paramount Bed Indonesia', 'c', '01.071.190.1-055.000', 'Block M-1-1  MM2100 Industrial Town Gandamekar - Cikarang Barat Bekasi 17550', '', '', '', '', '', '', null, '', 'TLDDP', null, '', '', null, 'Mr. Agung Pribadi', '', '', null, '', '', '', '', '', 'TLDDP', '', '', 'USD');
INSERT INTO mst_perusahaan VALUES ('PT. Sanken Indonesia', 'c', '01.824.407.9-055.000', 'Kawasan Industrial MM2100   Blok  GG - 8  , Gandamekar, Cibitung - Bekasi  17520', '', '', '', '', '', '', null, '', '1616/KM.04/2012', null, '', '', null, 'Mrs. Yosy', '', '', null, '', '', '', '', '', '050900', '', '', 'USD');
INSERT INTO mst_perusahaan VALUES ('PT. SIIX EMS Indonesia', 'c', '03.090.051.8-408.000', 'Jl. Maligi VIII Lot S-4 Kawasan Industri KIIC, Margakaya, Telukjambe Barat, Karawang, Jawa Barat-413', '', '', '', '', '', '', null, '', '1225/KM.4/2011', null, '', '', null, 'Mrs. Risma', '', '', null, '', '', '', '', '', '050800', '', '', 'USD');
INSERT INTO mst_perusahaan VALUES ('PT. Toa Galindra Electronics', 'c', '02.519.860.7-055.000', 'Jl. Hayam Wuruk No. 27, Kebon kelapa, Gambir, Jakarta Pusat 10120', '', '', '', '', '', '', null, '', 'TLDDP', null, '', '', null, 'Mr. Afendy', '', '', null, '', '', '', '', '', 'TLDDP', '', '', 'USD');
INSERT INTO mst_perusahaan VALUES ('PT. Toa Galva Industries', 'c', '01.001.779.6-055.000', 'Jl. Hayam Wuruk No. 27, Kebon Kelapa, Gambir , Jakarta Pusat', '', '', '', '', '', '', null, '', '189/KM.04/2003', null, '', '', null, 'Mr. Endang Supriatna', '', '', null, '', '', '', '', '', '050300', '', '', 'USD');
INSERT INTO mst_perusahaan VALUES ('PT. Yamaha Electronics Manufacturing Indonesia', 'c', '01.869.240.0-055.000', 'Jl. Rembang Industri II / 9-11, Mojoparon - Rembang, Pasuruan   67152 ', '', '', '', '', '', '', null, '', 'S-523/BC-1999', null, '', '', null, 'Mr. Solahudin', '', '', null, '', '', '', '', '', '071300', '', '', 'USD');
INSERT INTO mst_perusahaan VALUES ('PT. Yamaha Music Manufacturing Asia', 'c', '01.824.284.2-052.000', 'Kawasan Industri MM2100 Blok EE-3, Cikarang Barat-Bekasi 17849', '', '', '', '', '', '', null, '', '47/KM.05/1998', null, '', '', null, 'Mr. K. Hilman', '', '', null, '', '', '', '', '', '050900', '', '', 'USD');
INSERT INTO mst_perusahaan VALUES ('PT. YAN JIN INDONESIA', 'o', '01.061.837.9-057.000', 'Kawasan EJIP Industrial Park Plot 8H Cikarang Selatan', '', 'Bekasi', 'Jawa Barat', 'Indonesia', '', '', '0', '', '865/KM.4/2010', '0000-00-00', '_', '102747857', '0000-00-00', 'Mr. Y. Tobusawa', '', '', null, '2', '536/APIT/198', '000000', '000192', '001269', '050800', '', '', 'Rp');

-- ----------------------------
-- Table structure for `mst_status`
-- ----------------------------
DROP TABLE IF EXISTS `mst_status`;
CREATE TABLE `mst_status` (
  `KdStatus` varchar(2) NOT NULL DEFAULT '',
  `NmStatus` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`KdStatus`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mst_status
-- ----------------------------
INSERT INTO mst_status VALUES ('10', 'Koperasi');
INSERT INTO mst_status VALUES ('20', 'PMDN (migas)');
INSERT INTO mst_status VALUES ('21', 'PMDN (non migas)');
INSERT INTO mst_status VALUES ('30', 'PMA (migas)');
INSERT INTO mst_status VALUES ('31', 'PMA (non migas)');
INSERT INTO mst_status VALUES ('40', 'BUMN');
INSERT INTO mst_status VALUES ('50', 'BUMD');
INSERT INTO mst_status VALUES ('60', 'Perorangan');
INSERT INTO mst_status VALUES ('90', 'Lainnya');

-- ----------------------------
-- Table structure for `mst_status_petikemas`
-- ----------------------------
DROP TABLE IF EXISTS `mst_status_petikemas`;
CREATE TABLE `mst_status_petikemas` (
  `KdStPetiKemas` varchar(6) NOT NULL DEFAULT '',
  `NmStPetiKemas` varchar(20) DEFAULT NULL,
  `UrStPetiKemas` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`KdStPetiKemas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mst_status_petikemas
-- ----------------------------
INSERT INTO mst_status_petikemas VALUES ('1', 'FCL', 'Full Container Load');
INSERT INTO mst_status_petikemas VALUES ('2', 'LCL', 'Less Container Load');
INSERT INTO mst_status_petikemas VALUES ('3', 'Gabungan FCL dan LCL', 'Gabungan FCL dan LCL');

-- ----------------------------
-- Table structure for `penggunaanbarang`
-- ----------------------------
DROP TABLE IF EXISTS `penggunaanbarang`;
CREATE TABLE `penggunaanbarang` (
  `DokKdBc` tinyint(1) NOT NULL DEFAULT '0',
  `CAR` varchar(6) NOT NULL DEFAULT '' COMMENT 'Nomor Pengajuan',
  `no` tinyint(2) NOT NULL COMMENT 'No. Urut',
  `KdJnsDok` tinyint(1) DEFAULT NULL,
  `NoAju` varchar(6) DEFAULT NULL,
  `NoUrut` tinyint(2) NOT NULL DEFAULT '0',
  `KdBarang` varchar(11) DEFAULT NULL,
  `UrBarang` varchar(100) DEFAULT NULL COMMENT 'Nomor Dokumen',
  `qty` int(11) DEFAULT NULL,
  `CIF` decimal(12,2) DEFAULT NULL COMMENT 'Nilai CIF',
  `BM` decimal(12,2) DEFAULT NULL,
  `Cukai` decimal(12,2) DEFAULT NULL,
  `PPN` decimal(12,2) DEFAULT NULL,
  `PPnBM` decimal(12,2) DEFAULT NULL,
  `PPh` decimal(12,2) DEFAULT NULL,
  PRIMARY KEY (`DokKdBc`,`CAR`,`no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of penggunaanbarang
-- ----------------------------
INSERT INTO penggunaanbarang VALUES ('3', '000001', '1', '1', '000700', '1', 'MAT-0001', 'tes', '1', '2.00', '1.00', '2.00', '1.00', '2.00', '1.00');
INSERT INTO penggunaanbarang VALUES ('3', '000003', '0', '0', '0000-0', '1', '0', '6103.90.9000', '0', '0.00', '3.00', null, '450.00', null, '300.00');
INSERT INTO penggunaanbarang VALUES ('3', '000004', '0', '0', '0000-0', '1', '0', '6103.90.9000', '0', '0.00', '3.00', null, '450.00', null, '300.00');
INSERT INTO penggunaanbarang VALUES ('3', '000005', '0', '0', '0000-0', '1', '0', '6103.90.9000', '0', '0.00', '3.00', null, '450.00', null, '300.00');
INSERT INTO penggunaanbarang VALUES ('3', '000006', '0', '0', '0000-0', '1', '0', '6103.90.9000', '0', '0.00', '3.00', null, '450.00', null, '300.00');
INSERT INTO penggunaanbarang VALUES ('3', '201..2', '1', '1', '000700', '1', 'MAT-0001', 'tes', '1', '2.00', '1.00', '2.00', '1.00', '2.00', '1.00');
INSERT INTO penggunaanbarang VALUES ('3', '201.20', '1', '1', '000700', '1', 'MAT-0001', 'tes', '1', '2.00', '1.00', '2.00', '1.00', '2.00', '1.00');
INSERT INTO penggunaanbarang VALUES ('3', '201207', '1', '1', '000700', '1', 'MAT-0001', 'tes', '1', '2.00', '1.00', '2.00', '1.00', '2.00', '1.00');

-- ----------------------------
-- Table structure for `penjamin`
-- ----------------------------
DROP TABLE IF EXISTS `penjamin`;
CREATE TABLE `penjamin` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NmPenjamin` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of penjamin
-- ----------------------------
INSERT INTO penjamin VALUES ('1', 'PT.ASURANSI MEGA PRATAMA');
INSERT INTO penjamin VALUES ('7', '1');
INSERT INTO penjamin VALUES ('8', '');

-- ----------------------------
-- Table structure for `ppic_fgmatcon`
-- ----------------------------
DROP TABLE IF EXISTS `ppic_fgmatcon`;
CREATE TABLE `ppic_fgmatcon` (
  `matcon_id` varchar(20) NOT NULL COMMENT 'ID Material Consumption',
  `child_no` int(10) NOT NULL COMMENT 'Nomor Urut Detail',
  `mat_id` varchar(20) NOT NULL COMMENT 'ID Material',
  `qty` decimal(10,2) NOT NULL COMMENT 'Jumlah Pemakaian',
  PRIMARY KEY (`matcon_id`,`child_no`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ppic_fgmatcon
-- ----------------------------
INSERT INTO ppic_fgmatcon VALUES ('FBI-0001', '1', 'ALME0001', '0.01');
INSERT INTO ppic_fgmatcon VALUES ('FBI-0001', '2', 'ALME0003', '0.40');
INSERT INTO ppic_fgmatcon VALUES ('FBI-0001', '3', 'ALME0002', '0.04');

-- ----------------------------
-- Table structure for `ppic_wodet`
-- ----------------------------
DROP TABLE IF EXISTS `ppic_wodet`;
CREATE TABLE `ppic_wodet` (
  `wo_id` int(10) NOT NULL,
  `child_no` int(10) NOT NULL,
  `fg_id` varchar(20) NOT NULL DEFAULT '0' COMMENT 'Nomor ID Finish Good',
  `qty_plan` decimal(12,2) NOT NULL,
  PRIMARY KEY (`wo_id`,`child_no`),
  CONSTRAINT `ppic_wodet_ibfk_1` FOREIGN KEY (`wo_id`) REFERENCES `ppic_wohdr` (`wo_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Detail Work Order';

-- ----------------------------
-- Records of ppic_wodet
-- ----------------------------
INSERT INTO ppic_wodet VALUES ('3', '1', '123', '1.00');

-- ----------------------------
-- Table structure for `ppic_wohdr`
-- ----------------------------
DROP TABLE IF EXISTS `ppic_wohdr`;
CREATE TABLE `ppic_wohdr` (
  `wo_id` int(10) NOT NULL AUTO_INCREMENT,
  `wo_no` varchar(20) NOT NULL,
  `wo_date` date NOT NULL,
  `so_id` int(10) NOT NULL,
  `expplan_date` date NOT NULL COMMENT 'Tanggal Ekspor Rencana',
  `tot_qty` decimal(9,2) NOT NULL,
  `notes` varchar(80) NOT NULL,
  PRIMARY KEY (`wo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COMMENT='Header Work Order';

-- ----------------------------
-- Records of ppic_wohdr
-- ----------------------------
INSERT INTO ppic_wohdr VALUES ('3', '002', '2012-09-19', '25', '2012-09-20', '1.00', 'sial');

-- ----------------------------
-- Table structure for `pur_podet`
-- ----------------------------
DROP TABLE IF EXISTS `pur_podet`;
CREATE TABLE `pur_podet` (
  `po_id` int(10) NOT NULL DEFAULT '0' COMMENT 'Nomor ID Transaksi P/O ke Supplier',
  `child_no` int(10) NOT NULL DEFAULT '0' COMMENT 'Nomor Item Detail Transaksi',
  `mat_id` varchar(20) NOT NULL DEFAULT '0' COMMENT 'Nomor Id Material',
  `qty` decimal(9,2) NOT NULL DEFAULT '0.00' COMMENT 'Jumlah Qty saat pemesanan',
  `price` decimal(19,2) NOT NULL DEFAULT '0.00' COMMENT 'Jumlah Harga Satuan Barang',
  PRIMARY KEY (`po_id`,`child_no`),
  CONSTRAINT `pur_podet_ibfk_1` FOREIGN KEY (`po_id`) REFERENCES `pur_pohdr` (`po_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Detail Transaksi Pemesanan Barang';

-- ----------------------------
-- Records of pur_podet
-- ----------------------------
INSERT INTO pur_podet VALUES ('3', '1', 'TESMAT-2', '2.00', '2.00');
INSERT INTO pur_podet VALUES ('4', '1', 'TESMAT-1', '1.00', '2.00');
INSERT INTO pur_podet VALUES ('5', '1', 'ALME0002', '200.00', '100.00');
INSERT INTO pur_podet VALUES ('6', '1', 'M001', '100.00', '200.00');
INSERT INTO pur_podet VALUES ('6', '2', 'P001', '200.00', '100.00');

-- ----------------------------
-- Table structure for `pur_pohdr`
-- ----------------------------
DROP TABLE IF EXISTS `pur_pohdr`;
CREATE TABLE `pur_pohdr` (
  `po_id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Nomor ID Transaksi P/O ke Supplier',
  `po_type` enum('0','1') DEFAULT '0' COMMENT '0=po normal, 1=po return',
  `po_no` varchar(20) NOT NULL DEFAULT '' COMMENT 'Nomor Transaksi Pesanan',
  `po_date` date NOT NULL COMMENT 'Tanggal dan Jam Pemesanan',
  `ref_id` int(10) DEFAULT NULL,
  `ref_no` varchar(20) DEFAULT NULL,
  `supplier` varchar(50) NOT NULL COMMENT 'Kode Supplier Tujuan',
  `attn` varchar(40) NOT NULL DEFAULT '' COMMENT 'Contact Person Supplier',
  `currency` varchar(3) NOT NULL DEFAULT 'IDR',
  `dlv_date` datetime NOT NULL COMMENT 'Tanggal Barang akan Dikirim',
  `wh_id` int(2) DEFAULT NULL,
  `notes` varchar(80) NOT NULL DEFAULT '' COMMENT 'Catatan Transaksi Pesanan',
  `sub_total` decimal(19,2) NOT NULL COMMENT 'Total field ''amount_po'' pada tabel detailnya',
  `disc_pct` decimal(5,2) NOT NULL COMMENT 'Persentase Diskon',
  `disc_amt` decimal(15,2) NOT NULL COMMENT 'Nilai Diskon',
  `ppn` decimal(10,2) NOT NULL,
  `tot_qty` decimal(10,2) NOT NULL COMMENT 'Nilai setelah dikurangi Diskon, ditambah PPn',
  `tot_amount` decimal(12,2) DEFAULT NULL,
  `terms` varchar(30) NOT NULL DEFAULT '1',
  `spec` varchar(50) DEFAULT NULL,
  `width_tol` varchar(20) DEFAULT NULL,
  `thick_tol` varchar(20) DEFAULT NULL,
  `Wrmax` int(10) DEFAULT NULL,
  `remark` varchar(50) DEFAULT NULL,
  `auth_sign` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`po_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COMMENT='Header Transaksi Pesanan Material ke Supplier';

-- ----------------------------
-- Records of pur_pohdr
-- ----------------------------
INSERT INTO pur_pohdr VALUES ('3', '1', '1', '2012-08-31', '2', '222', 'PT. ALUMINDO LIGHT METAL INDUSTRY', '2', 'USD', '2012-08-31 00:00:00', '1', '2', '0.00', '0.00', '0.00', '1.00', '0.00', null, '1', '1', '1', '1', '1', '2', '2');
INSERT INTO pur_pohdr VALUES ('4', '1', '2', '2012-08-31', '1', '111', 'PT. INDAL ALUMINIUM INDUSTRY - DIV. ISS', '1', 'USD', '2012-08-31 00:00:00', '1', '1', '0.00', '0.00', '0.00', '2.00', '0.00', null, '2', '2', '1', '1', '1', '2', '2');
INSERT INTO pur_pohdr VALUES ('5', '0', '001', '2012-08-06', null, null, 'PT. ALUMINDO LIGHT METAL INDUSTRY', '1', 'USD', '2012-09-13 00:00:00', '1', '3', '0.00', '0.00', '0.00', '10.00', '0.00', null, '2', '4', '6', '7', '9', '8', '10');
INSERT INTO pur_pohdr VALUES ('6', '0', '002', '2012-10-28', null, null, 'PT. DIHEN BERSAMA', 'Kikin', 'Rp', '2012-10-31 00:00:00', '0', 'Just a test', '0.00', '0.00', '0.00', '10.00', '0.00', null, 'tes', '', '', '', '0', '', '');

-- ----------------------------
-- Table structure for `satuan`
-- ----------------------------
DROP TABLE IF EXISTS `satuan`;
CREATE TABLE `satuan` (
  `KdSat` varchar(3) NOT NULL DEFAULT '' COMMENT 'Kode Satuan',
  `UrSat` varchar(30) DEFAULT NULL COMMENT 'Uraian Satuan',
  PRIMARY KEY (`KdSat`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of satuan
-- ----------------------------
INSERT INTO satuan VALUES ('ACR', 'Acre (4840 yd2)');
INSERT INTO satuan VALUES ('AMH', 'Ampere-hour  (3,6 kC)');
INSERT INTO satuan VALUES ('AMP', 'Ampere');
INSERT INTO satuan VALUES ('ANN', 'Year');
INSERT INTO satuan VALUES ('APZ', 'Ounce GB,US (31,10348 g)');
INSERT INTO satuan VALUES ('ARE', 'Are (100m2)');
INSERT INTO satuan VALUES ('ATM', 'Standard atmosphere (101325 Pa');
INSERT INTO satuan VALUES ('ATT', 'Technical atmosphere (98066,5 ');
INSERT INTO satuan VALUES ('BAR', 'Bar');
INSERT INTO satuan VALUES ('BIL', 'Trillion US / Billion');
INSERT INTO satuan VALUES ('BLD', 'Dry barrel (115,627 dm3)');
INSERT INTO satuan VALUES ('BLL', 'Barrel (petroleum) (458,987 dm');
INSERT INTO satuan VALUES ('BUA', 'Bushel (35,2391 dm3)');
INSERT INTO satuan VALUES ('BUI', 'Bushel (36,36874 dm3)');
INSERT INTO satuan VALUES ('CCT', 'Carrying capacity in metric to');
INSERT INTO satuan VALUES ('CDL', 'Candela');
INSERT INTO satuan VALUES ('CEL', 'Degree celcius');
INSERT INTO satuan VALUES ('CEN', 'Hundred');
INSERT INTO satuan VALUES ('CKG', 'Coulomb per kilogram');
INSERT INTO satuan VALUES ('CLT', 'Centilitre');
INSERT INTO satuan VALUES ('CMK', 'Square centimetre');
INSERT INTO satuan VALUES ('CMQ', 'Cubic centimetre');
INSERT INTO satuan VALUES ('CMT', 'Centimetre');
INSERT INTO satuan VALUES ('CNP', 'Hundred packs');
INSERT INTO satuan VALUES ('CNT', 'Cental GB (45,359237 kg)');
INSERT INTO satuan VALUES ('COU', 'Coulomb');
INSERT INTO satuan VALUES ('CTM', 'Metric carat (200 mg = 2.10-4 ');
INSERT INTO satuan VALUES ('CWA', 'Hundredweight, US (45,3592 kg)');
INSERT INTO satuan VALUES ('CWI', 'Long/ hundredweight GB (50,802');
INSERT INTO satuan VALUES ('DAA', 'Decare');
INSERT INTO satuan VALUES ('DAD', 'Ten day');
INSERT INTO satuan VALUES ('DAY', 'Day');
INSERT INTO satuan VALUES ('DBC', 'Decade (ten years)');
INSERT INTO satuan VALUES ('DMK', 'Square decimetre');
INSERT INTO satuan VALUES ('DMQ', 'Cubic decimetre');
INSERT INTO satuan VALUES ('DMT', 'Decimetre');
INSERT INTO satuan VALUES ('DPR', 'Dozen pairs');
INSERT INTO satuan VALUES ('DPT', 'Displecement tonnege');
INSERT INTO satuan VALUES ('DRA', 'Dram US (3,887935 g)');
INSERT INTO satuan VALUES ('DRI', 'Dram GB (1,771745 g)');
INSERT INTO satuan VALUES ('DRL', 'Dozen rolls');
INSERT INTO satuan VALUES ('DRM', 'Drachm, GB (3,887935 g)');
INSERT INTO satuan VALUES ('DTN', 'Decitonne, Centner, Quintall, ');
INSERT INTO satuan VALUES ('DWT', 'Pennyweight GB,US (1,555174 g)');
INSERT INTO satuan VALUES ('DZN', 'Dozen');
INSERT INTO satuan VALUES ('DZP', 'Dozen packs');
INSERT INTO satuan VALUES ('FAH', 'degree Fahrenheit');
INSERT INTO satuan VALUES ('FOT', 'Foot (0.3048 m)');
INSERT INTO satuan VALUES ('FTK', 'Square foot');
INSERT INTO satuan VALUES ('FTQ', 'Cubic foot');
INSERT INTO satuan VALUES ('GBQ', 'Gigabecquerel');
INSERT INTO satuan VALUES ('GGR', 'Great gross (12 gross)');
INSERT INTO satuan VALUES ('GIA', 'Gill (11,8294 cm3)');
INSERT INTO satuan VALUES ('GII', 'Gill (0,142065 dm3)');
INSERT INTO satuan VALUES ('GLD', 'Dry gallon (4,404884 dm3)');
INSERT INTO satuan VALUES ('GLI', 'Gallon (4,546092 dm3)');
INSERT INTO satuan VALUES ('GLL', 'Liquid gallon (3,78541 dm3)');
INSERT INTO satuan VALUES ('GRM', 'Gram');
INSERT INTO satuan VALUES ('GRN', 'Grain GB,US (64,798910 mg)');
INSERT INTO satuan VALUES ('GRO', 'Gross');
INSERT INTO satuan VALUES ('GRT', 'Gross (register) ton');
INSERT INTO satuan VALUES ('GWH', 'Gigawatt-hour (1 million KW/h)');
INSERT INTO satuan VALUES ('HAR', 'Hectare');
INSERT INTO satuan VALUES ('HBA', 'Hectobar');
INSERT INTO satuan VALUES ('HGM', 'Hectogram');
INSERT INTO satuan VALUES ('HIU', 'Hundred intenational units');
INSERT INTO satuan VALUES ('HLT', 'Hectolitre');
INSERT INTO satuan VALUES ('HMQ', 'Million cubic metres');
INSERT INTO satuan VALUES ('HMT', 'Hectometre');
INSERT INTO satuan VALUES ('HPA', 'Hectolitre of pure alcohol');
INSERT INTO satuan VALUES ('HTZ', 'Hertz');
INSERT INTO satuan VALUES ('HUR', 'Hour');
INSERT INTO satuan VALUES ('INH', 'Inch (2.54 mm)');
INSERT INTO satuan VALUES ('INK', 'Square inch');
INSERT INTO satuan VALUES ('INQ', 'Cubic inch');
INSERT INTO satuan VALUES ('JOU', 'Joule');
INSERT INTO satuan VALUES ('KBA', 'Kilobar');
INSERT INTO satuan VALUES ('KEL', 'Kelvin');
INSERT INTO satuan VALUES ('KG', 'Kilogram');
INSERT INTO satuan VALUES ('KJO', 'Kilojoule');
INSERT INTO satuan VALUES ('KMH', 'Kilometre per hour');
INSERT INTO satuan VALUES ('KMK', 'Square kilometre');
INSERT INTO satuan VALUES ('KMQ', 'Kilogram per cubic meter');
INSERT INTO satuan VALUES ('KMT', 'Kilometre');
INSERT INTO satuan VALUES ('KNI', 'Kilogram of nitrogen');
INSERT INTO satuan VALUES ('KNS', 'Kilogram of named substance');
INSERT INTO satuan VALUES ('KNT', 'Knot ( 1 n mile oer hour');
INSERT INTO satuan VALUES ('KPH', 'Kilogram of potassium hydroxid');
INSERT INTO satuan VALUES ('KPO', 'Kilogram of potassium oxide');
INSERT INTO satuan VALUES ('KPP', 'Kilogram of phosphorus pentoxi');
INSERT INTO satuan VALUES ('KSD', 'Kilogram of substance 90 per c');
INSERT INTO satuan VALUES ('KSH', 'Kilogram of sodium hydyoxide  ');
INSERT INTO satuan VALUES ('KTN', 'Kilotonne');
INSERT INTO satuan VALUES ('KUR', 'Kilogram of uranium');
INSERT INTO satuan VALUES ('KVA', 'Kilovolt - ampere');
INSERT INTO satuan VALUES ('KWH', 'Kilowatt-hour');
INSERT INTO satuan VALUES ('KWT', 'Kilowatt');
INSERT INTO satuan VALUES ('LBR', 'Pound GB,US (0,45359237 kg)');
INSERT INTO satuan VALUES ('LBT', 'Troy pound, US 9373,242 g)');
INSERT INTO satuan VALUES ('LNT', 'Long ton GB, US 2/ (1,0160469 ');
INSERT INTO satuan VALUES ('LPA', 'Litre of pure alcohol');
INSERT INTO satuan VALUES ('LTR', 'Litre ( 1 dm3 )');
INSERT INTO satuan VALUES ('LUM', 'Lumen');
INSERT INTO satuan VALUES ('MAL', 'Megalitre');
INSERT INTO satuan VALUES ('MAM', 'Megametre');
INSERT INTO satuan VALUES ('MAW', 'Megawatt');
INSERT INTO satuan VALUES ('MGM', 'Milligram');
INSERT INTO satuan VALUES ('MID', 'Thousand');
INSERT INTO satuan VALUES ('MIK', 'Square mile');
INSERT INTO satuan VALUES ('MIN', 'Minute');
INSERT INTO satuan VALUES ('MIO', 'Million');
INSERT INTO satuan VALUES ('MIU', 'Million international units');
INSERT INTO satuan VALUES ('MLD', 'Milliard, Billion US');
INSERT INTO satuan VALUES ('MLT', 'Millilitre');
INSERT INTO satuan VALUES ('MMK', 'Square millimetre');
INSERT INTO satuan VALUES ('MMQ', 'Cubic millimetre');
INSERT INTO satuan VALUES ('MMT', 'Millimetre');
INSERT INTO satuan VALUES ('MON', 'Month');
INSERT INTO satuan VALUES ('MQH', 'cubic metre per hour');
INSERT INTO satuan VALUES ('MSK', 'Metre per second squared');
INSERT INTO satuan VALUES ('MTK', 'Square metre');
INSERT INTO satuan VALUES ('MTQ', 'Cubic metre');
INSERT INTO satuan VALUES ('MTR', 'Metre');
INSERT INTO satuan VALUES ('MVA', 'Megavolt -  ampere (1000 KVA)');
INSERT INTO satuan VALUES ('MWH', 'Megawatt-hour (1000 KW/h)');
INSERT INTO satuan VALUES ('NAR', 'Number of articles');
INSERT INTO satuan VALUES ('NBB', 'Number bobbins');
INSERT INTO satuan VALUES ('NEW', 'Newton');
INSERT INTO satuan VALUES ('NIU', 'Number of international units');
INSERT INTO satuan VALUES ('NMB', 'Number');
INSERT INTO satuan VALUES ('NMI', 'Nautical mile (1852 m)');
INSERT INTO satuan VALUES ('NMP', 'Number of packs');
INSERT INTO satuan VALUES ('NPL', 'Number of parcels');
INSERT INTO satuan VALUES ('NPR', 'number of pairs');
INSERT INTO satuan VALUES ('NPT', 'Number of parts');
INSERT INTO satuan VALUES ('NRL', 'Number of rolls');
INSERT INTO satuan VALUES ('NTT', 'Net (regirter) ton');
INSERT INTO satuan VALUES ('OHM', 'Ohm');
INSERT INTO satuan VALUES ('ONZ', 'Ounce GB,US (28,349523 g)');
INSERT INTO satuan VALUES ('OZA', 'Fluid ounce (29,5735 cm3)');
INSERT INTO satuan VALUES ('OZI', 'Fluid ounce (29,5735 cm3)');
INSERT INTO satuan VALUES ('PAL', 'Pascal');
INSERT INTO satuan VALUES ('PCS', 'Pieces');
INSERT INTO satuan VALUES ('PGL', 'Proof gallon');
INSERT INTO satuan VALUES ('PTD', 'Dry pint (0.55061 dm3)');
INSERT INTO satuan VALUES ('PTI', 'Pint (0,568262 dm3)');
INSERT INTO satuan VALUES ('PTL', 'Liquid Pint (0,473176 dm3)');
INSERT INTO satuan VALUES ('QAN', 'Quarter (of a year)');
INSERT INTO satuan VALUES ('QTD', 'Dry quart (1,101221 dm3)');
INSERT INTO satuan VALUES ('QTI', 'Quart (1,136523 dm3)');
INSERT INTO satuan VALUES ('QTL', 'Liquid quart (0,946353 dm3)');
INSERT INTO satuan VALUES ('QTR', 'Quarter GB (12,700586 kg)');
INSERT INTO satuan VALUES ('RPM', 'Revolution per minute');
INSERT INTO satuan VALUES ('RPS', 'Revolution per second');
INSERT INTO satuan VALUES ('SAN', 'Half year (six Months)');
INSERT INTO satuan VALUES ('SCO', 'Score');
INSERT INTO satuan VALUES ('SCR', 'Scruple GP,US (1,295982 g)');
INSERT INTO satuan VALUES ('SEC', 'Second');
INSERT INTO satuan VALUES ('SET', 'Set');
INSERT INTO satuan VALUES ('SHT', 'Shipping ton');
INSERT INTO satuan VALUES ('SIE', 'Siemens');
INSERT INTO satuan VALUES ('SMI', 'Statute mile (1609.344 m)');
INSERT INTO satuan VALUES ('SST', 'Short standard  (7200 matches ');
INSERT INTO satuan VALUES ('STI', 'Stone GB (6,350293 kg)');
INSERT INTO satuan VALUES ('STN', 'Short ton GB, US 2/ (0,9071847');
INSERT INTO satuan VALUES ('TAH', 'Thousand ampere-hour');
INSERT INTO satuan VALUES ('TNE', 'Tonne, Metric ton (1000 kg)');
INSERT INTO satuan VALUES ('TPR', 'Ten pairs');
INSERT INTO satuan VALUES ('TQD', 'Thousand cubic metres per day');
INSERT INTO satuan VALUES ('TRL', 'Trillion Eur');
INSERT INTO satuan VALUES ('TSD', 'Tonne of subtance 90 per cent ');
INSERT INTO satuan VALUES ('TSH', 'Ton of steam per hour');
INSERT INTO satuan VALUES ('VLT', 'Volt');
INSERT INTO satuan VALUES ('WCD', 'Cord (3,63 m3)');
INSERT INTO satuan VALUES ('WEB', 'Weber');
INSERT INTO satuan VALUES ('WEE', 'Week');
INSERT INTO satuan VALUES ('WHR', 'Watt-hour');
INSERT INTO satuan VALUES ('WSD', 'Standard');
INSERT INTO satuan VALUES ('WTT', 'Watt');
INSERT INTO satuan VALUES ('YDK', 'Square yard');
INSERT INTO satuan VALUES ('YDQ', 'Cubic yard');
INSERT INTO satuan VALUES ('YRD', 'Yard (0.9144 m)');

-- ----------------------------
-- Table structure for `tujuan_pengiriman`
-- ----------------------------
DROP TABLE IF EXISTS `tujuan_pengiriman`;
CREATE TABLE `tujuan_pengiriman` (
  `KdTp` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Kode Tujuan Pengiriman',
  `UrTp` varchar(25) DEFAULT NULL COMMENT 'Uraian Tujuan Pengiriman',
  PRIMARY KEY (`KdTp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tujuan_pengiriman
-- ----------------------------
INSERT INTO tujuan_pengiriman VALUES ('1', 'Ditimbun');
INSERT INTO tujuan_pengiriman VALUES ('2', 'Diproses');
INSERT INTO tujuan_pengiriman VALUES ('3', 'Disubkontrakkan');
INSERT INTO tujuan_pengiriman VALUES ('4', 'Dipinjamkan');
INSERT INTO tujuan_pengiriman VALUES ('5', 'Diperbaiki');
INSERT INTO tujuan_pengiriman VALUES ('6', 'Pengembalian Subkontrak');
INSERT INTO tujuan_pengiriman VALUES ('7', 'Pengembalian Pinjaman');
INSERT INTO tujuan_pengiriman VALUES ('8', 'Pengembalian Perbaikan');
INSERT INTO tujuan_pengiriman VALUES ('9', 'Lainnya');
INSERT INTO tujuan_pengiriman VALUES ('10', 'Dijual');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `nama_user` varchar(20) NOT NULL,
  `pass` varchar(32) NOT NULL,
  `kd_fact` varchar(2) DEFAULT NULL,
  `kd_cmpy` varchar(2) NOT NULL,
  `grup` enum('admin','gudang','exim','bc','eksekutif') DEFAULT NULL,
  PRIMARY KEY (`nama_user`,`kd_cmpy`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO user VALUES ('admin', '9c8f9b597c7e4b218d58ed8631e6d6a3', null, '01', 'admin');
INSERT INTO user VALUES ('asep', 'b5f0ca3662c71718064dc329d74110d9', null, '', 'eksekutif');
INSERT INTO user VALUES ('exim', 'a8eaf1f61b2dd90a2ce1707affe4b0bb', null, '', 'exim');
INSERT INTO user VALUES ('gudang', '8f0d60caf45e98ac44db4074c3b22893', null, '', 'gudang');
INSERT INTO user VALUES ('bc', 'fe51fce2cf2e87b6bf2aa84b0968e877', null, '', 'bc');

-- ----------------------------
-- Table structure for `valuta`
-- ----------------------------
DROP TABLE IF EXISTS `valuta`;
CREATE TABLE `valuta` (
  `KdVal` varchar(3) NOT NULL,
  `UrVal` varchar(30) NOT NULL,
  PRIMARY KEY (`KdVal`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of valuta
-- ----------------------------
INSERT INTO valuta VALUES ('BRL', 'Brazilian Real');
INSERT INTO valuta VALUES ('BSD', 'Bahamian Dollar');
INSERT INTO valuta VALUES ('BTN', 'Ngultrum');
INSERT INTO valuta VALUES ('BWP', 'Pula');
INSERT INTO valuta VALUES ('BYB', 'Belarussian Ruble');
INSERT INTO valuta VALUES ('BZD', 'Belize Dollar');
INSERT INTO valuta VALUES ('CAD', 'Canadian Dollar');
INSERT INTO valuta VALUES ('CHF', 'Swiss Franc');
INSERT INTO valuta VALUES ('CLP', 'Chilean Peso');
INSERT INTO valuta VALUES ('CNY', 'Yuan Renminbi');
INSERT INTO valuta VALUES ('COP', 'Colombian Peso');
INSERT INTO valuta VALUES ('CRC', 'Costa Rican Colon');
INSERT INTO valuta VALUES ('CUP', 'Cuban Peso');
INSERT INTO valuta VALUES ('CVE', 'Cape Verde Escudo');
INSERT INTO valuta VALUES ('CYP', 'Cyprus Pound');
INSERT INTO valuta VALUES ('CZK', 'Czech Koruna');
INSERT INTO valuta VALUES ('DEM', 'Deustche Mark');
INSERT INTO valuta VALUES ('DJF', 'Djibouti Franc');
INSERT INTO valuta VALUES ('DKK', 'Danish Krone');
INSERT INTO valuta VALUES ('DOP', 'Domincan Peso');
INSERT INTO valuta VALUES ('DZD', 'Algerian Dinar');
INSERT INTO valuta VALUES ('ECS', 'Sucre');
INSERT INTO valuta VALUES ('EEK', 'Kroon');
INSERT INTO valuta VALUES ('EGP', 'Egyptian Pound');
INSERT INTO valuta VALUES ('ESP', 'Spainish peseta');
INSERT INTO valuta VALUES ('ETB', 'Ethiopian Birr');
INSERT INTO valuta VALUES ('EUR', 'Euro');
INSERT INTO valuta VALUES ('FIM', 'Markka');
INSERT INTO valuta VALUES ('FJD', 'Fiji Dollar');
INSERT INTO valuta VALUES ('FKP', 'Falkland Islands Pound');
INSERT INTO valuta VALUES ('FRF', 'Franch Franc');
INSERT INTO valuta VALUES ('GBP', 'Pound Sterling');
INSERT INTO valuta VALUES ('GEK', 'Georgian Coupon');
INSERT INTO valuta VALUES ('GHC', 'Cedi');
INSERT INTO valuta VALUES ('GIP', 'Gibraltar Pound');
INSERT INTO valuta VALUES ('GMD', 'Dalasi');
INSERT INTO valuta VALUES ('GNF', 'Guinea Franc');
INSERT INTO valuta VALUES ('GRD', 'Drachma');
INSERT INTO valuta VALUES ('GTQ', 'Quetzal');
INSERT INTO valuta VALUES ('GWP', 'Guinea-Bissau Peso');
INSERT INTO valuta VALUES ('GYD', 'Guyana Dollar');
INSERT INTO valuta VALUES ('HKD', 'Hong Kong Dollar');
INSERT INTO valuta VALUES ('HNL', 'Lempira');
INSERT INTO valuta VALUES ('HRD', 'Croatian Dinar');
INSERT INTO valuta VALUES ('HRK', 'Kuna');
INSERT INTO valuta VALUES ('HTG', 'Gourde');
INSERT INTO valuta VALUES ('HUF', 'Forint');
INSERT INTO valuta VALUES ('IDR', 'Rupiah');
INSERT INTO valuta VALUES ('IEP', 'Irish Pound');
INSERT INTO valuta VALUES ('ILS', 'Shekel');
INSERT INTO valuta VALUES ('INR', 'Indian Rupee');
INSERT INTO valuta VALUES ('IQD', 'Iraqi Dinar');
INSERT INTO valuta VALUES ('IRR', 'Iranian Rial');
INSERT INTO valuta VALUES ('ISK', 'Iceland Krona');
INSERT INTO valuta VALUES ('ITL', 'Italian Lira');
INSERT INTO valuta VALUES ('JMD', 'Jamaican Dollar');
INSERT INTO valuta VALUES ('JOD', 'Jordanian Dinar');
INSERT INTO valuta VALUES ('JPY', 'Yen');
INSERT INTO valuta VALUES ('KES', 'Kenyan Shilling');
INSERT INTO valuta VALUES ('KGS', 'Som');
INSERT INTO valuta VALUES ('KHR', 'Riel');
INSERT INTO valuta VALUES ('KMF', 'Comoro Franc');
INSERT INTO valuta VALUES ('KPW', 'North Korean Won');
INSERT INTO valuta VALUES ('KRW', 'Won');
INSERT INTO valuta VALUES ('KWD', 'Kuwauti Dinar');
INSERT INTO valuta VALUES ('KYD', 'Cayman Islands Dollar');
INSERT INTO valuta VALUES ('KZT', 'Tenge');
INSERT INTO valuta VALUES ('LAK', 'Kip');
INSERT INTO valuta VALUES ('LBP', 'Lebanese Pound');
INSERT INTO valuta VALUES ('LKR', 'Sri Langka Rupee');
INSERT INTO valuta VALUES ('LRD', 'Liberian Dollar');
INSERT INTO valuta VALUES ('LSL', 'Loli');
INSERT INTO valuta VALUES ('LTL', 'Lithuanian Litas');
INSERT INTO valuta VALUES ('LUF', 'Luxembourg Franc');
INSERT INTO valuta VALUES ('LVL', 'Latvian Lats#');
INSERT INTO valuta VALUES ('LVR', 'Latvian Ruble');
INSERT INTO valuta VALUES ('LYD', 'Libyan Dinar');
INSERT INTO valuta VALUES ('MAD', 'Moroccoan Dirham');
INSERT INTO valuta VALUES ('MDL', 'Moldovan Leu');
INSERT INTO valuta VALUES ('MGF', 'Malagasy Franc');
INSERT INTO valuta VALUES ('MMK', 'Kyat');
INSERT INTO valuta VALUES ('MNT', 'Tugrik');
INSERT INTO valuta VALUES ('MOP', 'Pataca');
INSERT INTO valuta VALUES ('MRO', 'Ouguiya');
INSERT INTO valuta VALUES ('MTL', 'Mallese Lira');
INSERT INTO valuta VALUES ('MUR', 'Mauritius Pupee');
INSERT INTO valuta VALUES ('MVR', 'Rufiyaa');
INSERT INTO valuta VALUES ('MWK', 'Kwacha');
INSERT INTO valuta VALUES ('MXN', 'Mexican  Nuevo Peso');
INSERT INTO valuta VALUES ('MYR', 'Malaysian Ringgit');
INSERT INTO valuta VALUES ('MZM', 'Metical');
INSERT INTO valuta VALUES ('NAD', 'Namibia Dollar');
INSERT INTO valuta VALUES ('NGN', 'Naira');
INSERT INTO valuta VALUES ('NIO', 'Cordoba Oro');
INSERT INTO valuta VALUES ('NLG', 'Netherlands Guilder');
INSERT INTO valuta VALUES ('NOK', 'Norwegian Krone');
INSERT INTO valuta VALUES ('NPR', 'Nepalese Rupee');
INSERT INTO valuta VALUES ('NZD', 'New Zealand Dollar');
INSERT INTO valuta VALUES ('OMR', 'Rial Omani');
INSERT INTO valuta VALUES ('PAB', 'Balboa/US  Dollar');
INSERT INTO valuta VALUES ('PEN', 'Nuevo Sol');
INSERT INTO valuta VALUES ('PGK', 'Kina');
INSERT INTO valuta VALUES ('PHP', 'Philippines Peso');
INSERT INTO valuta VALUES ('PKR', 'Pakistan Rupee');
INSERT INTO valuta VALUES ('PLZ', 'Zloty');
INSERT INTO valuta VALUES ('PTE', 'Portuguese Escudo');
INSERT INTO valuta VALUES ('PYG', 'Guarani');
INSERT INTO valuta VALUES ('QAR', 'Qatari Rial');
INSERT INTO valuta VALUES ('ROL', 'Leu');
INSERT INTO valuta VALUES ('Rp', 'Rupiah');
INSERT INTO valuta VALUES ('RUR', 'Russian Ruble');
INSERT INTO valuta VALUES ('RWF', 'Rwanda Franc');
INSERT INTO valuta VALUES ('SAR', 'Saudi Riyal');
INSERT INTO valuta VALUES ('SBD', 'Solomon Islands Dollar');
INSERT INTO valuta VALUES ('SCR', 'Seychelles Rupee');
INSERT INTO valuta VALUES ('SDD', 'Sudanase Dinar');
INSERT INTO valuta VALUES ('SDP', 'Sudanese Pound');
INSERT INTO valuta VALUES ('SEK', 'Swedish Krone');
INSERT INTO valuta VALUES ('SGD', 'Singapore Dollar');
INSERT INTO valuta VALUES ('SHP', 'St. Helena Pound');
INSERT INTO valuta VALUES ('SIT', 'Tolar');
INSERT INTO valuta VALUES ('SKK', 'Slovak Koruna');
INSERT INTO valuta VALUES ('SLL', 'Leone');
INSERT INTO valuta VALUES ('SOS', 'Somalia shilling');
INSERT INTO valuta VALUES ('SRG', 'Surinam Guilder');
INSERT INTO valuta VALUES ('STD', 'Dobra');
INSERT INTO valuta VALUES ('SVC', 'El Salvador Colon');
INSERT INTO valuta VALUES ('SYP', 'Syrian Pound');
INSERT INTO valuta VALUES ('SZL', 'Lilangeni');
INSERT INTO valuta VALUES ('THB', 'Baht');
INSERT INTO valuta VALUES ('TMM', 'Manat');
INSERT INTO valuta VALUES ('TND', 'Tunisian Dinar');
INSERT INTO valuta VALUES ('TOP', 'Pa\'anga');
INSERT INTO valuta VALUES ('TRL', 'Turkish Lira');
INSERT INTO valuta VALUES ('TTD', 'Trinidad & Tobago Dollar');
INSERT INTO valuta VALUES ('TWD', 'New Taiwan Dollar');
INSERT INTO valuta VALUES ('TZS', 'Tanzania Shilling');
INSERT INTO valuta VALUES ('UAK', 'Karbovanet');
INSERT INTO valuta VALUES ('UGX', 'Uganda Shilling');
INSERT INTO valuta VALUES ('USD', 'US Dollar');
INSERT INTO valuta VALUES ('UYU', 'Peso Uruguayo');
INSERT INTO valuta VALUES ('UZS', 'Ubekistan Sum');
INSERT INTO valuta VALUES ('VEB', 'Bolivar');
INSERT INTO valuta VALUES ('VND', 'Dong');
INSERT INTO valuta VALUES ('VUV', 'Vatu');
INSERT INTO valuta VALUES ('WST', 'Tala');
INSERT INTO valuta VALUES ('XAF', 'CFA  Franc BAEC');
INSERT INTO valuta VALUES ('XCD', 'East Caribbean Dollar');
INSERT INTO valuta VALUES ('XOF', 'CFA Franc BCEAO');
INSERT INTO valuta VALUES ('XPF', 'CFA Franc BEAC');
INSERT INTO valuta VALUES ('YER', 'Yemeni Rial');
INSERT INTO valuta VALUES ('YUN', 'New Yugosslavian');
INSERT INTO valuta VALUES ('ZAL', 'Financial Rand');
INSERT INTO valuta VALUES ('ZAR', 'Rand');
INSERT INTO valuta VALUES ('ZMK', 'Kwacha');
INSERT INTO valuta VALUES ('ZRN', 'Zaife');
INSERT INTO valuta VALUES ('ZWD', 'Zimbabwe Dollar');
