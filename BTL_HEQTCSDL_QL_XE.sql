--create database BAITAPLON
use BAITAPLON
go

CREATE TABLE LOAIXE (  
    MaLoai NVARCHAR(10) PRIMARY KEY,  
    SoCho INT  
);  

CREATE TABLE XE (  
    MaXe NVARCHAR(10) PRIMARY KEY,  
    MaLoai NVARCHAR(10), 
    HangXe NVARCHAR(100),  
    BienSoXe NVARCHAR(10),  
    FOREIGN KEY (MaLoai) REFERENCES LOAIXE(MaLoai)  
);  


CREATE TABLE TUYEN (  
    MaTuyen NVARCHAR(10) PRIMARY KEY,  
    DiemDen NVARCHAR(10),  
    QuangDuong INT  
);  
  
CREATE TABLE KHACHHANG (  
    MaKhach NVARCHAR(10) PRIMARY KEY,  
    TenKhach NVARCHAR(100),  
    SoDienThoaiKhach NVARCHAR(15)  
);  


CREATE TABLE HOPDONGTHUE (  
    MaHD NVARCHAR(10) PRIMARY KEY,  
    MaKhach NVARCHAR(10), 
    MaXe NVARCHAR(10), 
    MaTuyen NVARCHAR(10),
    SoLuongXe INT,  
    NgayDi DATE,  
    NgayVe DATE,  
    FOREIGN KEY (MaKhach) REFERENCES KHACHHANG(MaKhach),  
    FOREIGN KEY (MaXe) REFERENCES XE(MaXe),  
    FOREIGN KEY (MaTuyen) REFERENCES TUYEN(MaTuyen)  
);  


CREATE TABLE GIATHUEXE (  
    MaHD NVARCHAR(10) PRIMARY KEY,  
	MaTuyen NVARCHAR(10),
    MaLoaiXe NVARCHAR(10), 
    SoCho INT,  
    SoLuongXe INT,  
    GiaThueXe DECIMAL(10, 2),  
	FOREIGN KEY (MaHD) REFERENCES HOPDONGTHUE(MaHD),
	FOREIGN KEY (MaTuyen) REFERENCES TUYEN(MaTuyen),
    FOREIGN KEY (MaLoaiXe) REFERENCES LOAIXE(MaLoai)  
);  

INSERT INTO LOAIXE(MaLoai, SoCho)
VALUES 
('L01', 2),
('L02', 2),
('L03', 2),
('L04', 4),
('L05', 8),
('L06', 8),
('L07', 10),
('L08', 9),
('L09', 5),
('L10', 4),
('L11', 8),
('L12', 10),
('L13', 6),
('L14', 12),
('L15', 20),
('L16', 30),
('L17', 25),
('L18', 40),
('L19', 44),
('L20', 50),
('L21', 30),
('L22', 8),
('L23', 10),
('L24', 16),
('L25', 24);
go
INSERT INTO XE (MaXe, MaLoai, HangXe, BienSoXe)
VALUES 
('X01', 'L01', 'Toyota', '29D-1928'),
('X02', 'L02', 'KIA', '29D-4827'),
('X03', 'L03', 'Toyota', '29D-3946'),
('X04', 'L04', 'Ford', '29D-7583'),
('X05', 'L05', 'Toyota', '29D-1234'),
('X06', 'L06', 'BWM', '29D-5678'),
('X07', 'L07', 'Suzuki', '29D-9102'),
('X08', 'L08', 'KIA', '29D-8356'),
('X09', 'L09', 'Ford', '29D-7625'),
('X10', 'L10', 'Toyota', '29D-6472'),
('X11', 'L11', 'Hyundai', '29D-1923'),
('X12', 'L12', 'Toyota', '29D-8495'),
('X13', 'L13', 'BWM', '29D-2839'),
('X14', 'L14', 'Ford', '29D-9564'),
('X15', 'L15', 'Toyota', '29D-7158'),
('X16', 'L16', 'KIA', '29D-3864'),
('X17', 'L17', 'Toyota', '29D-4512'),
('X18', 'L18', 'BWM', '29D-9738'),
('X19', 'L19', 'Toyota', '29D-6285'),
('X20', 'L20', 'Hyundai', '29D-9847'),
('X21', 'L21', 'Suzuki', '29D-5647'),
('X22', 'L22', 'Ford', '29D-2316'),
('X23', 'L23', 'Toyota', '29D-8476'),
('X24', 'L24', 'KIA', '29D-3958'),
('X25', 'L25', 'Suzuki', '29D-7124');

INSERT INTO TUYEN (MaTuyen, DiemDen, QuangDuong)
VALUES
('T01', 'HoaBinh', '78'),
('T02', 'HaiPhong', '120'),
('T03', 'NamDinh', '90'),
('T04', 'ThaiBinh', '110'),
('T05', 'HaNam', '65'),
('T06', 'NinhBinh', '95'),
('T07', 'BacNinh', '45'),
('T08', 'BacGiang', '75'),
('T09', 'VinhPhuc', '55'),
('T10', 'PhuTho', '95'),
('T11', 'TuyenQuang', '120'),
('T12', 'HaGiang', '230'),
('T13', 'CaoBang', '270'),
('T14', 'LangSon', '150'),
('T15', 'QuangNinh', '180'),
('T16', 'ThanhHoa', '150'),
('T17', 'NgheAn', '250'),
('T18', 'HaTinh', '340'),
('T19', 'QuangBinh', '500'),
('T20', 'QuangTri', '620'),
('T21', 'Hue', '680'),
('T22', 'DaNang', '760'),
('T23', 'QuangNam', '840'),
('T24', 'QuangNgai', '920'),
('T25', 'BinhDinh', '1050');

