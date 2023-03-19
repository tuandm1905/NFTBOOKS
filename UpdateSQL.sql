USE [QLTV_BTL]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 2/19/2023 7:38:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[IDCategory] [bigint] IDENTITY(1,1) NOT NULL,
	[TenTheloai] [nvarchar](250) NOT NULL,
	[MetaTitle] [varchar](250) NULL,
	[ParentID] [bigint] NULL,
	[SEOTitle] [varchar](250) NULL,
	[NgayTao] [date] NULL,
	[NguoiTao] [varchar](250) NULL,
	[ModifiedDate] [date] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[DisPlayOrder] [int] NULL,
	[MetaDescriptions] [nvarchar](max) NULL,
	[Status] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDCategory] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 2/19/2023 7:38:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[IDContact] [bigint] IDENTITY(1,1) NOT NULL,
	[Content] [nvarchar](max) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[IDContact] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feed_Back]    Script Date: 2/19/2023 7:38:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feed_Back](
	[IDFeedBack] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Phone] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[Content] [nvarchar](250) NULL,
	[CreateDate] [datetime] NULL,
	[Status] [bit] NULL,
	[Reply] [nvarchar](max) NULL,
	[TieuDe] [nvarchar](250) NULL,
	[UpdateDate] [datetime] NULL,
	[UpdateBy] [varchar](50) NULL,
	[CustomerID] [bigint] NULL,
 CONSTRAINT [PK_Feed_Back] PRIMARY KEY CLUSTERED 
(
	[IDFeedBack] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Footer]    Script Date: 2/19/2023 7:38:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Footer](
	[IdFooter] [bigint] IDENTITY(1,1) NOT NULL,
	[Content] [nvarchar](max) NOT NULL,
	[Status] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdFooter] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhoHang]    Script Date: 2/19/2023 7:38:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhoHang](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[TenKho] [nvarchar](50) NULL,
	[IDProduct] [bigint] NULL,
	[SoLuongKho] [int] NOT NULL,
	[TonKho] [int] NOT NULL,
	[NgayTao] [datetime] NULL,
	[Status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 2/19/2023 7:38:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[IDMenu] [bigint] IDENTITY(1,1) NOT NULL,
	[NameMenu] [nvarchar](50) NOT NULL,
	[Link] [varchar](max) NULL,
	[DisplayOrder] [int] NULL,
	[Target] [varchar](max) NULL,
	[MenuTypeID] [bigint] NULL,
	[Status] [bit] NOT NULL,
	[CreateDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDMenu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MenuType]    Script Date: 2/19/2023 7:38:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuType](
	[MenuTypeID] [bigint] IDENTITY(1,1) NOT NULL,
	[NameType] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MenuTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Messenger]    Script Date: 2/19/2023 7:38:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Messenger](
	[IDMes] [bigint] IDENTITY(1,1) NOT NULL,
	[IDCustomer] [bigint] NULL,
	[NgayTao] [datetime] NULL,
	[Content] [nvarchar](250) NULL,
	[Status] [bit] NULL,
	[IDOrder] [bigint] NULL,
 CONSTRAINT [PK_Messenger] PRIMARY KEY CLUSTERED 
(
	[IDMes] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Muon_Tra]    Script Date: 2/19/2023 7:38:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Muon_Tra](
	[IdMuon] [bigint] IDENTITY(1,1) NOT NULL,
	[IDContent] [bigint] NOT NULL,
	[IDUser] [bigint] NOT NULL,
	[SoluongMuon] [int] NOT NULL,
	[ThoigianM] [datetime] NULL,
	[ThoiGianHenTra] [datetime] NULL,
	[ThoigianTra] [datetime] NULL,
	[SoLanGiaHan] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdMuon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 2/19/2023 7:38:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[IDNCC] [bigint] IDENTITY(1,1) NOT NULL,
	[TenNCC] [nvarchar](250) NOT NULL,
	[NgayTao] [date] NULL,
	[IDNguoiTao] [bigint] NULL,
	[Status] [bit] NOT NULL,
	[DiaChi] [nvarchar](250) NULL,
	[SoDienThoai] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhapHang]    Script Date: 2/19/2023 7:38:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhapHang](
	[IDNhapHang] [bigint] IDENTITY(1,1) NOT NULL,
	[IDSanPham] [bigint] NULL,
	[GiaNhap] [int] NULL,
	[SoLuongNhap] [int] NULL,
	[NgayTao] [datetime] NULL,
	[Status] [int] NULL,
	[IDNCC] [bigint] NULL,
	[IDCategory] [bigint] NULL,
	[IDNguoiTao] [bigint] NULL,
	[StatusPayMent] [bit] NULL,
	[StatusInput] [bit] NULL,
 CONSTRAINT [PK_NhapHang] PRIMARY KEY CLUSTERED 
(
	[IDNhapHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_Detail]    Script Date: 2/19/2023 7:38:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_Detail](
	[ProductID] [bigint] NOT NULL,
	[OderID] [bigint] NOT NULL,
	[Quanlity] [int] NULL,
	[Price] [int] NULL,
 CONSTRAINT [PK_Order_Detail] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC,
	[OderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 2/19/2023 7:38:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[IDOder] [bigint] IDENTITY(1,1) NOT NULL,
	[NgayTao] [datetime] NULL,
	[CustomerID] [bigint] NULL,
	[ShipName] [nvarchar](50) NULL,
	[ShipMobile] [nvarchar](50) NULL,
	[ShipAddress] [nvarchar](50) NULL,
	[ShipEmail] [nvarchar](50) NULL,
	[Status] [int] NULL,
	[GiaoHang] [int] NULL,
	[NhanHang] [int] NULL,
	[GhiChu] [nvarchar](50) NULL,
	[DeliveryPaymentMethod] [nvarchar](50) NULL,
	[StatusPayment] [int] NULL,
	[OrderCode] [varchar](150) NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[IDOder] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quyen]    Script Date: 2/19/2023 7:38:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quyen](
	[IDQuyen] [bigint] IDENTITY(1,1) NOT NULL,
	[TenQuyen] [nvarchar](250) NOT NULL,
	[Status] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sanpham]    Script Date: 2/19/2023 7:38:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sanpham](
	[IDContent] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[MetaTitle] [varchar](250) NULL,
	[TacGia] [nvarchar](50) NOT NULL,
	[NhaXuatBan] [nvarchar](50) NOT NULL,
	[Soluong] [int] NOT NULL,
	[Images] [varchar](max) NULL,
	[CategoryID] [bigint] NULL,
	[Quanlity] [nvarchar](50) NULL,
	[NgayTao] [datetime] NOT NULL,
	[IDNguoiTao] [bigint] NULL,
	[Status] [bit] NOT NULL,
	[Tophot] [int] NOT NULL,
	[Mota] [nvarchar](max) NULL,
	[ChiTiet] [nvarchar](max) NULL,
	[IDNCC] [bigint] NULL,
	[GiaTien] [int] NOT NULL,
	[GiaNhap] [int] NULL,
	[PriceSale] [int] NULL,
	[TonKho] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDContent] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slide]    Script Date: 2/19/2023 7:38:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slide](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Image] [varchar](max) NULL,
	[DisPlayOrder] [int] NOT NULL,
	[Title] [nvarchar](200) NULL,
	[Link] [varchar](max) NULL,
	[Status] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 2/19/2023 7:38:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[IDUser] [bigint] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](250) NOT NULL,
	[PassWord] [varchar](250) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[Adress] [nvarchar](250) NOT NULL,
	[Email] [varchar](250) NOT NULL,
	[Phone] [varchar](250) NOT NULL,
	[Status] [bit] NOT NULL,
	[NgayTao] [date] NULL,
	[NguoiTao] [varchar](50) NULL,
	[ModifiedDate] [date] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[IDQuyen] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([IDCategory], [TenTheloai], [MetaTitle], [ParentID], [SEOTitle], [NgayTao], [NguoiTao], [ModifiedDate], [ModifiedBy], [DisPlayOrder], [MetaDescriptions], [Status]) VALUES (1, N'Khoa Học', N'khoa-hoc', NULL, NULL, CAST(N'2021-12-12' AS Date), NULL, NULL, NULL, 1, NULL, 1)
INSERT [dbo].[Category] ([IDCategory], [TenTheloai], [MetaTitle], [ParentID], [SEOTitle], [NgayTao], [NguoiTao], [ModifiedDate], [ModifiedBy], [DisPlayOrder], [MetaDescriptions], [Status]) VALUES (2, N'Tiểu Thuyết', N'Tieu-Thuyet', NULL, N'TieuThuyet', CAST(N'2021-08-03' AS Date), NULL, NULL, NULL, 2, NULL, 1)
INSERT [dbo].[Category] ([IDCategory], [TenTheloai], [MetaTitle], [ParentID], [SEOTitle], [NgayTao], [NguoiTao], [ModifiedDate], [ModifiedBy], [DisPlayOrder], [MetaDescriptions], [Status]) VALUES (3, N'Trò Chơi Điện Tử', N'tro-choi-dien-tu', NULL, NULL, NULL, N'Admin123', NULL, NULL, 3, NULL, 1)
INSERT [dbo].[Category] ([IDCategory], [TenTheloai], [MetaTitle], [ParentID], [SEOTitle], [NgayTao], [NguoiTao], [ModifiedDate], [ModifiedBy], [DisPlayOrder], [MetaDescriptions], [Status]) VALUES (6, N'Phim', N'phim', NULL, N'phim', CAST(N'2021-08-04' AS Date), N'admin2', NULL, NULL, 4, NULL, 1)
INSERT [dbo].[Category] ([IDCategory], [TenTheloai], [MetaTitle], [ParentID], [SEOTitle], [NgayTao], [NguoiTao], [ModifiedDate], [ModifiedBy], [DisPlayOrder], [MetaDescriptions], [Status]) VALUES (7, N'Văn học', N'van-hoc', NULL, N'van hoc', NULL, N'Admin123', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Category] ([IDCategory], [TenTheloai], [MetaTitle], [ParentID], [SEOTitle], [NgayTao], [NguoiTao], [ModifiedDate], [ModifiedBy], [DisPlayOrder], [MetaDescriptions], [Status]) VALUES (9, N'Tự Nhiên Xã Hội', N'tu-nhien-xa-hoi', NULL, NULL, NULL, N'Admin123', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Category] ([IDCategory], [TenTheloai], [MetaTitle], [ParentID], [SEOTitle], [NgayTao], [NguoiTao], [ModifiedDate], [ModifiedBy], [DisPlayOrder], [MetaDescriptions], [Status]) VALUES (10, N'Khoa Học', N'khoa-hoc', NULL, N'a', NULL, N'Admin123', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Category] ([IDCategory], [TenTheloai], [MetaTitle], [ParentID], [SEOTitle], [NgayTao], [NguoiTao], [ModifiedDate], [ModifiedBy], [DisPlayOrder], [MetaDescriptions], [Status]) VALUES (11, N'Trinh Thám', N'trinh-tham', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Category] ([IDCategory], [TenTheloai], [MetaTitle], [ParentID], [SEOTitle], [NgayTao], [NguoiTao], [ModifiedDate], [ModifiedBy], [DisPlayOrder], [MetaDescriptions], [Status]) VALUES (12, N'Ngoại Ngữ', N'ngoai-ngu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Category] ([IDCategory], [TenTheloai], [MetaTitle], [ParentID], [SEOTitle], [NgayTao], [NguoiTao], [ModifiedDate], [ModifiedBy], [DisPlayOrder], [MetaDescriptions], [Status]) VALUES (14, N'Thiếu Nhi', N'thieu-nhi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Category] ([IDCategory], [TenTheloai], [MetaTitle], [ParentID], [SEOTitle], [NgayTao], [NguoiTao], [ModifiedDate], [ModifiedBy], [DisPlayOrder], [MetaDescriptions], [Status]) VALUES (15, N'Lịch Sử', N'lich-su', NULL, NULL, CAST(N'2021-12-12' AS Date), NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Category] ([IDCategory], [TenTheloai], [MetaTitle], [ParentID], [SEOTitle], [NgayTao], [NguoiTao], [ModifiedDate], [ModifiedBy], [DisPlayOrder], [MetaDescriptions], [Status]) VALUES (16, N'Hoạt Hình', N'hoat-hinh', NULL, NULL, CAST(N'2021-09-06' AS Date), N'admin1', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Category] ([IDCategory], [TenTheloai], [MetaTitle], [ParentID], [SEOTitle], [NgayTao], [NguoiTao], [ModifiedDate], [ModifiedBy], [DisPlayOrder], [MetaDescriptions], [Status]) VALUES (17, N'Kỹ Năng Sống', N'ky-nang-song', NULL, NULL, CAST(N'2023-02-19' AS Date), N'tuan', NULL, NULL, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Contact] ON 

INSERT [dbo].[Contact] ([IDContact], [Content], [Status]) VALUES (1, N'<p>100 Nguyễn Bình, TT. Đông Triều, tx. Đông Triều, Quảng Ninh, Việt Nam</p>', 1)
SET IDENTITY_INSERT [dbo].[Contact] OFF
GO
SET IDENTITY_INSERT [dbo].[Feed_Back] ON 

INSERT [dbo].[Feed_Back] ([IDFeedBack], [Name], [Phone], [Email], [Address], [Content], [CreateDate], [Status], [Reply], [TieuDe], [UpdateDate], [UpdateBy], [CustomerID]) VALUES (4, N'HOANG VAN THUONG', N'0889932798', N'thuongdt1002@gmail.com', N'Quảng Nam', N' ok bây bê', CAST(N'2021-08-21T16:03:27.897' AS DateTime), 0, NULL, N'Trợ giúp thông tin', NULL, NULL, NULL)
INSERT [dbo].[Feed_Back] ([IDFeedBack], [Name], [Phone], [Email], [Address], [Content], [CreateDate], [Status], [Reply], [TieuDe], [UpdateDate], [UpdateBy], [CustomerID]) VALUES (9, N'Hoang Thuy Luong', N'098988282', N'hvtnam1999@gmail.com', N'Huong Long, Hue, Thua Thien Hue', N' Tôi cần trợ giúp về vẫn đề nhận hàng', CAST(N'2021-09-02T00:05:15.647' AS DateTime), 1, N' Tôi cần trợ giúp về vẫn đề nhận hàng', N'Tôi cần trợ giúp về vẫn đề nhận hàng', CAST(N'2021-09-02T00:15:12.447' AS DateTime), N'admin1', NULL)
INSERT [dbo].[Feed_Back] ([IDFeedBack], [Name], [Phone], [Email], [Address], [Content], [CreateDate], [Status], [Reply], [TieuDe], [UpdateDate], [UpdateBy], [CustomerID]) VALUES (10, N'Hoang Thuy Luong', N'098988282', N'hvtnam1999@gmail.com', N'Huong Long, Hue, Thua Thien Hue', N' Tôi cần trợ giúp về vẫn đề nhận hàng hóa', CAST(N'2021-09-02T11:28:40.607' AS DateTime), 1, N' Tôi cần trợ giúp về vẫn đề nhận hàng hóa tôi đã có được thông tin của bạn và liên hệ qua cuộc gọi', N'Tôi cần trợ giúp về vẫn đề nhận hàng', CAST(N'2021-09-02T12:44:28.853' AS DateTime), N'admin1', 15)
INSERT [dbo].[Feed_Back] ([IDFeedBack], [Name], [Phone], [Email], [Address], [Content], [CreateDate], [Status], [Reply], [TieuDe], [UpdateDate], [UpdateBy], [CustomerID]) VALUES (11, N'Hoang Thuy Luong', N'098988282', N'hvtnam1999@gmail.com', N'Huong Long, Hue, Thua Thien Hue', N' Tôi cần trợ giúp về vẫn đề nhận hàng và sản phẩm', CAST(N'2021-09-02T13:20:03.220' AS DateTime), 0, NULL, N'Tôi cần trợ giúp về vẫn đề nhận hàng và sản phẩm', NULL, NULL, 15)
INSERT [dbo].[Feed_Back] ([IDFeedBack], [Name], [Phone], [Email], [Address], [Content], [CreateDate], [Status], [Reply], [TieuDe], [UpdateDate], [UpdateBy], [CustomerID]) VALUES (16, N'Phạm Hồng Anh', N'0338279409', N'hungtran8909@gmail.com', N'Khu Trạo Hà, Đông Triều, Quảng Ninh', N'Tôi muốn hộ trợ vấn đề mua hàng', CAST(N'2021-12-23T15:55:40.903' AS DateTime), 0, NULL, N'Tôi muốn hộ trợ vấn đề mua hàng', NULL, NULL, 14)
INSERT [dbo].[Feed_Back] ([IDFeedBack], [Name], [Phone], [Email], [Address], [Content], [CreateDate], [Status], [Reply], [TieuDe], [UpdateDate], [UpdateBy], [CustomerID]) VALUES (23, N'Phạm Hồng Anh', N'0338279409', N'hungtran8909@gmail.com', N'Khu Trạo Hà, Đông Triều, Quảng Ninh', N'Tôi muốn hộ trợ vấn đề mua hàng', CAST(N'2021-12-24T11:01:58.397' AS DateTime), 0, NULL, N'Tôi muốn hộ trợ vấn đề mua hàng', NULL, NULL, 14)
INSERT [dbo].[Feed_Back] ([IDFeedBack], [Name], [Phone], [Email], [Address], [Content], [CreateDate], [Status], [Reply], [TieuDe], [UpdateDate], [UpdateBy], [CustomerID]) VALUES (24, N'VAN SANG HOANG', N'nubuihung@gmail.com', N'', N'', N'', CAST(N'2022-04-26T23:11:12.000' AS DateTime), 0, NULL, N'', NULL, NULL, NULL)
INSERT [dbo].[Feed_Back] ([IDFeedBack], [Name], [Phone], [Email], [Address], [Content], [CreateDate], [Status], [Reply], [TieuDe], [UpdateDate], [UpdateBy], [CustomerID]) VALUES (25, N'Đặng Minh Tuấn', N'0946144169', N'tuandang930@gmail.com', N'An Giang', N'Tôi muốn đánh giá cái trang bán sách online này rất chi là chuyên nghiệp, tỉ mỉ và chăm sóc khách hàng rất tốt. Tôi sẽ cho 5 sao', CAST(N'2023-02-19T01:10:54.403' AS DateTime), 1, N'Chúng tôi rất cảm ơn bạn vì đã sử dụng dịch vụ bán sách online của chúng tôi. Chúng tôi sẽ cố gắng hoàn thiện hơn nữa trong tương lai. Rất xin cảm ơn quý khách.', N'tuandang930@gmail.com', CAST(N'2023-02-19T01:12:03.400' AS DateTime), N'admin', NULL)
SET IDENTITY_INSERT [dbo].[Feed_Back] OFF
GO
SET IDENTITY_INSERT [dbo].[Footer] ON 

