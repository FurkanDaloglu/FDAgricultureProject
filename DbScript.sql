USE [DbFDAgriculture]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 14.03.2024 03:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Abouts]    Script Date: 14.03.2024 03:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Abouts](
	[AboutId] [int] IDENTITY(1,1) NOT NULL,
	[AboutHistory] [nvarchar](max) NOT NULL,
	[AboutUs] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Abouts] PRIMARY KEY CLUSTERED 
(
	[AboutId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Addresses]    Script Date: 14.03.2024 03:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Addresses](
	[AddressID] [int] IDENTITY(1,1) NOT NULL,
	[Description1] [nvarchar](max) NULL,
	[Description2] [nvarchar](max) NULL,
	[Description3] [nvarchar](max) NULL,
	[Description4] [nvarchar](max) NULL,
	[MapInfo] [nvarchar](max) NULL,
 CONSTRAINT [PK_Addresses] PRIMARY KEY CLUSTERED 
(
	[AddressID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Admins]    Script Date: 14.03.2024 03:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admins](
	[AdminId] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](max) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Admins] PRIMARY KEY CLUSTERED 
(
	[AdminId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Announcements]    Script Date: 14.03.2024 03:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Announcements](
	[AnnouncementID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Date] [datetime2](7) NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Announcements] PRIMARY KEY CLUSTERED 
(
	[AnnouncementID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 14.03.2024 03:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 14.03.2024 03:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 14.03.2024 03:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 14.03.2024 03:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 14.03.2024 03:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 14.03.2024 03:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 14.03.2024 03:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contacts]    Script Date: 14.03.2024 03:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacts](
	[ContactID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Mail] [nvarchar](max) NOT NULL,
	[Message] [nvarchar](max) NOT NULL,
	[Date] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Contacts] PRIMARY KEY CLUSTERED 