INSERT INTO KHACHHANG (MaKhach, TenKhach, SoDienThoaiKhach)
VALUES
('K01', N'Hoàng Hải Dương', '0933012492'),
('K02', N'Trần Minh Anh', '0933012493'),
('K03', N'Nguyễn Văn Hùng', '0933012494'),
('K04', N'Lê Thu Hương', '0933012495'),
('K05', N'Phạm Quang Bình', '0933012496'),
('K06', N'Đỗ Thị Thùy', '0933012497'),
('K07', N'Ngô Tiến Đạt', '0933012498'),
('K08', N'Lý Bảo Châu', '0933012499'),
('K09', N'Hà Hải Nam', '0933012500'),
('K10', N'Phan Ngọc Lan', '0933012501'),
('K11', N'Vũ Hồng Phúc', '0933012502'),
('K12', N'Dương Minh Đức', '0933012503'),
('K13', N'Bùi Thanh Hà', '0933012504'),
('K14', N'Tô Hoài Nam', '0933012505'),
('K15', N'Võ Kiều Anh', '0933012506'),
('K16', N'Phạm Thanh Tùng', '0933012507'),
('K17', N'Trương Thị Mai', '0933012508'),
('K18', N'Cao Văn Toàn', '0933012509'),
('K19', N'Lê Minh Tú', '0933012510'),
('K20', N'Hồ Quỳnh Chi', '0933012511'),
('K21', N'Hoàng Ngọc Bích', '0933012512'),
('K22', N'Trần Hải Đăng', '0933012513'),
('K23', N'Nguyễn Kim Ngân', '0933012514'),
('K24', N'Phạm Bảo Minh', '0933012515'),
('K25', N'Vũ Hữu Thắng', '0933012516'),
('K26', N'Ngô Bảo Khánh', '0933012517'),
('K27', N'Phan Nhật Tân', '0933012518'),
('K28', N'Lý Hồng Quân', '0933012519'),
('K29', N'Vũ Ngọc Thủy', '0933012520'),
('K30', N'Trần Việt Anh', '0933012521'),
('K31', N'Nguyễn Hoài Phương', '0933012522'),
('K32', N'Lê Quốc Khánh', '0933012523'),
('K33', N'Hà Ngân Hà', '0933012524'),
('K34', N'Phạm Tiến Long', '0933012525'),
('K35', N'Vũ Quỳnh Như', '0933012526'),
('K36', N'Trần Minh Triết', '0933012527'),
('K37', N'Nguyễn Bảo Ngọc', '0933012528'),
('K38', N'Tô Nhật Hạ', '0933012529'),
('K39', N'Lê Hải Đăng', '0933012530'),
('K40', N'Hoàng Thanh Huyền', '0933012531'),
('K41', N'Vũ Hoàng Anh', '0933012532'),
('K42', N'Trần Thu Hằng', '0933012533'),
('K43', N'Nguyễn Thanh Tâm', '0933012534'),
('K44', N'Lê Văn Mạnh', '0933012535'),
('K45', N'Cao Hải Nam', '0933012536'),
('K46', N'Phan Văn Phúc', '0933012537'),
('K47', N'Ngô Thanh Bình', '0933012538'),
('K48', N'Trương Thị Ngọc', '0933012539'),
('K49', N'Bùi Đăng Khoa', '0933012540'),
('K50', N'Tô Ngọc Minh', '0933012541');