INSERT [dbo].[Footer] ([IdFooter], [Content], [Status]) VALUES (4, N'
<footer class="site-footer">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 col-md-6">
                <h6>Giới Thiệu</h6>
                <p class="text-justify">Nhà sách <i>PHƯƠNG NAM BOOK </i> hệ thống nhà sách thân thuộc của nhiều gia đình Việt kể từ nhà sách đầu tiên ra đời năm 1982 đến nay. Đến với không gian mua sắm trực tuyến sachyeuthich, khách hàng có thể dễ dàng tìm thấy những cuốn sách hay, đa thể loại của nhiều nhà xuất bản. Cùng tiêu chí không ngừng hoàn thiện, nâng cao chất lượng sản phẩm, dịch vụ, Nhà Sách Phương Nam cam kết mang đến cho khách hàng trải nghiệm mua sắm trực tuyến an toàn, tiện lợi: cách đặt hàng đơn giản , phương thức thanh toán đa dạng, dịch vụ chăm sóc khách hàng tận tình, chu đáo. </p>
            </div>

            <div class="col-xs-6 col-md-3">
                <h6>Một số thể loại</h6>
                <ul class="footer-links">
                    <li><a href="">Truyện Tranh</a></li>
                    <li><a href="https://localhost:44350/san-pham/Tieu-Thuyet-2">Tiểu Thuyết</a></li>
                    <li><a href="https://localhost:44350/san-pham/khoa-hoc-10">Khoa Học</a></li>
                    <li><a href="https://localhost:44350/san-pham/van-hoc-7">Văn Học</a></li>
                    <li><a href="https://localhost:44350/san-pham/thieu-nhi-14">Thiếu Nhi</a></li>
                    <li><a href="https://localhost:44350/san-pham/tu-nhien-xa-hoi-9">Tự Nhiên Xã Hội</a></li>

                </ul>

            </div>

            <div class="col-xs-6 col-md-3">
                <h6>Liên Kết</h6>
                <ul class="footer-links">
                    
                    <li><a href="https://localhost:44350/">Trang Chủ</a></li>
                    <li><a href="https://localhost:44350/Lien-He">Liên Hệ</a></li>
                    <li><a href="https://localhost:44350/">Hỗ trợ thanh toán</a></li>
                    <li><a href="https://localhost:44350/">Giấy phép</a></li>
                </ul>
            </div>

            
        </div>
        <hr>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-8 col-sm-6 col-xs-12">
                <p class="copyright-text">
                    Copyright &copy; 2021 Thiết kế bởi
                    <a href="#">Hoàng Thường</a>.
                </p>
            </div>

            <div class="col-md-4 col-sm-6 col-xs-12">
                <ul class="social-icons">
                    <li><a class="facebook" href="#"><i class="fab fa-facebook-square"></i></a></li>
                    <li><a class="twitter" href="#"><i class="fab fa-twitter"></i></a></li>
                    <li><a class="dribbble" href="#"><i class="fab fa-instagram"></i></a></li>
                    <li><a class="linkedin" href="#"><i class="fab fa-linkedin"></i></a></li>
                </ul>
            </div>
        </div>
    </div>
</footer>
', 1)
SET IDENTITY_INSERT [dbo].[Footer] OFF
GO
SET IDENTITY_INSERT [dbo].[Menu] ON 

INSERT [dbo].[Menu] ([IDMenu], [NameMenu], [Link], [DisplayOrder], [Target], [MenuTypeID], [Status], [CreateDate]) VALUES (3, N'Giới Thiệu', N'/gioi-thieu', 3, N'_self', 1, 1, CAST(N'2021-12-24T12:53:47.627' AS DateTime))
INSERT [dbo].[Menu] ([IDMenu], [NameMenu], [Link], [DisplayOrder], [Target], [MenuTypeID], [Status], [CreateDate]) VALUES (5, N'Khuyến Mại', N'/khuyen-mai', 2, N'_self', 1, 1, CAST(N'2021-12-24T12:53:24.327' AS DateTime))
INSERT [dbo].[Menu] ([IDMenu], [NameMenu], [Link], [DisplayOrder], [Target], [MenuTypeID], [Status], [CreateDate]) VALUES (6, N'Sản Phẩm', N'/San-Pham', 1, N'_self', 1, 1, CAST(N'2021-12-18T14:16:37.790' AS DateTime))
INSERT [dbo].[Menu] ([IDMenu], [NameMenu], [Link], [DisplayOrder], [Target], [MenuTypeID], [Status], [CreateDate]) VALUES (8, N'Liên Hệ', N'/Lien-He', 4, N'_self', 1, 1, CAST(N'2021-12-18T14:17:14.947' AS DateTime))
INSERT [dbo].[Menu] ([IDMenu], [NameMenu], [Link], [DisplayOrder], [Target], [MenuTypeID], [Status], [CreateDate]) VALUES (9, N'Đăng Nhập', N'/dang-nhap', 1, N'_self', 2, 1, CAST(N'2021-12-16T23:55:46.110' AS DateTime))
INSERT [dbo].[Menu] ([IDMenu], [NameMenu], [Link], [DisplayOrder], [Target], [MenuTypeID], [Status], [CreateDate]) VALUES (10, N'Đăng Ký', N'/dang-ki', 2, N'_self', 2, 1, CAST(N'2021-12-16T23:55:51.750' AS DateTime))
SET IDENTITY_INSERT [dbo].[Menu] OFF
GO
SET IDENTITY_INSERT [dbo].[MenuType] ON 

INSERT [dbo].[MenuType] ([MenuTypeID], [NameType]) VALUES (1, N'Menu Chính')
INSERT [dbo].[MenuType] ([MenuTypeID], [NameType]) VALUES (2, N'Menu Top')
SET IDENTITY_INSERT [dbo].[MenuType] OFF
GO
SET IDENTITY_INSERT [dbo].[Messenger] ON 

INSERT [dbo].[Messenger] ([IDMes], [IDCustomer], [NgayTao], [Content], [Status], [IDOrder]) VALUES (1, 1, CAST(N'2020-10-10T00:00:00.000' AS DateTime), NULL, 1, 1)
INSERT [dbo].[Messenger] ([IDMes], [IDCustomer], [NgayTao], [Content], [Status], [IDOrder]) VALUES (2, 15, CAST(N'2021-08-25T23:20:45.760' AS DateTime), NULL, 1, 100)
INSERT [dbo].[Messenger] ([IDMes], [IDCustomer], [NgayTao], [Content], [Status], [IDOrder]) VALUES (3, 15, CAST(N'2021-08-26T00:59:01.003' AS DateTime), NULL, 1, 101)
INSERT [dbo].[Messenger] ([IDMes], [IDCustomer], [NgayTao], [Content], [Status], [IDOrder]) VALUES (4, 16, CAST(N'2021-08-26T16:35:40.753' AS DateTime), NULL, 1, 102)
INSERT [dbo].[Messenger] ([IDMes], [IDCustomer], [NgayTao], [Content], [Status], [IDOrder]) VALUES (5, 14, CAST(N'2021-08-26T23:47:08.650' AS DateTime), NULL, 1, 103)
INSERT [dbo].[Messenger] ([IDMes], [IDCustomer], [NgayTao], [Content], [Status], [IDOrder]) VALUES (6, 14, CAST(N'2021-08-26T23:55:17.963' AS DateTime), NULL, 1, 104)
INSERT [dbo].[Messenger] ([IDMes], [IDCustomer], [NgayTao], [Content], [Status], [IDOrder]) VALUES (7, 14, CAST(N'2021-08-27T00:07:15.873' AS DateTime), NULL, 1, 105)
INSERT [dbo].[Messenger] ([IDMes], [IDCustomer], [NgayTao], [Content], [Status], [IDOrder]) VALUES (8, 14, CAST(N'2021-08-27T00:08:45.423' AS DateTime), NULL, 1, 106)
INSERT [dbo].[Messenger] ([IDMes], [IDCustomer], [NgayTao], [Content], [Status], [IDOrder]) VALUES (9, 14, CAST(N'2021-08-27T00:16:53.470' AS DateTime), NULL, 1, 107)
INSERT [dbo].[Messenger] ([IDMes], [IDCustomer], [NgayTao], [Content], [Status], [IDOrder]) VALUES (10, NULL, CAST(N'2021-08-27T00:37:05.357' AS DateTime), NULL, 1, 108)
INSERT [dbo].[Messenger] ([IDMes], [IDCustomer], [NgayTao], [Content], [Status], [IDOrder]) VALUES (11, NULL, CAST(N'2021-08-27T16:52:07.750' AS DateTime), NULL, 1, 109)
INSERT [dbo].[Messenger] ([IDMes], [IDCustomer], [NgayTao], [Content], [Status], [IDOrder]) VALUES (12, NULL, CAST(N'2021-08-27T16:53:39.747' AS DateTime), NULL, 1, 110)
INSERT [dbo].[Messenger] ([IDMes], [IDCustomer], [NgayTao], [Content], [Status], [IDOrder]) VALUES (13, NULL, CAST(N'2021-08-27T17:06:05.353' AS DateTime), NULL, 1, 111)
INSERT [dbo].[Messenger] ([IDMes], [IDCustomer], [NgayTao], [Content], [Status], [IDOrder]) VALUES (14, 15, CAST(N'2021-08-29T00:50:09.787' AS DateTime), NULL, 1, 113)
INSERT [dbo].[Messenger] ([IDMes], [IDCustomer], [NgayTao], [Content], [Status], [IDOrder]) VALUES (15, 15, CAST(N'2021-08-29T00:53:57.893' AS DateTime), NULL, 1, 114)
INSERT [dbo].[Messenger] ([IDMes], [IDCustomer], [NgayTao], [Content], [Status], [IDOrder]) VALUES (16, NULL, CAST(N'2021-08-29T23:36:56.473' AS DateTime), NULL, 1, 146)
SET IDENTITY_INSERT [dbo].[Messenger] OFF
GO
SET IDENTITY_INSERT [dbo].[Muon_Tra] ON 

INSERT [dbo].[Muon_Tra] ([IdMuon], [IDContent], [IDUser], [SoluongMuon], [ThoigianM], [ThoiGianHenTra], [ThoigianTra], [SoLanGiaHan]) VALUES (1, 3, 11, 2, CAST(N'2021-08-03T23:24:51.837' AS DateTime), CAST(N'2020-04-05T00:00:00.000' AS DateTime), NULL, 0)
SET IDENTITY_INSERT [dbo].[Muon_Tra] OFF
GO
SET IDENTITY_INSERT [dbo].[NhaCungCap] ON 

INSERT [dbo].[NhaCungCap] ([IDNCC], [TenNCC], [NgayTao], [IDNguoiTao], [Status], [DiaChi], [SoDienThoai], [Email]) VALUES (1, N'Thúy Hường', CAST(N'2021-09-03' AS Date), 11, 1, N'Hà Nội Phố Cổ Vip Pro idol', N'09020020', N'thuyhuong@edu.vn')
INSERT [dbo].[NhaCungCap] ([IDNCC], [TenNCC], [NgayTao], [IDNguoiTao], [Status], [DiaChi], [SoDienThoai], [Email]) VALUES (2, N'Hoàng Trung', CAST(N'2021-08-15' AS Date), 8, 1, NULL, N'09020020', N'hoangtrung@gmail.com')
INSERT [dbo].[NhaCungCap] ([IDNCC], [TenNCC], [NgayTao], [IDNguoiTao], [Status], [DiaChi], [SoDienThoai], [Email]) VALUES (4, N'Vân Dung', NULL, 11, 1, NULL, N'09020020', N'vandung892@gmail.com')
INSERT [dbo].[NhaCungCap] ([IDNCC], [TenNCC], [NgayTao], [IDNguoiTao], [Status], [DiaChi], [SoDienThoai], [Email]) VALUES (5, N'Hoàng Dũng', NULL, 6, 1, NULL, N'09020020', N'dunghoang892@gmail.com')
INSERT [dbo].[NhaCungCap] ([IDNCC], [TenNCC], [NgayTao], [IDNguoiTao], [Status], [DiaChi], [SoDienThoai], [Email]) VALUES (6, N'Hoàng Hà', CAST(N'2021-08-16' AS Date), 11, 1, N'Hà Nam', N'09020020', N'hoangHa929@gmail.com')
INSERT [dbo].[NhaCungCap] ([IDNCC], [TenNCC], [NgayTao], [IDNguoiTao], [Status], [DiaChi], [SoDienThoai], [Email]) VALUES (7, N'Hoàng Dũng Book', CAST(N'2021-08-16' AS Date), 6, 1, N'Võ Lâm Truyền ki', N'0366089040', N'thuongdt1002@gmail.com')
INSERT [dbo].[NhaCungCap] ([IDNCC], [TenNCC], [NgayTao], [IDNguoiTao], [Status], [DiaChi], [SoDienThoai], [Email]) VALUES (8, N'Hà Anh Store', CAST(N'2021-10-08' AS Date), 6, 1, N'Phú Diễn, Bình Định', N'0890299200', N'hahang9x@gmail.com')
INSERT [dbo].[NhaCungCap] ([IDNCC], [TenNCC], [NgayTao], [IDNguoiTao], [Status], [DiaChi], [SoDienThoai], [Email]) VALUES (9, N'Nhà Sách Minh Tuấn', CAST(N'2023-02-19' AS Date), 38, 1, N'Long Xuyên, TP. An Giang', N'0987654321', N'tuandm1905@gmail.com')
INSERT [dbo].[NhaCungCap] ([IDNCC], [TenNCC], [NgayTao], [IDNguoiTao], [Status], [DiaChi], [SoDienThoai], [Email]) VALUES (10, N'Vũ Quyên Book Store', CAST(N'2023-02-19' AS Date), 35, 1, N'Vĩnh Long', N'0987635243', N'quyenbtvCE160821@fpt.edu.vn')
SET IDENTITY_INSERT [dbo].[NhaCungCap] OFF
GO
SET IDENTITY_INSERT [dbo].[NhapHang] ON 

INSERT [dbo].[NhapHang] ([IDNhapHang], [IDSanPham], [GiaNhap], [SoLuongNhap], [NgayTao], [Status], [IDNCC], [IDCategory], [IDNguoiTao], [StatusPayMent], [StatusInput]) VALUES (8, 20, 8000, 150, NULL, 2, 5, NULL, NULL, 1, 1)
INSERT [dbo].[NhapHang] ([IDNhapHang], [IDSanPham], [GiaNhap], [SoLuongNhap], [NgayTao], [Status], [IDNCC], [IDCategory], [IDNguoiTao], [StatusPayMent], [StatusInput]) VALUES (11, 17, 14000, 15, NULL, 2, 5, NULL, NULL, 1, 1)
INSERT [dbo].[NhapHang] ([IDNhapHang], [IDSanPham], [GiaNhap], [SoLuongNhap], [NgayTao], [Status], [IDNCC], [IDCategory], [IDNguoiTao], [StatusPayMent], [StatusInput]) VALUES (12, 9, 14000, 150, NULL, 2, 2, NULL, NULL, 1, 1)
INSERT [dbo].[NhapHang] ([IDNhapHang], [IDSanPham], [GiaNhap], [SoLuongNhap], [NgayTao], [Status], [IDNCC], [IDCategory], [IDNguoiTao], [StatusPayMent], [StatusInput]) VALUES (13, 27, 8000, 15, NULL, 2, 7, NULL, NULL, 1, 1)
INSERT [dbo].[NhapHang] ([IDNhapHang], [IDSanPham], [GiaNhap], [SoLuongNhap], [NgayTao], [Status], [IDNCC], [IDCategory], [IDNguoiTao], [StatusPayMent], [StatusInput]) VALUES (16, 48, 1000, 15, NULL, 2, 4, NULL, NULL, 1, 1)
INSERT [dbo].[NhapHang] ([IDNhapHang], [IDSanPham], [GiaNhap], [SoLuongNhap], [NgayTao], [Status], [IDNCC], [IDCategory], [IDNguoiTao], [StatusPayMent], [StatusInput]) VALUES (20, 48, 10000, 15, NULL, 2, 7, NULL, NULL, 1, 1)
INSERT [dbo].[NhapHang] ([IDNhapHang], [IDSanPham], [GiaNhap], [SoLuongNhap], [NgayTao], [Status], [IDNCC], [IDCategory], [IDNguoiTao], [StatusPayMent], [StatusInput]) VALUES (22, 5, 12000, 15, NULL, 2, 1, NULL, NULL, 1, 1)
INSERT [dbo].[NhapHang] ([IDNhapHang], [IDSanPham], [GiaNhap], [SoLuongNhap], [NgayTao], [Status], [IDNCC], [IDCategory], [IDNguoiTao], [StatusPayMent], [StatusInput]) VALUES (23, 5, 12000, 15, NULL, 2, 1, NULL, NULL, 1, 1)
INSERT [dbo].[NhapHang] ([IDNhapHang], [IDSanPham], [GiaNhap], [SoLuongNhap], [NgayTao], [Status], [IDNCC], [IDCategory], [IDNguoiTao], [StatusPayMent], [StatusInput]) VALUES (24, 46, 8000, 15, NULL, 2, 7, NULL, NULL, 1, 1)
INSERT [dbo].[NhapHang] ([IDNhapHang], [IDSanPham], [GiaNhap], [SoLuongNhap], [NgayTao], [Status], [IDNCC], [IDCategory], [IDNguoiTao], [StatusPayMent], [StatusInput]) VALUES (26, 5, 12000, 15, NULL, 2, 1, NULL, NULL, 1, 1)
INSERT [dbo].[NhapHang] ([IDNhapHang], [IDSanPham], [GiaNhap], [SoLuongNhap], [NgayTao], [Status], [IDNCC], [IDCategory], [IDNguoiTao], [StatusPayMent], [StatusInput]) VALUES (28, 48, 10000, 10, NULL, 2, 5, NULL, NULL, 1, 1)
INSERT [dbo].[NhapHang] ([IDNhapHang], [IDSanPham], [GiaNhap], [SoLuongNhap], [NgayTao], [Status], [IDNCC], [IDCategory], [IDNguoiTao], [StatusPayMent], [StatusInput]) VALUES (30, 48, 10000, 15, NULL, 2, 7, NULL, NULL, 1, 1)
INSERT [dbo].[NhapHang] ([IDNhapHang], [IDSanPham], [GiaNhap], [SoLuongNhap], [NgayTao], [Status], [IDNCC], [IDCategory], [IDNguoiTao], [StatusPayMent], [StatusInput]) VALUES (32, 48, 10000, 10, NULL, 2, 8, NULL, NULL, 1, 1)
INSERT [dbo].[NhapHang] ([IDNhapHang], [IDSanPham], [GiaNhap], [SoLuongNhap], [NgayTao], [Status], [IDNCC], [IDCategory], [IDNguoiTao], [StatusPayMent], [StatusInput]) VALUES (37, 48, 10000, 15, NULL, 2, 8, NULL, NULL, 1, 1)
INSERT [dbo].[NhapHang] ([IDNhapHang], [IDSanPham], [GiaNhap], [SoLuongNhap], [NgayTao], [Status], [IDNCC], [IDCategory], [IDNguoiTao], [StatusPayMent], [StatusInput]) VALUES (38, 5, 12000, 15, CAST(N'2021-12-04T14:16:11.737' AS DateTime), 2, 1, NULL, NULL, 1, 1)
INSERT [dbo].[NhapHang] ([IDNhapHang], [IDSanPham], [GiaNhap], [SoLuongNhap], [NgayTao], [Status], [IDNCC], [IDCategory], [IDNguoiTao], [StatusPayMent], [StatusInput]) VALUES (39, 48, 10000, 15, CAST(N'2021-12-04T14:23:15.140' AS DateTime), 2, 8, NULL, NULL, 1, 1)
INSERT [dbo].[NhapHang] ([IDNhapHang], [IDSanPham], [GiaNhap], [SoLuongNhap], [NgayTao], [Status], [IDNCC], [IDCategory], [IDNguoiTao], [StatusPayMent], [StatusInput]) VALUES (40, 5, 12000, 15, CAST(N'2021-12-04T14:23:26.363' AS DateTime), 2, 1, NULL, NULL, 1, 1)
INSERT [dbo].[NhapHang] ([IDNhapHang], [IDSanPham], [GiaNhap], [SoLuongNhap], [NgayTao], [Status], [IDNCC], [IDCategory], [IDNguoiTao], [StatusPayMent], [StatusInput]) VALUES (41, 61, 130000, 150, CAST(N'2021-12-23T14:01:41.097' AS DateTime), 2, 5, NULL, NULL, 1, 1)
INSERT [dbo].[NhapHang] ([IDNhapHang], [IDSanPham], [GiaNhap], [SoLuongNhap], [NgayTao], [Status], [IDNCC], [IDCategory], [IDNguoiTao], [StatusPayMent], [StatusInput]) VALUES (42, 61, 130000, 100, CAST(N'2021-12-23T14:02:10.837' AS DateTime), 2, 8, NULL, NULL, 1, 1)
INSERT [dbo].[NhapHang] ([IDNhapHang], [IDSanPham], [GiaNhap], [SoLuongNhap], [NgayTao], [Status], [IDNCC], [IDCategory], [IDNguoiTao], [StatusPayMent], [StatusInput]) VALUES (43, 60, 15000, 20, CAST(N'2021-12-23T14:02:33.993' AS DateTime), 2, 5, NULL, NULL, 1, 1)
INSERT [dbo].[NhapHang] ([IDNhapHang], [IDSanPham], [GiaNhap], [SoLuongNhap], [NgayTao], [Status], [IDNCC], [IDCategory], [IDNguoiTao], [StatusPayMent], [StatusInput]) VALUES (44, 57, 15000, 15, CAST(N'2021-12-23T14:05:54.367' AS DateTime), 2, 7, NULL, NULL, 1, 1)
INSERT [dbo].[NhapHang] ([IDNhapHang], [IDSanPham], [GiaNhap], [SoLuongNhap], [NgayTao], [Status], [IDNCC], [IDCategory], [IDNguoiTao], [StatusPayMent], [StatusInput]) VALUES (45, 53, 30000, 150, CAST(N'2021-12-23T14:06:13.033' AS DateTime), 2, 6, NULL, NULL, 1, 1)
INSERT [dbo].[NhapHang] ([IDNhapHang], [IDSanPham], [GiaNhap], [SoLuongNhap], [NgayTao], [Status], [IDNCC], [IDCategory], [IDNguoiTao], [StatusPayMent], [StatusInput]) VALUES (46, 56, 15000, 209, CAST(N'2021-12-23T14:06:49.163' AS DateTime), 2, 7, NULL, NULL, 1, 1)
INSERT [dbo].[NhapHang] ([IDNhapHang], [IDSanPham], [GiaNhap], [SoLuongNhap], [NgayTao], [Status], [IDNCC], [IDCategory], [IDNguoiTao], [StatusPayMent], [StatusInput]) VALUES (47, 57, 15000, 129, CAST(N'2021-12-23T14:07:24.493' AS DateTime), 2, 2, NULL, NULL, 1, 1)
INSERT [dbo].[NhapHang] ([IDNhapHang], [IDSanPham], [GiaNhap], [SoLuongNhap], [NgayTao], [Status], [IDNCC], [IDCategory], [IDNguoiTao], [StatusPayMent], [StatusInput]) VALUES (48, 54, 70000, 15, CAST(N'2021-12-23T14:13:19.010' AS DateTime), 2, 6, NULL, NULL, 1, 1)
INSERT [dbo].[NhapHang] ([IDNhapHang], [IDSanPham], [GiaNhap], [SoLuongNhap], [NgayTao], [Status], [IDNCC], [IDCategory], [IDNguoiTao], [StatusPayMent], [StatusInput]) VALUES (49, 62, 130000, 150, CAST(N'2021-12-23T14:31:28.957' AS DateTime), 2, 7, NULL, NULL, 1, 1)
INSERT [dbo].[NhapHang] ([IDNhapHang], [IDSanPham], [GiaNhap], [SoLuongNhap], [NgayTao], [Status], [IDNCC], [IDCategory], [IDNguoiTao], [StatusPayMent], [StatusInput]) VALUES (50, 62, 130000, 200, CAST(N'2021-12-23T14:43:23.737' AS DateTime), 2, 1, NULL, NULL, 1, 1)
INSERT [dbo].[NhapHang] ([IDNhapHang], [IDSanPham], [GiaNhap], [SoLuongNhap], [NgayTao], [Status], [IDNCC], [IDCategory], [IDNguoiTao], [StatusPayMent], [StatusInput]) VALUES (51, 49, 100000, 300, CAST(N'2021-12-23T15:00:22.057' AS DateTime), 2, 4, NULL, NULL, 1, 1)
INSERT [dbo].[NhapHang] ([IDNhapHang], [IDSanPham], [GiaNhap], [SoLuongNhap], [NgayTao], [Status], [IDNCC], [IDCategory], [IDNguoiTao], [StatusPayMent], [StatusInput]) VALUES (52, 55, 90000, 15, CAST(N'2021-12-28T00:08:32.633' AS DateTime), 2, 7, NULL, NULL, 1, 1)
INSERT [dbo].[NhapHang] ([IDNhapHang], [IDSanPham], [GiaNhap], [SoLuongNhap], [NgayTao], [Status], [IDNCC], [IDCategory], [IDNguoiTao], [StatusPayMent], [StatusInput]) VALUES (53, 63, 80000, 200, CAST(N'2023-02-19T01:35:28.060' AS DateTime), 2, 9, NULL, NULL, 1, 1)
INSERT [dbo].[NhapHang] ([IDNhapHang], [IDSanPham], [GiaNhap], [SoLuongNhap], [NgayTao], [Status], [IDNCC], [IDCategory], [IDNguoiTao], [StatusPayMent], [StatusInput]) VALUES (54, 64, 30000, 1000, CAST(N'2023-02-19T01:55:45.760' AS DateTime), 2, 10, NULL, NULL, 1, 1)
SET IDENTITY_INSERT [dbo].[NhapHang] OFF
GO
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (3, 11, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (3, 19, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (3, 40, 13, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (3, 51, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (3, 53, 15, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (3, 54, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (3, 61, 15, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (3, 62, 15, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (3, 63, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (3, 85, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (3, 86, 12, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (3, 95, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (3, 103, 1, 28000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (3, 107, 100, 28000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (3, 181, 3, 28000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (3, 182, 7, 28000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (6, 12, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (6, 14, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (6, 15, 5, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (6, 18, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (6, 20, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (6, 22, 15, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (6, 23, 15, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (6, 24, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (6, 25, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (6, 26, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (6, 27, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (6, 28, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (6, 29, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (6, 30, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (6, 31, 13, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (6, 32, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (6, 33, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (6, 34, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (6, 36, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (6, 39, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (6, 41, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (6, 42, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (6, 45, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (6, 46, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (6, 48, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (6, 49, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (6, 50, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (6, 59, 18, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (6, 60, 18, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (6, 67, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (6, 72, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (6, 73, 2, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (6, 75, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (6, 76, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (6, 77, 14, 196000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (6, 78, 14, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (6, 79, 14, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (6, 80, 14, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (6, 81, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (6, 82, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (6, 93, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (6, 96, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (6, 102, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (6, 104, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (7, 13, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (7, 16, 13, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (7, 17, 13, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (7, 35, 13, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (7, 38, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (7, 43, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (7, 44, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (7, 47, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (7, 52, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (7, 55, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (7, 56, 15, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (7, 57, 13, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (7, 65, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (7, 69, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (7, 70, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (7, 74, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (7, 75, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (7, 83, 13, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (7, 87, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (7, 89, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (7, 90, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (7, 91, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (7, 92, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (7, 97, 12, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (7, 101, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (8, 58, 14, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (8, 60, 10, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (8, 64, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (8, 66, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (8, 68, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (8, 71, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (8, 81, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (8, 82, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (8, 85, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (8, 86, 13, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (8, 90, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (8, 91, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (8, 92, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (8, 93, 12, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (8, 100, 1, 14000)
GO
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (9, 70, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (9, 71, 16, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (10, 2, 1, 12222)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (10, 153, 13, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (14, 94, 12, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (15, 83, 12, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (15, 87, 13, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (15, 165, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (15, 166, 14, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (15, 211, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (16, 109, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (16, 110, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (17, 166, 12, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (18, 79, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (18, 80, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (19, 80, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (19, 162, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (19, 164, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (19, 165, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (20, 37, 13, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (20, 59, 10, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (20, 77, 1, 210000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (20, 83, 13, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (20, 86, 13, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (20, 97, 12, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (20, 145, 10, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (20, 178, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (20, 179, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (20, 180, 8, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (21, 94, 16, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (21, 219, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (21, 220, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (21, 221, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (21, 222, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (21, 224, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (21, 227, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (21, 228, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (21, 229, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (21, 230, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (21, 231, 2, 8400)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (21, 232, 1, 4200)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (21, 233, 10, 4200)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (21, 239, 1, 4200)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (21, 240, 1, 4200)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (21, 241, 1, 4200)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (21, 242, 1, 4200)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (21, 273, 4, 4200)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (21, 278, 1, 4200)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (22, 88, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (22, 108, 100, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (23, 84, 13, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (23, 151, 100, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (24, 94, 133, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (24, 132, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (24, 166, 2, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (24, 221, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (24, 222, 4, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (24, 244, 1, 11900)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (24, 245, 1, 11900)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (24, 256, 1, 11900)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (24, 259, 1, 11900)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (24, 263, 1, 11900)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (25, 78, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (25, 79, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (25, 80, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (25, 141, 100, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (26, 164, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (26, 167, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (26, 183, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (26, 189, 1, 14000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (26, 232, 1, 9800)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (26, 239, 1, 9800)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (26, 257, 1, 9800)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (26, 258, 1, 9800)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (26, 266, 1, 9800)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (27, 84, 12, 22000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (27, 111, 10, 22000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (27, 118, 1, 22000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (27, 137, 1, 22000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (27, 138, 10, 22000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (27, 144, 100, 22000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (27, 150, 1, 22000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (27, 165, 1, 22000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (27, 166, 18, 22000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (27, 183, 1, 22000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (27, 224, 1, 22000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (27, 225, 1, 22000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (27, 226, 1, 22000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (27, 271, 1, 17600)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (27, 274, 1, 17600)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (28, 84, 5, 12000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (28, 98, 1, 12000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (30, 104, 1, 23000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (30, 105, 1, 23000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (30, 106, 9, 23000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (31, 167, 1, 98000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (31, 172, 1, 98000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (32, 134, 1, 13200)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (32, 147, 1, 13200)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (32, 159, 1, 13200)
GO
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (32, 160, 1, 13200)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (32, 161, 1, 13200)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (32, 165, 1, 13200)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (32, 167, 1, 13200)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (33, 118, 1, 13200)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (33, 119, 1, 13200)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (33, 120, 1, 13200)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (33, 121, 1, 13200)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (33, 128, 1, 13200)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (33, 129, 1, 13200)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (33, 130, 1, 13200)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (33, 150, 10, 13200)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (33, 154, 1, 13200)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (33, 156, 1, 13200)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (33, 167, 2, 13200)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (33, 172, 1, 13200)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (33, 226, 1, 13200)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (33, 274, 1, 13200)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (34, 113, 1, 22300)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (34, 115, 13, 22300)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (34, 116, 12, 22300)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (34, 117, 1, 22300)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (34, 123, 1, 22300)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (34, 124, 1, 22300)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (34, 126, 1, 22300)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (34, 127, 1, 22300)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (34, 131, 1, 22300)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (34, 143, 1, 22300)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (34, 151, 10, 22300)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (34, 152, 1, 22300)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (34, 155, 1, 22300)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (34, 157, 1, 22300)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (34, 158, 1, 22300)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (34, 163, 1, 22300)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (34, 167, 1, 22300)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (34, 170, 1, 22300)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (34, 183, 1, 22300)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (34, 188, 14, 22300)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (35, 114, 1, 22300)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (35, 122, 1, 22300)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (35, 125, 1, 22300)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (35, 133, 1, 22300)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (35, 135, 1, 22300)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (35, 136, 1, 22300)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (35, 138, 10, 22300)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (35, 139, 1, 22300)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (35, 140, 1, 22300)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (35, 142, 1, 22300)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (35, 146, 1, 22300)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (35, 148, 1, 22300)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (35, 149, 1, 22300)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (35, 169, 1, 22300)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (35, 183, 1, 22300)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (35, 184, 1, 22300)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (35, 185, 1, 22300)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (35, 187, 1, 22300)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (35, 191, 4, 22300)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (35, 196, 12, 22300)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (35, 197, 1, 22300)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (35, 198, 1, 22300)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (35, 200, 1, 22300)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (36, 167, 1, 22300)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (36, 168, 1, 22300)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (36, 183, 2, 22300)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (37, 167, 1, 98000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (37, 171, 1, 98000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (37, 172, 1, 98000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (38, 173, 1, 98000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (38, 188, 1, 98000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (38, 190, 10, 98000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (38, 191, 5, 98000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (40, 174, 1, 98000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (40, 176, 1, 98000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (40, 177, 1, 98000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (40, 186, 1, 98000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (40, 201, 1, 98000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (41, 175, 1, 28000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (43, 197, 1, 18000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (43, 199, 1, 18000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (43, 215, 1, 18000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (44, 189, 10, 12900)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (44, 190, 3, 12900)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (44, 192, 2, 12900)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (44, 193, 2, 12900)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (44, 194, 2, 12900)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (44, 195, 2, 12900)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (44, 213, 1, 12900)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (44, 214, 1, 12900)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (44, 216, 1, 12900)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (45, 188, 1, 29000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (45, 192, 2, 29000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (45, 193, 2, 29000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (45, 194, 2, 29000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (45, 195, 2, 29000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (45, 201, 1, 29000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (45, 202, 1, 29000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (45, 203, 1, 29000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (45, 204, 1, 29000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (45, 206, 1, 29000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (45, 207, 1, 29000)
GO
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (45, 209, 1, 29000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (45, 210, 1, 29000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (45, 212, 1, 29000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (45, 223, 1, 12900)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (45, 244, 1, 12900)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (46, 205, 1, 44000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (46, 206, 1, 44000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (46, 208, 1, 44000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (48, 217, 1, 12900)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (48, 218, 1, 12900)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (49, 230, 1, 120000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (49, 246, 1, 108000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (49, 248, 1, 108000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (49, 249, 1, 108000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (49, 251, 1, 108000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (49, 252, 1, 108000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (49, 253, 1, 108000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (49, 254, 3, 108000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (49, 255, 3, 108000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (49, 260, 1, 108000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (49, 262, 1, 108000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (49, 272, 268, 108000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (49, 277, 1, 108000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (51, 278, 1, 12900)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (53, 225, 1, 34000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (53, 235, 1, 25500)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (53, 239, 1, 25500)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (53, 243, 1, 25500)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (53, 250, 1, 25500)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (53, 264, 1, 25500)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (53, 265, 1, 25500)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (53, 275, 1, 25500)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (53, 276, 1, 25500)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (54, 234, 1, 79000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (55, 247, 1, 100000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (56, 224, 1, 20000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (57, 223, 1, 20000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (60, 227, 1, 20000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (60, 229, 1, 20000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (60, 269, 1, 20000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (61, 228, 1, 140000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (61, 230, 1, 140000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (61, 270, 5, 140000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (61, 278, 1, 140000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (62, 236, 149, 140000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (62, 237, 1, 140000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (62, 238, 1, 140000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (62, 261, 1, 140000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (62, 267, 1, 140000)
INSERT [dbo].[Order_Detail] ([ProductID], [OderID], [Quanlity], [Price]) VALUES (62, 268, 1, 140000)
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (20, CAST(N'2021-08-19T21:46:25.457' AS DateTime), NULL, N'HOANG VAN THUONG', N'0366089040', N'Ha Noi', N'thuongdt1002@gmail.com', 1, 0, 0, NULL, N'COD', 2, NULL)
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (21, CAST(N'2021-08-19T21:47:56.990' AS DateTime), NULL, N'HOANG VAN THUONG', N'0366089040', N'Ha Noi', N'thuongdt1002@gmail.com', 1, 0, 0, NULL, N'COD', 2, NULL)
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (22, CAST(N'2021-08-19T21:48:13.450' AS DateTime), NULL, N'NGUYỄN THỊ THƯỜNG', N'0776212803', N'', N'thuongdt1002@gmail.com', 1, 0, 0, NULL, N'COD', 2, NULL)
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (38, CAST(N'2021-08-19T23:07:57.113' AS DateTime), NULL, N'HOANG VAN THUONG', N'0366089040', N'', N'thuongdt1002@gmail.com', 1, 0, 0, NULL, N'COD', 2, NULL)
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (70, CAST(N'2021-08-21T15:47:00.453' AS DateTime), NULL, N'HOANG VAN THUONG', N'0889932798', N'Quảng Nam', N'thuongdt1002@gmail.com', 1, 0, 0, NULL, N'COD', 2, NULL)
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (71, CAST(N'2021-08-21T15:49:41.100' AS DateTime), NULL, N'HOANG VAN THUONG', N'0889932798', N'Quảng Nam', N'thuongdt1002@gmail.com', 1, 0, 0, NULL, N'COD', 2, NULL)
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (73, CAST(N'2021-08-21T15:59:18.277' AS DateTime), NULL, N'HOANG VAN THUONG', N'0889932798', N'Quảng Nam', N'thuongdt1002@gmail.com', 1, 1, 0, NULL, N'COD', 2, NULL)
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (77, CAST(N'2021-08-21T23:03:12.973' AS DateTime), 13, N'Đinh Văn Nam', N'098989119', N'Hưng Yên, Phố Hiến, Đình Trung', N'hoangvtnam1996@gmail.com', 1, 2, 0, NULL, N'COD', 2, NULL)
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (78, CAST(N'2021-08-21T23:18:12.607' AS DateTime), 13, N'Đinh Văn Nam', N'098989119', N'Hưng Yên, Phố Hiến, Đình Trung', N'hoangvtnam1996@gmail.com', 1, 2, 0, N'Người nhận trả lại', N'COD', 2, NULL)
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (79, CAST(N'2021-08-21T23:22:52.017' AS DateTime), 13, N'Đinh Văn Nam', N'098989119', N'Hưng Yên, Phố Hiến, Đình Trung', N'hoangvtnam1996@gmail.com', 1, 2, 0, NULL, N'COD', 2, NULL)
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (81, CAST(N'2021-08-21T23:44:13.467' AS DateTime), 12, N'HOANG VAN THUONG', N'0889932798', N'Quảng Nam', N'thuongdt1002@gmail.com', 1, 2, 0, N'Địa chỉ nhận hàng sai', N'COD', 2, NULL)
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (83, CAST(N'2021-08-22T16:46:02.967' AS DateTime), 14, N'TRAN VAN BA', N'0890289911', N'Phú Yên, Cần Thơ, Cà Mau', N'hungtran8909@gmail.com', 1, 2, 0, NULL, N'COD', 2, NULL)
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (84, CAST(N'2021-08-22T17:12:37.747' AS DateTime), 14, N'TRAN VAN BA', N'0890289911', N'Phú Yên, Cần Thơ, Cà Mau', N'hungtran8909@gmail.com', 1, 2, 0, N'Khách không thanh toán', N'COD', 2, NULL)
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (85, CAST(N'2021-08-23T12:44:05.553' AS DateTime), 12, N'HOANG VAN THUONG', N'0889932798', N'Quảng Nam', N'thuongdt1002@gmail.com', 1, 2, 0, N'Khách không thanh toán', N'COD', 2, NULL)
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (86, CAST(N'2021-08-23T14:02:00.397' AS DateTime), 14, N'TRAN VAN BA', N'0890289911', N'Phú Yên, Cần Thơ, Cà Mau', N'hungtran8909@gmail.com', 1, 2, 0, NULL, N'COD', 2, NULL)
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (87, CAST(N'2021-08-24T16:09:37.610' AS DateTime), 14, N'TRAN VAN BA', N'0890289911', N'Phú Yên, Cần Thơ, Cà Mau', N'hungtran8909@gmail.com', 1, 1, 0, NULL, N'COD', 2, NULL)
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (88, CAST(N'2021-08-24T16:10:17.820' AS DateTime), 14, N'TRAN VAN BA', N'0890289911', N'Phú Yên, Cần Thơ, Cà Mau', N'hungtran8909@gmail.com', 1, 2, 0, NULL, N'COD', 2, NULL)
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (89, CAST(N'2021-08-24T17:22:51.630' AS DateTime), 14, N'TRAN VAN BA', N'0890289911', N'Phú Yên, Cần Thơ, Cà Mau', N'hungtran8909@gmail.com', 1, 2, 0, NULL, N'COD', 2, NULL)
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (90, CAST(N'2021-08-24T17:23:26.117' AS DateTime), 14, N'TRAN VAN BA', N'0890289911', N'Phú Yên, Cần Thơ, Cà Mau', N'hungtran8909@gmail.com', 1, 2, 0, NULL, N'COD', 2, NULL)
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (91, CAST(N'2021-08-24T17:24:16.157' AS DateTime), 14, N'TRAN VAN BA', N'0890289911', N'Phú Yên, Cần Thơ, Cà Mau', N'hungtran8909@gmail.com', 1, 2, 0, NULL, N'COD', 2, NULL)
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (92, CAST(N'2021-08-24T17:26:45.527' AS DateTime), 14, N'TRAN VAN BA', N'0890289911', N'Phú Yên, Cần Thơ, Cà Mau', N'hungtran8909@gmail.com', 1, 2, 0, N'Địa chỉ nhận hàng sai', N'COD', 2, NULL)
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (93, CAST(N'2021-08-24T23:07:18.317' AS DateTime), 15, N'Hoang Thuy Luong', N'098988282', N'Huong Long, Hue, Thua Thien Hue', N'hvtnam1999@gmail.com', 1, 2, 0, NULL, N'COD', 2, NULL)
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (94, CAST(N'2021-08-25T00:28:17.410' AS DateTime), 15, N'Hoang Thuy Luong', N'098988282', N'Huong Long, Hue, Thua Thien Hue', N'hvtnam1999@gmail.com', 1, 2, 0, NULL, N'COD', 2, NULL)
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (95, CAST(N'2021-08-25T00:31:29.033' AS DateTime), 15, N'Hoang Thuy Luong', N'098988282', N'Huong Long, Hue, Thua Thien Hue', N'hvtnam1999@gmail.com', 1, 2, 0, N'Địa chỉ nhận hàng sai', N'COD', 2, NULL)
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (96, CAST(N'2021-08-25T00:33:21.920' AS DateTime), 15, N'Hoang Thuy Luong', N'098988282', N'Huong Long, Hue, Thua Thien Hue', N'hvtnam1999@gmail.com', 1, 2, 0, NULL, N'COD', 2, NULL)
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (97, CAST(N'2021-08-25T11:02:32.627' AS DateTime), 15, N'Hoang Thuy Luong', N'098988282', N'Huong Long, Hue, Thua Thien Hue', N'hvtnam1999@gmail.com', 0, 0, 0, NULL, N'COD', 2, NULL)
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (98, CAST(N'2021-08-25T23:14:10.947' AS DateTime), 15, N'Hoang Thuy Luong', N'098988282', N'Huong Long, Hue, Thua Thien Hue', N'hvtnam1999@gmail.com', 1, 2, 0, NULL, N'COD', 2, NULL)
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (99, CAST(N'2021-08-25T23:16:20.813' AS DateTime), 15, N'Hoang Thuy Luong', N'098988282', N'Huong Long, Hue, Thua Thien Hue', N'hvtnam1999@gmail.com', 1, 2, 0, NULL, N'COD', 2, NULL)
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (100, CAST(N'2021-08-25T23:20:33.810' AS DateTime), 15, N'Hoang Thuy Luong', N'098988282', N'Huong Long, Hue, Thua Thien Hue', N'hvtnam1999@gmail.com', 1, 2, 0, NULL, N'COD', 2, NULL)
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (101, CAST(N'2021-08-26T00:59:00.983' AS DateTime), 15, N'Hoang Thuy Luong', N'098988282', N'Huong Long, Hue, Thua Thien Hue', N'hvtnam1999@gmail.com', 1, 2, 0, NULL, N'COD', 2, NULL)
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (106, CAST(N'2021-08-27T00:08:43.697' AS DateTime), 14, N'TRAN VAN BA', N'0890289911', N'Phú Yên, Cần Thơ, Cà Mau', N'hungtran8909@gmail.com', 0, 0, 0, NULL, N'COD', 2, NULL)
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (107, CAST(N'2021-08-27T00:16:53.463' AS DateTime), 14, N'TRAN VAN BA', N'0890289911', N'Phú Yên, Cần Thơ, Cà Mau', N'hungtran8909@gmail.com', 0, 0, 0, NULL, N'COD', 2, NULL)
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (108, CAST(N'2021-08-27T00:37:05.337' AS DateTime), NULL, N'HOANG VAN THUONG', N'0366089040', N'Ha Noi', N'thuongdt1002@gmail.com', 0, 0, 0, NULL, N'COD', 2, NULL)
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (109, CAST(N'2021-08-27T16:52:07.727' AS DateTime), NULL, N'HOANG VAN THUONG', N'0366089040', N'Ha Noi', N'thuongdt1002@gmail.com', 1, 0, 0, NULL, N'COD', 2, NULL)
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (111, CAST(N'2021-08-27T17:06:05.327' AS DateTime), NULL, N'HOANG VAN THUONG', N'0366089040', N'Ha Noi', N'thuongdt1002@gmail.com', 1, 0, 0, NULL, N'COD', 2, NULL)
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (116, CAST(N'2021-08-29T01:01:51.510' AS DateTime), 15, N'Hoang Thuy Luong', N'098988282', N'Huong Long, Hue, Thua Thien Hue', N'hvtnam1999@gmail.com', 1, 1, 0, NULL, N'Cổng thanh toán Momo', 1, NULL)
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (117, CAST(N'2021-08-29T01:09:44.533' AS DateTime), 15, N'Hoang Thuy Luong', N'098988282', N'Huong Long, Hue, Thua Thien Hue', N'hvtnam1999@gmail.com', 1, 2, 0, NULL, N'Cổng thanh toán Momo', 1, NULL)
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (118, CAST(N'2021-08-29T01:10:43.213' AS DateTime), 15, N'Hoang Thuy Luong', N'098988282', N'Huong Long, Hue, Thua Thien Hue', N'hvtnam1999@gmail.com', 1, 2, 0, NULL, N'COD', 2, NULL)
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (119, CAST(N'2021-08-29T10:07:38.897' AS DateTime), 15, N'Hoang Thuy Luong', N'098988282', N'Huong Long, Hue, Thua Thien Hue', N'hvtnam1999@gmail.com', 1, 2, 0, NULL, N'Cổng thanh toán Momo', 1, NULL)
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (124, CAST(N'2021-08-29T14:02:43.757' AS DateTime), 14, N'TRAN VAN BA', N'0890289911', N'Phú Yên, Cần Thơ, Cà Mau', N'hungtran8909@gmail.com', 1, 0, 0, NULL, N'COD', 2, NULL)
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (126, CAST(N'2021-08-29T14:13:00.253' AS DateTime), 14, N'TRAN VAN BA', N'0890289911', N'Phú Yên, Cần Thơ, Cà Mau', N'hungtran8909@gmail.com', 1, 0, 0, NULL, N'Cổng thanh toán momo', 1, NULL)
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (127, CAST(N'2021-08-29T14:15:28.343' AS DateTime), 14, N'TRAN VAN BA', N'0890289911', N'Phú Yên, Cần Thơ, Cà Mau', N'hungtran8909@gmail.com', 1, 0, 0, NULL, N'Cổng thanh toán momo', 1, NULL)
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (131, CAST(N'2021-08-29T15:15:00.427' AS DateTime), 14, N'TRAN VAN BA', N'0890289911', N'Phú Yên, Cần Thơ, Cà Mau', N'hungtran8909@gmail.com', 1, 0, 0, NULL, N'COD', 2, N'5340829/08/20213:14:59ch')
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (136, CAST(N'2021-08-29T15:51:53.290' AS DateTime), 14, N'TRAN VAN BA', N'0890289911', N'Phú Yên, Cần Thơ, Cà Mau', N'hungtran8909@gmail.com', 1, 1, 0, NULL, N'COD', 2, N'5525229/08/20213:51:53ch')
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (141, CAST(N'2021-08-29T16:24:34.747' AS DateTime), 14, N'TRAN VAN BA', N'0890289911', N'Phú Yên, Cần Thơ, Cà Mau', N'hungtran8909@gmail.com', 1, 1, 0, NULL, N'Cổng thanh toán momo', 1, N'6d396b68-76e9-4ab1-8ea6-810d176c83ae')
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (143, CAST(N'2021-08-29T23:16:26.067' AS DateTime), 15, N'Hoang Thuy Luong', N'098988282', N'Huong Long, Hue, Thua Thien Hue', N'hvtnam1999@gmail.com', 1, 0, 0, NULL, N'Cổng thanh toán momo', 1, N'5baec831-fc18-42a5-b54d-53f51ed5e83e')
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (144, CAST(N'2021-08-29T23:23:12.070' AS DateTime), 15, N'Hoang Thuy Luong', N'098988282', N'Huong Long, Hue, Thua Thien Hue', N'hvtnam1999@gmail.com', 1, 0, 0, NULL, N'Cổng thanh toán momo', 1, N'40797e0e-732c-4e7f-b1f1-cce946c12088')
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (145, CAST(N'2021-08-29T23:26:29.840' AS DateTime), 14, N'TRAN VAN BA', N'0890289911', N'Phú Yên, Cần Thơ, Cà Mau', N'hungtran8909@gmail.com', 1, 0, 0, NULL, N'Cổng thanh toán momo', 1, N'4a687918-e0d2-467a-962e-3e47303bd5a2')
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (148, CAST(N'2021-08-30T00:10:02.037' AS DateTime), 17, N'Đinh Tràng An', N'0356778112', N'Ninh Binh, Phố Hiến, Nam Định', N'nubuihung@gmail.com', 1, 0, 0, NULL, N'COD', 2, N'6933130/08/202112:10:02sa')
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (149, CAST(N'2021-08-30T00:12:27.510' AS DateTime), 17, N'Đinh Tràng An', N'0356778112', N'Ninh Binh, Phố Hiến, Nam Định', N'nubuihung@gmail.com', 1, 0, 0, NULL, N'COD', 2, N'8732930/08/202112:12:27sa')
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (150, CAST(N'2021-08-30T15:42:25.480' AS DateTime), 14, N'TRAN VAN BA', N'0890289911', N'Phú Yên, Cần Thơ, Cà Mau', N'hungtran8909@gmail.com', 1, 0, 0, NULL, N'Cổng thanh toán momo', 1, N'77ee3971-f09b-43ff-894d-232e4982d327')
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (151, CAST(N'2021-08-30T15:45:22.910' AS DateTime), 14, N'TRAN VAN BA', N'0890289911', N'Phú Yên, Cần Thơ, Cà Mau', N'hungtran8909@gmail.com', 1, 0, 0, NULL, N'Cổng thanh toán momo', 1, N'ce79854d-5c3d-4fbd-b306-fe21ad3f7f30')
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (152, CAST(N'2021-08-30T22:33:24.003' AS DateTime), 14, N'TRAN VAN BA', N'0890289911', N'Phú Yên, Cần Thơ, Cà Mau', N'hungtran8909@gmail.com', 1, 0, 0, NULL, N'Cổng thanh toán momo', 1, N'e01212b8-f8a9-4533-b495-529305ca83da')
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (153, CAST(N'2021-08-31T00:22:26.507' AS DateTime), 14, N'TRAN VAN BA', N'0890289911', N'Phú Yên, Cần Thơ, Cà Mau', N'hungtran8909@gmail.com', 1, 0, 0, NULL, N'COD', 2, N'3819731/08/202112:22:26sa')
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (163, CAST(N'2021-08-31T00:55:59.817' AS DateTime), NULL, N'Cao Dung Da', N'0889932798', N'Hai Duong', N'hungtran8909@gmail.com', 1, 1, 0, NULL, N'COD', 2, N'5715131/08/202112:55:59sa')
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (165, CAST(N'2021-08-31T10:11:16.217' AS DateTime), 14, N'TRAN VAN BA', N'0890289911', N'Phú Yên, Cần Thơ, Cà Mau', N'hungtran8909@gmail.com', 1, 2, 1, NULL, N'Cổng thanh toán momo', 1, N'21ca59f8-37d0-4ee6-973a-bdee7987a5e1')
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (166, CAST(N'2021-08-31T10:15:33.850' AS DateTime), 14, N'TRAN VAN BA', N'0890289911', N'Phú Yên, Cần Thơ, Cà Mau', N'hungtran8909@gmail.com', 1, 2, 1, N'Khách không nghe điện thoại', N'Cổng thanh toán momo', 1, N'4e648e14-130d-4a72-9d04-3ad5b63107da')
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (167, CAST(N'2021-08-31T14:42:20.897' AS DateTime), 14, N'TRAN VAN BA', N'0890289911', N'Phú Yên, Cần Thơ, Cà Mau', N'hungtran8909@gmail.com', 1, 0, 0, NULL, N'Cổng thanh toán momo', 1, N'2856b14b-a93a-49a2-946d-ec423d126478')
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (168, CAST(N'2021-09-01T14:39:40.857' AS DateTime), 0, N'VAN THUONG HOANG', N'0889932798', N'Hai Duong', N'hungtran8909@gmail.com', 1, 1, 0, NULL, N'COD', 2, N'8164901/09/20212:39:40ch')
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (170, CAST(N'2021-09-01T15:01:38.843' AS DateTime), 19, N'Phạm Linh  Khánh', N'Chua có thông tin', N'Chưa có thông tin', N'jackison899@gmail.com', 1, 2, 0, NULL, N'Cổng thanh toán momo', 1, N'25d4fec6-1393-4bcc-8f73-bc0340023bdb')
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (172, CAST(N'2021-09-02T21:55:34.957' AS DateTime), 19, N'Phạm Linh  Khánh', N'0889932789', N'Hải Dương Nam Định,Phú Quốc', N'jackison899@gmail.com', 1, 1, 0, NULL, N'Cổng thanh toán momo', 1, N'c9f55edb-427d-44e0-8adc-1404a1023fa5')
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (176, CAST(N'2021-09-04T15:57:35.110' AS DateTime), 15, N'Hoang Thuy Luong', N'098988282', N'Huong Long, Hue, Thua Thien Hue', N'hvtnam1999@gmail.com', 1, 2, 0, N'Gọi ko nghe máy', N'Cổng thanh toán momo', 1, N'1e91764f-f3a5-45b8-be02-9f4447f2729f')
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (178, CAST(N'2021-09-05T16:30:42.643' AS DateTime), 15, N'Hoang Thuy Luong', N'098988282', N'Huong Long, Hue, Thua Thien Hue', N'hvtnam1999@gmail.com', 1, 1, 0, NULL, N'COD', 2, N'3294705/09/20214:30:42ch')
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (179, CAST(N'2021-09-05T16:31:34.600' AS DateTime), 15, N'Hoang Thuy Luong', N'098988282', N'Huong Long, Hue, Thua Thien Hue', N'hvtnam1999@gmail.com', 1, 1, 0, NULL, N'COD', 2, N'984405/09/20214:31:34ch')
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (180, CAST(N'2021-09-05T16:32:16.693' AS DateTime), 15, N'Hoang Thuy Luong', N'098988282', N'Huong Long, Hue, Thua Thien Hue', N'hvtnam1999@gmail.com', 1, 1, 0, NULL, N'COD', 2, N'5201305/09/20214:32:16ch')
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (181, CAST(N'2021-09-05T16:38:01.733' AS DateTime), 19, N'Phạm Linh  Khánh', N'0889932789', N'Hải Dương Nam Định,Phú Quốc', N'jackison899@gmail.com', 1, 1, 0, NULL, N'COD', 2, N'6693205/09/20214:38:01ch')
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (182, CAST(N'2021-09-05T16:39:39.307' AS DateTime), 19, N'Phạm Linh  Khánh', N'0889932789', N'Hải Dương Nam Định,Phú Quốc', N'jackison899@gmail.com', 1, 2, 0, NULL, N'COD', 2, N'2445205/09/20214:39:39ch')
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (183, CAST(N'2021-09-06T15:40:37.110' AS DateTime), 16, N'VAN SANG HOANG', N'08889932798', N'HA NOI', N'sangdt97@gmail.com', 1, 2, 1, NULL, N'Cổng thanh toán momo', 1, N'c13ed147-689b-4ab5-8252-06b9cf40107e')
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (191, CAST(N'2021-10-07T15:13:09.393' AS DateTime), 15, N'Hoang Thuy Luong', N'098988282', N'Huong Long, Hue, Thua Thien Hue', N'hvtnam1999@gmail.com', 1, 2, 0, NULL, N'Cổng thanh toán momo', 1, N'2178fe50-b86a-43b2-9739-01271bade6d6')
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (209, CAST(N'2021-11-24T16:51:31.447' AS DateTime), 15, N'Hoang Thuy Luong', N'098988282', N'Huong Long, Hue, Thua Thien Hue', N'hvtnam1999@gmail.com', 1, 2, 2, NULL, N'Cổng thanh toán momo', 2, N'34ff4158-1820-46a9-a51f-540bcc97ab6f')
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (216, CAST(N'2021-11-25T15:07:59.053' AS DateTime), 15, N'Hoang Thuy Luong', N'098988282', N'Huong Long, Hue, Thua Thien Hue', N'hvtnam1999@gmail.com', 1, 2, 0, NULL, N'COD', 2, N'4787525/11/20213:07:59ch')
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (217, CAST(N'2021-11-30T13:51:23.017' AS DateTime), 15, N'Hoang Thuy Luong', N'098988282', N'Huong Long, Hue, Thua Thien Hue', N'hvtnam1999@gmail.com', 1, 2, 0, NULL, N'COD', 2, N'7636630/11/20211:51:23ch')
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (218, CAST(N'2021-11-30T13:58:55.040' AS DateTime), 16, N'VAN SANG HOANG', N'08889932798', N'HA NOI', N'sangdt97@gmail.com', 1, 2, 1, NULL, N'COD', 2, N'2275630/11/20211:58:55ch')
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (219, CAST(N'2021-12-16T14:34:05.637' AS DateTime), 15, N'Hoang Thuy Luong', N'098988282', N'Huong Long, Hue, Thua Thien Hue', N'hvtnam1999@gmail.com', 0, 0, 0, NULL, N'COD', 2, N'7549816/12/20212:34:05ch')
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (221, CAST(N'2021-12-16T16:06:58.790' AS DateTime), 15, N'Hoang Thuy Luong', N'098988282', N'Huong Long, Hue, Thua Thien Hue', N'hvtnam1999@gmail.com', 0, 0, 0, NULL, N'Cổng thanh toán momo', 2, N'1f276ae7-9612-41ba-8326-b9cc2626ae2d')
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (223, CAST(N'2021-12-16T16:16:19.290' AS DateTime), 15, N'Hoang Thuy Luong', N'098988282', N'Huong Long, Hue, Thua Thien Hue', N'hvtnam1999@gmail.com', 0, 0, 0, NULL, N'COD', 2, N'1722516/12/20214:16:19ch')
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (224, CAST(N'2021-12-16T17:05:39.543' AS DateTime), 15, N'Hoang Thuy Luong', N'098988282', N'Huong Long, Hue, Thua Thien Hue', N'hvtnam1999@gmail.com', 0, 0, 0, NULL, N'COD', 2, N'8627716/12/20215:05:39ch')
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (225, CAST(N'2021-12-16T17:07:15.313' AS DateTime), 15, N'Hoang Thuy Luong', N'098988282', N'Huong Long, Hue, Thua Thien Hue', N'hvtnam1999@gmail.com', 0, 0, 0, NULL, N'COD', 2, N'444116/12/20215:07:15ch')
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (226, CAST(N'2021-12-16T17:08:30.060' AS DateTime), 15, N'Hoang Thuy Luong', N'098988282', N'Huong Long, Hue, Thua Thien Hue', N'hvtnam1999@gmail.com', 1, 0, 0, NULL, N'COD', 2, N'3848816/12/20215:08:30ch')
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (230, CAST(N'2021-12-21T23:24:40.680' AS DateTime), 14, N'TRAN VAN BA', N'0890289911', N'Phú Yên, Cần Thơ, Cà Mau', N'hungtran8909@gmail.com', 1, 0, 0, NULL, N'COD', 2, N'9811621/12/202111:24:40ch')
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (232, CAST(N'2021-12-23T13:37:32.267' AS DateTime), 14, N'Phạm Hồng Anh', N'0338279409', N'Khu Trạo Hà, Đông Triều, Quảng Ninh', N'hungtran8909@gmail.com', 1, 0, 0, NULL, N'COD', 2, N'7984123/12/20211:37:32ch')
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (233, CAST(N'2021-12-23T13:53:32.077' AS DateTime), 14, N'Phạm Hồng Anh', N'0338279409', N'Khu Trạo Hà, Đông Triều, Quảng Ninh', N'hungtran8909@gmail.com', 1, 2, 0, NULL, N'COD', 2, N'7718023/12/20211:53:32ch')
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (234, CAST(N'2021-12-23T14:10:18.537' AS DateTime), 14, N'Phạm Hồng Anh', N'0338279409', N'Khu Trạo Hà, Đông Triều, Quảng Ninh', N'hungtran8909@gmail.com', 1, 0, 0, NULL, N'COD', 2, N'3415623/12/20212:10:18ch')
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (235, CAST(N'2021-12-23T14:25:56.360' AS DateTime), 14, N'Phạm Hồng Anh', N'0338279409', N'Khu Trạo Hà, Đông Triều, Quảng Ninh', N'hungtran8909@gmail.com', 1, 0, 0, NULL, N'COD', 2, N'6506723/12/20212:25:56ch')
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (236, CAST(N'2021-12-23T14:38:56.990' AS DateTime), 14, N'Phạm Hồng Anh', N'0338279409', N'Khu Trạo Hà, Đông Triều, Quảng Ninh', N'hungtran8909@gmail.com', 1, 2, 0, NULL, N'COD', 2, N'2652423/12/20212:38:56ch')
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (237, CAST(N'2021-12-23T14:41:17.757' AS DateTime), 14, N'Phạm Hồng Anh', N'0338279409', N'Khu Trạo Hà, Đông Triều, Quảng Ninh', N'hungtran8909@gmail.com', 1, 2, 0, NULL, N'COD', 2, N'7987023/12/20212:41:17ch')
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (251, CAST(N'2021-12-27T16:48:25.390' AS DateTime), 14, N'Phạm Hồng Anh', N'0338279409', N'Khu Trạo Hà, Đông Triều, Quảng Ninh', N'hungtran8909@gmail.com', 1, 0, 0, NULL, N'ATM', 1, N'7371927/12/20214:48:23ch')
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (253, CAST(N'2021-12-27T17:14:24.940' AS DateTime), 14, N'Phạm Hồng Anh', N'0338279409', N'Khu Trạo Hà, Đông Triều, Quảng Ninh', N'hungtran8909@gmail.com', 1, 0, 0, NULL, N'ATM', 1, N'566927/12/20215:14:23ch')
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (255, CAST(N'2021-12-27T17:16:50.963' AS DateTime), 14, N'Phạm Hồng Anh', N'0338279409', N'Khu Trạo Hà, Đông Triều, Quảng Ninh', N'hungtran8909@gmail.com', 1, 1, 0, NULL, N'ATM', 1, N'9976127/12/20215:16:49ch')
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (259, CAST(N'2021-12-27T23:27:12.730' AS DateTime), 14, N'Phạm Hồng Anh', N'0338279409', N'Khu Trạo Hà, Đông Triều, Quảng Ninh', N'hungtran8909@gmail.com', 1, 2, 0, NULL, N'ATM', 1, N'7120927/12/202111:27:11ch')
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (268, CAST(N'2022-01-22T12:10:42.337' AS DateTime), 14, N'Phạm Hồng Anh', N'0338279409', N'Khu Trạo Hà, Đông Triều, Quảng Ninh', N'hungtran8909@gmail.com', 1, 1, 0, NULL, N'ATM', 1, N'2818922/01/202212:10:41ch')
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (269, CAST(N'2022-02-15T15:03:15.753' AS DateTime), 16, N'VAN SANG HOANG', N'08889932798', N'HA NOI', N'sangdt97@gmail.com', 1, 2, 1, NULL, N'ATM', 1, N'7340615/02/20223:03:14ch')
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (270, CAST(N'2022-02-18T14:26:29.173' AS DateTime), 16, N'VAN SANG HOANG', N'08889932798', N'HA NOI', N'sangdt97@gmail.com', 1, 2, 1, NULL, N'ATM', 1, N'359218/02/20222:26:28ch')
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (271, CAST(N'2022-02-19T13:52:00.627' AS DateTime), 16, N'VAN SANG HOANG', N'08889932798', N'HA NOI', N'sangdt97@gmail.com', 1, 1, 0, NULL, N'ATM', 2, N'5159719/02/20221:51:59ch')
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (272, CAST(N'2022-02-19T15:22:49.980' AS DateTime), 14, N'Phạm Hồng Anh', N'0338279409', N'Khu Trạo Hà, Đông Triều, Quảng Ninh', N'hungtran8909@gmail.com', 1, 2, 0, NULL, N'COD', 2, N'1750619/02/20223:22:49ch')
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (273, CAST(N'2022-02-23T15:11:53.120' AS DateTime), 16, N'VAN SANG HOANG', N'08889932798', N'HA NOI', N'sangdt97@gmail.com', 1, 2, 1, NULL, N'ATM', 1, N'872823/02/20223:11:52ch')
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (274, CAST(N'2023-02-13T16:06:27.347' AS DateTime), 14, N'Phạm Hồng Anh', N'0338279409', N'Khu Trạo Hà, Đông Triều, Quảng Ninh', N'hungtran8909@gmail.com', 1, 2, 1, NULL, N'COD', 2, N'364492/13/20234:06:27pm')
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (275, CAST(N'2023-02-13T22:30:24.207' AS DateTime), 14, N'Phạm Hồng Anh', N'0338279409', N'Khu Trạo Hà, Đông Triều, Quảng Ninh', N'hungtran8909@gmail.com', 1, 2, 1, NULL, N'Cổng thanh toán momo', 2, N'7658877c-ad62-46b1-b46d-f0b8681be403')
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (276, CAST(N'2023-02-13T22:33:11.820' AS DateTime), 14, N'Phạm Hồng Anh', N'0338279409', N'Khu Trạo Hà, Đông Triều, Quảng Ninh', N'hungtran8909@gmail.com', 1, 2, 1, NULL, N'COD', 2, N'990862/13/202310:33:11pm')
GO
INSERT [dbo].[Orders] ([IDOder], [NgayTao], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status], [GiaoHang], [NhanHang], [GhiChu], [DeliveryPaymentMethod], [StatusPayment], [OrderCode]) VALUES (278, CAST(N'2023-02-19T00:04:24.503' AS DateTime), 39, N'Đặng Minh Tuấn', N'0946144169', N'Hẻm 54/9, Trần Việt Châu, Phường An Hoà', N'tuandang930@gmail.com', 1, 2, 1, NULL, N'COD', 2, N'887892/19/202312:04:24am')
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Quyen] ON 

INSERT [dbo].[Quyen] ([IDQuyen], [TenQuyen], [Status]) VALUES (1, N'Admin', 1)
INSERT [dbo].[Quyen] ([IDQuyen], [TenQuyen], [Status]) VALUES (2, N'Khách hàng', 1)
SET IDENTITY_INSERT [dbo].[Quyen] OFF
GO
SET IDENTITY_INSERT [dbo].[Sanpham] ON 

INSERT [dbo].[Sanpham] ([IDContent], [Name], [MetaTitle], [TacGia], [NhaXuatBan], [Soluong], [Images], [CategoryID], [Quanlity], [NgayTao], [IDNguoiTao], [Status], [Tophot], [Mota], [ChiTiet], [IDNCC], [GiaTien], [GiaNhap], [PriceSale], [TonKho]) VALUES (3, N'Tấm Cám Truyện', N'tam-cam-truyen', N'Ngô Quyền', N'Kim Đồng', 143, N'/DataImage/files/AnhSanPham5135282410300.JPG', 2, NULL, CAST(N'2021-12-11T15:11:20.397' AS DateTime), 6, 1, 3, N'Đặc Khảo Về Quang Trung - Nguyễn Huệ   "Sản phẩm outlet sales có thể bị cũ, dơ hoặc bao bì bị sờn, rách nhẹ" "...Quang Trung, ngoài giỏi về đường võ bị, về đường thao lược, ông tuy là người không có học nhưng biết dùng người có học. Đấy là một đặc điểm của những người mà người ta...', N'"Sản phẩm outlet sales có thể bị cũ, dơ hoặc bao bì bị sờn, rách nhẹ"
"...Quang Trung, ngoài giỏi về đường võ bị, về đường thao lược, ông tuy là người không có học nhưng biết dùng người có học. Đấy là một đặc điểm của những người mà người ta gọi là anh hùng, đời xưa là thế. Ông Quang Trung tự nói rằng ông có cái kiến thức của ông là vì mắt thấy tai nghe,..." - GS. Hoàng Xuân Hãn
"...Tập san Sử Địa để lại cho tôi những ấn tượng sâu sắc về tinh thần khoa học và ý thức dân tộc của những người chủ trương tập san và các tác giả bài viết. Tính khoa học và tính dân tộc là đặc điểm bao trùm của tập san. Nhiều bài viết trên tập san thật sự là những công trình nghiên cứu có giá trị cao, sưu tầm tư liệu công phu, xử lý thông tin khoa học, thái độ khách quan trung thực và nhất là góp phần dấy lên tinh thần yêu nước, ý thức dân tộc và nêu cao các giá trị văn hoá dân tộc. Đặc biệt số nào cũng có bài viết của GS Hoàng Xuân Hãn với những tìm tòi, khám phá đặc sắc của tác giả. Tập san đã tập hợp được nhiều trí thức có tinh thần yêu nước và bằng những công trình khoa học của mình, đóng góp vào việc nâng cao nhận thức về lịch sử, địa lý, văn hoá và phát huy những giá trị đó trong hoạt động của giới sinh viên, trí thức và cuộc sống xã hội vào những năm tháng đấu tranh quyết liệt vì độc lập và thống nhất tổ quốc..." - GS.NSND Phan Huy Lê', 2, 25000, 14000, NULL, 143)
INSERT [dbo].[Sanpham] ([IDContent], [Name], [MetaTitle], [TacGia], [NhaXuatBan], [Soluong], [Images], [CategoryID], [Quanlity], [NgayTao], [IDNguoiTao], [Status], [Tophot], [Mota], [ChiTiet], [IDNCC], [GiaTien], [GiaNhap], [PriceSale], [TonKho]) VALUES (5, N'Trí Tuệ Doanh Nhân', N'tri-tue-doanh-nhan', N'Kim Lân', N'Tuổi Trẻ', 180, N'/DataImage/files/AnhSanPham1115010237281.jpg', 2, NULL, CAST(N'2021-12-11T00:09:12.373' AS DateTime), 6, 1, 1, N'Đặc Khảo Về Quang Trung - Nguyễn Huệ   "Sản phẩm outlet sales có thể bị cũ, dơ hoặc bao bì bị sờn, rách nhẹ" "...Quang Trung, ngoài giỏi về đường võ bị, về đường thao lược, ông tuy là người không có học nhưng biết dùng người có học. Đấy là một đặc điểm của những người mà người ta...', N'"Sản phẩm outlet sales có thể bị cũ, dơ hoặc bao bì bị sờn, rách nhẹ"
"...Quang Trung, ngoài giỏi về đường võ bị, về đường thao lược, ông tuy là người không có học nhưng biết dùng người có học. Đấy là một đặc điểm của những người mà người ta gọi là anh hùng, đời xưa là thế. Ông Quang Trung tự nói rằng ông có cái kiến thức của ông là vì mắt thấy tai nghe,..." - GS. Hoàng Xuân Hãn
"...Tập san Sử Địa để lại cho tôi những ấn tượng sâu sắc về tinh thần khoa học và ý thức dân tộc của những người chủ trương tập san và các tác giả bài viết. Tính khoa học và tính dân tộc là đặc điểm bao trùm của tập san. Nhiều bài viết trên tập san thật sự là những công trình nghiên cứu có giá trị cao, sưu tầm tư liệu công phu, xử lý thông tin khoa học, thái độ khách quan trung thực và nhất là góp phần dấy lên tinh thần yêu nước, ý thức dân tộc và nêu cao các giá trị văn hoá dân tộc. Đặc biệt số nào cũng có bài viết của GS Hoàng Xuân Hãn với những tìm tòi, khám phá đặc sắc của tác giả. Tập san đã tập hợp được nhiều trí thức có tinh thần yêu nước và bằng những công trình khoa học của mình, đóng góp vào việc nâng cao nhận thức về lịch sử, địa lý, văn hoá và phát huy những giá trị đó trong hoạt động của giới sinh viên, trí thức và cuộc sống xã hội vào những năm tháng đấu tranh quyết liệt vì độc lập và thống nhất tổ quốc..." - GS.NSND Phan Huy Lê', 1, 14000, 12000, NULL, 180)
INSERT [dbo].[Sanpham] ([IDContent], [Name], [MetaTitle], [TacGia], [NhaXuatBan], [Soluong], [Images], [CategoryID], [Quanlity], [NgayTao], [IDNguoiTao], [Status], [Tophot], [Mota], [ChiTiet], [IDNCC], [GiaTien], [GiaNhap], [PriceSale], [TonKho]) VALUES (6, N'Tuyển Chọn Bài Thi Học Sinh Giỏi Toán', N'tuyen-chon-bai-thi-hoc-sinh-gioi-toan', N'Giáo Dục', N'Giáo Dục', 150, N'/DataImage/files/AnhSanPham5122552406026.jpg', 1, NULL, CAST(N'2021-12-11T15:12:43.143' AS DateTime), 6, 1, 1, N'Đặc Khảo Về Quang Trung - Nguyễn Huệ   "Sản phẩm outlet sales có thể bị cũ, dơ hoặc bao bì bị sờn, rách nhẹ" "...Quang Trung, ngoài giỏi về đường võ bị, về đường thao lược, ông tuy là người không có học nhưng biết dùng người có học. Đấy là một đặc điểm của những người mà người ta...', N'"Sản phẩm outlet sales có thể bị cũ, dơ hoặc bao bì bị sờn, rách nhẹ"
"...Quang Trung, ngoài giỏi về đường võ bị, về đường thao lược, ông tuy là người không có học nhưng biết dùng người có học. Đấy là một đặc điểm của những người mà người ta gọi là anh hùng, đời xưa là thế. Ông Quang Trung tự nói rằng ông có cái kiến thức của ông là vì mắt thấy tai nghe,..." - GS. Hoàng Xuân Hãn
"...Tập san Sử Địa để lại cho tôi những ấn tượng sâu sắc về tinh thần khoa học và ý thức dân tộc của những người chủ trương tập san và các tác giả bài viết. Tính khoa học và tính dân tộc là đặc điểm bao trùm của tập san. Nhiều bài viết trên tập san thật sự là những công trình nghiên cứu có giá trị cao, sưu tầm tư liệu công phu, xử lý thông tin khoa học, thái độ khách quan trung thực và nhất là góp phần dấy lên tinh thần yêu nước, ý thức dân tộc và nêu cao các giá trị văn hoá dân tộc. Đặc biệt số nào cũng có bài viết của GS Hoàng Xuân Hãn với những tìm tòi, khám phá đặc sắc của tác giả. Tập san đã tập hợp được nhiều trí thức có tinh thần yêu nước và bằng những công trình khoa học của mình, đóng góp vào việc nâng cao nhận thức về lịch sử, địa lý, văn hoá và phát huy những giá trị đó trong hoạt động của giới sinh viên, trí thức và cuộc sống xã hội vào những năm tháng đấu tranh quyết liệt vì độc lập và thống nhất tổ quốc..." - GS.NSND Phan Huy Lê', 2, 14000, 14000, NULL, 150)
INSERT [dbo].[Sanpham] ([IDContent], [Name], [MetaTitle], [TacGia], [NhaXuatBan], [Soluong], [Images], [CategoryID], [Quanlity], [NgayTao], [IDNguoiTao], [Status], [Tophot], [Mota], [ChiTiet], [IDNCC], [GiaTien], [GiaNhap], [PriceSale], [TonKho]) VALUES (7, N'Truyền Động Thủy Khí', N'truyen-dong-thuy-khi', N'Nguyễn Du', N'Nguyên Du', 150, N'/DataImage/files/AnhSanPham5064082395541.jpg', 10, NULL, CAST(N'2021-12-11T15:13:30.967' AS DateTime), 11, 1, 1, N'Đặc Khảo Về Quang Trung - Nguyễn Huệ   "Sản phẩm outlet sales có thể bị cũ, dơ hoặc bao bì bị sờn, rách nhẹ" "...Quang Trung, ngoài giỏi về đường võ bị, về đường thao lược, ông tuy là người không có học nhưng biết dùng người có học. Đấy là một đặc điểm của những người mà người ta...', N'"Sản phẩm outlet sales có thể bị cũ, dơ hoặc bao bì bị sờn, rách nhẹ"
"...Quang Trung, ngoài giỏi về đường võ bị, về đường thao lược, ông tuy là người không có học nhưng biết dùng người có học. Đấy là một đặc điểm của những người mà người ta gọi là anh hùng, đời xưa là thế. Ông Quang Trung tự nói rằng ông có cái kiến thức của ông là vì mắt thấy tai nghe,..." - GS. Hoàng Xuân Hãn
"...Tập san Sử Địa để lại cho tôi những ấn tượng sâu sắc về tinh thần khoa học và ý thức dân tộc của những người chủ trương tập san và các tác giả bài viết. Tính khoa học và tính dân tộc là đặc điểm bao trùm của tập san. Nhiều bài viết trên tập san thật sự là những công trình nghiên cứu có giá trị cao, sưu tầm tư liệu công phu, xử lý thông tin khoa học, thái độ khách quan trung thực và nhất là góp phần dấy lên tinh thần yêu nước, ý thức dân tộc và nêu cao các giá trị văn hoá dân tộc. Đặc biệt số nào cũng có bài viết của GS Hoàng Xuân Hãn với những tìm tòi, khám phá đặc sắc của tác giả. Tập san đã tập hợp được nhiều trí thức có tinh thần yêu nước và bằng những công trình khoa học của mình, đóng góp vào việc nâng cao nhận thức về lịch sử, địa lý, văn hoá và phát huy những giá trị đó trong hoạt động của giới sinh viên, trí thức và cuộc sống xã hội vào những năm tháng đấu tranh quyết liệt vì độc lập và thống nhất tổ quốc..." - GS.NSND Phan Huy Lê', 3, 14000, 14000, NULL, 150)
INSERT [dbo].[Sanpham] ([IDContent], [Name], [MetaTitle], [TacGia], [NhaXuatBan], [Soluong], [Images], [CategoryID], [Quanlity], [NgayTao], [IDNguoiTao], [Status], [Tophot], [Mota], [ChiTiet], [IDNCC], [GiaTien], [GiaNhap], [PriceSale], [TonKho]) VALUES (8, N'Tuyển Tập Đề Thi OLYMPIC 30 Tháng 4: Toán 11', N'toan-cao-cap', N'Giáo Dục', N'Giáo Dục', 150, N'/DataImage/images/8934994205122.jpg', 10, NULL, CAST(N'2021-12-11T15:14:54.153' AS DateTime), 6, 1, 1, N'Đặc Khảo Về Quang Trung - Nguyễn Huệ   "Sản phẩm outlet sales có thể bị cũ, dơ hoặc bao bì bị sờn, rách nhẹ" "...Quang Trung, ngoài giỏi về đường võ bị, về đường thao lược, ông tuy là người không có học nhưng biết dùng người có học. Đấy là một đặc điểm của những người mà người ta...', N'"Sản phẩm outlet sales có thể bị cũ, dơ hoặc bao bì bị sờn, rách nhẹ"
"...Quang Trung, ngoài giỏi về đường võ bị, về đường thao lược, ông tuy là người không có học nhưng biết dùng người có học. Đấy là một đặc điểm của những người mà người ta gọi là anh hùng, đời xưa là thế. Ông Quang Trung tự nói rằng ông có cái kiến thức của ông là vì mắt thấy tai nghe,..." - GS. Hoàng Xuân Hãn
"...Tập san Sử Địa để lại cho tôi những ấn tượng sâu sắc về tinh thần khoa học và ý thức dân tộc của những người chủ trương tập san và các tác giả bài viết. Tính khoa học và tính dân tộc là đặc điểm bao trùm của tập san. Nhiều bài viết trên tập san thật sự là những công trình nghiên cứu có giá trị cao, sưu tầm tư liệu công phu, xử lý thông tin khoa học, thái độ khách quan trung thực và nhất là góp phần dấy lên tinh thần yêu nước, ý thức dân tộc và nêu cao các giá trị văn hoá dân tộc. Đặc biệt số nào cũng có bài viết của GS Hoàng Xuân Hãn với những tìm tòi, khám phá đặc sắc của tác giả. Tập san đã tập hợp được nhiều trí thức có tinh thần yêu nước và bằng những công trình khoa học của mình, đóng góp vào việc nâng cao nhận thức về lịch sử, địa lý, văn hoá và phát huy những giá trị đó trong hoạt động của giới sinh viên, trí thức và cuộc sống xã hội vào những năm tháng đấu tranh quyết liệt vì độc lập và thống nhất tổ quốc..." - GS.NSND Phan Huy Lê', 3, 14000, 14000, NULL, 150)
INSERT [dbo].[Sanpham] ([IDContent], [Name], [MetaTitle], [TacGia], [NhaXuatBan], [Soluong], [Images], [CategoryID], [Quanlity], [NgayTao], [IDNguoiTao], [Status], [Tophot], [Mota], [ChiTiet], [IDNCC], [GiaTien], [GiaNhap], [PriceSale], [TonKho]) VALUES (9, N'Tiếu Lâm Hiện Đại', N'game-play', N'AoKiJi', N'Giáo Dục', 150, N'/DataImage/files/AnhSanPham8935077096293.jpg', 3, NULL, CAST(N'2021-12-11T15:21:29.623' AS DateTime), 6, 1, 1, N'Đặc Khảo Về Quang Trung - Nguyễn Huệ   "Sản phẩm outlet sales có thể bị cũ, dơ hoặc bao bì bị sờn, rách nhẹ" "...Quang Trung, ngoài giỏi về đường võ bị, về đường thao lược, ông tuy là người không có học nhưng biết dùng người có học. Đấy là một đặc điểm của những người mà người ta...', N'"Sản phẩm outlet sales có thể bị cũ, dơ hoặc bao bì bị sờn, rách nhẹ"
"...Quang Trung, ngoài giỏi về đường võ bị, về đường thao lược, ông tuy là người không có học nhưng biết dùng người có học. Đấy là một đặc điểm của những người mà người ta gọi là anh hùng, đời xưa là thế. Ông Quang Trung tự nói rằng ông có cái kiến thức của ông là vì mắt thấy tai nghe,..." - GS. Hoàng Xuân Hãn
"...Tập san Sử Địa để lại cho tôi những ấn tượng sâu sắc về tinh thần khoa học và ý thức dân tộc của những người chủ trương tập san và các tác giả bài viết. Tính khoa học và tính dân tộc là đặc điểm bao trùm của tập san. Nhiều bài viết trên tập san thật sự là những công trình nghiên cứu có giá trị cao, sưu tầm tư liệu công phu, xử lý thông tin khoa học, thái độ khách quan trung thực và nhất là góp phần dấy lên tinh thần yêu nước, ý thức dân tộc và nêu cao các giá trị văn hoá dân tộc. Đặc biệt số nào cũng có bài viết của GS Hoàng Xuân Hãn với những tìm tòi, khám phá đặc sắc của tác giả. Tập san đã tập hợp được nhiều trí thức có tinh thần yêu nước và bằng những công trình khoa học của mình, đóng góp vào việc nâng cao nhận thức về lịch sử, địa lý, văn hoá và phát huy những giá trị đó trong hoạt động của giới sinh viên, trí thức và cuộc sống xã hội vào những năm tháng đấu tranh quyết liệt vì độc lập và thống nhất tổ quốc..." - GS.NSND Phan Huy Lê', 2, 14000, 14000, NULL, 150)
INSERT [dbo].[Sanpham] ([IDContent], [Name], [MetaTitle], [TacGia], [NhaXuatBan], [Soluong], [Images], [CategoryID], [Quanlity], [NgayTao], [IDNguoiTao], [Status], [Tophot], [Mota], [ChiTiet], [IDNCC], [GiaTien], [GiaNhap], [PriceSale], [TonKho]) VALUES (10, N'Giáo Trình Hán Ngữ 3', N'giao-trinh-han-ngu', N'Nguyễn Du', N'Giáo Dục', 150, N'/DataImage/files/AnhSanPham6240013060408.jpg', 12, NULL, CAST(N'2021-12-11T15:22:15.377' AS DateTime), 6, 1, 2, N'Đặc Khảo Về Quang Trung - Nguyễn Huệ   "Sản phẩm outlet sales có thể bị cũ, dơ hoặc bao bì bị sờn, rách nhẹ" "...Quang Trung, ngoài giỏi về đường võ bị, về đường thao lược, ông tuy là người không có học nhưng biết dùng người có học. Đấy là một đặc điểm của những người mà người ta...', N'"Sản phẩm outlet sales có thể bị cũ, dơ hoặc bao bì bị sờn, rách nhẹ"
"...Quang Trung, ngoài giỏi về đường võ bị, về đường thao lược, ông tuy là người không có học nhưng biết dùng người có học. Đấy là một đặc điểm của những người mà người ta gọi là anh hùng, đời xưa là thế. Ông Quang Trung tự nói rằng ông có cái kiến thức của ông là vì mắt thấy tai nghe,..." - GS. Hoàng Xuân Hãn
"...Tập san Sử Địa để lại cho tôi những ấn tượng sâu sắc về tinh thần khoa học và ý thức dân tộc của những người chủ trương tập san và các tác giả bài viết. Tính khoa học và tính dân tộc là đặc điểm bao trùm của tập san. Nhiều bài viết trên tập san thật sự là những công trình nghiên cứu có giá trị cao, sưu tầm tư liệu công phu, xử lý thông tin khoa học, thái độ khách quan trung thực và nhất là góp phần dấy lên tinh thần yêu nước, ý thức dân tộc và nêu cao các giá trị văn hoá dân tộc. Đặc biệt số nào cũng có bài viết của GS Hoàng Xuân Hãn với những tìm tòi, khám phá đặc sắc của tác giả. Tập san đã tập hợp được nhiều trí thức có tinh thần yêu nước và bằng những công trình khoa học của mình, đóng góp vào việc nâng cao nhận thức về lịch sử, địa lý, văn hoá và phát huy những giá trị đó trong hoạt động của giới sinh viên, trí thức và cuộc sống xã hội vào những năm tháng đấu tranh quyết liệt vì độc lập và thống nhất tổ quốc..." - GS.NSND Phan Huy Lê', 1, 14000, 14000, NULL, 150)
INSERT [dbo].[Sanpham] ([IDContent], [Name], [MetaTitle], [TacGia], [NhaXuatBan], [Soluong], [Images], [CategoryID], [Quanlity], [NgayTao], [IDNguoiTao], [Status], [Tophot], [Mota], [ChiTiet], [IDNCC], [GiaTien], [GiaNhap], [PriceSale], [TonKho]) VALUES (13, N'Kê toán quản trị', N'ke-toan-qua', N'Nguyễn Du', N'Giáo Dục', 150, N'/DataImage/images/2020110000514.jpg', 9, N'Sách mới', CAST(N'2021-08-19T00:00:00.000' AS DateTime), 11, 1, 1, N'Đặc Khảo Về Quang Trung - Nguyễn Huệ   "Sản phẩm outlet sales có thể bị cũ, dơ hoặc bao bì bị sờn, rách nhẹ" "...Quang Trung, ngoài giỏi về đường võ bị, về đường thao lược, ông tuy là người không có học nhưng biết dùng người có học. Đấy là một đặc điểm của những người mà người ta...', N'"Sản phẩm outlet sales có thể bị cũ, dơ hoặc bao bì bị sờn, rách nhẹ"', 7, 14000, 14000, NULL, 150)
INSERT [dbo].[Sanpham] ([IDContent], [Name], [MetaTitle], [TacGia], [NhaXuatBan], [Soluong], [Images], [CategoryID], [Quanlity], [NgayTao], [IDNguoiTao], [Status], [Tophot], [Mota], [ChiTiet], [IDNCC], [GiaTien], [GiaNhap], [PriceSale], [TonKho]) VALUES (14, N'Bí Quyết Làm Chủ Revit', N'du-lich-mat-trang', N'Nguyễn Du', N'Giáo Dục', 150, N'/DataImage/files/AnhSanPham5121742408628.jpg', 9, NULL, CAST(N'2021-12-11T15:15:52.260' AS DateTime), 11, 1, 1, N'Đặc Khảo Về Quang Trung - Nguyễn Huệ   "Sản phẩm outlet sales có thể bị cũ, dơ hoặc bao bì bị sờn, rách nhẹ" "...Quang Trung, ngoài giỏi về đường võ bị, về đường thao lược, ông tuy là người không có học nhưng biết dùng người có học. Đấy là một đặc điểm của những người mà người ta...', N'"Sản phẩm outlet sales có thể bị cũ, dơ hoặc bao bì bị sờn, rách nhẹ"', 7, 14000, 14000, NULL, 150)
INSERT [dbo].[Sanpham] ([IDContent], [Name], [MetaTitle], [TacGia], [NhaXuatBan], [Soluong], [Images], [CategoryID], [Quanlity], [NgayTao], [IDNguoiTao], [Status], [Tophot], [Mota], [ChiTiet], [IDNCC], [GiaTien], [GiaNhap], [PriceSale], [TonKho]) VALUES (15, N'Những Trận Đánh Lịch Sử Của Quân Đội Nhân Dân Việt Nam', N'nhung-tran-danh-lich-su-cua-quan-doi-nhan-dan-viet-nam', N'Kim đồng', N'Giáo Dục', 150, N'/DataImage/files/AnhSanPham5095762409364.jpg', 2, NULL, CAST(N'2021-12-11T15:17:04.243' AS DateTime), 11, 1, 4, N'Đặc Khảo Về Quang Trung - Nguyễn Huệ   "Sản phẩm outlet sales có thể bị cũ, dơ hoặc bao bì bị sờn, rách nhẹ" "...Quang Trung, ngoài giỏi về đường võ bị, về đường thao lược, ông tuy là người không có học nhưng biết dùng người có học. Đấy là một đặc điểm của những người mà người ta...', N'"Sản phẩm outlet sales có thể bị cũ, dơ hoặc bao bì bị sờn, rách nhẹ"', 5, 14000, 14000, NULL, 150)
INSERT [dbo].[Sanpham] ([IDContent], [Name], [MetaTitle], [TacGia], [NhaXuatBan], [Soluong], [Images], [CategoryID], [Quanlity], [NgayTao], [IDNguoiTao], [Status], [Tophot], [Mota], [ChiTiet], [IDNCC], [GiaTien], [GiaNhap], [PriceSale], [TonKho]) VALUES (16, N'Bác Hồ Và Thanh Thiếu Niên', N'ke-huy-diet', N'Kim đồng', N'Giáo Dục', 150, N'/DataImage/files/AnhSanPham5102252388037.jpg', 7, NULL, CAST(N'2021-12-11T15:19:36.047' AS DateTime), 11, 1, 3, N'Đặc Khảo Về Quang Trung - Nguyễn Huệ   "Sản phẩm outlet sales có thể bị cũ, dơ hoặc bao bì bị sờn, rách nhẹ" "...Quang Trung, ngoài giỏi về đường võ bị, về đường thao lược, ông tuy là người không có học nhưng biết dùng người có học. Đấy là một đặc điểm của những người mà người ta...', N'"Sản phẩm outlet sales có thể bị cũ, dơ hoặc bao bì bị sờn, rách nhẹ"', 5, 14000, 14000, NULL, 150)
INSERT [dbo].[Sanpham] ([IDContent], [Name], [MetaTitle], [TacGia], [NhaXuatBan], [Soluong], [Images], [CategoryID], [Quanlity], [NgayTao], [IDNguoiTao], [Status], [Tophot], [Mota], [ChiTiet], [IDNCC], [GiaTien], [GiaNhap], [PriceSale], [TonKho]) VALUES (17, N'Tài Chính Doanh Nghiệp Cơ Bản', N'ke-huy-diet-2', N'Kim đồng', N'Giáo Dục', 150, N'/DataImage/files/AnhSanPham5102261901036.jpg', 9, NULL, CAST(N'2021-12-11T15:20:06.690' AS DateTime), 11, 1, 2, N'Đặc Khảo Về Quang Trung - Nguyễn Huệ   "Sản phẩm outlet sales có thể bị cũ, dơ hoặc bao bì bị sờn, rách nhẹ" "...Quang Trung, ngoài giỏi về đường võ bị, về đường thao lược, ông tuy là người không có học nhưng biết dùng người có học. Đấy là một đặc điểm của những người mà người ta...', N'"Sản phẩm outlet sales có thể bị cũ, dơ hoặc bao bì bị sờn, rách nhẹ"', 5, 14000, 14000, 5, 150)
INSERT [dbo].[Sanpham] ([IDContent], [Name], [MetaTitle], [TacGia], [NhaXuatBan], [Soluong], [Images], [CategoryID], [Quanlity], [NgayTao], [IDNguoiTao], [Status], [Tophot], [Mota], [ChiTiet], [IDNCC], [GiaTien], [GiaNhap], [PriceSale], [TonKho]) VALUES (18, N'Nâng Cao Ngữ Văn: THCS 9', N'dan-gian-phieu-luu', N'Kim đồng', N'Giáo Dục', 150, N'/DataImage/files/AnhSanPham5122542403042.jpg', 7, NULL, CAST(N'2021-12-11T15:20:41.093' AS DateTime), 11, 1, 1, N'Đặc Khảo Về Quang Trung - Nguyễn Huệ   "Sản phẩm outlet sales có thể bị cũ, dơ hoặc bao bì bị sờn, rách nhẹ" "...Quang Trung, ngoài giỏi về đường võ bị, về đường thao lược, ông tuy là người không có học nhưng biết dùng người có học. Đấy là một đặc điểm của những người mà người ta...', N'"Sản phẩm outlet sales có thể bị cũ, dơ hoặc bao bì bị sờn, rách nhẹ"', 2, 14000, 14000, NULL, 150)
INSERT [dbo].[Sanpham] ([IDContent], [Name], [MetaTitle], [TacGia], [NhaXuatBan], [Soluong], [Images], [CategoryID], [Quanlity], [NgayTao], [IDNguoiTao], [Status], [Tophot], [Mota], [ChiTiet], [IDNCC], [GiaTien], [GiaNhap], [PriceSale], [TonKho]) VALUES (19, N'Giáo Trình Hán Ngữ 4', N'giao-trinh-han-ngu-4', N'Kim đồng', N'Giáo Dục', 150, N'/DataImage/files/AnhSanPham6240014060407.jpg', 12, NULL, CAST(N'2021-12-11T15:22:58.557' AS DateTime), 11, 1, 4, N'Đặc Khảo Về Quang Trung - Nguyễn Huệ   "Sản phẩm outlet sales có thể bị cũ, dơ hoặc bao bì bị sờn, rách nhẹ" "...Quang Trung, ngoài giỏi về đường võ bị, về đường thao lược, ông tuy là người không có học nhưng biết dùng người có học. Đấy là một đặc điểm của những người mà người ta...', N'"Sản phẩm outlet sales có thể bị cũ, dơ hoặc bao bì bị sờn, rách nhẹ"', 2, 14000, 8000, NULL, 150)
INSERT [dbo].[Sanpham] ([IDContent], [Name], [MetaTitle], [TacGia], [NhaXuatBan], [Soluong], [Images], [CategoryID], [Quanlity], [NgayTao], [IDNguoiTao], [Status], [Tophot], [Mota], [ChiTiet], [IDNCC], [GiaTien], [GiaNhap], [PriceSale], [TonKho]) VALUES (20, N'Nếu Biết Trăm Năm Là Hữu Hạn', N'toan-lop-8', N'Phạm Lữ Ân', N'Giáo Dục', 150, N'/DataImage/files/AnhSanPham8932000117872.jpg', 9, NULL, CAST(N'2021-12-11T15:24:04.763' AS DateTime), 11, 1, 5, N'Đặc Khảo Về Quang Trung - Nguyễn Huệ   "Sản phẩm outlet sales có thể bị cũ, dơ hoặc bao bì bị sờn, rách nhẹ" "...Quang Trung, ngoài giỏi về đường võ bị, về đường thao lược, ông tuy là người không có học nhưng biết dùng người có học. Đấy là một đặc điểm của những người mà người ta...', N'"Sản phẩm outlet sales có thể bị cũ, dơ hoặc bao bì bị sờn, rách nhẹ"', 2, 14000, 8000, NULL, 150)
INSERT [dbo].[Sanpham] ([IDContent], [Name], [MetaTitle], [TacGia], [NhaXuatBan], [Soluong], [Images], [CategoryID], [Quanlity], [NgayTao], [IDNguoiTao], [Status], [Tophot], [Mota], [ChiTiet], [IDNCC], [GiaTien], [GiaNhap], [PriceSale], [TonKho]) VALUES (21, N'Như Cây Phong Ba Trên Đảo Hoàng Sa', N'nhu-cay-phong-ba-tren-dao-hoang-sa', N'Kim Dung', N'NewJork Time', 119, N'/DataImage/files/AnhSanPham8934974118046.jpg', 2, NULL, CAST(N'2021-12-11T15:24:48.180' AS DateTime), 6, 1, 19, N'Đặc Khảo Về Quang Trung - Nguyễn Huệ   "Sản phẩm outlet sales có thể bị cũ, dơ hoặc bao bì bị sờn, rách nhẹ" "...Quang Trung, ngoài giỏi về đường võ bị, về đường thao lược, ông tuy là người không có học nhưng biết dùng người có học. Đấy là một đặc điểm của những người mà người ta...', N'"Sản phẩm outlet sales có thể bị cũ, dơ hoặc bao bì bị sờn, rách nhẹ"', 5, 14000, 8000, 70, 131)
INSERT [dbo].[Sanpham] ([IDContent], [Name], [MetaTitle], [TacGia], [NhaXuatBan], [Soluong], [Images], [CategoryID], [Quanlity], [NgayTao], [IDNguoiTao], [Status], [Tophot], [Mota], [ChiTiet], [IDNCC], [GiaTien], [GiaNhap], [PriceSale], [TonKho]) VALUES (22, N'Chi Tiết Máy', N'chi-tiet-may', N'ICTU', N'Giáo Dục', 150, N'/DataImage/files/AnhSanPham8934980076934.jpg', 10, NULL, CAST(N'2021-12-11T15:25:04.717' AS DateTime), 11, 1, 1, N'Đặc Khảo Về Quang Trung - Nguyễn Huệ   "Sản phẩm outlet sales có thể bị cũ, dơ hoặc bao bì bị sờn, rách nhẹ" "...Quang Trung, ngoài giỏi về đường võ bị, về đường thao lược, ông tuy là người không có học nhưng biết dùng người có học. Đấy là một đặc điểm của những người mà người ta...', N'"Sản phẩm outlet sales có thể bị cũ, dơ hoặc bao bì bị sờn, rách nhẹ"', 5, 14000, 8000, NULL, 150)
INSERT [dbo].[Sanpham] ([IDContent], [Name], [MetaTitle], [TacGia], [NhaXuatBan], [Soluong], [Images], [CategoryID], [Quanlity], [NgayTao], [IDNguoiTao], [Status], [Tophot], [Mota], [ChiTiet], [IDNCC], [GiaTien], [GiaNhap], [PriceSale], [TonKho]) VALUES (23, N'Những Câu Chuyện Về Đạo Đức Hồ Chí Minh', N'nhung-cau-truyen-ve-dao-duc-ho-chi-minh', N'ICTU', N'Giáo Dục', 150, N'/DataImage/files/AnhSanPham8935053214789.jpg', 7, NULL, CAST(N'2021-12-11T15:26:32.063' AS DateTime), 11, 1, 2, N'Đặc Khảo Về Quang Trung - Nguyễn Huệ   "Sản phẩm outlet sales có thể bị cũ, dơ hoặc bao bì bị sờn, rách nhẹ" "...Quang Trung, ngoài giỏi về đường võ bị, về đường thao lược, ông tuy là người không có học nhưng biết dùng người có học. Đấy là một đặc điểm của những người mà người ta...', N'"Sản phẩm outlet sales có thể bị cũ, dơ hoặc bao bì bị sờn, rách nhẹ"', 5, 14000, 8000, NULL, 150)
INSERT [dbo].[Sanpham] ([IDContent], [Name], [MetaTitle], [TacGia], [NhaXuatBan], [Soluong], [Images], [CategoryID], [Quanlity], [NgayTao], [IDNguoiTao], [Status], [Tophot], [Mota], [ChiTiet], [IDNCC], [GiaTien], [GiaNhap], [PriceSale], [TonKho]) VALUES (24, N'Chữa Bệnh Cao Huyết Áp Biến Chứng', N'chua-benh-cao-huyet-ap-bien-chung', N'ICTU', N'Giáo Dục', 140, N'/DataImage/files/AnhSanPham8935073097577.jpg', 10, NULL, CAST(N'2021-12-11T22:37:15.233' AS DateTime), 11, 1, 10, N'Đặc Khảo Về Quang Trung - Nguyễn Huệ   "Sản phẩm outlet sales có thể bị cũ, dơ hoặc bao bì bị sờn, rách nhẹ" "...Quang Trung, ngoài giỏi về đường võ bị, về đường thao lược, ông tuy là người không có học nhưng biết dùng người có học. Đấy là một đặc điểm của những người mà người ta...', N'"Sản phẩm outlet sales có thể bị cũ, dơ hoặc bao bì bị sờn, rách nhẹ"', 5, 14000, 8000, 15, 148)
INSERT [dbo].[Sanpham] ([IDContent], [Name], [MetaTitle], [TacGia], [NhaXuatBan], [Soluong], [Images], [CategoryID], [Quanlity], [NgayTao], [IDNguoiTao], [Status], [Tophot], [Mota], [ChiTiet], [IDNCC], [GiaTien], [GiaNhap], [PriceSale], [TonKho]) VALUES (25, N'Kết Cấu Thép', N'ket-cau-thep', N'ICTU', N'Giáo Dục', 150, N'/DataImage/files/AnhSanPham8935048920466.jpg', 10, NULL, CAST(N'2021-12-11T15:28:16.030' AS DateTime), 11, 1, 2, N'Đặc Khảo Về Quang Trung - Nguyễn Huệ   "Sản phẩm outlet sales có thể bị cũ, dơ hoặc bao bì bị sờn, rách nhẹ" "...Quang Trung, ngoài giỏi về đường võ bị, về đường thao lược, ông tuy là người không có học nhưng biết dùng người có học. Đấy là một đặc điểm của những người mà người ta...', N'"Sản phẩm outlet sales có thể bị cũ, dơ hoặc bao bì bị sờn, rách nhẹ"', 5, 14000, 8000, NULL, 150)
INSERT [dbo].[Sanpham] ([IDContent], [Name], [MetaTitle], [TacGia], [NhaXuatBan], [Soluong], [Images], [CategoryID], [Quanlity], [NgayTao], [IDNguoiTao], [Status], [Tophot], [Mota], [ChiTiet], [IDNCC], [GiaTien], [GiaNhap], [PriceSale], [TonKho]) VALUES (26, N'Lịch Sử Văn Hóa Thế Giới', N'lich-su-van-hoa-the-gioi', N'ICTU', N'Giáo Dục', 146, N'/DataImage/files/AnhSanPham8935075929067.jpg', 7, NULL, CAST(N'2021-12-11T22:33:27.947' AS DateTime), 11, 1, 9, N'Đặc Khảo Về Quang Trung - Nguyễn Huệ   "Sản phẩm outlet sales có thể bị cũ, dơ hoặc bao bì bị sờn, rách nhẹ" "...Quang Trung, ngoài giỏi về đường võ bị, về đường thao lược, ông tuy là người không có học nhưng biết dùng người có học. Đấy là một đặc điểm của những người mà người ta...', N'"Sản phẩm outlet sales có thể bị cũ, dơ hoặc bao bì bị sờn, rách nhẹ"', 5, 14000, 8000, 30, 149)
INSERT [dbo].[Sanpham] ([IDContent], [Name], [MetaTitle], [TacGia], [NhaXuatBan], [Soluong], [Images], [CategoryID], [Quanlity], [NgayTao], [IDNguoiTao], [Status], [Tophot], [Mota], [ChiTiet], [IDNCC], [GiaTien], [GiaNhap], [PriceSale], [TonKho]) VALUES (27, N'Thủ Tướng Phan Văn Đồng Những Chặng Đường Lịch Sử', N'thu-tuong-phan-van-dong-nhung-chang-duong-lich-su', N'Kim đường', N'Giáo Dục', 145, N'/DataImage/files/AnhSanPham5095762408213.jpg', 9, NULL, CAST(N'2021-12-11T22:21:04.440' AS DateTime), 11, 1, 15, N'Lao mình vào nơi “rừng thiêng nước độc”', N'Tôi biết đến BTV Phạm Kông Chí (VTV5) đã từ lâu, anh là nhà báo gần mười năm qua gắn bó với đồng bào dân tộc ở mọi miền của Tổ quốc. Lâu lâu tôi lại thấy anh xuất hiện ở những bộ phim tài liệu, phóng sự về một bản làng xa xôi nào đó trên đất nước. Đó có thể là đề tài về cuộc sống đồng bào dân tộc, phóng sự về thực hiện chính sách của Nhà nước đối với đồng bào dân tộc... Mọi thứ đều được thể hiện qua những thước phim sắc nét, rõ ràng.

Khác với những chuyến đi trước, chuyến đi rừng dài ngày lần này được anh chuẩn bị hết sức kỹ càng. Theo anh, công việc của chuyến đi lần này không phải để học hỏi, hòa mình vào mẹ thiên nhiên mà đó là lao mình vào nơi “rừng thiêng nước độc” và không có chỗ cho sai lầm.', 7, 22000, 8000, 20, 148)
INSERT [dbo].[Sanpham] ([IDContent], [Name], [MetaTitle], [TacGia], [NhaXuatBan], [Soluong], [Images], [CategoryID], [Quanlity], [NgayTao], [IDNguoiTao], [Status], [Tophot], [Mota], [ChiTiet], [IDNCC], [GiaTien], [GiaNhap], [PriceSale], [TonKho]) VALUES (30, N'Lịch Sử Đô Thị', N'lich-su-do-thi', N'Nguyễn Bình', N'Giáo Dục', 150, N'/DataImage/files/AnhSanPham8935048922101.jpg', 9, NULL, CAST(N'2021-12-11T15:11:38.447' AS DateTime), NULL, 1, 1, N'Cuốn sách Lịch sử đô thị này là phần tái bản và tổng hợp từ 2 cuốn sách Quy hoạch đô thị cận hiện đại Phương Tây và Quy hoạch đô thị cổ đại và trung đại thế giới của tác giả Đặng Thái Hoàng. Hai cuốn sách trên đã được sử dụng làm tài liệu giảng dạy và nghiên cứu cho sinh viên, nghiên cứu sinh ngành kiến trúc quy hoạch và các kiến trúc sư tham khảo. Cuốn sách này được hoàn thiện hơn nhằm tǎng thêm tính thuận tiện trong công tác học tập và giảng dạy của các kiến trúc sư và sinh viên chuyên ngành. Mời các bạn tìm đọc.', N'Cuốn sách Lịch sử đô thị này là phần tái bản và tổng hợp từ 2 cuốn sách Quy hoạch đô thị cận hiện đại Phương Tây và Quy hoạch đô thị cổ đại và trung đại thế giới của tác giả Đặng Thái Hoàng. Hai cuốn sách trên đã được sử dụng làm tài liệu giảng dạy và nghiên cứu cho sinh viên, nghiên cứu sinh ngành kiến trúc quy hoạch và các kiến trúc sư tham khảo. Cuốn sách này được hoàn thiện hơn nhằm tǎng thêm tính thuận tiện trong công tác học tập và giảng dạy của các kiến trúc sư và sinh viên chuyên ngành. Mời các bạn tìm đọc.', 6, 29000, 8000, NULL, 150)
INSERT [dbo].[Sanpham] ([IDContent], [Name], [MetaTitle], [TacGia], [NhaXuatBan], [Soluong], [Images], [CategoryID], [Quanlity], [NgayTao], [IDNguoiTao], [Status], [Tophot], [Mota], [ChiTiet], [IDNCC], [GiaTien], [GiaNhap], [PriceSale], [TonKho]) VALUES (31, N'Hệ Thống Chuẩn Mực Hiến Pháp Việt Nam', N'he-thong-chuan-muc-hien-phap-viet-nam', N'Kim đồng', N'Giáo Dục', 150, N'/DataImage/files/AnhSanPham5064042405686.jpg', 9, NULL, CAST(N'2021-12-11T11:11:04.457' AS DateTime), 11, 1, 3, N'Tờ Nikkei Asia ngày 5.8 đưa tin đợt dịch Covid-19 nghiêm trọng nhất kể từ năm ngoái đang lây lan ở Trung Quốc khiến hãng Honda Motor buộc phải dừng hoạt động tại một trung tâm sản xuất.', N'Tờ Nikkei Asia ngày 5.8 đưa tin đợt dịch Covid-19 nghiêm trọng nhất kể từ năm ngoái đang lây lan ở Trung Quốc khiến hãng Honda Motor buộc phải dừng hoạt động tại một trung tâm sản xuất.
Hãng xe Nhật Bản tạm ngưng hoạt động tại tất cả 3 nhà máy lắp ráp liên doanh ở Vũ Hán (tỉnh Hồ Bắc, Trung Quốc) kể từ ngày 3.8. Quá nhiều công nhân không thể đi làm do phong tỏa tại một số khu vực xung quanh.
Các nhà máy trên hằng năm sản xuất tổng cộng khoảng 720.000 xe, và hiện chưa rõ khi nào sẽ hoạt động trở lại. Trước đó, Honda tạm dừng hoạt động tại Vũ Hán khi thành phố này phong tỏa 76 ngày, kết thúc vào tháng 4.2020.
Tại Trung Quốc, cơ quan chức năng theo dõi sát sao số ca Covid-19 lây nhiễm trong cộng đồng, con số không bao gồm các ca nhiễm du nhập từ nước ngoài. Số ca lây nhiễm trong cộng đồng là 485 trong vòng 2 tuần tính đến ngày 3.8.
Mới phát hiện 8 ca nhiễm Covid-19, Vũ Hán sẽ xét nghiệm toàn bộ 11 triệu dân

', 4, 98000, 8000, NULL, 150)
INSERT [dbo].[Sanpham] ([IDContent], [Name], [MetaTitle], [TacGia], [NhaXuatBan], [Soluong], [Images], [CategoryID], [Quanlity], [NgayTao], [IDNguoiTao], [Status], [Tophot], [Mota], [ChiTiet], [IDNCC], [GiaTien], [GiaNhap], [PriceSale], [TonKho]) VALUES (32, N'Điện Gió', N'dien-gio', N'Phan Chanh', N'Giáo Dục', 150, N'/DataImage/files/AnhSanPham2011201001114.jpg', 10, NULL, CAST(N'2021-12-11T11:09:43.170' AS DateTime), 6, 1, 8, N'Điện Gió & Quạt Gió Bơm Nước nước do Nguyễn Ngọc biên soạn và được biên tập bởi GS-TS Nguyễn Thế Mịch, Đại học Bách khoa Hà Nội, một chuyên gia hàng đầu trong lĩnh vực điện gió tại Việt Nam, là một cuộn sách mang lại cho độc giả nhiều thông tin và kiến thức về nguồn năng lượng sạch này.

Ngay sau khi phát minh ra máy phát điện, nhiều nhà khoa học đã nghiên cứu dùng cơ năng của gió để sản xuất ra điện và đã được ứng dụng từ năm 1887 tại nhiều nơi trên thế giới như Anh, Đan Mạch, Mỹ.

Nước ta là một nơi có tiềm năng gió rất tốt, chiến lược phát triển năng lượng quốc gia đến năm 2020 và tầm nhìn đến năm 2050 về mục tiêu tăng tỷ lệ năng lượng tái tạo nói chung, trong đó có điện gió lên 5% vào năm 2020 và 11% vào năm 2050. Với sự phát triển không ngừng của công nghiệp điện gió và giá thành công nghệ giảm, chiến lược phát triển năng lượng quốc gia của nước ta sẽ được điều chỉnh để sớm thoát khỏi sự lệ thuộc vào điện từ than đá, dầu, khí đốt và điện hạt nhân cũng như góp phần quan trọng vào vấn đề an ninh năng lượng và loại bỏ được những nguy cơ tiềm ẩn của điện nguyên tử, giảm ô nhiễm do nhiệt điện gây ra, môi trường sống được an toàn hơn, hệ sinh thái không bị đảo lộn và người dân bớt đi được nỗi lo phải sơ tán do nguy cơ vỡ đập hoặc ngập lụt do thủy điện. Sự phát triển của xã hội, của nền kinh tế quốc dân được bền vững và có trách nhiệm với thế hệ tương lai.

Tập sách Điện Gió & Quạt Gió Bơm Nước cũng đề cập chi tiết đến quạt gió bơm nước sử dụng tưới tiêu, quạt gió xay ngũ cốc, nguyên tắc kỹ thuật về chi tiết truyền động, các loại máy bơm cũng như những thông tin mới nhất về công nghiệp điện gió tại nước ta và trên thế giới năm 2013.

Giá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Tuy nhiên tuỳ vào từng loại sản phẩm hoặc phương thức, địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, .....', N'Điện Gió & Quạt Gió Bơm Nước nước do Nguyễn Ngọc biên soạn và được biên tập bởi GS-TS Nguyễn Thế Mịch, Đại học Bách khoa Hà Nội, một chuyên gia hàng đầu trong lĩnh vực điện gió tại Việt Nam, là một cuộn sách mang lại cho độc giả nhiều thông tin và kiến thức về nguồn năng lượng sạch này.

Ngay sau khi phát minh ra máy phát điện, nhiều nhà khoa học đã nghiên cứu dùng cơ năng của gió để sản xuất ra điện và đã được ứng dụng từ năm 1887 tại nhiều nơi trên thế giới như Anh, Đan Mạch, Mỹ.

Nước ta là một nơi có tiềm năng gió rất tốt, chiến lược phát triển năng lượng quốc gia đến năm 2020 và tầm nhìn đến năm 2050 về mục tiêu tăng tỷ lệ năng lượng tái tạo nói chung, trong đó có điện gió lên 5% vào năm 2020 và 11% vào năm 2050. Với sự phát triển không ngừng của công nghiệp điện gió và giá thành công nghệ giảm, chiến lược phát triển năng lượng quốc gia của nước ta sẽ được điều chỉnh để sớm thoát khỏi sự lệ thuộc vào điện từ than đá, dầu, khí đốt và điện hạt nhân cũng như góp phần quan trọng vào vấn đề an ninh năng lượng và loại bỏ được những nguy cơ tiềm ẩn của điện nguyên tử, giảm ô nhiễm do nhiệt điện gây ra, môi trường sống được an toàn hơn, hệ sinh thái không bị đảo lộn và người dân bớt đi được nỗi lo phải sơ tán do nguy cơ vỡ đập hoặc ngập lụt do thủy điện. Sự phát triển của xã hội, của nền kinh tế quốc dân được bền vững và có trách nhiệm với thế hệ tương lai.

Tập sách Điện Gió & Quạt Gió Bơm Nước cũng đề cập chi tiết đến quạt gió bơm nước sử dụng tưới tiêu, quạt gió xay ngũ cốc, nguyên tắc kỹ thuật về chi tiết truyền động, các loại máy bơm cũng như những thông tin mới nhất về công nghiệp điện gió tại nước ta và trên thế giới năm 2013.

Giá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Tuy nhiên tuỳ vào từng loại sản phẩm hoặc phương thức, địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, .....', 1, 13200, 8000, NULL, 150)
INSERT [dbo].[Sanpham] ([IDContent], [Name], [MetaTitle], [TacGia], [NhaXuatBan], [Soluong], [Images], [CategoryID], [Quanlity], [NgayTao], [IDNguoiTao], [Status], [Tophot], [Mota], [ChiTiet], [IDNCC], [GiaTien], [GiaNhap], [PriceSale], [TonKho]) VALUES (33, N'Cười Vui Dí Dỏm', N'cuoi-vui-di-dom', N'Phan Chanh', N'Giáo Dục', 148, N'/DataImage/files/AnhSanPham8935077096309.jpg', 10, NULL, CAST(N'2021-12-11T15:25:41.317' AS DateTime), 6, 1, 15, N'Điện Gió & Quạt Gió Bơm Nước nước do Nguyễn Ngọc biên soạn và được biên tập bởi GS-TS Nguyễn Thế Mịch, Đại học Bách khoa Hà Nội, một chuyên gia hàng đầu trong lĩnh vực điện gió tại Việt Nam, là một cuộn sách mang lại cho độc giả nhiều thông tin và kiến thức về nguồn năng lượng sạch này.

Ngay sau khi phát minh ra máy phát điện, nhiều nhà khoa học đã nghiên cứu dùng cơ năng của gió để sản xuất ra điện và đã được ứng dụng từ năm 1887 tại nhiều nơi trên thế giới như Anh, Đan Mạch, Mỹ.

Nước ta là một nơi có tiềm năng gió rất tốt, chiến lược phát triển năng lượng quốc gia đến năm 2020 và tầm nhìn đến năm 2050 về mục tiêu tăng tỷ lệ năng lượng tái tạo nói chung, trong đó có điện gió lên 5% vào năm 2020 và 11% vào năm 2050. Với sự phát triển không ngừng của công nghiệp điện gió và giá thành công nghệ giảm, chiến lược phát triển năng lượng quốc gia của nước ta sẽ được điều chỉnh để sớm thoát khỏi sự lệ thuộc vào điện từ than đá, dầu, khí đốt và điện hạt nhân cũng như góp phần quan trọng vào vấn đề an ninh năng lượng và loại bỏ được những nguy cơ tiềm ẩn của điện nguyên tử, giảm ô nhiễm do nhiệt điện gây ra, môi trường sống được an toàn hơn, hệ sinh thái không bị đảo lộn và người dân bớt đi được nỗi lo phải sơ tán do nguy cơ vỡ đập hoặc ngập lụt do thủy điện. Sự phát triển của xã hội, của nền kinh tế quốc dân được bền vững và có trách nhiệm với thế hệ tương lai.

Tập sách Điện Gió & Quạt Gió Bơm Nước cũng đề cập chi tiết đến quạt gió bơm nước sử dụng tưới tiêu, quạt gió xay ngũ cốc, nguyên tắc kỹ thuật về chi tiết truyền động, các loại máy bơm cũng như những thông tin mới nhất về công nghiệp điện gió tại nước ta và trên thế giới năm 2013.

Giá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Tuy nhiên tuỳ vào từng loại sản phẩm hoặc phương thức, địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, .....', N'Điện Gió & Quạt Gió Bơm Nước nước do Nguyễn Ngọc biên soạn và được biên tập bởi GS-TS Nguyễn Thế Mịch, Đại học Bách khoa Hà Nội, một chuyên gia hàng đầu trong lĩnh vực điện gió tại Việt Nam, là một cuộn sách mang lại cho độc giả nhiều thông tin và kiến thức về nguồn năng lượng sạch này.

Ngay sau khi phát minh ra máy phát điện, nhiều nhà khoa học đã nghiên cứu dùng cơ năng của gió để sản xuất ra điện và đã được ứng dụng từ năm 1887 tại nhiều nơi trên thế giới như Anh, Đan Mạch, Mỹ.

Nước ta là một nơi có tiềm năng gió rất tốt, chiến lược phát triển năng lượng quốc gia đến năm 2020 và tầm nhìn đến năm 2050 về mục tiêu tăng tỷ lệ năng lượng tái tạo nói chung, trong đó có điện gió lên 5% vào năm 2020 và 11% vào năm 2050. Với sự phát triển không ngừng của công nghiệp điện gió và giá thành công nghệ giảm, chiến lược phát triển năng lượng quốc gia của nước ta sẽ được điều chỉnh để sớm thoát khỏi sự lệ thuộc vào điện từ than đá, dầu, khí đốt và điện hạt nhân cũng như góp phần quan trọng vào vấn đề an ninh năng lượng và loại bỏ được những nguy cơ tiềm ẩn của điện nguyên tử, giảm ô nhiễm do nhiệt điện gây ra, môi trường sống được an toàn hơn, hệ sinh thái không bị đảo lộn và người dân bớt đi được nỗi lo phải sơ tán do nguy cơ vỡ đập hoặc ngập lụt do thủy điện. Sự phát triển của xã hội, của nền kinh tế quốc dân được bền vững và có trách nhiệm với thế hệ tương lai.

Tập sách Điện Gió & Quạt Gió Bơm Nước cũng đề cập chi tiết đến quạt gió bơm nước sử dụng tưới tiêu, quạt gió xay ngũ cốc, nguyên tắc kỹ thuật về chi tiết truyền động, các loại máy bơm cũng như những thông tin mới nhất về công nghiệp điện gió tại nước ta và trên thế giới năm 2013.

Giá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Tuy nhiên tuỳ vào từng loại sản phẩm hoặc phương thức, địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, .....', 1, 13200, 8000, NULL, 149)
INSERT [dbo].[Sanpham] ([IDContent], [Name], [MetaTitle], [TacGia], [NhaXuatBan], [Soluong], [Images], [CategoryID], [Quanlity], [NgayTao], [IDNguoiTao], [Status], [Tophot], [Mota], [ChiTiet], [IDNCC], [GiaTien], [GiaNhap], [PriceSale], [TonKho]) VALUES (34, N'Đường thời đại', N'duong-thoi-dai', N'Phan Chanh', N'Giáo Dục', 150, N'/DataImage/files/AnhSanPham240073.jpg', 10, NULL, CAST(N'2021-12-11T00:10:22.507' AS DateTime), 6, 1, 21, N'Điện Gió & Quạt Gió Bơm Nước nước do Nguyễn Ngọc biên soạn và được biên tập bởi GS-TS Nguyễn Thế Mịch, Đại học Bách khoa Hà Nội, một chuyên gia hàng đầu trong lĩnh vực điện gió tại Việt Nam, là một cuộn sách mang lại cho độc giả nhiều thông tin và kiến thức về nguồn năng lượng sạch này.
', N'Điện Gió & Quạt Gió Bơm Nước nước do Nguyễn Ngọc biên soạn và được biên tập bởi GS-TS Nguyễn Thế Mịch, Đại học Bách khoa Hà Nội, một chuyên gia hàng đầu trong lĩnh vực điện gió tại Việt Nam, là một cuộn sách mang lại cho độc giả nhiều thông tin và kiến thức về nguồn năng lượng sạch này.

Ngay sau khi phát minh ra máy phát điện, nhiều nhà khoa học đã nghiên cứu dùng cơ năng của gió để sản xuất ra điện và đã được ứng dụng từ năm 1887 tại nhiều nơi trên thế giới như Anh, Đan Mạch, Mỹ.

Nước ta là một nơi có tiềm năng gió rất tốt, chiến lược phát triển năng lượng quốc gia đến năm 2020 và tầm nhìn đến năm 2050 về mục tiêu tăng tỷ lệ năng lượng tái tạo nói chung, trong đó có điện gió lên 5% vào năm 2020 và 11% vào năm 2050. Với sự phát triển không ngừng của công nghiệp điện gió và giá thành công nghệ giảm, chiến lược phát triển năng lượng quốc gia của nước ta sẽ được điều chỉnh để sớm thoát khỏi sự lệ thuộc vào điện từ than đá, dầu, khí đốt và điện hạt nhân cũng như góp phần quan trọng vào vấn đề an ninh năng lượng và loại bỏ được những nguy cơ tiềm ẩn của điện nguyên tử, giảm ô nhiễm do nhiệt điện gây ra, môi trường sống được an toàn hơn, hệ sinh thái không bị đảo lộn và người dân bớt đi được nỗi lo phải sơ tán do nguy cơ vỡ đập hoặc ngập lụt do thủy điện. Sự phát triển của xã hội, của nền kinh tế quốc dân được bền vững và có trách nhiệm với thế hệ tương lai.

Tập sách Điện Gió & Quạt Gió Bơm Nước cũng đề cập chi tiết đến quạt gió bơm nước sử dụng tưới tiêu, quạt gió xay ngũ cốc, nguyên tắc kỹ thuật về chi tiết truyền động, các loại máy bơm cũng như những thông tin mới nhất về công nghiệp điện gió tại nước ta và trên thế giới năm 2013.

Giá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Tuy nhiên tuỳ vào từng loại sản phẩm hoặc phương thức, địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, .....', 1, 22300, 8000, NULL, 148)
INSERT [dbo].[Sanpham] ([IDContent], [Name], [MetaTitle], [TacGia], [NhaXuatBan], [Soluong], [Images], [CategoryID], [Quanlity], [NgayTao], [IDNguoiTao], [Status], [Tophot], [Mota], [ChiTiet], [IDNCC], [GiaTien], [GiaNhap], [PriceSale], [TonKho]) VALUES (36, N'Quy Định Mới Chế Độ Kế Toán Doanh Nghiệp', N'quy-dinh-moi-che-do-ke-toan-doanh-nghiep', N'Phan Chanh', N'Giáo Dục', 150, N'/DataImage/files/AnhSanPham5064042404764.jpg', 10, NULL, CAST(N'2021-12-11T09:56:40.733' AS DateTime), 6, 1, 4, N'Điện Gió & Quạt Gió Bơm Nước nước do Nguyễn Ngọc biên soạn và được biên tập bởi GS-TS Nguyễn Thế Mịch, Đại học Bách khoa Hà Nội, một chuyên gia hàng đầu trong lĩnh vực điện gió tại Việt Nam, là một cuộn sách mang lại cho độc giả nhiều thông tin và kiến thức về nguồn năng lượng sạch này.

Ngay sau khi phát minh ra máy phát điện, nhiều nhà khoa học đã nghiên cứu dùng cơ năng của gió để sản xuất ra điện và đã được ứng dụng từ năm 1887 tại nhiều nơi trên thế giới như Anh, Đan Mạch, Mỹ.

Nước ta là một nơi có tiềm năng gió rất tốt, chiến lược phát triển năng lượng quốc gia đến năm 2020 và tầm nhìn đến năm 2050 về mục tiêu tăng tỷ lệ năng lượng tái tạo nói chung, trong đó có điện gió lên 5% vào năm 2020 và 11% vào năm 2050. Với sự phát triển không ngừng của công nghiệp điện gió và giá thành công nghệ giảm, chiến lược phát triển năng lượng quốc gia của nước ta sẽ được điều chỉnh để sớm thoát khỏi sự lệ thuộc vào điện từ than đá, dầu, khí đốt và điện hạt nhân cũng như góp phần quan trọng vào vấn đề an ninh năng lượng và loại bỏ được những nguy cơ tiềm ẩn của điện nguyên tử, giảm ô nhiễm do nhiệt điện gây ra, môi trường sống được an toàn hơn, hệ sinh thái không bị đảo lộn và người dân bớt đi được nỗi lo phải sơ tán do nguy cơ vỡ đập hoặc ngập lụt do thủy điện. Sự phát triển của xã hội, của nền kinh tế quốc dân được bền vững và có trách nhiệm với thế hệ tương lai.

Tập sách Điện Gió & Quạt Gió Bơm Nước cũng đề cập chi tiết đến quạt gió bơm nước sử dụng tưới tiêu, quạt gió xay ngũ cốc, nguyên tắc kỹ thuật về chi tiết truyền động, các loại máy bơm cũng như những thông tin mới nhất về công nghiệp điện gió tại nước ta và trên thế giới năm 2013.

Giá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Tuy nhiên tuỳ vào từng loại sản phẩm hoặc phương thức, địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, .....', N'Điện Gió & Quạt Gió Bơm Nước nước do Nguyễn Ngọc biên soạn và được biên tập bởi GS-TS Nguyễn Thế Mịch, Đại học Bách khoa Hà Nội, một chuyên gia hàng đầu trong lĩnh vực điện gió tại Việt Nam, là một cuộn sách mang lại cho độc giả nhiều thông tin và kiến thức về nguồn năng lượng sạch này.

Ngay sau khi phát minh ra máy phát điện, nhiều nhà khoa học đã nghiên cứu dùng cơ năng của gió để sản xuất ra điện và đã được ứng dụng từ năm 1887 tại nhiều nơi trên thế giới như Anh, Đan Mạch, Mỹ.

Nước ta là một nơi có tiềm năng gió rất tốt, chiến lược phát triển năng lượng quốc gia đến năm 2020 và tầm nhìn đến năm 2050 về mục tiêu tăng tỷ lệ năng lượng tái tạo nói chung, trong đó có điện gió lên 5% vào năm 2020 và 11% vào năm 2050. Với sự phát triển không ngừng của công nghiệp điện gió và giá thành công nghệ giảm, chiến lược phát triển năng lượng quốc gia của nước ta sẽ được điều chỉnh để sớm thoát khỏi sự lệ thuộc vào điện từ than đá, dầu, khí đốt và điện hạt nhân cũng như góp phần quan trọng vào vấn đề an ninh năng lượng và loại bỏ được những nguy cơ tiềm ẩn của điện nguyên tử, giảm ô nhiễm do nhiệt điện gây ra, môi trường sống được an toàn hơn, hệ sinh thái không bị đảo lộn và người dân bớt đi được nỗi lo phải sơ tán do nguy cơ vỡ đập hoặc ngập lụt do thủy điện. Sự phát triển của xã hội, của nền kinh tế quốc dân được bền vững và có trách nhiệm với thế hệ tương lai.

Tập sách Điện Gió & Quạt Gió Bơm Nước cũng đề cập chi tiết đến quạt gió bơm nước sử dụng tưới tiêu, quạt gió xay ngũ cốc, nguyên tắc kỹ thuật về chi tiết truyền động, các loại máy bơm cũng như những thông tin mới nhất về công nghiệp điện gió tại nước ta và trên thế giới năm 2013.

Giá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Tuy nhiên tuỳ vào từng loại sản phẩm hoặc phương thức, địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, .....', 1, 22300, 8000, NULL, 148)
INSERT [dbo].[Sanpham] ([IDContent], [Name], [MetaTitle], [TacGia], [NhaXuatBan], [Soluong], [Images], [CategoryID], [Quanlity], [NgayTao], [IDNguoiTao], [Status], [Tophot], [Mota], [ChiTiet], [IDNCC], [GiaTien], [GiaNhap], [PriceSale], [TonKho]) VALUES (37, N'Hóa Học Dầu Mỏ Và Khí', N'hoa-hoc-dau-mo-va-khi', N'Ngô Diệu', N'Giáo Dục', 150, N'/DataImage/files/AnhSanPham8935048921975.jpg', 10, NULL, CAST(N'2021-12-11T00:06:13.167' AS DateTime), 6, 1, 4, N'khang chien', N'"Sản phẩm outlet sales có thể bị cũ, dơ hoặc bao bì bị sờn, rách nhẹ"', 1, 98000, 80000, NULL, 150)
INSERT [dbo].[Sanpham] ([IDContent], [Name], [MetaTitle], [TacGia], [NhaXuatBan], [Soluong], [Images], [CategoryID], [Quanlity], [NgayTao], [IDNguoiTao], [Status], [Tophot], [Mota], [ChiTiet], [IDNCC], [GiaTien], [GiaNhap], [PriceSale], [TonKho]) VALUES (38, N'Công Dụng Tuyệt Vời Của Các Loại Hạt', N'cong-dung-tuyet-voi-cua-cac-loai-hat', N'Ngô Diệu', N'Giáo Dục', 150, N'/DataImage/files/AnhSanPham2000109013305.jpg', 14, NULL, CAST(N'2021-12-11T00:08:00.163' AS DateTime), 6, 1, 5, N'We, Dassault Systèmes, together with our trusted 3DS business stakeholders, use cookies to give you the best experience on our websites by : measuring their audience and improving their performance, by providing you with content and proposals that correspond to your interactions, by serving ads that are relevant to your interests and by allowing you to share content on social networks.', N'We, Dassault Systèmes, together with our trusted 3DS business stakeholders, use cookies to give you the best experience on our websites by : measuring their audience and improving their performance, by providing you with content and proposals that correspond to your interactions, by serving ads that are relevant to your interests and by allowing you to share content on social networks.', 4, 98000, 8000, NULL, 150)
INSERT [dbo].[Sanpham] ([IDContent], [Name], [MetaTitle], [TacGia], [NhaXuatBan], [Soluong], [Images], [CategoryID], [Quanlity], [NgayTao], [IDNguoiTao], [Status], [Tophot], [Mota], [ChiTiet], [IDNCC], [GiaTien], [GiaNhap], [PriceSale], [TonKho]) VALUES (39, N'Quản Trị Ngân Hàng Thương Mai', N'quan-tri-ngan-hang-thuong-mai', N'Ngô Diệc Phàm', N'Giáo Dục', 150, N'/DataImage/files/AnhSanPham2060020004363.jpg', 7, NULL, CAST(N'2021-12-11T00:06:40.620' AS DateTime), 6, 1, 1, N'Cuốn sách Lịch sử đô thị này là phần tái bản và tổng hợp từ 2 cuốn sách Quy hoạch đô thị cận hiện đại Phương Tây và Quy hoạch đô thị cổ đại và trung đại thế giới của tác giả Đặng Thái Hoàng. Hai cuốn sách trên đã được sử dụng làm tài liệu giảng dạy và nghiên cứu cho sinh viên, nghiên cứu sinh ngành kiến trúc quy hoạch và các kiến trúc sư tham khảo. Cuốn sách này được hoàn thiện hơn nhằm tǎng thêm tính thuận tiện trong công tác học tập và giảng dạy của các kiến trúc sư và sinh viên chuyên ngành. Mời các bạn tìm đọc.', N'"Sản phẩm outlet sales có thể bị cũ, dơ hoặc bao bì bị sờn, rách nhẹ"', 2, 20007, 8000, NULL, 150)
INSERT [dbo].[Sanpham] ([IDContent], [Name], [MetaTitle], [TacGia], [NhaXuatBan], [Soluong], [Images], [CategoryID], [Quanlity], [NgayTao], [IDNguoiTao], [Status], [Tophot], [Mota], [ChiTiet], [IDNCC], [GiaTien], [GiaNhap], [PriceSale], [TonKho]) VALUES (40, N'Mô Hình Tài Chính Cơ Bản', N'mo-hinh-tai-chinh-co-ban', N'HỒ CHÍ MINH', N'Giáo Dục', 150, N'/DataImage/files/AnhSanPham2040030003167.jpg', 2, NULL, CAST(N'2021-12-11T00:06:58.420' AS DateTime), 11, 1, 6, N'Như lịch sử đã ghi nhận, sau 30 năm bôn ba ở nước ngoài để tìm ra con đường cứu nước, ngày 28/1/1941 (năm Tân Tỵ), đồng chí Nguyễn Ái Quốc (Bác Hồ) đã trở về Tổ quốc để trực tiếp lãnh đạo cách mạng giành độc lập tự do cho Việt Nam. ', N'Như lịch sử đã ghi nhận, sau 30 năm bôn ba ở nước ngoài để tìm ra con đường cứu nước, ngày 28/1/1941 (năm Tân Tỵ), đồng chí Nguyễn Ái Quốc (Bác Hồ) đã trở về Tổ quốc để trực tiếp lãnh đạo cách mạng giành độc lập tự do cho Việt Nam. Nơi Người đặt chân đầu tiên về Tổ quốc là mốc 108, nơi Người ở đầu tiên khi về nước hoạt động là núi rừng Pác Bó, thuộc xã Trường Hà, huyện Hà Quảng, tỉnh Cao Bằng. Đây là nơi “non xanh, nước biếc, rừng thẳm, đất thiêng”, cảnh vật hữu tình, nên thơ, hùng vĩ, người dân chất phác, hiền lành, thuần hậu, đầy tình yêu quê hương, đất nước.', 7, 98000, 8000, NULL, 150)
INSERT [dbo].[Sanpham] ([IDContent], [Name], [MetaTitle], [TacGia], [NhaXuatBan], [Soluong], [Images], [CategoryID], [Quanlity], [NgayTao], [IDNguoiTao], [Status], [Tophot], [Mota], [ChiTiet], [IDNCC], [GiaTien], [GiaNhap], [PriceSale], [TonKho]) VALUES (41, N'Kế Toán Quản Trị', N'ke-toan-quan-tri', N'Jodie Anba di', N'Giáo Dục', 150, N'/DataImage/files/AnhSanPham2020110000514.jpg', 2, NULL, CAST(N'2021-12-11T00:07:17.413' AS DateTime), 11, 1, 2, N'Như lịch sử đã ghi nhận, sau 30 năm bôn ba ở nước ngoài để tìm ra con đường cứu nước, ngày 28/1/1941 (năm Tân Tỵ), đồng chí Nguyễn Ái Quốc (Bác Hồ) đã trở về Tổ quốc để trực tiếp lãnh đạo cách mạng giành độc lập tự do cho Việt Nam. ', N'Như lịch sử đã ghi nhận, sau 30 năm bôn ba ở nước ngoài để tìm ra con đường cứu nước, ngày 28/1/1941 (năm Tân Tỵ), đồng chí Nguyễn Ái Quốc (Bác Hồ) đã trở về Tổ quốc để trực tiếp lãnh đạo cách mạng giành độc lập tự do cho Việt Nam. Nơi Người đặt chân đầu tiên về Tổ quốc là mốc 108, nơi Người ở đầu tiên khi về nước hoạt động là núi rừng Pác Bó, thuộc xã Trường Hà, huyện Hà Quảng, tỉnh Cao Bằng. Đây là nơi “non xanh, nước biếc, rừng thẳm, đất thiêng”, cảnh vật hữu tình, nên thơ, hùng vĩ, người dân chất phác, hiền lành, thuần hậu, đầy tình yêu quê hương, đất nước.', 7, 28000, 8000, NULL, 150)
INSERT [dbo].[Sanpham] ([IDContent], [Name], [MetaTitle], [TacGia], [NhaXuatBan], [Soluong], [Images], [CategoryID], [Quanlity], [NgayTao], [IDNguoiTao], [Status], [Tophot], [Mota], [ChiTiet], [IDNCC], [GiaTien], [GiaNhap], [PriceSale], [TonKho]) VALUES (42, N'Điện Gió Và Quạt Gió Hơi Nước', N'dien-gio-va-quat-gio-hoi-nuoc', N'Ngô Diệu', N'Giáo Dục', 150, N'/DataImage/files/AnhSanPham2011201001114.jpg', 10, NULL, CAST(N'2021-12-11T00:07:37.440' AS DateTime), 11, 1, 1, N'Kỹ Nghê Lạnh', N'Kỹ Nghê Lạnh', 6, 28000, 8000, NULL, 150)
INSERT [dbo].[Sanpham] ([IDContent], [Name], [MetaTitle], [TacGia], [NhaXuatBan], [Soluong], [Images], [CategoryID], [Quanlity], [NgayTao], [IDNguoiTao], [Status], [Tophot], [Mota], [ChiTiet], [IDNCC], [GiaTien], [GiaNhap], [PriceSale], [TonKho]) VALUES (43, N'Tiếng Nhật N5', N'tieng-nhat-n5', N'Jodie Anba', N'Giáo Dục', 150, N'/DataImage/files/AnhSanPham2000101045311.jpg', 2, NULL, CAST(N'2021-12-11T00:08:14.503' AS DateTime), 11, 1, 4, N'toan-dai-cuong', N'toan-dai-cuong', 2, 18000, 8000, NULL, 150)
INSERT [dbo].[Sanpham] ([IDContent], [Name], [MetaTitle], [TacGia], [NhaXuatBan], [Soluong], [Images], [CategoryID], [Quanlity], [NgayTao], [IDNguoiTao], [Status], [Tophot], [Mota], [ChiTiet], [IDNCC], [GiaTien], [GiaNhap], [PriceSale], [TonKho]) VALUES (44, N'Truyện Cười - Hoa Việt', N'truyen-cuoi-hoa-viet', N'Dân Gian', N'Kim Đồng', 150, N'/DataImage/files/AnhSanPham12676691594.jpg', 1, NULL, CAST(N'2021-12-11T00:08:43.430' AS DateTime), 11, 1, 7, N'Truyện Cười Dân Gian', N'Truyện Cười Dân Gian', 7, 12900, 8000, NULL, 150)
INSERT [dbo].[Sanpham] ([IDContent], [Name], [MetaTitle], [TacGia], [NhaXuatBan], [Soluong], [Images], [CategoryID], [Quanlity], [NgayTao], [IDNguoiTao], [Status], [Tophot], [Mota], [ChiTiet], [IDNCC], [GiaTien], [GiaNhap], [PriceSale], [TonKho]) VALUES (45, N'Em không biết', N'Em-khong-biet', N'Hà Kiểu Trinh', N'Kim Đồng', 148, N'/DataImage/files/AnhSanPham1234567891215.jpg', 1, NULL, CAST(N'2021-12-11T00:01:19.850' AS DateTime), 6, 1, 14, N'Em không biết om em', N'Em không biết đâu anh đền cho em đi', 7, 12900, 8000, NULL, 150)
INSERT [dbo].[Sanpham] ([IDContent], [Name], [MetaTitle], [TacGia], [NhaXuatBan], [Soluong], [Images], [CategoryID], [Quanlity], [NgayTao], [IDNguoiTao], [Status], [Tophot], [Mota], [ChiTiet], [IDNCC], [GiaTien], [GiaNhap], [PriceSale], [TonKho]) VALUES (47, N'Luyện Viết Tiếng Anh', N'luyen-viet-tieng-anh', N'Ngô Diệu', N'Giáo Dục', 150, N'/DataImage/files/AnhSanPham1105010122052.jpg', 2, NULL, CAST(N'2021-12-11T00:09:50.530' AS DateTime), 6, 1, 1, N'Cuốn sách Lịch sử đô thị này là phần tái bản và tổng hợp từ 2 cuốn sách Quy hoạch đô thị cận hiện đại Phương Tây và Quy hoạch đô thị cổ đại và trung đại thế giới của tác giả Đặng Thái Hoàng. Hai cuốn sách trên đã được sử dụng làm tài liệu giảng dạy và nghiên cứu cho sinh viên, nghiên cứu sinh ngành kiến trúc quy hoạch và các kiến trúc sư tham khảo. Cuốn sách này được hoàn thiện hơn nhằm tǎng thêm tính thuận tiện trong công tác học tập và giảng dạy của các kiến trúc sư và sinh viên chuyên ngành. Mời các bạn tìm đọc.', N'"Sản phẩm outlet sales có thể bị cũ, dơ hoặc bao bì bị sờn, rách nhẹ"', 2, 98000, 89000, NULL, 150)
INSERT [dbo].[Sanpham] ([IDContent], [Name], [MetaTitle], [TacGia], [NhaXuatBan], [Soluong], [Images], [CategoryID], [Quanlity], [NgayTao], [IDNguoiTao], [Status], [Tophot], [Mota], [ChiTiet], [IDNCC], [GiaTien], [GiaNhap], [PriceSale], [TonKho]) VALUES (48, N'Phương Thuốc Dân Gian', N'phuong-thuoc-dan-gian', N'Kim Đồng', N'Kim Đồng', 190, N'/DataImage/files/AnhSanPham1109060251335.jpg', 12, NULL, CAST(N'2021-12-11T00:09:30.177' AS DateTime), NULL, 1, 3, N'Cuốn sách Lịch sử đô thị này là phần tái bản và tổng hợp từ 2 cuốn sách Quy hoạch đô thị cận hiện đại Phương Tây và Quy hoạch đô thị cổ đại và trung đại thế giới của tác giả Đặng Thái Hoàng. Hai cuốn sách trên đã được sử dụng làm tài liệu giảng dạy và nghiên cứu cho sinh viên, nghiên cứu sinh ngành kiến trúc quy hoạch và các kiến trúc sư tham khảo. Cuốn sách này được hoàn thiện hơn nhằm tǎng thêm tính thuận tiện trong công tác học tập và giảng dạy của các kiến trúc sư và sinh viên chuyên ngành. Mời các bạn tìm đọc.', N'"Sản phẩm outlet sales có thể bị cũ, dơ hoặc bao bì bị sờn, rách nhẹ"', NULL, 12900, 10000, NULL, 190)
INSERT [dbo].[Sanpham] ([IDContent], [Name], [MetaTitle], [TacGia], [NhaXuatBan], [Soluong], [Images], [CategoryID], [Quanlity], [NgayTao], [IDNguoiTao], [Status], [Tophot], [Mota], [ChiTiet], [IDNCC], [GiaTien], [GiaNhap], [PriceSale], [TonKho]) VALUES (49, N'Tổng Bí Thư Trường Trinh Cuộc Đời Và Sự Nghiệp Cách Mạng', N'tong-bi-thu-truong-trinh-cuoc-doi-va-su-nghiep-cach-mang', N'Trường Trinh', N'Chính Trị - Hà Nội', 19, N'/DataImage/files/AnhSanPham5095762408237.jpg', 2, NULL, CAST(N'2021-12-11T22:06:08.720' AS DateTime), NULL, 1, 13, N'Cuốn sách Lịch sử đô thị này là phần tái bản và tổng hợp từ 2 cuốn sách Quy hoạch đô thị cận hiện đại Phương Tây và Quy hoạch đô thị cổ đại và trung đại thế giới của tác giả Đặng Thái Hoàng. Hai cuốn sách trên đã được sử dụng làm tài liệu giảng dạy và nghiên cứu cho sinh viên, nghiên cứu sinh ngành kiến trúc quy hoạch và các kiến trúc sư tham khảo. Cuốn sách này được hoàn thiện hơn nhằm tǎng thêm tính thuận tiện trong công tác học tập và giảng dạy của các kiến trúc sư và sinh viên chuyên ngành. Mời các bạn tìm đọc.', N'"Sản phẩm outlet sales có thể bị cũ, dơ hoặc bao bì bị sờn, rách nhẹ"', NULL, 120000, 100000, 10, 32)
INSERT [dbo].[Sanpham] ([IDContent], [Name], [MetaTitle], [TacGia], [NhaXuatBan], [Soluong], [Images], [CategoryID], [Quanlity], [NgayTao], [IDNguoiTao], [Status], [Tophot], [Mota], [ChiTiet], [IDNCC], [GiaTien], [GiaNhap], [PriceSale], [TonKho]) VALUES (50, N'Sức Khỏe Quý Hơn Vàng', N'suc-khoe-quy-hon-vang', N'Sức Sống Hà Nội', N'Chính Trị - Hà Nội', 0, N'/DataImage/files/AnhSanPham5155552409995.jpg', 9, NULL, CAST(N'2021-12-12T20:09:24.890' AS DateTime), NULL, 1, 1, N'Cuốn sách Lịch sử đô thị này là phần tái bản và tổng hợp từ 2 cuốn sách Quy hoạch đô thị cận hiện đại Phương Tây và Quy hoạch đô thị cổ đại và trung đại thế giới của tác giả Đặng Thái Hoàng. Hai cuốn sách trên đã được sử dụng làm tài liệu giảng dạy và nghiên cứu cho sinh viên, nghiên cứu sinh ngành kiến trúc quy hoạch và các kiến trúc sư tham khảo. Cuốn sách này được hoàn thiện hơn nhằm tǎng thêm tính thuận tiện trong công tác học tập và giảng dạy của các kiến trúc sư và sinh viên chuyên ngành. Mời các bạn tìm đọc.', N'"Sản phẩm outlet sales có thể bị cũ, dơ hoặc bao bì bị sờn, rách nhẹ"', NULL, 98000, 79000, NULL, 0)
INSERT [dbo].[Sanpham] ([IDContent], [Name], [MetaTitle], [TacGia], [NhaXuatBan], [Soluong], [Images], [CategoryID], [Quanlity], [NgayTao], [IDNguoiTao], [Status], [Tophot], [Mota], [ChiTiet], [IDNCC], [GiaTien], [GiaNhap], [PriceSale], [TonKho]) VALUES (51, N'Vi Xử Lý Lập Trình', N'vi-xu-ly-lap-trinh', N'Ngô Diệc Phàm', N'Giáo Dục', -1, N'/DataImage/files/AnhSanPham8935048921234.jpg', 1, NULL, CAST(N'2021-12-12T20:48:08.673' AS DateTime), NULL, 1, 2, N'Cuốn sách Lịch sử đô thị này là phần tái bản và tổng hợp từ 2 cuốn sách Quy hoạch đô thị cận hiện đại Phương Tây và Quy hoạch đô thị cổ đại và trung đại thế giới của tác giả Đặng Thái Hoàng. Hai cuốn sách trên đã được sử dụng làm tài liệu giảng dạy và nghiên cứu cho sinh viên, nghiên cứu sinh ngành kiến trúc quy hoạch và các kiến trúc sư tham khảo. Cuốn sách này được hoàn thiện hơn nhằm tǎng thêm tính thuận tiện trong công tác học tập và giảng dạy của các kiến trúc sư và sinh viên chuyên ngành. Mời các bạn tìm đọc.', N'"Sản phẩm outlet sales có thể bị cũ, dơ hoặc bao bì bị sờn, rách nhẹ"', NULL, 12900, 10000, NULL, -1)
INSERT [dbo].[Sanpham] ([IDContent], [Name], [MetaTitle], [TacGia], [NhaXuatBan], [Soluong], [Images], [CategoryID], [Quanlity], [NgayTao], [IDNguoiTao], [Status], [Tophot], [Mota], [ChiTiet], [IDNCC], [GiaTien], [GiaNhap], [PriceSale], [TonKho]) VALUES (52, N'Thiết Kế Chi Tiết Máy', N'thiet-ke-chi-tiet-may', N'Thiên Thành', N'Thiên Thành', 0, N'/DataImage/files/AnhSanPham8934994118606.jpg', 1, NULL, CAST(N'2021-12-12T20:49:57.720' AS DateTime), NULL, 1, 1, N'Cuốn sách Lịch sử đô thị này là phần tái bản và tổng hợp từ 2 cuốn sách Quy hoạch đô thị cận hiện đại Phương Tây và Quy hoạch đô thị cổ đại và trung đại thế giới của tác giả Đặng Thái Hoàng. Hai cuốn sách trên đã được sử dụng làm tài liệu giảng dạy và nghiên cứu cho sinh viên, nghiên cứu sinh ngành kiến trúc quy hoạch và các kiến trúc sư tham khảo. Cuốn sách này được hoàn thiện hơn nhằm tǎng thêm tính thuận tiện trong công tác học tập và giảng dạy của các kiến trúc sư và sinh viên chuyên ngành. Mời các bạn tìm đọc.', N'"Sản phẩm outlet sales có thể bị cũ, dơ hoặc bao bì bị sờn, rách nhẹ"', NULL, 23000, 17000, NULL, 0)
INSERT [dbo].[Sanpham] ([IDContent], [Name], [MetaTitle], [TacGia], [NhaXuatBan], [Soluong], [Images], [CategoryID], [Quanlity], [NgayTao], [IDNguoiTao], [Status], [Tophot], [Mota], [ChiTiet], [IDNCC], [GiaTien], [GiaNhap], [PriceSale], [TonKho]) VALUES (53, N'Xử Lý Nước Cấp Sinh Hoạt Và Công Nghiệp', N'xu-ly-nuoc-cap-sinh-hoat-va-cong-nghiep', N'PGS. TS Nguyễn Thị Thu Thủy', N'Giáo Dục', 142, N'/DataImage/files/AnhSanPham8935048922286.jpg', 9, NULL, CAST(N'2021-12-12T20:53:36.537' AS DateTime), NULL, 1, 9, N'Cuốn sách Lịch sử đô thị này là phần tái bản và tổng hợp từ 2 cuốn sách Quy hoạch đô thị cận hiện đại Phương Tây và Quy hoạch đô thị cổ đại và trung đại thế giới của tác giả Đặng Thái Hoàng. Hai cuốn sách trên đã được sử dụng làm tài liệu giảng dạy và nghiên cứu cho sinh viên, nghiên cứu sinh ngành kiến trúc quy hoạch và các kiến trúc sư tham khảo. Cuốn sách này được hoàn thiện hơn nhằm tǎng thêm tính thuận tiện trong công tác học tập và giảng dạy của các kiến trúc sư và sinh viên chuyên ngành. Mời các bạn tìm đọc.', N'"Sản phẩm outlet sales có thể bị cũ, dơ hoặc bao bì bị sờn, rách nhẹ"', NULL, 34000, 30000, 25, 148)
INSERT [dbo].[Sanpham] ([IDContent], [Name], [MetaTitle], [TacGia], [NhaXuatBan], [Soluong], [Images], [CategoryID], [Quanlity], [NgayTao], [IDNguoiTao], [Status], [Tophot], [Mota], [ChiTiet], [IDNCC], [GiaTien], [GiaNhap], [PriceSale], [TonKho]) VALUES (54, N'Quyền Của Eva', N'quyen-cua-eva', N'Dân Gian', N'Kim Đồng', 14, N'/DataImage/files/AnhSanPham8932000117841.jpg', 2, NULL, CAST(N'2021-12-12T20:54:57.017' AS DateTime), NULL, 1, 2, N'Cuốn sách Lịch sử đô thị này là phần tái bản và tổng hợp từ 2 cuốn sách Quy hoạch đô thị cận hiện đại Phương Tây và Quy hoạch đô thị cổ đại và trung đại thế giới của tác giả Đặng Thái Hoàng. Hai cuốn sách trên đã được sử dụng làm tài liệu giảng dạy và nghiên cứu cho sinh viên, nghiên cứu sinh ngành kiến trúc quy hoạch và các kiến trúc sư tham khảo. Cuốn sách này được hoàn thiện hơn nhằm tǎng thêm tính thuận tiện trong công tác học tập và giảng dạy của các kiến trúc sư và sinh viên chuyên ngành. Mời các bạn tìm đọc.', N'"Sản phẩm outlet sales có thể bị cũ, dơ hoặc bao bì bị sờn, rách nhẹ"', NULL, 79000, 70000, NULL, 15)
INSERT [dbo].[Sanpham] ([IDContent], [Name], [MetaTitle], [TacGia], [NhaXuatBan], [Soluong], [Images], [CategoryID], [Quanlity], [NgayTao], [IDNguoiTao], [Status], [Tophot], [Mota], [ChiTiet], [IDNCC], [GiaTien], [GiaNhap], [PriceSale], [TonKho]) VALUES (55, N'Sinh Ra Là Thế', N'sinh-ra-la-the', N'Dân Gian', N'Thiên Thành', 14, N'/DataImage/files/AnhSanPham8934974119180.jpg', 15, NULL, CAST(N'2021-12-12T20:58:02.317' AS DateTime), NULL, 1, 2, N'Cuốn sách Lịch sử đô thị này là phần tái bản và tổng hợp từ 2 cuốn sách Quy hoạch đô thị cận hiện đại Phương Tây và Quy hoạch đô thị cổ đại và trung đại thế giới của tác giả Đặng Thái Hoàng. Hai cuốn sách trên đã được sử dụng làm tài liệu giảng dạy và nghiên cứu cho sinh viên, nghiên cứu sinh ngành kiến trúc quy hoạch và các kiến trúc sư tham khảo. Cuốn sách này được hoàn thiện hơn nhằm tǎng thêm tính thuận tiện trong công tác học tập và giảng dạy của các kiến trúc sư và sinh viên chuyên ngành. Mời các bạn tìm đọc.', N'"Sản phẩm outlet sales có thể bị cũ, dơ hoặc bao bì bị sờn, rách nhẹ"', NULL, 100000, 90000, NULL, 15)
INSERT [dbo].[Sanpham] ([IDContent], [Name], [MetaTitle], [TacGia], [NhaXuatBan], [Soluong], [Images], [CategoryID], [Quanlity], [NgayTao], [IDNguoiTao], [Status], [Tophot], [Mota], [ChiTiet], [IDNCC], [GiaTien], [GiaNhap], [PriceSale], [TonKho]) VALUES (56, N'Lịch Sử Văn Hóa Đông Nam Á', N'lich-su-van-hoa-dong-nam-a', N'HỒ CHÍ MINH', N'Kim Đồng', 208, N'/DataImage/files/AnhSanPham8935075928961.jpg', 15, NULL, CAST(N'2021-12-12T20:59:32.200' AS DateTime), NULL, 1, 2, N'Cuốn sách Lịch sử đô thị này là phần tái bản và tổng hợp từ 2 cuốn sách Quy hoạch đô thị cận hiện đại Phương Tây và Quy hoạch đô thị cổ đại và trung đại thế giới của tác giả Đặng Thái Hoàng. Hai cuốn sách trên đã được sử dụng làm tài liệu giảng dạy và nghiên cứu cho sinh viên, nghiên cứu sinh ngành kiến trúc quy hoạch và các kiến trúc sư tham khảo. Cuốn sách này được hoàn thiện hơn nhằm tǎng thêm tính thuận tiện trong công tác học tập và giảng dạy của các kiến trúc sư và sinh viên chuyên ngành. Mời các bạn tìm đọc.', N'"Sản phẩm outlet sales có thể bị cũ, dơ hoặc bao bì bị sờn, rách nhẹ"', NULL, 20000, 15000, NULL, 209)
INSERT [dbo].[Sanpham] ([IDContent], [Name], [MetaTitle], [TacGia], [NhaXuatBan], [Soluong], [Images], [CategoryID], [Quanlity], [NgayTao], [IDNguoiTao], [Status], [Tophot], [Mota], [ChiTiet], [IDNCC], [GiaTien], [GiaNhap], [PriceSale], [TonKho]) VALUES (57, N'Giáo Trình Lịch Sử Kiến Trúc Thế Giới', N'lich-su-van-hoa-dong-nam-a', N'HỒ CHÍ MINH', N'Kim Đồng', 143, N'/DataImage/files/AnhSanPham8935048922088.jpg', 15, NULL, CAST(N'2021-12-12T21:00:27.537' AS DateTime), NULL, 1, 2, N'Cuốn sách Lịch sử đô thị này là phần tái bản và tổng hợp từ 2 cuốn sách Quy hoạch đô thị cận hiện đại Phương Tây và Quy hoạch đô thị cổ đại và trung đại thế giới của tác giả Đặng Thái Hoàng. Hai cuốn sách trên đã được sử dụng làm tài liệu giảng dạy và nghiên cứu cho sinh viên, nghiên cứu sinh ngành kiến trúc quy hoạch và các kiến trúc sư tham khảo. Cuốn sách này được hoàn thiện hơn nhằm tǎng thêm tính thuận tiện trong công tác học tập và giảng dạy của các kiến trúc sư và sinh viên chuyên ngành. Mời các bạn tìm đọc.', N'"Sản phẩm outlet sales có thể bị cũ, dơ hoặc bao bì bị sờn, rách nhẹ"', NULL, 20000, 15000, NULL, 144)
INSERT [dbo].[Sanpham] ([IDContent], [Name], [MetaTitle], [TacGia], [NhaXuatBan], [Soluong], [Images], [CategoryID], [Quanlity], [NgayTao], [IDNguoiTao], [Status], [Tophot], [Mota], [ChiTiet], [IDNCC], [GiaTien], [GiaNhap], [PriceSale], [TonKho]) VALUES (58, N'Chuyện Ít Biết Về Ngày Giải Phóng Sài Gòn 30-04-1975', N'chuyen-it-biet-ve-ngay-giai-phong-sai-gon-30-04-1975', N'Nguyễn Hữu Thành', N'Kim Đồng', 0, N'/DataImage/files/AnhSanPham8932000117865.jpg', 15, NULL, CAST(N'2021-12-12T21:01:56.763' AS DateTime), NULL, 1, 1, N'Cuốn sách Lịch sử đô thị này là phần tái bản và tổng hợp từ 2 cuốn sách Quy hoạch đô thị cận hiện đại Phương Tây và Quy hoạch đô thị cổ đại và trung đại thế giới của tác giả Đặng Thái Hoàng. Hai cuốn sách trên đã được sử dụng làm tài liệu giảng dạy và nghiên cứu cho sinh viên, nghiên cứu sinh ngành kiến trúc quy hoạch và các kiến trúc sư tham khảo. Cuốn sách này được hoàn thiện hơn nhằm tǎng thêm tính thuận tiện trong công tác học tập và giảng dạy của các kiến trúc sư và sinh viên chuyên ngành. Mời các bạn tìm đọc.', N'"Sản phẩm outlet sales có thể bị cũ, dơ hoặc bao bì bị sờn, rách nhẹ"', NULL, 20000, 15000, NULL, 0)
INSERT [dbo].[Sanpham] ([IDContent], [Name], [MetaTitle], [TacGia], [NhaXuatBan], [Soluong], [Images], [CategoryID], [Quanlity], [NgayTao], [IDNguoiTao], [Status], [Tophot], [Mota], [ChiTiet], [IDNCC], [GiaTien], [GiaNhap], [PriceSale], [TonKho]) VALUES (59, N'Đời Đơn Giản Khi Ta Đơn Giản', N'doi-don-gian-khi-ta-don-gian', N'Nguyễn Hữu Thành', N'Kim Đồng', 0, N'/DataImage/files/AnhSanPham8934974119104.JPG', 15, NULL, CAST(N'2021-12-12T21:04:51.810' AS DateTime), NULL, 1, 1, N'Cuốn sách Lịch sử đô thị này là phần tái bản và tổng hợp từ 2 cuốn sách Quy hoạch đô thị cận hiện đại Phương Tây và Quy hoạch đô thị cổ đại và trung đại thế giới của tác giả Đặng Thái Hoàng. Hai cuốn sách trên đã được sử dụng làm tài liệu giảng dạy và nghiên cứu cho sinh viên, nghiên cứu sinh ngành kiến trúc quy hoạch và các kiến trúc sư tham khảo. Cuốn sách này được hoàn thiện hơn nhằm tǎng thêm tính thuận tiện trong công tác học tập và giảng dạy của các kiến trúc sư và sinh viên chuyên ngành. Mời các bạn tìm đọc.', N'"Sản phẩm outlet sales có thể bị cũ, dơ hoặc bao bì bị sờn, rách nhẹ"', NULL, 20000, 15000, NULL, 0)
INSERT [dbo].[Sanpham] ([IDContent], [Name], [MetaTitle], [TacGia], [NhaXuatBan], [Soluong], [Images], [CategoryID], [Quanlity], [NgayTao], [IDNguoiTao], [Status], [Tophot], [Mota], [ChiTiet], [IDNCC], [GiaTien], [GiaNhap], [PriceSale], [TonKho]) VALUES (60, N'Những câu chuyện kể về cuộc đời hoạt động của Bác Hồ', N'nhung-cau-chuyen-ke-ve-cuoc-doi-hoat-dong-cua-Bac-Ho', N'Nhiều Tác Giả', N'Kim Đồng', 17, N'/DataImage/files/AnhSanPham8935053214802.jpg', 15, NULL, CAST(N'2021-12-12T21:10:17.440' AS DateTime), NULL, 1, 4, N'Cuốn sách Lịch sử đô thị này là phần tái bản và tổng hợp từ 2 cuốn sách Quy hoạch đô thị cận hiện đại Phương Tây và Quy hoạch đô thị cổ đại và trung đại thế giới của tác giả Đặng Thái Hoàng. Hai cuốn sách trên đã được sử dụng làm tài liệu giảng dạy và nghiên cứu cho sinh viên, nghiên cứu sinh ngành kiến trúc quy hoạch và các kiến trúc sư tham khảo. Cuốn sách này được hoàn thiện hơn nhằm tǎng thêm tính thuận tiện trong công tác học tập và giảng dạy của các kiến trúc sư và sinh viên chuyên ngành. Mời các bạn tìm đọc.', N'"Sản phẩm outlet sales có thể bị cũ, dơ hoặc bao bì bị sờn, rách nhẹ"', NULL, 20000, 15000, NULL, 18)
INSERT [dbo].[Sanpham] ([IDContent], [Name], [MetaTitle], [TacGia], [NhaXuatBan], [Soluong], [Images], [CategoryID], [Quanlity], [NgayTao], [IDNguoiTao], [Status], [Tophot], [Mota], [ChiTiet], [IDNCC], [GiaTien], [GiaNhap], [PriceSale], [TonKho]) VALUES (61, N'37 Chuẩn mực kiểm toán việt nam', N'chuan-muc-kiem-toan-viet-nam', N'Nguyễn Hữu Thành', N'Kim Đồng', 242, N'/DataImage/files/AnhSanPham5064042410239.jpg', 15, NULL, CAST(N'2021-12-12T21:13:13.163' AS DateTime), NULL, 1, 5, N'Cuốn sách Lịch sử đô thị này là phần tái bản và tổng hợp từ 2 cuốn sách Quy hoạch đô thị cận hiện đại Phương Tây và Quy hoạch đô thị cổ đại và trung đại thế giới của tác giả Đặng Thái Hoàng. Hai cuốn sách trên đã được sử dụng làm tài liệu giảng dạy và nghiên cứu cho sinh viên, nghiên cứu sinh ngành kiến trúc quy hoạch và các kiến trúc sư tham khảo. Cuốn sách này được hoàn thiện hơn nhằm tǎng thêm tính thuận tiện trong công tác học tập và giảng dạy của các kiến trúc sư và sinh viên chuyên ngành. Mời các bạn tìm đọc.', N'"Sản phẩm outlet sales có thể bị cũ, dơ hoặc bao bì bị sờn, rách nhẹ"', NULL, 140000, 130000, NULL, 239)
INSERT [dbo].[Sanpham] ([IDContent], [Name], [MetaTitle], [TacGia], [NhaXuatBan], [Soluong], [Images], [CategoryID], [Quanlity], [NgayTao], [IDNguoiTao], [Status], [Tophot], [Mota], [ChiTiet], [IDNCC], [GiaTien], [GiaNhap], [PriceSale], [TonKho]) VALUES (62, N'Nhật ký say nắng của Cassie', N'nhat-ky-say-nang-cua-Cassie', N'Nguyễn Hữu Thành', N'Kim Đồng', 197, N'/DataImage/files/AnhSanPham8934974119425.jpg', 15, NULL, CAST(N'2021-12-12T21:14:09.497' AS DateTime), NULL, 1, 6, N'Cuốn sách Lịch sử đô thị này là phần tái bản và tổng hợp từ 2 cuốn sách Quy hoạch đô thị cận hiện đại Phương Tây và Quy hoạch đô thị cổ đại và trung đại thế giới của tác giả Đặng Thái Hoàng. Hai cuốn sách trên đã được sử dụng làm tài liệu giảng dạy và nghiên cứu cho sinh viên, nghiên cứu sinh ngành kiến trúc quy hoạch và các kiến trúc sư tham khảo. Cuốn sách này được hoàn thiện hơn nhằm tǎng thêm tính thuận tiện trong công tác học tập và giảng dạy của các kiến trúc sư và sinh viên chuyên ngành. Mời các bạn tìm đọc.', N'"Sản phẩm outlet sales có thể bị cũ, dơ hoặc bao bì bị sờn, rách nhẹ"', NULL, 140000, 130000, NULL, 199)
INSERT [dbo].[Sanpham] ([IDContent], [Name], [MetaTitle], [TacGia], [NhaXuatBan], [Soluong], [Images], [CategoryID], [Quanlity], [NgayTao], [IDNguoiTao], [Status], [Tophot], [Mota], [ChiTiet], [IDNCC], [GiaTien], [GiaNhap], [PriceSale], [TonKho]) VALUES (63, N'Ăn Sạch Sống Xanh, Tâm Lành Trí Khoẻ', N'tu-nhien-xa-hoi', N'Darin Olien', N'Nhà Xuất Bản Thanh Niên', 200, N'/DataImage/files/AnhSanPham19022023.jpg', 17, NULL, CAST(N'2023-02-19T01:34:31.043' AS DateTime), NULL, 1, 1, N'Những người cho rằng một bữa ăn fast-food giá rẻ thì có giá trị hơn một bát salad hoa quả trộn rau sạch sẽ, sẽ có ngày họ nhận ra rằng, bữa ăn giá rẻ đó sẽ là bữa đắt nhất mà họ từng ăn.

Nhiều người cảm thấy hơi tệ một chút và nghĩ rằng họ vẫn ổn. Nhưng ổn thôi liệu có đủ hay không? Bạn có biết sao không? Chúng ta chỉ sống duy nhất một lần và “ổn” thôi chắc chắn là chưa đủ.

Hướng dẫn thiết yếu giúp bạn xây dựng chế độ dinh dưỡng lành mạnh, phòng ngừa và chữa lành những tổn thương.

Trong Ăn sạch sống xanh, tâm lành trí khỏe, Darin Olien cung cấp cho chúng ta một cách suy nghĩ hoàn toàn mới về sức khỏe và hạnh phúc bằng cách xác định các động lực sống: Dinh dưỡng chất lượng, Hydrat hóa, Giải độc, Oxy hóa và Kiềm hóa, cho chúng ta biết cách duy trì cân nặng hợp lý, ngăn ngừa ngay cả những căn bệnh nghiêm trọng nhất. Chúng ta luôn được dạy phải xem máu, xương, da, các cơ quan, các nơ-ron thần kinh và tất cả mọi thứ khác một cách riêng rẽ và mỗi bộ phận lại mang đến những vấn đề hay mối lo ngại không giống nhau. Nhưng sự thật là, mỗi một bộ phận nhỏ nhất bên trong cơ thể người, mọi phân tử và tế bào đều phản ứng với năm sinh lực của cuộc sống kể trên. Việc ta cần làm chỉ là làm sao nắm bắt những yêu cầu đó - năm sinh lực của cuộc sống. Và sau đó, ta phải cố gắng hết sức để hoàn thành.

Với cách tiếp cận toàn diện, tổng thể và duy nhất để chăm sóc sức khỏe, Olien sẽ dạy bạn cách khai thác sức mạnh siêu việt của thực phẩm, nước, oxy và cân bằng độ pH để sống cuộc sống tốt nhất của bạn hôm nay, ngày mai và trong tương lai. Dựa trên những hướng dẫn sử dụng “Cách ăn”, danh sách mua sắm, lời khuyên về “những thứ cần vứt bỏ”, hướng dẫn tạo kế hoạch ăn kiêng lành mạnh, cân bằng và lời khuyên về cách sử dụng thực phẩm bổ sung một cách hiệu quả, Ăn sạch sống xanh, tâm lành trí khỏe là một cái nhìn toàn diện về chế độ ăn kiêng và dinh dưỡng, một hướng dẫn thiết yếu giúp chúng ta có một cơ thể khỏe mạnh, tràn đầy sinh lực và hạnh phúc mỗi ngày.

Giá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, thuế nhập khẩu (đối với đơn hàng giao từ nước ngoài có giá trị trên 1 triệu đồng).....', N'Công ty phát hành	1980 Books
Ngày xuất bản	2022-06-06 00:00:00
Kích thước	16 x 24 cm
Dịch Giả	Thảo Phương
Loại bìa	Bìa mềm
Số trang	336
Nhà xuất bản	Nhà Xuất Bản Thanh Niên', NULL, 109000, 80000, 80, 200)
INSERT [dbo].[Sanpham] ([IDContent], [Name], [MetaTitle], [TacGia], [NhaXuatBan], [Soluong], [Images], [CategoryID], [Quanlity], [NgayTao], [IDNguoiTao], [Status], [Tophot], [Mota], [ChiTiet], [IDNCC], [GiaTien], [GiaNhap], [PriceSale], [TonKho]) VALUES (64, N'Thao Túng Tâm Lý', N'Tieu-Thuyet', N'Shannon Thomas, LCSW', N'Nhà Xuất Bản Dân Trí', 1000, N'/DataImage/files/ThaoTungTamLy.jpg', 2, NULL, CAST(N'2023-02-19T01:55:12.330' AS DateTime), NULL, 1, 1, N'Trong cuốn “Thao túng tâm lý”, tác giả Shannon Thomas giới thiệu đến độc giả những hiểu biết liên quan đến thao túng tâm lý và lạm dụng tiềm ẩn.

“Thao túng tâm lý” là một dạng của lạm dụng tâm lý. Cũng giống như lạm dụng tâm lý, thao túng tâm lý có thể xuất hiện ở bất kỳ môi trường nào, từ bất cứ đối tượng độc hại nào. Đó có thể là bố mẹ ruột, anh chị em ruột, người yêu, vợ hoặc chồng, sếp hay đồng nghiệp… của bạn. Với tính chất bí hiểm, âm thầm gây hại, thao túng, lạm dụng tâm lý làm tổn thương cảm xúc, lòng tự trọng, cuộc sống của mỗi nạn nhân. Những người từng bị lạm dụng tâm lý thường không thể miêu tả rõ ràng điều gì đã xảy ra với mình. Trong nhiều trường hợp, nạn nhân bị thao túng đến mức tự hỏi có phải họ là người có lỗi, thậm chí họ có phải là người độc hại trong mối quan hệ đó.

Hành vi của (những) kẻ lạm dụng giống như một trò chơi bí ẩn, tệ hại và lặp đi lặp lại, do một cá nhân hoặc một nhóm người thực hiện với nạn nhân. Những hành vi này được ngụy trang tài tình đến mức hành vi độc ác của họ diễn ra thường xuyên, nhưng không bị phát hiện.

Shannon Thomas giới thiệu những kiến thức cơ bản về đặc điểm, các dạng của lạm dụng tâm lý nói chung, thao túng tâm lý nói riêng, và cung cấp cho người đọc hành trình chữa lành gồm 6 giai đoạn:

Giai đoạn 1: Tuyệt vọng
Giai đoạn 2: Nhận diện
Giai đoạn 3: Thức tỉnh
Giai đoạn 4: Những ranh giới
Giai đoạn 5: Phục hồi
Giai đoạn 6: Duy trì
Bằng những kiến thức chuyên sâu và sự thấu hiểu, tác giả sẽ giúp bạn từng bước vượt qua những rắc rối của thao túng tâm lý, lạm dụng tiểm ẩn để có cuộc sống ý nghĩa và lành mạnh hơn.

Thông tin tác giả:

Shannon Thomas, là một nhà giám sát công tác xã hội y tế được cấp phép hành nghề, và là chủ phòng tư vấn/chuyên gia tư vấn tâm lý chính của phòng tư vấn Southlake Christian (SCC) ở Southlake, bang Texas.

SCC từng nhận giải thưởng “Phòng thực hành tư vấn tâm lý tốt nhất” năm 2016 của Living Magazine khu vực Hạt Northeast Tarrant tại Dallas-Fort Worth.

Thomas là Trợ giảng chuyên ngành và là thành viên Ủy ban tư vấn của Khoa Công tác xã hội – Trường Đại học Texas Christian.
Cách tiếp cận khi tư vấn tâm lý của cô ấy xuất phát từ góc nhìn của một nhà tư vấn tâm lý được cấp phép hành nghề đồng thời từ góc nhìn của một người đi trước, một người sống sót sau khi bị lạm dụng tâm lý.

Giá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, thuế nhập khẩu (đối với đơn hàng giao từ nước ngoài có giá trị trên 1 triệu đồng).....

', N'"Sản phẩm outlet sales có thể bị cũ, dơ hoặc bao bì bị sờn, rách nhẹ"', NULL, 91000, 30000, 90, 1000)
SET IDENTITY_INSERT [dbo].[Sanpham] OFF
GO
SET IDENTITY_INSERT [dbo].[Slide] ON 

INSERT [dbo].[Slide] ([Id], [Image], [DisPlayOrder], [Title], [Link], [Status]) VALUES (2, N'/DataImage/images/1.png', 1, N'Giấc Mơ Mỹ Đường Đến STANFORD', NULL, 1)
INSERT [dbo].[Slide] ([Id], [Image], [DisPlayOrder], [Title], [Link], [Status]) VALUES (3, N'/DataImage/images/1002.jpg', 2, N'Tủ Sách Ngoại Ngữ', NULL, 1)
INSERT [dbo].[Slide] ([Id], [Image], [DisPlayOrder], [Title], [Link], [Status]) VALUES (4, N'/DataImage/images/1003.jpg', 3, N'Top Sách Kỹ Năng Sống', NULL, 1)
INSERT [dbo].[Slide] ([Id], [Image], [DisPlayOrder], [Title], [Link], [Status]) VALUES (5, N'/DataImage/images/1004.jpg', 4, N'Tặng Cả Thế Giới Sách Cho Con', NULL, 1)
INSERT [dbo].[Slide] ([Id], [Image], [DisPlayOrder], [Title], [Link], [Status]) VALUES (6, N'/DataImage/images/1000.jpg', 5, N'Tôi  Thấy Tuổi Thơ Trên Trang Sách', NULL, 1)
SET IDENTITY_INSERT [dbo].[Slide] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([IDUser], [UserName], [PassWord], [Name], [Adress], [Email], [Phone], [Status], [NgayTao], [NguoiTao], [ModifiedDate], [ModifiedBy], [IDQuyen]) VALUES (12, N'hoangthuong', N'3ccc92e666eecce9d867dc7f3206a34a', N'HOANG VAN SANG', N'Hà Nam, Yên Thế, Đương Đại', N'sangdt97@gmail.com', N'0889932798', 1, CAST(N'2021-08-24' AS Date), NULL, NULL, NULL, 2)
INSERT [dbo].[User] ([IDUser], [UserName], [PassWord], [Name], [Adress], [Email], [Phone], [Status], [NgayTao], [NguoiTao], [ModifiedDate], [ModifiedBy], [IDQuyen]) VALUES (13, N'chumninja1999', N'fc2a3906c310f090e7d194d867cf4de3', N'Đinh Văn Nam', N'Hưng Yên, Phố Hiến, Đình Trung', N'hoangvtnam1996@gmail.com', N'098989119', 1, CAST(N'2021-08-21' AS Date), NULL, NULL, NULL, 2)
INSERT [dbo].[User] ([IDUser], [UserName], [PassWord], [Name], [Adress], [Email], [Phone], [Status], [NgayTao], [NguoiTao], [ModifiedDate], [ModifiedBy], [IDQuyen]) VALUES (14, N'baba3', N'fc2a3906c310f090e7d194d867cf4de3', N'Phạm Hồng Anh', N'Khu Trạo Hà, Đông Triều, Quảng Ninh', N'hungtran8909@gmail.com', N'0338279409', 1, CAST(N'2021-12-22' AS Date), NULL, NULL, NULL, 2)
INSERT [dbo].[User] ([IDUser], [UserName], [PassWord], [Name], [Adress], [Email], [Phone], [Status], [NgayTao], [NguoiTao], [ModifiedDate], [ModifiedBy], [IDQuyen]) VALUES (15, N'hungjuki7', N'fc2a3906c310f090e7d194d867cf4de3', N'Hoang Thuy Luong', N'Huong Long, Hue, Thua Thien Hue', N'hvtnam1999@gmail.com', N'098988282', 1, CAST(N'2021-09-03' AS Date), NULL, NULL, NULL, 2)
INSERT [dbo].[User] ([IDUser], [UserName], [PassWord], [Name], [Adress], [Email], [Phone], [Status], [NgayTao], [NguoiTao], [ModifiedDate], [ModifiedBy], [IDQuyen]) VALUES (16, N'nubuihung', N'fc2a3906c310f090e7d194d867cf4de3', N'VAN SANG HOANG', N'HA NOI', N'sangdt97@gmail.com', N'08889932798', 1, CAST(N'2021-08-26' AS Date), NULL, NULL, NULL, 2)
INSERT [dbo].[User] ([IDUser], [UserName], [PassWord], [Name], [Adress], [Email], [Phone], [Status], [NgayTao], [NguoiTao], [ModifiedDate], [ModifiedBy], [IDQuyen]) VALUES (17, N'anhdaden', N'fc2a3906c310f090e7d194d867cf4de3', N'Đinh Tràng An', N'Ninh Binh, Phố Hiến, Nam Định', N'nubuihung222@gmail.com', N'0356778112', 1, CAST(N'2021-08-30' AS Date), NULL, NULL, NULL, 2)
INSERT [dbo].[User] ([IDUser], [UserName], [PassWord], [Name], [Adress], [Email], [Phone], [Status], [NgayTao], [NguoiTao], [ModifiedDate], [ModifiedBy], [IDQuyen]) VALUES (18, N'idobaybi', N'25d55ad283aa400af464c76d713c07ad', N'VAN THUONG HOANG', N'Huong Long, Hue, Thua Thien Hue', N'nubuihung@gmail.com', N'0356778112', 1, CAST(N'2021-09-01' AS Date), NULL, NULL, NULL, 2)
INSERT [dbo].[User] ([IDUser], [UserName], [PassWord], [Name], [Adress], [Email], [Phone], [Status], [NgayTao], [NguoiTao], [ModifiedDate], [ModifiedBy], [IDQuyen]) VALUES (19, N'jackison899@gmail.com', N'e10adc3949ba59abbe56e057f20f883e', N'Phạm Linh  Khánh', N'Hải Dương Nam Định,Phú Quốc', N'jackison899@gmail.com', N'0889932789', 1, CAST(N'2021-09-01' AS Date), NULL, NULL, NULL, 2)
INSERT [dbo].[User] ([IDUser], [UserName], [PassWord], [Name], [Adress], [Email], [Phone], [Status], [NgayTao], [NguoiTao], [ModifiedDate], [ModifiedBy], [IDQuyen]) VALUES (20, N'user_tnicuoe_facebook@tfbnw.net', N'827ccb0eea8a706c4c34a16891f84e7b', N'User Test Login Facebook', N'Hòa Bình , Kon Tum, Đak Lắk', N'user_tnicuoe_facebook@tfbnw.net', N'0889932890', 1, CAST(N'2021-09-01' AS Date), NULL, NULL, NULL, 2)
INSERT [dbo].[User] ([IDUser], [UserName], [PassWord], [Name], [Adress], [Email], [Phone], [Status], [NgayTao], [NguoiTao], [ModifiedDate], [ModifiedBy], [IDQuyen]) VALUES (21, N'kemke', N'25d55ad283aa400af464c76d713c07ad', N'ĐINH HOÀNG NAM', N'Phố Hương, Lạng Sơn', N'hvtnam1998@gmail.com', N'0356778112', 1, CAST(N'2021-09-06' AS Date), NULL, NULL, NULL, 2)
INSERT [dbo].[User] ([IDUser], [UserName], [PassWord], [Name], [Adress], [Email], [Phone], [Status], [NgayTao], [NguoiTao], [ModifiedDate], [ModifiedBy], [IDQuyen]) VALUES (22, N'user_xuddhqc_test@tfbnw.net', N'827ccb0eea8a706c4c34a16891f84e7b', N'User FB Test', N'Hà Nam', N'user_xuddhqc_test@tfbnw.net', N'0890199911', 1, CAST(N'2021-10-08' AS Date), NULL, NULL, NULL, 2)
INSERT [dbo].[User] ([IDUser], [UserName], [PassWord], [Name], [Adress], [Email], [Phone], [Status], [NgayTao], [NguoiTao], [ModifiedDate], [ModifiedBy], [IDQuyen]) VALUES (24, N'anhdadendz', N'fc2a3906c310f090e7d194d867cf4de3', N'ÂN DƯ', N'Huong Long, Hue, Thua Thien Hue', N'thuongdt002@gmail.com', N'0356778112', 1, CAST(N'2021-11-25' AS Date), NULL, NULL, NULL, 2)
INSERT [dbo].[User] ([IDUser], [UserName], [PassWord], [Name], [Adress], [Email], [Phone], [Status], [NgayTao], [NguoiTao], [ModifiedDate], [ModifiedBy], [IDQuyen]) VALUES (26, N'becui', N'25d55ad283aa400af464c76d713c07ad', N'Hoang Juy', N'Hưng Đạo, Đông Triều, Quảng Ninh', N'thuongdt015@gmail.com', N'0356778112', 1, CAST(N'2021-12-20' AS Date), NULL, NULL, NULL, 0)
INSERT [dbo].[User] ([IDUser], [UserName], [PassWord], [Name], [Adress], [Email], [Phone], [Status], [NgayTao], [NguoiTao], [ModifiedDate], [ModifiedBy], [IDQuyen]) VALUES (27, N'hungjuki712', N'25f9e794323b453885f5181f1b624d0b', N'VAN THUONG HOANG', N'Huong Long, Hue, Thua Thien Hue', N'thuongdt00dz@gmail.com', N'0989454923', 1, CAST(N'2021-12-20' AS Date), NULL, NULL, NULL, 0)
INSERT [dbo].[User] ([IDUser], [UserName], [PassWord], [Name], [Adress], [Email], [Phone], [Status], [NgayTao], [NguoiTao], [ModifiedDate], [ModifiedBy], [IDQuyen]) VALUES (33, N'admin', N'21232f297a57a5a743894a0e4a801fc3', N'Minh Tuấn', N'123', N'tuan@gmail.com', N'0987654321', 1, CAST(N'2023-02-13' AS Date), NULL, NULL, NULL, 1)
INSERT [dbo].[User] ([IDUser], [UserName], [PassWord], [Name], [Adress], [Email], [Phone], [Status], [NgayTao], [NguoiTao], [ModifiedDate], [ModifiedBy], [IDQuyen]) VALUES (35, N'quyen', N'48fbc952c3b3d849e2017f4d155169eb', N'Bùi Trần Vũ Quyên', N'Vĩnh Long', N'quyenbtvCE160821@fpt.edu.vn', N'0976354657', 1, CAST(N'2023-02-18' AS Date), NULL, NULL, NULL, 1)
INSERT [dbo].[User] ([IDUser], [UserName], [PassWord], [Name], [Adress], [Email], [Phone], [Status], [NgayTao], [NguoiTao], [ModifiedDate], [ModifiedBy], [IDQuyen]) VALUES (36, N'dong', N'b8a16d9c0af34ee1cc56766a78f45ab4', N'Nguyễn Thành Đồng', N'Cần Thơ', N'dongntce160634@fpt.edu.vn', N'0836457285', 1, CAST(N'2023-02-19' AS Date), NULL, NULL, NULL, 1)
INSERT [dbo].[User] ([IDUser], [UserName], [PassWord], [Name], [Adress], [Email], [Phone], [Status], [NgayTao], [NguoiTao], [ModifiedDate], [ModifiedBy], [IDQuyen]) VALUES (37, N'khang', N'8c8b30cbb5302bd4e36857831340bae1', N'Cao Phúc Khang', N'Cần Thơ', N'khangcpce160376@fpt.edu.vn', N'0897364853', 1, CAST(N'2023-02-19' AS Date), NULL, NULL, NULL, 1)
INSERT [dbo].[User] ([IDUser], [UserName], [PassWord], [Name], [Adress], [Email], [Phone], [Status], [NgayTao], [NguoiTao], [ModifiedDate], [ModifiedBy], [IDQuyen]) VALUES (38, N'tuan', N'f72c033b84b6a8d73e2f693d2d01c931', N'Đặng Minh Tuấn', N'An Giang', N'tuandm1905@gmail.com', N'0946144169', 1, CAST(N'2023-02-19' AS Date), NULL, NULL, NULL, 1)
INSERT [dbo].[User] ([IDUser], [UserName], [PassWord], [Name], [Adress], [Email], [Phone], [Status], [NgayTao], [NguoiTao], [ModifiedDate], [ModifiedBy], [IDQuyen]) VALUES (40, N'quyen1234', N'c3bc6049e4838cbb47759b5554c6b8ea', N'Bùi Trần Vũ Quyên', N'Vĩnh Long', N'quyen@gmail.com', N'0987654321234567890', 1, CAST(N'2023-02-19' AS Date), NULL, NULL, NULL, 2)
INSERT [dbo].[User] ([IDUser], [UserName], [PassWord], [Name], [Adress], [Email], [Phone], [Status], [NgayTao], [NguoiTao], [ModifiedDate], [ModifiedBy], [IDQuyen]) VALUES (41, N'tuandmse150430', N'81dc9bdb52d04dc20036dbd8313ed055', N'Đặng Minh Tuấn', N'An Giang', N'tuandang930@gmail.com', N'09461444169', 1, CAST(N'2023-02-19' AS Date), NULL, NULL, NULL, 2)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Muon_Tra] ADD  DEFAULT ((0)) FOR [SoLanGiaHan]
GO
/****** Object:  StoredProcedure [dbo].[ThongKeProcedure]    Script Date: 2/19/2023 7:38:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ThongKeProcedure]
@toDate nvarchar(max),
@fromDate nvarchar(max)
as
begin
SELECT o.NgayTao as DoanhThuNgay,SUM(od.Quanlity * od.Price) as DoanhThu,
SUM((od.Quanlity*od.Price)-(od.Quanlity*sp.GiaNhap)) as TongLai from Orders o
inner join Order_Detail od
on o.IDOder = od.OderID
inner join Sanpham sp
on od.ProductID = sp.IDContent
where o.NgayTao <= CAST(@fromDate as date) and o.NgayTao >=Cast(@toDate as date)
group by o.NgayTao
end
GO
