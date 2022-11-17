use WebSizeBanStandee
-- Bang AdminUser
CREATE TABLE AdminUser (
    ID           INT            NOT NULL,
    NameUser     NVARCHAR (50) NULL,
    RoleUser     NVARCHAR (50) NULL,
    PasswordUser NCHAR (50)     NULL,
    PRIMARY KEY CLUSTERED (ID ASC)
);

--Bang Category
CREATE TABLE [dbo].[Category] (
    [IDCate]   INT IDENTITY (1, 1) NOT NULL,
    [NameCate] NVARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([IDCate] ASC)
);
--Bang Customer
CREATE TABLE Customer (
    IDCus    INT            IDENTITY (1, 1) NOT NULL,
    NameCus  NVARCHAR (50) NULL,
    PhoneCus NVARCHAR (15)  NULL,
    EmailCus NVARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED (IDCus ASC)
);

--Bang Products
CREATE TABLE [dbo].[Product] (
    [ProductID]     INT             IDENTITY (1, 1) NOT NULL,
    [NamePro]       NVARCHAR (50)  NULL,
    [DecriptionPro] NVARCHAR (50)  NULL,
    [CateID]        INT            NULL,
    [Price]         FLOAT          NULL,
    [ImagePro]      NVARCHAR (50)  NULL,
    PRIMARY KEY CLUSTERED ([ProductID] ASC),
    CONSTRAINT [FK_Pro_Category] FOREIGN KEY ([CateID]) REFERENCES [dbo].[Category] ([IDCate])
);
--Bang OrderPro
CREATE TABLE OrderPro (
    ID               INT            IDENTITY (1, 1) NOT NULL,
    DateOrder        DATE           NULL,
    IDCus            INT            NULL,
    AddressDeliverry NVARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC),
    FOREIGN KEY (IDCus) REFERENCES Customer (IDCus)
);

--Bang OrderDetail
CREATE TABLE OrderDetail (
    ID        INT        IDENTITY (1, 1) NOT NULL,
    IDProduct INT        NULL,
    IDOrder   INT        NULL,
    Quantity  INT        NULL,
    UnitPrice FLOAT (53) NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC),
    FOREIGN KEY (IDProduct) REFERENCES Product (ProductID),
    FOREIGN KEY (IDOrder) REFERENCES OrderPro (ID)
);

-- Insert dữ liệu
use WebSizeBanStandee

------AdminUser
Insert into AdminUser (ID, NameUser, RoleUser, PasswordUser)
	values (1, 'TranLoc', 'TranLoc', '12345678')
Insert into AdminUser (ID, NameUser, RoleUser, PasswordUser)
	values (2, 'NguyenTu', 'NguyenTu', '23456789')
Insert into AdminUser (ID, NameUser, RoleUser, PasswordUser)
	values (3, 'VanMay', 'VanMay', '44061640')
Insert into AdminUser (ID, NameUser, RoleUser, PasswordUser)
	values (4, 'TyKim', 'TyKim', '45200361')


------Customer
Insert into Customer (NameCus, PhoneCus, EmailCus)
	values (N'Trần Bảo Lộc', '0903784512', 'loctb@gmail.com')
Insert into Customer (NameCus, PhoneCus, EmailCus)
	values (N'Nguyễn Thanh Tú', '0913678345', 'thanhtu20@gmail.com')
Insert into Customer (NameCus, PhoneCus, EmailCus)
	values (N'Lý Vân Mây', '0990374145', 'vanmay81@gmail.com')
Insert into Customer (NameCus, PhoneCus, EmailCus)
	values (N'Thái Tý Kim', '0913664268', 'tykim2001@gmail.com')

------Category
Insert into Category (NameCate)
    Values(N'BOOTH SAMPLING')                              
Insert into Category (NameCate)
    Values(N'KỆ CHỈ DẪN LỐI ĐI')                            
Insert into Category (NameCate) 
    Values(N'STANDEE TRONG NHÀ KHÁC')                           
Insert into Category (NameCate)
    Values(N'STANDEE NGOÀI TRỜI')                    