INSERT INTO HOPDONGTHUE (MaHD, MaKhach, MaXe, MaTuyen, SoLuongXe, NgayDi, NgayVe)
VALUES
('MD001', 'K01', 'X01', 'T01', 2, '2024-03-01', '2024-03-03'),
('MD002', 'K02', 'X02', 'T02', 1, '2024-03-02', '2024-03-04'),
('MD003', 'K03', 'X03', 'T03', 3, '2024-03-03', '2024-03-05'),
('MD004', 'K04', 'X04', 'T04', 2, '2024-03-04', '2024-03-06'),
('MD005', 'K05', 'X05', 'T05', 1, '2024-03-05', '2024-03-07'),
('MD006', 'K06', 'X06', 'T06', 3, '2024-03-06', '2024-03-08'),
('MD007', 'K07', 'X07', 'T07', 2, '2024-03-07', '2024-03-09'),
('MD008', 'K08', 'X08', 'T08', 1, '2024-03-08', '2024-03-10'),
('MD009', 'K09', 'X09', 'T09', 2, '2024-03-09', '2024-03-11'),
('MD010', 'K10', 'X10', 'T10', 3, '2024-03-10', '2024-03-12'),
('MD011', 'K11', 'X11', 'T11', 2, '2024-03-11', '2024-03-13'),
('MD012', 'K12', 'X12', 'T12', 1, '2024-03-12', '2024-03-14'),
('MD013', 'K13', 'X13', 'T13', 2, '2024-03-13', '2024-03-15'),
('MD014', 'K14', 'X14', 'T14', 3, '2024-03-14', '2024-03-16'),
('MD015', 'K15', 'X15', 'T15', 2, '2024-03-15', '2024-03-17'),
('MD016', 'K16', 'X16', 'T16', 1, '2024-03-16', '2024-03-18'),
('MD017', 'K17', 'X17', 'T17', 3, '2024-03-17', '2024-03-19'),
('MD018', 'K18', 'X18', 'T18', 2, '2024-03-18', '2024-03-20'),
('MD019', 'K19', 'X19', 'T19', 1, '2024-03-19', '2024-03-21'),
('MD020', 'K20', 'X20', 'T20', 2, '2024-03-20', '2024-03-22'),
('MD021', 'K21', 'X21', 'T21', 3, '2024-03-21', '2024-03-23'),
('MD022', 'K22', 'X22', 'T22', 1, '2024-03-22', '2024-03-24'),
('MD023', 'K23', 'X23', 'T23', 2, '2024-03-23', '2024-03-25'),
('MD024', 'K24', 'X24', 'T24', 3, '2024-03-24', '2024-03-26'),
('MD025', 'K25', 'X25', 'T25', 1, '2024-03-25', '2024-03-27'),
('MD026', 'K26', 'X01', 'T01', 2, '2024-03-26', '2024-03-28'),
('MD027', 'K27', 'X02', 'T02', 3, '2024-03-27', '2024-03-29'),
('MD028', 'K28', 'X03', 'T03', 1, '2024-03-28', '2024-03-30'),
('MD029', 'K29', 'X04', 'T04', 2, '2024-03-29', '2024-03-31'),
('MD030', 'K30', 'X05', 'T05', 3, '2024-03-30', '2024-04-01'),
('MD031', 'K31', 'X06', 'T06', 1, '2024-03-31', '2024-04-02'),
('MD032', 'K32', 'X07', 'T07', 2, '2024-04-01', '2024-04-03'),
('MD033', 'K33', 'X08', 'T08', 1, '2024-04-02', '2024-04-04'),
('MD034', 'K34', 'X09', 'T09', 2, '2024-04-03', '2024-04-05'),
('MD035', 'K35', 'X10', 'T10', 3, '2024-04-04', '2024-04-06'),
('MD036', 'K36', 'X11', 'T11', 1, '2024-04-05', '2024-04-07'),
('MD037', 'K37', 'X12', 'T12', 2, '2024-04-06', '2024-04-08'),
('MD038', 'K38', 'X13', 'T13', 3, '2024-04-07', '2024-04-09'),
('MD039', 'K39', 'X14', 'T14', 1, '2024-04-08', '2024-04-10'),
('MD040', 'K40', 'X15', 'T15', 2, '2024-04-09', '2024-04-11'),
('MD041', 'K41', 'X16', 'T16', 3, '2024-04-10', '2024-04-12'),
('MD042', 'K42', 'X17', 'T17', 1, '2024-04-11', '2024-04-13'),
('MD043', 'K43', 'X18', 'T18', 2, '2024-04-12', '2024-04-14'),
('MD044', 'K44', 'X19', 'T19', 3, '2024-04-13', '2024-04-15'),
('MD045', 'K45', 'X20', 'T20', 1, '2024-04-14', '2024-04-16'),
('MD046', 'K46', 'X21', 'T21', 2, '2024-04-15', '2024-04-17'),
('MD047', 'K47', 'X22', 'T22', 3, '2024-04-16', '2024-04-18'),
('MD048', 'K48', 'X23', 'T23', 1, '2024-04-17', '2024-04-19'),
('MD049', 'K49', 'X24', 'T24', 2, '2024-04-18', '2024-04-20'),
('MD050', 'K50', 'X25', 'T25', 3, '2024-04-19', '2024-04-21');


