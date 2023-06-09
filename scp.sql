USE [master]
GO
/****** Object:  Database [TjCollection]    Script Date: 14.03.2023 0:58:35 ******/
CREATE DATABASE [TjCollection]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TjCollection', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\TjCollection.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TjCollection_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\TjCollection_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [TjCollection] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TjCollection].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TjCollection] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TjCollection] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TjCollection] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TjCollection] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TjCollection] SET ARITHABORT OFF 
GO
ALTER DATABASE [TjCollection] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TjCollection] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TjCollection] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TjCollection] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TjCollection] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TjCollection] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TjCollection] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TjCollection] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TjCollection] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TjCollection] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TjCollection] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TjCollection] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TjCollection] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TjCollection] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TjCollection] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TjCollection] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TjCollection] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TjCollection] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TjCollection] SET  MULTI_USER 
GO
ALTER DATABASE [TjCollection] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TjCollection] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TjCollection] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TjCollection] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TjCollection] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TjCollection] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [TjCollection] SET QUERY_STORE = OFF
GO
USE [TjCollection]
GO
/****** Object:  Table [dbo].[Auth]    Script Date: 14.03.2023 0:58:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Auth](
	[UserID] [int] NOT NULL,
	[Login] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[RoleID] [int] NOT NULL,
 CONSTRAINT [PK_Auth] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Color]    Script Date: 14.03.2023 0:58:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Color](
	[ColorID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Color] PRIMARY KEY CLUSTERED 
(
	[ColorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Material]    Script Date: 14.03.2023 0:58:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Material](
	[MaterialID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Material] PRIMARY KEY CLUSTERED 
(
	[MaterialID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 14.03.2023 0:58:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Season]    Script Date: 14.03.2023 0:58:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Season](
	[SeasonID] [int] NOT NULL,
	[SeasonName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Season] PRIMARY KEY CLUSTERED 
(
	[SeasonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShoeType]    Script Date: 14.03.2023 0:58:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShoeType](
	[ShoesTypeID] [int] NOT NULL,
	[ShoesType] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ShoeType] PRIMARY KEY CLUSTERED 
(
	[ShoesTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shoos]    Script Date: 14.03.2023 0:58:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shoos](
	[ShoosID] [int] IDENTITY(1,1) NOT NULL,
	[ShoesTypeID] [int] NOT NULL,
	[Article] [nvarchar](50) NOT NULL,
	[SizeID] [int] NOT NULL,
	[SeasonID] [int] NOT NULL,
	[ColorID] [int] NOT NULL,
	[MaterialID] [int] NOT NULL,
	[Photo] [nvarchar](50) NOT NULL,
	[ShoosName] [nvarchar](50) NOT NULL,
	[Price] [float] NOT NULL,
 CONSTRAINT [PK_Shoos] PRIMARY KEY CLUSTERED 
(
	[ShoosID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Size]    Script Date: 14.03.2023 0:58:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Size](
	[SizeID] [int] NOT NULL,
	[SizeName] [int] NOT NULL,
 CONSTRAINT [PK_Size] PRIMARY KEY CLUSTERED 
(
	[SizeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Auth] ([UserID], [Login], [Password], [RoleID]) VALUES (1, N'user', N'user', 1)
INSERT [dbo].[Auth] ([UserID], [Login], [Password], [RoleID]) VALUES (2, N'admin', N'admin', 2)
GO
INSERT [dbo].[Color] ([ColorID], [Name]) VALUES (1, N'Черный')
INSERT [dbo].[Color] ([ColorID], [Name]) VALUES (2, N'Коричневый')
INSERT [dbo].[Color] ([ColorID], [Name]) VALUES (3, N'Синий')
INSERT [dbo].[Color] ([ColorID], [Name]) VALUES (4, N'Темной-синий')
INSERT [dbo].[Color] ([ColorID], [Name]) VALUES (5, N'Белый')
INSERT [dbo].[Color] ([ColorID], [Name]) VALUES (6, N'Зеленый')
INSERT [dbo].[Color] ([ColorID], [Name]) VALUES (7, N'Бежевый')
INSERT [dbo].[Color] ([ColorID], [Name]) VALUES (8, N'Хаки')
INSERT [dbo].[Color] ([ColorID], [Name]) VALUES (9, N'Серый')
INSERT [dbo].[Color] ([ColorID], [Name]) VALUES (10, N'Мульти')
GO
INSERT [dbo].[Material] ([MaterialID], [Name]) VALUES (1, N'Текстиль')
INSERT [dbo].[Material] ([MaterialID], [Name]) VALUES (2, N'Кожа')
INSERT [dbo].[Material] ([MaterialID], [Name]) VALUES (3, N'Замша')
GO
INSERT [dbo].[Role] ([RoleID], [Name]) VALUES (1, N'user')
INSERT [dbo].[Role] ([RoleID], [Name]) VALUES (2, N'admin')
GO
INSERT [dbo].[Season] ([SeasonID], [SeasonName]) VALUES (1, N'Демисезон')
INSERT [dbo].[Season] ([SeasonID], [SeasonName]) VALUES (2, N'Лето')
GO
INSERT [dbo].[ShoeType] ([ShoesTypeID], [ShoesType]) VALUES (1, N'Кеды')
INSERT [dbo].[ShoeType] ([ShoesTypeID], [ShoesType]) VALUES (2, N'Кроссовки')
INSERT [dbo].[ShoeType] ([ShoesTypeID], [ShoesType]) VALUES (3, N'Мокасины')
INSERT [dbo].[ShoeType] ([ShoesTypeID], [ShoesType]) VALUES (4, N'Полуботинки')
INSERT [dbo].[ShoeType] ([ShoesTypeID], [ShoesType]) VALUES (5, N'Сандалии')
GO
SET IDENTITY_INSERT [dbo].[Shoos] ON 

INSERT [dbo].[Shoos] ([ShoosID], [ShoesTypeID], [Article], [SizeID], [SeasonID], [ColorID], [MaterialID], [Photo], [ShoosName], [Price]) VALUES (1, 4, N'TL 7225210 BLK ', 2, 1, 1, 2, N'1.jpg', N'Черные кеды', 14990)
INSERT [dbo].[Shoos] ([ShoosID], [ShoesTypeID], [Article], [SizeID], [SeasonID], [ColorID], [MaterialID], [Photo], [ShoosName], [Price]) VALUES (2, 1, N'TK 7207918 BLZ ', 3, 1, 1, 2, N'2.jpg', N'Черные кеды с перфорацией', 12990)
INSERT [dbo].[Shoos] ([ShoosID], [ShoesTypeID], [Article], [SizeID], [SeasonID], [ColorID], [MaterialID], [Photo], [ShoosName], [Price]) VALUES (3, 2, N'GK 7111222 BLK ', 1, 2, 1, 1, N'21412b0a-c094-4681-a04a-4e4ef7809fdc', N'Черные текстильные кеды', 12990)
INSERT [dbo].[Shoos] ([ShoosID], [ShoesTypeID], [Article], [SizeID], [SeasonID], [ColorID], [MaterialID], [Photo], [ShoosName], [Price]) VALUES (4, 1, N'MI 7216812 NVG ', 4, 1, 10, 2, N'4.jpg', N'Кожанные синие кеды', 10990)
INSERT [dbo].[Shoos] ([ShoosID], [ShoesTypeID], [Article], [SizeID], [SeasonID], [ColorID], [MaterialID], [Photo], [ShoosName], [Price]) VALUES (5, 2, N'GN 7217812 WHO ', 5, 1, 10, 2, N'5.jpg', N'Белые кожанные кеды', 15990)
INSERT [dbo].[Shoos] ([ShoosID], [ShoesTypeID], [Article], [SizeID], [SeasonID], [ColorID], [MaterialID], [Photo], [ShoosName], [Price]) VALUES (6, 1, N'GN 7217812 BUW ', 6, 1, 10, 2, N'6.jpg', N'Синие кожанные кеды', 15990)
INSERT [dbo].[Shoos] ([ShoosID], [ShoesTypeID], [Article], [SizeID], [SeasonID], [ColorID], [MaterialID], [Photo], [ShoosName], [Price]) VALUES (7, 2, N'GV 7117922 BLG ', 7, 2, 1, 1, N'7.jpg', N'Черные кроссовки Звезда', 10990)
INSERT [dbo].[Shoos] ([ShoosID], [ShoesTypeID], [Article], [SizeID], [SeasonID], [ColorID], [MaterialID], [Photo], [ShoosName], [Price]) VALUES (8, 2, N'GU 7114822 DGN ', 3, 2, 6, 1, N'8.jpg', N'Зеленые кроссовки Спутник', 8990)
INSERT [dbo].[Shoos] ([ShoosID], [ShoesTypeID], [Article], [SizeID], [SeasonID], [ColorID], [MaterialID], [Photo], [ShoosName], [Price]) VALUES (9, 2, N'GV 7117922 WHG ', 4, 2, 5, 1, N'9.jpg', N'Белые кроссовки Звезда', 10990)
INSERT [dbo].[Shoos] ([ShoosID], [ShoesTypeID], [Article], [SizeID], [SeasonID], [ColorID], [MaterialID], [Photo], [ShoosName], [Price]) VALUES (10, 2, N'GV 7217022 BGT ', 5, 1, 5, 1, N'10.jpg', N'Светлые кроссовки Звезда', 10990)
INSERT [dbo].[Shoos] ([ShoosID], [ShoesTypeID], [Article], [SizeID], [SeasonID], [ColorID], [MaterialID], [Photo], [ShoosName], [Price]) VALUES (11, 2, N'GV 7217022 BLU ', 6, 1, 1, 1, N'11.jpg', N'Черные кроссовки Звезда', 10990)
INSERT [dbo].[Shoos] ([ShoosID], [ShoesTypeID], [Article], [SizeID], [SeasonID], [ColorID], [MaterialID], [Photo], [ShoosName], [Price]) VALUES (12, 2, N'GU 7114822 LGR ', 7, 1, 9, 1, N'12.jpg', N'Серые кроссовки Спутник', 8990)
INSERT [dbo].[Shoos] ([ShoosID], [ShoesTypeID], [Article], [SizeID], [SeasonID], [ColorID], [MaterialID], [Photo], [ShoosName], [Price]) VALUES (13, 3, N'TK 7103019 NVI ', 2, 2, 3, 2, N'13.jpg', N'Синие слипоны', 12990)
INSERT [dbo].[Shoos] ([ShoosID], [ShoesTypeID], [Article], [SizeID], [SeasonID], [ColorID], [MaterialID], [Photo], [ShoosName], [Price]) VALUES (14, 3, N'MP 7134918 NVN ', 3, 2, 3, 2, N'14.jpg', N'Синие мокасины', 12990)
INSERT [dbo].[Shoos] ([ShoosID], [ShoesTypeID], [Article], [SizeID], [SeasonID], [ColorID], [MaterialID], [Photo], [ShoosName], [Price]) VALUES (15, 3, N'NU 7137014 WHR ', 4, 2, 5, 2, N'15.jpg', N'Белые мокасины', 14990)
INSERT [dbo].[Shoos] ([ShoosID], [ShoesTypeID], [Article], [SizeID], [SeasonID], [ColorID], [MaterialID], [Photo], [ShoosName], [Price]) VALUES (16, 3, N'NU 7137013 NVR ', 5, 2, 3, 2, N'16.jpg', N'Синие мокасины', 14990)
INSERT [dbo].[Shoos] ([ShoosID], [ShoesTypeID], [Article], [SizeID], [SeasonID], [ColorID], [MaterialID], [Photo], [ShoosName], [Price]) VALUES (17, 3, N'MI 7210012 CGA ', 2, 2, 2, 2, N'17.jpg', N'Коричневые мокасины', 12990)
INSERT [dbo].[Shoos] ([ShoosID], [ShoesTypeID], [Article], [SizeID], [SeasonID], [ColorID], [MaterialID], [Photo], [ShoosName], [Price]) VALUES (18, 3, N'MI 7210012 NVA ', 1, 2, 3, 2, N'18.jpg', N'Синие ботинки', 12990)
INSERT [dbo].[Shoos] ([ShoosID], [ShoesTypeID], [Article], [SizeID], [SeasonID], [ColorID], [MaterialID], [Photo], [ShoosName], [Price]) VALUES (19, 4, N'GN 7229810 BLA ', 3, 1, 1, 2, N'19.jpg', N'Черные дерби', 12990)
INSERT [dbo].[Shoos] ([ShoosID], [ShoesTypeID], [Article], [SizeID], [SeasonID], [ColorID], [MaterialID], [Photo], [ShoosName], [Price]) VALUES (20, 4, N'TN 7201210 CGA ', 4, 1, 2, 2, N'20.jpg', N'Коричневые слипоны', 15990)
INSERT [dbo].[Shoos] ([ShoosID], [ShoesTypeID], [Article], [SizeID], [SeasonID], [ColorID], [MaterialID], [Photo], [ShoosName], [Price]) VALUES (21, 4, N'TN 7201210 NVA ', 2, 1, 3, 2, N'21.jpg', N'Синие слипоны', 15990)
INSERT [dbo].[Shoos] ([ShoosID], [ShoesTypeID], [Article], [SizeID], [SeasonID], [ColorID], [MaterialID], [Photo], [ShoosName], [Price]) VALUES (22, 4, N'MP 7218019 BLA ', 1, 1, 1, 2, N'22.jpg', N'Черные полуботинки', 16990)
INSERT [dbo].[Shoos] ([ShoosID], [ShoesTypeID], [Article], [SizeID], [SeasonID], [ColorID], [MaterialID], [Photo], [ShoosName], [Price]) VALUES (23, 4, N'GN 7224019 BRA ', 5, 1, 2, 2, N'23.jpg', N'Коричневые полуботинки', 12990)
INSERT [dbo].[Shoos] ([ShoosID], [ShoesTypeID], [Article], [SizeID], [SeasonID], [ColorID], [MaterialID], [Photo], [ShoosName], [Price]) VALUES (24, 4, N'MP 7294919 NVA ', 6, 1, 4, 2, N'24.jpg', N'Темно-синие оксфорды', 16990)
INSERT [dbo].[Shoos] ([ShoosID], [ShoesTypeID], [Article], [SizeID], [SeasonID], [ColorID], [MaterialID], [Photo], [ShoosName], [Price]) VALUES (26, 5, N'GU 7109912 BRI ', 6, 2, 2, 2, N'26.jpg', N'Коричневые сандалии', 12990)
INSERT [dbo].[Shoos] ([ShoosID], [ShoesTypeID], [Article], [SizeID], [SeasonID], [ColorID], [MaterialID], [Photo], [ShoosName], [Price]) VALUES (27, 5, N'GU 7109912 BLI ', 5, 2, 1, 2, N'27.jpg', N'Черные сандалии', 8990)
INSERT [dbo].[Shoos] ([ShoosID], [ShoesTypeID], [Article], [SizeID], [SeasonID], [ColorID], [MaterialID], [Photo], [ShoosName], [Price]) VALUES (28, 5, N'GA 7101932 BLG ', 4, 2, 1, 2, N'28.jpg', N'Черные сандалии', 8990)
INSERT [dbo].[Shoos] ([ShoosID], [ShoesTypeID], [Article], [SizeID], [SeasonID], [ColorID], [MaterialID], [Photo], [ShoosName], [Price]) VALUES (30, 5, N'GA 7101012 BLK ', 2, 2, 1, 2, N'30.jpg', N'Черные сабо', 12990)
SET IDENTITY_INSERT [dbo].[Shoos] OFF
GO
INSERT [dbo].[Size] ([SizeID], [SizeName]) VALUES (1, 39)
INSERT [dbo].[Size] ([SizeID], [SizeName]) VALUES (2, 40)
INSERT [dbo].[Size] ([SizeID], [SizeName]) VALUES (3, 41)
INSERT [dbo].[Size] ([SizeID], [SizeName]) VALUES (4, 42)
INSERT [dbo].[Size] ([SizeID], [SizeName]) VALUES (5, 43)
INSERT [dbo].[Size] ([SizeID], [SizeName]) VALUES (6, 44)
INSERT [dbo].[Size] ([SizeID], [SizeName]) VALUES (7, 45)
GO
ALTER TABLE [dbo].[Auth]  WITH CHECK ADD  CONSTRAINT [FK_Auth_Role] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Role] ([RoleID])
GO
ALTER TABLE [dbo].[Auth] CHECK CONSTRAINT [FK_Auth_Role]
GO
ALTER TABLE [dbo].[Shoos]  WITH CHECK ADD  CONSTRAINT [FK_Shoos_Color] FOREIGN KEY([ColorID])
REFERENCES [dbo].[Color] ([ColorID])
GO
ALTER TABLE [dbo].[Shoos] CHECK CONSTRAINT [FK_Shoos_Color]
GO
ALTER TABLE [dbo].[Shoos]  WITH CHECK ADD  CONSTRAINT [FK_Shoos_Material] FOREIGN KEY([MaterialID])
REFERENCES [dbo].[Material] ([MaterialID])
GO
ALTER TABLE [dbo].[Shoos] CHECK CONSTRAINT [FK_Shoos_Material]
GO
ALTER TABLE [dbo].[Shoos]  WITH CHECK ADD  CONSTRAINT [FK_Shoos_Season] FOREIGN KEY([SeasonID])
REFERENCES [dbo].[Season] ([SeasonID])
GO
ALTER TABLE [dbo].[Shoos] CHECK CONSTRAINT [FK_Shoos_Season]
GO
ALTER TABLE [dbo].[Shoos]  WITH CHECK ADD  CONSTRAINT [FK_Shoos_ShoeType] FOREIGN KEY([ShoesTypeID])
REFERENCES [dbo].[ShoeType] ([ShoesTypeID])
GO
ALTER TABLE [dbo].[Shoos] CHECK CONSTRAINT [FK_Shoos_ShoeType]
GO
ALTER TABLE [dbo].[Shoos]  WITH CHECK ADD  CONSTRAINT [FK_Shoos_Size] FOREIGN KEY([SizeID])
REFERENCES [dbo].[Size] ([SizeID])
GO
ALTER TABLE [dbo].[Shoos] CHECK CONSTRAINT [FK_Shoos_Size]
GO
USE [master]
GO
ALTER DATABASE [TjCollection] SET  READ_WRITE 
GO