Insert into Category (NameCate)
    Values(N'BACKDROP DI ĐỘNG')                          
Insert into Category (NameCate)
    Values(N'CHÂN STANDEE CHỮ X')                                    
Insert into Category (NameCate)
    Values(N'GIÁ ĐỠ TÀI LIỆU')                                                
Insert into Category (NameCate)
    Values(N'STANDEE HỘP CUỐN')   

--------Products
Insert into Product (NamePro, DecriptionPro, CateID, Price, ImagePro)
    values (N'BOOTH SAMPLING NHỰA', N'Quầy nhựa bán hàng di động cao cấp', 1, 699000, 'Content/images/BOOTHNHUA.png')
Insert into Product (NamePro, DecriptionPro, CateID, Price, ImagePro)
    values (N'STANDEE CHỮ X CƯỜNG LỰC', N'Chân treo Poster chữ X sang trọng', 7, 160000, 'Content/images/STANDEECL.png')
Insert into Product (NamePro, DecriptionPro, CateID, Price, ImagePro)
    values (N'STANDEE CUỐN HỘP INOX', N'Chân Standee hộp cuốn Inox sáng màu', 8, 280000, 'Content/images/STANDEEINOX.png')
Insert into Product (NamePro, DecriptionPro, CateID, Price, ImagePro)
    values (N'KỆ CATALOGUE ĐỰNG TÀI LIỆU', N'Kệ đựng tài liệu kích thước A3 - A4', 2, 1900000, 'Content/images/CATALOGUE.png')
Insert into Product (NamePro, DecriptionPro, CateID, Price, ImagePro)
    values (N'STANDEE ĐẾ NƯỚC KIỂU CỬA', N'Standee khung cửa đế nước thẩm mỹ cao', 4, 250000, 'Content/images/STANDEECUADENUOC.png')
Insert into Product (NamePro, DecriptionPro, CateID, Price, ImagePro)
    values (N'BOOTH SAMPLING NHÔM', N'Quầy Booth bán hàng nhôm giá học sinh sinh viên', 1, 700000, 'Content/images/BOOTHSAMPLINGNHOM.png')
Insert into Product (NamePro, DecriptionPro, CateID, Price, ImagePro)
    values (N'GIÁ TREO TRANH NHÔM', N'Chân kệ để treo tranh nhôm sang trọng', 7, 372000, 'Content/images/TRANHNHOM.png')
Insert into Product (NamePro, DecriptionPro, CateID, Price, ImagePro)
    values (N'GIÁ TREO TRANH SẮT', N'Chân kệ để treo tranh sắt sang trọng', 7, 372000, 'Content/images/TRANHSAT.png')
Insert into Product (NamePro, DecriptionPro, CateID, Price, ImagePro)
    values (N'STANDEE CUỐN NHÔM TỐT TRONG NHÀ', N'Standee chân cuốn cao cấp trong nhà', 8, 260000, 'Content/images/CUONNHOM.png')
Insert into Product (NamePro, DecriptionPro, CateID, Price, ImagePro)
    values (N'STANDEE CHỮ X TĂNG GIẢM', N'Standee tăng giảm kích thước trưng bày', 6, 110000, 'Content/images/XTANGGIAM.png')
Insert into Product (NamePro, DecriptionPro, CateID, Price, ImagePro)
    values (N'STANDEE CHỮ T TĂNG GIẢM', N'Standee khung cửa đế sắt trong nhà', 3, 200000, 'Content/images/STANDEET.png')
Insert into Product (NamePro, DecriptionPro, CateID, Price, ImagePro)
    values (N'STANDEE ĐẾ SẮT NGOÀI TRỜI', N'Standee chân sắt trưng bày ngoài trời', 4, 910000, 'Content/images/STANDEECHANSAT.png')
Insert into Product (NamePro, DecriptionPro, CateID, Price, ImagePro)
    values (N'STANDEE KHUNG CỬA ĐÉ SẮT', N'Standee khung cửa đế sắt trong nhà giá rẻ', 3, 280000, 'Content/images/STANDEEKHUNGCUA.png')