INSERT INTO GIATHUEXE (MaHD, MaTuyen, MaLoaiXe, SoCho, SoLuongXe, GiaThueXe)
VALUES
('MD001', 'T01', 'L01', 2, 2, 300000),
('MD002', 'T02', 'L02', 2, 1, 150000),
('MD003', 'T03', 'L03', 2, 3, 450000),
('MD004', 'T04', 'L04', 4, 1, 200000),
('MD005', 'T05', 'L05', 8, 2, 600000),
('MD006', 'T06', 'L06', 8, 1, 300000),
('MD007', 'T07', 'L07', 10, 3, 900000),
('MD008', 'T08', 'L08', 9, 2, 700000),
('MD009', 'T09', 'L09', 5, 1, 250000),
('MD010', 'T10', 'L10', 4, 3, 600000),
('MD011', 'T11', 'L11', 8, 2, 800000),
('MD012', 'T12', 'L12', 10, 1, 500000),
('MD013', 'T13', 'L13', 6, 3, 750000),
('MD014', 'T14', 'L14', 12, 2, 1200000),
('MD015', 'T15', 'L15', 20, 4, 2000000),
('MD016', 'T16', 'L16', 30, 1, 1500000),
('MD017', 'T17', 'L17', 25, 3, 1800000),
('MD018', 'T18', 'L18', 40, 2, 2800000),
('MD019', 'T19', 'L19', 44, 1, 2200000),
('MD020', 'T20', 'L20', 50, 3, 4500000),
('MD021', 'T21', 'L21', 30, 2, 3000000),
('MD022', 'T22', 'L22', 8, 1, 400000),
('MD023', 'T23', 'L23', 10, 3, 900000),
('MD024', 'T24', 'L24', 16, 2, 1600000),
('MD025', 'T25', 'L25', 24, 4, 2400000),
('MD026', 'T01', 'L01', 2, 2, 300000),
('MD027', 'T02', 'L02', 2, 1, 150000),
('MD028', 'T03', 'L03', 2, 3, 450000),
('MD029', 'T04', 'L04', 4, 1, 200000),
('MD030', 'T05', 'L05', 8, 2, 600000),
('MD031', 'T06', 'L06', 8, 1, 300000),
('MD032', 'T07', 'L07', 10, 3, 900000),
('MD033', 'T08', 'L08', 9, 2, 700000),
('MD034', 'T09', 'L09', 5, 1, 250000),
('MD035', 'T10', 'L10', 4, 3, 600000),
('MD036', 'T11', 'L11', 8, 2, 800000),
('MD037', 'T12', 'L12', 10, 1, 500000),
('MD038', 'T13', 'L13', 6, 3, 750000),
('MD039', 'T14', 'L14', 12, 2, 1200000),
('MD040', 'T15', 'L15', 20, 4, 2000000),
('MD041', 'T16', 'L16', 30, 1, 1500000),
('MD042', 'T17', 'L17', 25, 3, 1800000),
('MD043', 'T18', 'L18', 40, 2, 2800000),
('MD044', 'T19', 'L19', 44, 1, 2200000),
('MD045', 'T20', 'L20', 50, 3, 4500000),
('MD046', 'T21', 'L21', 30, 2, 3000000),
('MD047', 'T22', 'L22', 8, 1, 400000),
('MD048', 'T23', 'L23', 10, 3, 900000),
('MD049', 'T24', 'L24', 16, 2, 1600000),
('MD050', 'T25', 'L25', 24, 4, 2400000);


go

--Câu lệnh select
select * from LOAIXE where MaLoai = 'L05' -- done
select * from XE
select * from TUYEN
select * from KHACHHANG --done
select * from HOPDONGTHUE
select * from GIATHUEXE

--Câu lệnh update
UPDATE LOAIXE SET SoCho = 4 WHERE MaLoai = 'L05';
UPDATE XE SET HangXe = 'Vinfast' WHERE MaXe = 'X05';
UPDATE TUYEN SET QuangDuong = 55 WHERE MaTuyen = 'T07';
UPDATE KHACHHANG SET SoDienThoaiKhach = '0999999999' WHERE MaKhach = 'K01';

--Câu lệnh delete
DELETE FROM LOAIXE WHERE SoCho > 50
DELETE FROM XE WHERE HangXe = 'Toyota' AND BienSoXe='29D-1928';
DELETE FROM TUYEN WHERE DiemDen = 'CaoBang' AND QuangDuong > 30;
DELETE FROM KHACHHANG WHERE TenKhach = 'Nguyễn Đức Trí';

--Câu lệnh inner join
SELECT BienSoXe FROM LOAIXE INNER JOIN XE ON XE.MaLoai= LOAIXE.MaLoai;

--Câu lệnh group by
SELECT HangXe, COUNT(*) AS SoLuongXe FROM XE GROUP BY HangXe;  

--Câu lệnh having
SELECT HangXe, COUNT(*) AS SoLuongXe FROM XE GROUP BY HangXe HAVING COUNT(*) > 3;


--7 bảng Views
--View hiển thị thông tin chi tiết về hợp đồng thuê, bao gồm thông tin khách hàng, xe và tuyến đường
CREATE VIEW View_HopDongChiTiet AS  
SELECT  
    HD.MaHD,  
    KH.TenKhach,  
    KH.SoDienThoaiKhach,  
    XE.HangXe,  
    XE.BienSoXe,  
    LX.SoCho,  
    T.DiemDen,  
    T.QuangDuong,  
    HD.SoLuongXe,  
    HD.NgayDi,  
    HD.NgayVe  
FROM  
    HOPDONGTHUE HD  
JOIN  
    KHACHHANG KH ON HD.MaKhach = KH.MaKhach  
JOIN  
    XE ON HD.MaXe = XE.MaXe  
JOIN  
    LOAIXE LX ON XE.MaLoai = LX.MaLoai  
JOIN  
    TUYEN T ON HD.MaTuyen = T.MaTuyen;  

--View thống kê số lượng xe cho thuê theo từng loại xe
CREATE VIEW View_ThongKeSoLuongXeTheoLoaiXe AS  
SELECT  
    LX.MaLoai,  
    LX.SoCho,  
    COUNT(XE.MaXe) AS TongSoLuongXe  