(
	[ContactID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Images]    Script Date: 14.03.2024 03:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Images](
	[ImageID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[ImageUrl] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Images] PRIMARY KEY CLUSTERED 
(
	[ImageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Services]    Script Date: 14.03.2024 03:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Services](
	[ServiceID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Image] [nvarchar](max) NOT NULL,
	[Class1] [nvarchar](max) NULL,
	[Class2] [nvarchar](max) NULL,
 CONSTRAINT [PK_Services] PRIMARY KEY CLUSTERED 
(
	[ServiceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SocialMedias]    Script Date: 14.03.2024 03:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SocialMedias](
	[SocialMediaId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Icon] [nvarchar](max) NULL,
	[Url] [nvarchar](max) NULL,
 CONSTRAINT [PK_SocialMedias] PRIMARY KEY CLUSTERED 
(
	[SocialMediaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teams]    Script Date: 14.03.2024 03:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teams](
	[TeamID] [int] IDENTITY(1,1) NOT NULL,
	[PersonName] [nvarchar](max) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[ImageUrl] [nvarchar](max) NOT NULL,
	[FacebookUrl] [nvarchar](max) NOT NULL,
	[InstagramUrl] [nvarchar](max) NOT NULL,
	[WebsiteUrl] [nvarchar](max) NOT NULL,
	[TwitterUrl] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Teams] PRIMARY KEY CLUSTERED 
(
	[TeamID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240229002301_mig_createDatabase', N'8.0.2')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240306140412_mig_add_image_columns', N'8.0.2')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240309074950_mig_add_socialmedia_entity', N'8.0.2')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240309085139_mig_add_about', N'8.0.2')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240309101107_mig_add_service_column_class', N'8.0.2')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240310155852_mig_add_admin', N'8.0.2')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240313150303_mig_add_indetity', N'8.0.3')
GO
SET IDENTITY_INSERT [dbo].[Abouts] ON 

INSERT [dbo].[Abouts] ([AboutId], [AboutHistory], [AboutUs]) VALUES (1, N'Tamamen organiz olarak ürün yetiştirmeyi hedeflediğimiz tarlalarımızda 1998 yılından beri ege ve akdenizin eşşiz meyve ve sebzelerini sizlerle buluşturmanın mutluluğu içindeyiz. 26 yıllık bu tecrubemizde sizlere sağlıklı ve doğal ürünler sunuyor olmak bizim en büyük mutluluğumuz ', N'Birbirinden değerli ve yetenekli ekip arkadaşlarımızla beraber sizler için kendi bahçe ve tarlalarımızda tamamen organik ürünler yetiştiriyoruz. Dilediğiniz zaman Bursa ofisimizi ziyarete gelip detaylı bilgi alabilirsiniz. Hem Türkiye''de ve yurt dışında her yere gönderimimiz mevcuttur.')
SET IDENTITY_INSERT [dbo].[Abouts] OFF
GO
SET IDENTITY_INSERT [dbo].[Addresses] ON 

INSERT [dbo].[Addresses] ([AddressID], [Description1], [Description2], [Description3], [Description4], [MapInfo]) VALUES (1, N'Heykel Caddesi Atatürk Heykeli Üstü', N'Bursa', N'16000 Osmangazi Bursa', N'+90 500 400 30 20', N'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3137.503689634231!2d29.064288595535654!3d40.18269458928751!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14ca3de27c0be993%3A0x6d39fe900546468f!2sAtat%C3%BCrk%20Heykeli!5e0!3m2!1str!2str!4v1710083912315!5m2!1str!2str')
SET IDENTITY_INSERT [dbo].[Addresses] OFF
GO
SET IDENTITY_INSERT [dbo].[Admins] ON 

INSERT [dbo].[Admins] ([AdminId], [Username], [Password]) VALUES (1, N'furkan1', N'1234')
INSERT [dbo].[Admins] ([AdminId], [Username], [Password]) VALUES (3, N'deneme1', N'12345')
SET IDENTITY_INSERT [dbo].[Admins] OFF
GO
SET IDENTITY_INSERT [dbo].[Announcements] ON 

INSERT [dbo].[Announcements] ([AnnouncementID], [Title], [Description], [Date], [Status]) VALUES (1, N'Ağustos Ayı Mahsül', N'lorem ipsum', CAST(N'2024-03-05T00:00:00.0000000' AS DateTime2), 1)
INSERT [dbo].[Announcements] ([AnnouncementID], [Title], [Description], [Date], [Status]) VALUES (2, N'Eylül Ayı Sebze Ekimi', N'test', CAST(N'2024-01-01T00:00:00.0000000' AS DateTime2), 1)
INSERT [dbo].[Announcements] ([AnnouncementID], [Title], [Description], [Date], [Status]) VALUES (3, N'Eylül Ayı Mercimek Hasadı', N'test', CAST(N'2024-09-01T00:00:00.0000000' AS DateTime2), 0)
SET IDENTITY_INSERT [dbo].[Announcements] OFF
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'45', N'furkan1', N'FURKAN1', N'furkan@gmail.com', N'FURKAN@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAELOhvAjB8snx885V7y4qCGm8z9lEFVlrxMxyFC1vBS1NxH04xCO8+4W/qcJiDGHxwA==', N'MMWDIJ33J54YRCFYJM3OGCLF5ELEHWFF', N'50434142-eb2f-41f2-839b-949c6da08b6b', N'Furkan1?', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'930', N'furkan2', N'FURKAN2', N'furkan2@gmail.com', N'FURKAN2@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEK+PXvZIou/mTNlJVkQyMU0sWNW5kxNtxAxBpePL2HyLXzqEp1P5OTLpkrUkZBB0Pg==', N'7KWB2ZLD2NNPR2HNKDA22Z3QVR2EOYLF', N'10db1e9b-bf05-4862-8a26-af9c1050fa11', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Contacts] ON 

INSERT [dbo].[Contacts] ([ContactID], [Name], [Mail], [Message], [Date]) VALUES (1, N'Furkan Daloğlu', N'deneme@gmail.com', N'Merhaba bu bir test mesajıdır', CAST(N'2024-03-08T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Contacts] ([ContactID], [Name], [Mail], [Message], [Date]) VALUES (2, N'Kemal Sunal', N'deneme1@gmail.com', N'Kendisi Türkiye''de bir aktördür', CAST(N'2024-03-08T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Contacts] ([ContactID], [Name], [Mail], [Message], [Date]) VALUES (4, N'deneme1', N'denemee@gmail.com', N'deneme mesajı', CAST(N'2024-03-10T00:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Contacts] OFF
GO
SET IDENTITY_INSERT [dbo].[Images] ON 

INSERT [dbo].[Images] ([ImageID], [Title], [Description], [ImageUrl]) VALUES (2, N'Küçük Bitkiler', N'Her yerde size ferahlık sağlayacak bitkiler', N'/web/images/g1.jpg')
INSERT [dbo].[Images] ([ImageID], [Title], [Description], [ImageUrl]) VALUES (3, N'Çay Yetiştiriciliği', N'Karadeniz bölgesi ve çay için uygun şartlar', N'/web/images/g2.jpg')
INSERT [dbo].[Images] ([ImageID], [Title], [Description], [ImageUrl]) VALUES (4, N'Buğday Hasadı', N'Ekim ayında yapılan hasat görseli', N'/web/images/g3.jpg')
INSERT [dbo].[Images] ([ImageID], [Title], [Description], [ImageUrl]) VALUES (5, N'Doğayla İç İçe', N'....', N'/web/images/g4.jpg')
INSERT [dbo].[Images] ([ImageID], [Title], [Description], [ImageUrl]) VALUES (6, N'Verimli Buğdaylar', N'.', N'/web/images/g5.jpg')
INSERT [dbo].[Images] ([ImageID], [Title], [Description], [ImageUrl]) VALUES (7, N'Verimli Teknoloji', N'.', N'/web/images/g6.jpg')
INSERT [dbo].[Images] ([ImageID], [Title], [Description], [ImageUrl]) VALUES (8, N'Hijyenik Ekipmanlar', N'.', N'/web/images/g7.jpg')
INSERT [dbo].[Images] ([ImageID], [Title], [Description], [ImageUrl]) VALUES (9, N'Doğal Ortam', N'..', N'/web/images/g8.jpg')
INSERT [dbo].[Images] ([ImageID], [Title], [Description], [ImageUrl]) VALUES (10, N'Doğal Ürünler', N'....', N'/web/images/g9.jpg')
INSERT [dbo].[Images] ([ImageID], [Title], [Description], [ImageUrl]) VALUES (11, N'Bilinçli Çalışan', N'.....', N'/web/images/g10.jpg')
INSERT [dbo].[Images] ([ImageID], [Title], [Description], [ImageUrl]) VALUES (12, N'Balya', N'.......', N'/web/images/g11.jpg')
INSERT [dbo].[Images] ([ImageID], [Title], [Description], [ImageUrl]) VALUES (13, N'....', N'............', N'/web/images/g12.jpg')
SET IDENTITY_INSERT [dbo].[Images] OFF
GO
SET IDENTITY_INSERT [dbo].[Services] ON 

INSERT [dbo].[Services] ([ServiceID], [Title], [Description], [Image], [Class1], [Class2]) VALUES (2, N'Organik Tahıllar', N'Tamamen organik olarak hazırlanan herhangi bir katkı maddesi bulunmayan ürünler', N'fa fa-pagelines', N'col-md-3 sevices-w3layouts-grids wow fadeInUp animated', N'sevices-w3layouts-img c1')
INSERT [dbo].[Services] ([ServiceID], [Title], [Description], [Image], [Class1], [Class2]) VALUES (3, N'Süt Ürünleri', N'Kendi besi ağımızdaki inek ve koyunların doğal sütleri ile peynir ve tereyağı üretiyoruz', N'fa fa-globe', N'col-md-3 sevices-w3layouts-grids sevices-w3layouts-mdl wow fadeInUp animated', N'sevices-w3layouts-img c2')
INSERT [dbo].[Services] ([ServiceID], [Title], [Description], [Image], [Class1], [Class2]) VALUES (4, N'Mevsiminde Hasat', N'Her ürünün sadece kendi mevsiminde yetiştirip doğaya uygun hasat ediyoruz', N'fa fa-tree', N'col-md-3 sevices-w3layouts-grids sevices-w3layouts-mdl1 wow fadeInUp animated', N'sevices-w3layouts-img c3')
INSERT [dbo].[Services] ([ServiceID], [Title], [Description], [Image], [Class1], [Class2]) VALUES (6, N'Geri Dönüşüm', N'Çevre dostu paketleme araçlarımız ile doğayı koruyoruz. Ayrıca doğa takvimi hediyemiz vardır.', N'fa fa-envira', N'col-md-3 sevices-w3layouts-grids wow fadeInUp animated', N'sevices-w3layouts-img c4')
SET IDENTITY_INSERT [dbo].[Services] OFF
GO
SET IDENTITY_INSERT [dbo].[SocialMedias] ON 

INSERT [dbo].[SocialMedias] ([SocialMediaId], [Title], [Icon], [Url]) VALUES (1, N'facebook', N'fa fa-facebook', N'#')
INSERT [dbo].[SocialMedias] ([SocialMediaId], [Title], [Icon], [Url]) VALUES (2, N'twitter', N'fa fa-twitter', N'#')
INSERT [dbo].[SocialMedias] ([SocialMediaId], [Title], [Icon], [Url]) VALUES (3, N'linkedin', N'fa fa-linkedin', N'#')
INSERT [dbo].[SocialMedias] ([SocialMediaId], [Title], [Icon], [Url]) VALUES (4, N'youtube', N'fa fa-youtube', N'#')
SET IDENTITY_INSERT [dbo].[SocialMedias] OFF
GO
SET IDENTITY_INSERT [dbo].[Teams] ON 

INSERT [dbo].[Teams] ([TeamID], [PersonName], [Title], [ImageUrl], [FacebookUrl], [InstagramUrl], [WebsiteUrl], [TwitterUrl]) VALUES (1, N'Furkan Daloğlu', N'Ürün Pazarlama', N'/web/images/t1.jpg', N'#', N'#', N'#', N'#')
INSERT [dbo].[Teams] ([TeamID], [PersonName], [Title], [ImageUrl], [FacebookUrl], [InstagramUrl], [WebsiteUrl], [TwitterUrl]) VALUES (4, N'Deneme1', N'Süt Üreticisi', N'/web/images/t2.jpg', N'#', N'#', N'#', N'#')
INSERT [dbo].[Teams] ([TeamID], [PersonName], [Title], [ImageUrl], [FacebookUrl], [InstagramUrl], [WebsiteUrl], [TwitterUrl]) VALUES (5, N'Deneme2', N'Bakliyat Yönetimi', N'/web/images/t3.jpg', N'#', N'#', N'#', N'#')
INSERT [dbo].[Teams] ([TeamID], [PersonName], [Title], [ImageUrl], [FacebookUrl], [InstagramUrl], [WebsiteUrl], [TwitterUrl]) VALUES (6, N'Deneme2', N'Gübre Yönetimi', N'/web/images/t4.jpg', N'#', N'#', N'#', N'#')
SET IDENTITY_INSERT [dbo].[Teams] OFF
GO
ALTER TABLE [dbo].[Images] ADD  DEFAULT (N'') FOR [ImageUrl]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
