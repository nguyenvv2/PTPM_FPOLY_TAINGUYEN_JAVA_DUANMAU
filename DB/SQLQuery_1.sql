create DATABASE DU_AN_MAU

CREATE TABLE DanhMuc(
    maDanhMuc [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
    tenDanhMuc VARCHAR(255),
    trangThai INT,
)
CREATE TABLE SanPham(
    id [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
    tenSanPham VARCHAR(255),
    soLuong INT,
    giaBan INT,
    trangThai INT,
    maDanhMuc INT,
    CONSTRAINT danhMuc_FK FOREIGN KEY (maDanhMuc) REFERENCES danhMuc(maDanhMuc)
)

CREATE TABLE KhachHang(
     id [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
     maKhachHang VARCHAR(255),
     diaChi VARCHAR(255),
     
)