FROM  
    LOAIXE LX  
LEFT JOIN  
    XE ON LX.MaLoai = XE.MaLoai  
GROUP BY  
    LX.MaLoai, LX.SoCho;  
SELECT * FROM View_ThongKeSoLuongXeTheoLoaiXe;

--View hiển thị thông tin giá thuê xe theo hợp đồng, tuyến đường và loại xe
CREATE VIEW View_GiaThueXeChiTiet AS  
SELECT  
    GT.MaHD,  
    T.DiemDen,  
    LX.MaLoai,  
    GT.SoCho,  
    GT.SoLuongXe,  
    GT.GiaThueXe  
FROM  
    GIATHUEXE GT  
JOIN  
    TUYEN T ON GT.MaTuyen = T.MaTuyen  
JOIN  
    LOAIXE LX ON GT.MaLoaiXe = LX.MaLoai;  
SELECT * FROM View_GiaThueXeChiTiet;

--View thống kê doanh thu theo từng tuyến đường
CREATE VIEW View_ThongKeDoanhThuTheoTuyen AS  
SELECT  
    T.MaTuyen,  
    T.DiemDen,  
    SUM(GT.GiaThueXe) AS TongDoanhThu  
FROM  
    GIATHUEXE GT  
JOIN  
    TUYEN T ON GT.MaTuyen = T.MaTuyen  
GROUP BY  
    T.MaTuyen, T.DiemDen;  
SELECT * FROM View_ThongKeDoanhThuTheoTuyen;

--View hiển thị các hợp đồng thuê xe sắp diễn ra (trong vòng 7 ngày tới)
CREATE VIEW View_HopDongSapDienRa AS  
SELECT  
    MaHD,  
    MaKhach,  
    MaXe,  
    MaTuyen,  
    SoLuongXe,  
    NgayDi,  
    NgayVe  
FROM  
    HOPDONGTHUE  
WHERE  
    NgayDi BETWEEN GETDATE() AND DATEADD(day, 7, GETDATE());  
SELECT * FROM View_HopDongSapDienRa;

--View hiển thị thông tin khách hàng và số lượng hợp đồng của mỗi khách hàng
CREATE VIEW View_KhachHangVaSoLuongHopDong AS  
SELECT  
    KH.MaKhach,  
    KH.TenKhach,  
    KH.SoDienThoaiKhach,  
    COUNT(HD.MaHD) AS SoLuongHopDong  
FROM  
    KHACHHANG KH  
LEFT JOIN  
    HOPDONGTHUE HD ON KH.MaKhach = HD.MaKhach  
GROUP BY  
    KH.MaKhach, KH.TenKhach, KH.SoDienThoaiKhach;  
SELECT * FROM View_KhachHangVaSoLuongHopDong;

--View Hiển Thị Số Lượng Xe Thuê Theo Từng Ngày
 CREATE VIEW View_SoLuongXeThueTheoNgay AS  
 SELECT  
     NgayDi,  
     COUNT(MaHD) AS TongSoLuongHopDong,  
     SUM(SoLuongXe) AS TongSoLuongXe  
 FROM  
     HOPDONGTHUE  
 GROUP BY  
     NgayDi;  
SELECT * FROM View_SoLuongXeThueTheoNgay;

--7 index
--Số điện thoại thường được sử dụng để tìm kiếm khách hàng
CREATE UNIQUE NONCLUSTERED INDEX IX_KhachHang_SoDienThoai  ON KhachHang (SoDienThoaiKhach);  

--Biển số xe là duy nhất và thường được sử dụng để tìm kiếm xe.
CREATE UNIQUE NONCLUSTERED INDEX IX_Xe_BienSoXe  ON Xe (BienSoXe);  

--Lọc xe theo loại xe.
CREATE NONCLUSTERED INDEX IX_Xe_MaLoaiXe  ON Xe (MaLoai);  

--Tìm kiếm loại xe theo tên
CREATE NONCLUSTERED INDEX IX_LoaiXe_TenLoaiXe ON Xe (HangXe);  

--Tìm kiếm các xe đang được thuê trong một khoảng thời gian nhất định
CREATE NONCLUSTERED INDEX IX_HopDongThue_NgayThue_NgayTra  ON HopDongThue (NgayDi, NgayVe);  

--Truy vấn lịch sử thuê xe của khách hàng, sắp xếp theo thời gian thuê
CREATE NONCLUSTERED INDEX IX_HopDongThue_MaKhachHang_NgayThue ON HopDongThue (MaKhach, NgayDi);  

--Index trên cột MaLoai của bảng XE
CREATE INDEX IX_XE_MaLoai ON XE (MaLoai);  


--7 Stored Procedure
--Stored Procedure không tham số: Lấy danh sách tất cả khách hàng
CREATE PROCEDURE sp_LayDanhSachKhachHang  
AS  
BEGIN  
    SELECT * FROM KHACHHANG;  
END;  

--Stored Procedure có tham số đầu vào: Lấy thông tin xe theo mã loại xe
CREATE PROCEDURE sp_LayThongTinXeTheoLoai  
    @MaLoai NVARCHAR(10)  
