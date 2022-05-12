CREATE TABLE IF NOT EXISTS `Pekerjaan` (
  `ID` varchar(200) NOT NULL,
  `nama_pekerjaan` varchar(200) NOT NULL,
  `gaji` int NOT NULL,
  PRIMARY KEY (`ID`)
) DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `Pekerja` (
  `ID` int NOT NULL,
  `nama` varchar(200) NOT NULL,
  `pekerjaan` varchar(200) NOT NULL,
  `tunjangan` int NOT NULL,
  PRIMARY KEY (`ID`),
  FOREIGN KEY (pekerjaan) REFERENCES Pekerjaan(ID)
) DEFAULT CHARSET=utf8;

INSERT INTO `Pekerjaan` VALUES 
  ('A1', 'Programmer', 20000000),
  ('A2', 'Akuntansi', 300000000),
  ('A3', 'Designer', 100000000);

INSERT INTO `Pekerja` VALUES
  (1, 'Budi', 'A1', 1000000),
  (2, 'Toni', 'A2', 2000000),
  (3, 'Anto', 'A3', 3000000),
  (4, 'Rayi', 'A3', 4000000),
  (5, 'Siti', 'A2', 5000000),
  (6, 'Roy', 'A1', 8000000),
  (7, 'Rey', 'A2', 7000000);

select *, sum(ifnull(gaji,0) + ifnull(tunjangan,0)) as total_gaji from
(select nama, nama_pekerjaan, tunjangan, gaji from Pekerjaan, Pekerja where Pekerjaan.ID = Pekerja.pekerjaan)
as new1
group by nama
order by total_gaji desc

http://sqlfiddle.com/#!9/bf35d4/8