Insert into Product (NamePro, DecriptionPro, CateID, Price, ImagePro)
    values (N'STANDEE ĐẾ NƯỚC TĂNG GIẢM', N'Standee đế nước tăng giảm hai mặt cao cấp', 4, 410000, 'Content/images/STANDEEDENUOC.png')
Insert into Product (NamePro, DecriptionPro, CateID, Price, ImagePro)
    values (N'BACKDROP DI ĐỘNG NGOÀI TRỜI', N'Backdrop sân khấu di động kiểu dáng mạng nhện', 5, 4100000, 'Content/images/BACKDROP.png')
Insert into Product (NamePro, DecriptionPro, CateID, Price, ImagePro)
    values (N'STANDEE KHUNG NHÔM ĐẾ SẮT', N'Standee khung nhôm đế sắt kích thước hai mét', 4, 720000, 'Content/images/STANDEEKHUNGNHOM.png')
Insert into Product (NamePro, DecriptionPro, CateID, Price, ImagePro)
    values (N'STANDEE CHỮ X LOẠI THƯỜNG', N'Standee treo poster chữ X loại thường giá rẻ', 6, 50000, 'Content/images/STANDEEXTHUONG.png')
Insert into Product (NamePro, DecriptionPro, CateID, Price, ImagePro)
    values (N'KỆ CHỮ A MỘT HOẶC HAI MẶT', N'Bảng chỉ dẫn chữ A nhôm một mặt hoặc hai mặt', 2, 780000, 'Content/images/STANDEEA.png')
Insert into Product (NamePro, DecriptionPro, CateID, Price, ImagePro)
    values (N'STANDEE CHỮ H TĂNG GIẢM GIÁ RẺ', N'Standee tăng giảm kiểu chữ H sang trọng', 7, 320000, 'Content/images/STANDEEH.png')
Insert into Product (NamePro, DecriptionPro, CateID, Price, ImagePro)
    values (N'STANDEE MENU ĐỨNG XOAY GÓC', N'Standee menu quán ăn nhà hàng, bảng chỉ dẫn', 7, 263000, 'Content/images/STANDEEXAYGOC.png')
Insert into Product (NamePro, DecriptionPro, CateID, Price, ImagePro)
    values (N'STANDEE CUỐN HÀO HOA NHÔM', N'Standee hào hoa đế to chất liệu nhôm siêu bền', 8, 430000, 'Content/images/STANDEEHAOHOANHOM.png')
Insert into Product (NamePro, DecriptionPro, CateID, Price, ImagePro)
    values (N'STANDEE CHỮ X MINI ĐỂ BÀN', N'Standee chữ X mini size A4 để bàn giá cực sốc', 6, 430000, 'Content/images/STANDEEXMINI.png')
Insert into Product (NamePro, DecriptionPro, CateID, Price, ImagePro)
    values (N'STANDEE CUỐN HÀO HOA NHỰA', N'Standee hào hoa nhựa trưng bày showroom cao cấp', 8, 430000, 'Content/images/STANDHAOHOANHUA.png')
Insert into Product (NamePro, DecriptionPro, CateID, Price, ImagePro)
    values (N'BOOTH SAMPLING SẮT', N'Quầy Booth bán hàng bằng sắt cao cấp giá cực rẻ', 1, 800000, 'Content/images/BOOTHSAMPLINGSAT.png')



--------OrderPro
Insert into OrderPro (DateOrder, IDCus, AddressDeliverry)
	values ('01/01/2022', 1, N'155 Sư Vạn Hạnh,q10')

--------OrderDetail
Insert into OrderDetail (IDProduct, IDOrder, Quantity, UnitPrice)
	values (1, 1, 5, 160000)
Insert into OrderDetail (IDProduct, IDOrder, Quantity, UnitPrice)
	values (2, 1, 10, 410000)
Insert into OrderDetail (IDProduct, IDOrder, Quantity, UnitPrice)
	values (3, 1, 12, 199000)
Insert into OrderDetail (IDProduct, IDOrder, Quantity, UnitPrice)
	values (6, 1, 3, 700000)