AS  
BEGIN  
    SELECT * FROM XE WHERE MaLoai = @MaLoai;  
END;  

--Stored Procedure có tham số đầu vào: Lấy danh sách hợp đồng theo khoảng ngày
CREATE PROCEDURE sp_LayHopDongTheoKhoangNgay  
    @NgayBatDau DATE,  
    @NgayKetThuc DATE  
AS  
BEGIN  
    SELECT * FROM HOPDONGTHUE  
    WHERE NgayDi >= @NgayBatDau AND NgayDi <= @NgayKetThuc;  
END;  

--Stored Procedure có tham số đầu vào và OUTPUT: Đếm số lượng xe của một loại xe cụ thể
CREATE PROCEDURE sp_DemSoLuongXeTheoLoai  
    @MaLoai NVARCHAR(10),  
    @SoLuong INT OUTPUT  
AS  
BEGIN  
    SELECT @SoLuong = COUNT(*) FROM XE WHERE MaLoai = @MaLoai;  
END;  

--Stored Procedure có tham số đầu vào và OUTPUT: Lấy giá thuê xe lớn nhất theo tuyến đường
CREATE PROCEDURE sp_LayGiaThueXeCaoNhatTheoTuyen  
    @MaTuyen NVARCHAR(10),  
    @GiaCaoNhat DECIMAL(10, 2) OUTPUT  
AS  
BEGIN  
    SELECT @GiaCaoNhat = MAX(GiaThueXe) FROM GIATHUEXE WHERE MaTuyen = @MaTuyen;  
END;  

--Stored Procedure có tham số: Thêm một khách hàng mới
CREATE PROCEDURE sp_ThemKhachHang  
    @MaKhach NVARCHAR(10),  
    @TenKhach NVARCHAR(100),  
    @SoDienThoaiKhach NVARCHAR(15)  
AS  
BEGIN  
    INSERT INTO KHACHHANG (MaKhach, TenKhach, SoDienThoaiKhach)  
    VALUES (@MaKhach, @TenKhach, @SoDienThoaiKhach);  
END;  

--Stored Procedure có tham số: Cập nhật số điện thoại của khách hàng
CREATE PROCEDURE sp_CapNhatSoDienThoaiKhachHang  
    @MaKhach NVARCHAR(10),  
    @SoDienThoaiMoi NVARCHAR(15)  
AS  
BEGIN  
    UPDATE KHACHHANG  
    SET SoDienThoaiKhach = @SoDienThoaiMoi  
    WHERE MaKhach = @MaKhach;  
END;  

--10 function
--Function trả về giá trị vô hướng: Tính tổng số xe của một loại xe cụ thể
CREATE FUNCTION fn_TongSoXeTheoLoai(@MaLoai NVARCHAR(10))  
RETURNS INT  
AS  
BEGIN  
    DECLARE @TongSoXe INT;  
    SELECT @TongSoXe = COUNT(*) FROM XE WHERE MaLoai = @MaLoai;  
    RETURN @TongSoXe;  
END;  

--Function trả về giá trị vô hướng: Tính quảng đường trung bình của các tuyến đường
CREATE FUNCTION fn_QuangDuongTrungBinh()  
RETURNS DECIMAL(10, 2)  
AS  
BEGIN  
    DECLARE @QuangDuongTB DECIMAL(10, 2);  
    SELECT @QuangDuongTB = AVG(QuangDuong) FROM TUYEN;  
    RETURN @QuangDuongTB;  
END;  

--Function trả về giá trị vô hướng: Lấy tên khách hàng theo mã khách hàng
CREATE FUNCTION fn_LayTenKhachHang(@MaKhach NVARCHAR(10))  
RETURNS NVARCHAR(100)  
AS  
BEGIN  
    DECLARE @TenKhach NVARCHAR(100);  
    SELECT @TenKhach = TenKhach FROM KHACHHANG WHERE MaKhach = @MaKhach;  
    RETURN @TenKhach;  
END;  

--Function trả về bảng: Lấy danh sách xe theo hãng xe
CREATE FUNCTION fn_DanhSachXeTheoHang(@HangXe NVARCHAR(100))  
RETURNS TABLE  
AS  
RETURN  
(  
    SELECT * FROM XE WHERE HangXe = @HangXe  
);  

--Function trả về bảng: Lấy danh sách hợp đồng thuê xe trong một khoảng thời gian
CREATE FUNCTION fn_HopDongThueXeTheoThoiGian(@NgayBatDau DATE, @NgayKetThuc DATE)  
RETURNS TABLE  
AS  
RETURN  
(  
    SELECT * FROM HOPDONGTHUE  
    WHERE NgayDi >= @NgayBatDau AND NgayDi <= @NgayKetThuc  
);  

--Function trả về bảng: Lấy danh sách các tuyến đường có khoảng cách lớn hơn một giá trị cụ thể
CREATE FUNCTION fn_TuyenDuongDaiHon(@QuangDuongMin INT)  
RETURNS TABLE  
AS  
RETURN  
(  
    SELECT * FROM TUYEN WHERE QuangDuong > @QuangDuongMin  
);  

