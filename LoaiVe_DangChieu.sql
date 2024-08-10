CREATE DATABASE QuanLyBanVe
use QuanLyBanVe
create table DangChieu(
	MaDangChieu nvarchar(10) primary key not null,
	TenDangChieu nvarchar(10) null
)
create table LoaiVe(
	MaLoaiVe nvarchar(10) primary key not null,
	TenLoaiVe nvarchar(10) null,
	GiaLoaiVe money null
)

create table LoaiPhim(
	MaLoaiPhim nvarchar(10) primary key not null,
	TenTheLoai nvarchar(50)	
)

create table Phim(
	MaPhim nvarchar(10) primary key not null,
	TenPhim nvarchar(50) null,
	MaLoaiPhim nvarchar(10) not null,
	Constraint FK_MaLoaiPhim_Phim Foreign key(MaLoaiPhim) references LoaiPhim(MaLoaiPhim),
	MaDangChieu nvarchar(10) not null,
	Constraint FK_MaDangChieu_Phim Foreign key(MaDangChieu) references DangChieu(MaDangChieu)
)

insert into DangChieu(MaDangChieu,TenDangChieu)
values('DC1',N'Chiếu 2D')
insert into DangChieu(MaDangChieu,TenDangChieu)
values('DC2',N'Chiếu 3D')

insert into LoaiVe(MaLoaiVe,TenLoaiVe,GiaLoaiVe)
values('LV1',N'Vé thường','50000')
insert into LoaiVe(MaLoaiVe,TenLoaiVe,GiaLoaiVe)
values('LV2',N'Vé VIP','100000')

INSERT INTO LoaiPhim VALUES('PHanhDong',N'Phim hành động')
INSERT INTO LoaiPhim VALUES('PPhieuLuu',N'Phim phiêu lưu')
INSERT INTO LoaiPhim VALUES('PKhoaHocVT',N'Phim khoa học viễn tưởng')
INSERT INTO LoaiPhim VALUES('PHaiKich',N'Phim hài kịch')
INSERT INTO LoaiPhim VALUES('PKinhDi',N'Phim kinh dị')
INSERT INTO LoaiPhim VALUES('PHoatHinh',N'Phim hoạt hình')
INSERT INTO LoaiPhim VALUES('PLangMan',N'Phim lãng mạn')
INSERT INTO LoaiPhim VALUES('PLichSu',N'Phim lịch sử')
INSERT INTO LoaiPhim VALUES('PTaiLieu',N'Phim tài liệu')

insert into Phim(MaPhim,TenPhim,MaLoaiPhim,MaDangChieu)
values('P1',N'Doraemon','PHoatHinh','DC1')
insert into Phim(MaPhim,TenPhim,MaLoaiPhim,MaDangChieu)
values('P3',N'Kung Fu Panda 4','PHoatHinh','DC1')
insert into Phim(MaPhim,TenPhim,MaLoaiPhim,MaDangChieu)
values('P5',N'Điềm Báo Của Quỷ','PKinhDi','DC1')
insert into Phim(MaPhim,TenPhim,MaLoaiPhim,MaDangChieu)
values('P7',N'Biệt Đội Săn Ma','PHaiKich','DC1')
insert into Phim(MaPhim,TenPhim,MaLoaiPhim,MaDangChieu)
values('P9',N'Thần Bài Trở Lại','PHanhDong','DC1')

insert into Phim(MaPhim,TenPhim,MaLoaiPhim,MaDangChieu)
values('P2',N'Muôn Vị Nhân Gian','PLangMan','DC2')
insert into Phim(MaPhim,TenPhim,MaLoaiPhim,MaDangChieu)
values('P4',N'Đào Và Piano','PLichSu','DC2')
insert into Phim(MaPhim,TenPhim,MaLoaiPhim,MaDangChieu)
values('P6',N'TĐóa Hoa Mong Manh','PTaiLieu','DC2')
insert into Phim(MaPhim,TenPhim,MaLoaiPhim,MaDangChieu)
values('P8',N'Kamen Rider Faiz 20th Anniversary ','PKhoaHocVT','DC2')
insert into Phim(MaPhim,TenPhim,MaLoaiPhim,MaDangChieu)
values('P10',N'OverLord Holy Kingdom','PHoatHinh','DC2')