--Function sử dụng biến bảng: Lấy thông tin hợp đồng và khách hàng liên quan
CREATE FUNCTION fn_HopDongVaKhachHang()  
RETURNS @KetQua TABLE  
(  
    MaHD NVARCHAR(10),  
    TenKhach NVARCHAR(100),  
    SoLuongXe INT,  
    NgayDi DATE  
)  
AS  
BEGIN  
    INSERT INTO @KetQua  
    SELECT HD.MaHD, KH.TenKhach, HD.SoLuongXe, HD.NgayDi  
    FROM HOPDONGTHUE HD  
    JOIN KHACHHANG KH ON HD.MaKhach = KH.MaKhach;  
    RETURN;  
END;  

--Function sử dụng biến bảng: Thống kê số lượng hợp đồng theo từng tháng
CREATE FUNCTION fn_ThongKeHopDongTheoThang(@Year INT)  
RETURNS @KetQua TABLE  
(  
    Thang INT,  
    SoLuongHopDong INT  
)  
AS  
BEGIN  
    DECLARE @Month INT = 1;  
    WHILE @Month <= 12  
    BEGIN  
        INSERT INTO @KetQua  
        SELECT @Month, COUNT(*)  
        FROM HOPDONGTHUE  
        WHERE YEAR(NgayDi) = @Year AND MONTH(NgayDi) = @Month;  
        SET @Month = @Month + 1;  
    END;  
    RETURN;  
END;  

--Function trả về giá trị vô hướng: Tính tổng giá trị của một hợp đồng (sử dụng GIATHUEXE)
CREATE FUNCTION fn_TinhTongGiaTriHopDong(@MaHD NVARCHAR(10))  
RETURNS DECIMAL(10, 2)  
AS  
BEGIN  
    DECLARE @TongGiaTri DECIMAL(10, 2);  
    
    SELECT @TongGiaTri = SUM(GiaThueXe)   
    FROM GIATHUEXE   
    WHERE MaHD = @MaHD;  
    
    RETURN ISNULL(@TongGiaTri, 0); -- Trả về 0 nếu không tìm thấy hợp đồng  
END;  

--Function trả về bảng: Liệt kê các xe có số chỗ ngồi lớn hơn hoặc bằng một giá trị cho trước (từ bảng LOAIXE và XE)
CREATE FUNCTION fn_XeCoSoChoNgoiLonHonHoacBang(@SoChoNgoi INT)  
RETURNS TABLE  
AS  
RETURN  
(  
    SELECT   
        XE.MaXe,   
        XE.HangXe,   
        LX.SoCho  
    FROM XE  
    JOIN LOAIXE LX ON XE.MaLoai = LX.MaLoai  
    WHERE LX.SoCho >= @SoChoNgoi  
);  

--7 trigger
-- Kiểm tra xem mã xe có tồn tại trong bảng XE khi thêm mới một hợp đồng thuê
CREATE TRIGGER tr_KiemTraMaXeTonTai  
ON HOPDONGTHUE  
AFTER INSERT, UPDATE  
AS  
BEGIN  
    IF EXISTS (SELECT 1 FROM inserted WHERE MaXe NOT IN (SELECT MaXe FROM XE))  
    BEGIN  
        RAISERROR('Mã xe không tồn tại trong danh mục xe.', 16, 1)  
        ROLLBACK TRANSACTION  
        RETURN  
    END  
END;  

--Ngăn chặn việc xóa một loại xe nếu có xe nào thuộc loại đó
CREATE TRIGGER tr_NgungXoaLoaiXeKhiCoXe  
ON LOAIXE  
INSTEAD OF DELETE  
AS  
BEGIN  
    IF EXISTS (SELECT 1 FROM XE WHERE MaLoai IN (SELECT MaLoai FROM deleted))  
    BEGIN  
        RAISERROR('Không thể xóa loại xe vì có xe thuộc loại này.', 16, 1)  
        ROLLBACK TRANSACTION  
        RETURN  
    END  
    ELSE  
    BEGIN  
        -- Nếu không có xe nào thuộc loại, thực hiện xóa  
        DELETE FROM LOAIXE WHERE MaLoai IN (SELECT MaLoai FROM deleted)  
    END  
END;  

--Đảm bảo rằng khi thêm mới hoặc cập nhật hợp đồng thuê, mã tuyến đường phải tồn tại
CREATE TRIGGER tr_KiemTraMaTuyenTonTai  
ON HOPDONGTHUE  
AFTER INSERT, UPDATE  
AS  
BEGIN  
    IF EXISTS (SELECT 1 FROM inserted WHERE MaTuyen NOT IN (SELECT MaTuyen FROM TUYEN))  
    BEGIN  
        RAISERROR('Mã tuyến đường không tồn tại.', 16, 1)  
        ROLLBACK TRANSACTION  
        RETURN  
    END  
END;  

--Kiểm tra xem ngày đi có hợp lệ (không nằm trong tương lai) khi thêm mới hoặc cập nhật hợp đồng
CREATE TRIGGER tr_KiemTraNgayDiHopLe  
ON HOPDONGTHUE  
AFTER INSERT, UPDATE  
AS  
BEGIN  
    IF EXISTS (SELECT 1 FROM inserted WHERE NgayDi > GETDATE())  
    BEGIN  
        RAISERROR('Ngày đi không được nằm trong tương lai.', 16, 1)  
        ROLLBACK TRANSACTION  
        RETURN  
    END  
END;  

--Ngăn chặn việc cập nhật mã loại xe trong bảng XE nếu mã loại mới không tồn tại
CREATE TRIGGER tr_NgungCapNhatMaLoaiXeKhongTonTai  
ON XE  
AFTER UPDATE  
AS  
BEGIN  
    IF UPDATE(MaLoai)  
    BEGIN  
        IF EXISTS (SELECT 1 FROM inserted WHERE MaLoai NOT IN (SELECT MaLoai FROM LOAIXE))  
        BEGIN  
            RAISERROR('Không thể cập nhật mã loại xe vì mã loại mới không tồn tại.', 16, 1)  
            ROLLBACK TRANSACTION  
            RETURN  
        END  
    END  
END;  

--Kiểm tra xem mã khách hàng có tồn tại khi thêm mới hoặc cập nhật hợp đồng thuê
CREATE TRIGGER tr_KiemTraMaKhachHangTonTai  
ON HOPDONGTHUE  
AFTER INSERT, UPDATE  
AS  
BEGIN  
    IF EXISTS (SELECT 1 FROM inserted WHERE MaKhach NOT IN (SELECT MaKhach FROM KHACHHANG))  
    BEGIN  
        RAISERROR('Mã khách hàng không tồn tại.', 16, 1)  
        ROLLBACK TRANSACTION  
        RETURN  
    END  
END;  

-- Đảm bảo rằng giá trị số lượng xe trong bảng HOPDONGTHUE không vượt quá số lượng xe hiện có trong bảng XE
CREATE TRIGGER tr_KiemTraSoLuongXeThueTrongHopDong  
ON HOPDONGTHUE  
AFTER INSERT, UPDATE  
AS  
BEGIN  
    DECLARE @SoLuongXeThue INT;  
    DECLARE @NguongSoXe INT = 10; -- Đặt ngưỡng số xe tối đa cho mỗi hợp đồng ở đây  

    -- Lấy số lượng xe thuê từ hợp đồng mới/cập nhật  
    SELECT @SoLuongXeThue = SoLuongXe FROM inserted;  

    -- Kiểm tra xem số lượng xe có vượt quá ngưỡng không  
    IF @SoLuongXeThue > @NguongSoXe  
    BEGIN  
        RAISERROR('Số lượng xe thuê trong một hợp đồng vượt quá ngưỡng cho phép.', 16, 1)  
        ROLLBACK TRANSACTION  
        RETURN  
    END  
END;  

-- Chương 5

-- Tạo login (nếu sử dụng SQL Server Authentication)  
CREATE LOGIN [ten_nguoi_dung] WITH PASSWORD = 'mat_khau_manh';  
GO  

-- Tạo user trong cơ sở dữ liệu cụ thể  
USE [ten_co_so_du_lieu];  
GO  
CREATE USER [ten_nguoi_dung] FOR LOGIN [ten_nguoi_dung];  
GO  

-- (Nếu sử dụng Windows Authentication)  
CREATE LOGIN [DOMAIN\ten_nguoi_dung_windows] FROM WINDOWS;  
GO  

USE [ten_co_so_du_lieu];  
GO  
CREATE USER [ten_nguoi_dung_windows] FOR LOGIN [DOMAIN\ten_nguoi_dung_windows];  
GO  

-- Cấp quyền SELECT cho user trên một bảng  
GRANT SELECT ON [ten_bang] TO [ten_nguoi_dung];  
GO  

-- Thu hồi quyền INSERT từ user trên một bảng  
REVOKE INSERT ON [ten_bang] FROM [ten_nguoi_dung];  
GO  

-- Thêm user vào vai trò db_datareader (chỉ đọc)  
ALTER ROLE db_datareader ADD MEMBER [ten_nguoi_dung];  
GO  

-- Thêm user vào vai trò db_datawriter (ghi dữ liệu)  
ALTER ROLE db_datawriter ADD MEMBER [ten_nguoi_dung];  
GO  

--Cấp quyền thực thi stored procedure  
GRANT EXECUTE ON [ten_stored_procedure] TO [ten_nguoi_dung];  
GO  

-- Sao lưu toàn bộ cơ sở dữ liệu  
BACKUP DATABASE [ten_co_so_du_lieu]  
TO DISK = 'duong_dan_den_file_sao_luu.bak'  
WITH FORMAT,  
NAME = 'Sao luu toan bo co so du lieu';  
GO  

-- Phục hồi cơ sở dữ liệu  
RESTORE DATABASE [ten_co_so_du_lieu]  
FROM DISK = 'duong_dan_den_file_sao_luu.bak'  
WITH REPLACE,  -- Ghi đè cơ sở dữ liệu hiện có  
RECOVERY;      -- Đưa cơ sở dữ liệu vào trạng thái sẵn sàng sử dụng  
GO  