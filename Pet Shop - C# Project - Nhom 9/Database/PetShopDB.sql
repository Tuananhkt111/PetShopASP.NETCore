USE [master]
GO
/****** Object:  Database [PetShop]    Script Date: 10/15/2019 7:27:08 PM ******/
CREATE DATABASE [PetShop]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PetShop', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\PetShop.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PetShop_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\PetShop_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [PetShop] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PetShop].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PetShop] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PetShop] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PetShop] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PetShop] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PetShop] SET ARITHABORT OFF 
GO
ALTER DATABASE [PetShop] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PetShop] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PetShop] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PetShop] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PetShop] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PetShop] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PetShop] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PetShop] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PetShop] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PetShop] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PetShop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PetShop] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PetShop] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PetShop] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PetShop] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PetShop] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PetShop] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PetShop] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PetShop] SET  MULTI_USER 
GO
ALTER DATABASE [PetShop] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PetShop] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PetShop] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PetShop] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PetShop] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PetShop] SET QUERY_STORE = OFF
GO
USE [PetShop]
GO
/****** Object:  Table [dbo].[Accessory]    Script Date: 10/15/2019 7:27:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accessory](
	[AccID] [nvarchar](15) NOT NULL,
	[AccName] [nvarchar](50) NOT NULL,
	[AccCatID] [nvarchar](15) NOT NULL,
	[Brand] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](500) NOT NULL,
	[Price] [float] NOT NULL,
	[StartSellingDate] [date] NOT NULL,
	[Image] [nvarchar](500) NULL,
	[AvailableQuantity] [int] NOT NULL,
	[SalePercent] [float] NOT NULL,
	[isDelete] [bit] NOT NULL,
 CONSTRAINT [PK_Accessory] PRIMARY KEY CLUSTERED 
(
	[AccID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AccessoryCategory]    Script Date: 10/15/2019 7:27:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccessoryCategory](
	[AccCatID] [nvarchar](15) NOT NULL,
	[AccCatName] [nvarchar](50) NOT NULL,
	[PetCatID] [nvarchar](15) NOT NULL,
 CONSTRAINT [PK_AccessoryCategory] PRIMARY KEY CLUSTERED 
(
	[AccCatID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AccessoryTransaction]    Script Date: 10/15/2019 7:27:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccessoryTransaction](
	[AccTranID] [nvarchar](15) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[TimeOrder] [datetime] NOT NULL,
	[TimeFinish] [datetime] NULL,
	[DeliveryPhone] [nvarchar](50) NOT NULL,
	[DeliveryAddress] [nvarchar](500) NOT NULL,
	[TotalPrice] [float] NOT NULL,
	[Status] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_AccessoryTransaction] PRIMARY KEY CLUSTERED 
(
	[AccTranID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AccessoryTransactionRel]    Script Date: 10/15/2019 7:27:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccessoryTransactionRel](
	[AccID] [nvarchar](15) NOT NULL,
	[AccTranID] [nvarchar](15) NOT NULL,
	[AccName] [nvarchar](50) NOT NULL,
	[AccCatID] [nvarchar](15) NOT NULL,
	[Brand] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](500) NOT NULL,
	[Price] [float] NOT NULL,
	[StartSellingDate] [date] NOT NULL,
	[Image] [nvarchar](500) NOT NULL,
	[SalePercent] [float] NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_AccessoryTransactionRel] PRIMARY KEY CLUSTERED 
(
	[AccID] ASC,
	[AccTranID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Favorite]    Script Date: 10/15/2019 7:27:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Favorite](
	[AccID] [nvarchar](15) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Favorite] PRIMARY KEY CLUSTERED 
(
	[Username] ASC,
	[AccID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PetCategory]    Script Date: 10/15/2019 7:27:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PetCategory](
	[PetCatID] [nvarchar](15) NOT NULL,
	[PetType] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_PetCategory] PRIMARY KEY CLUSTERED 
(
	[PetCatID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Principal]    Script Date: 10/15/2019 7:27:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Principal](
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Role] [nvarchar](50) NOT NULL,
	[Fullname] [nvarchar](50) NOT NULL,
	[Phone] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK_Principal] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShoppingCart]    Script Date: 10/15/2019 7:27:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShoppingCart](
	[AccID] [nvarchar](15) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_ShoppingCart] PRIMARY KEY CLUSTERED 
(
	[Username] ASC,
	[AccID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Accessory] ([AccID], [AccName], [AccCatID], [Brand], [Description], [Price], [StartSellingDate], [Image], [AvailableQuantity], [SalePercent], [isDelete]) VALUES (N'A0001', N'Purina Pro Plan Sport Dog Food - Chicken', N'AC002', N'Purina Pro Plan', N'Help your dog excel with the fine-tuned nutrition of Purina Pro Plan SPORT Performance 30/20 All Life Stages dry dog food. Designed for highly active dogs, this dry dog food appeals to owners of sporting dogs, cattle dogs, hunting dogs and competitive canine athletes. The recipe concentrates nutrition in ways that help optimize oxygen metabolism for increased endurance. ', 15.99, CAST(N'2019-02-06' AS Date), N'A0001.jpg', 2, 0.33, 0)
INSERT [dbo].[Accessory] ([AccID], [AccName], [AccCatID], [Brand], [Description], [Price], [StartSellingDate], [Image], [AvailableQuantity], [SalePercent], [isDelete]) VALUES (N'A0002', N'Adult Dog Food - Chicken & Brown Rice', N'AC002', N'Life Protection Formula', N'Formulated for the health and well-being of dogs, BLUE Life Protection Formula is made with the finest natural ingredients and features.', 32.9900016784668, CAST(N'2018-12-28' AS Date), N'A0002.jpg', 23, 0, 0)
INSERT [dbo].[Accessory] ([AccID], [AccName], [AccCatID], [Brand], [Description], [Price], [StartSellingDate], [Image], [AvailableQuantity], [SalePercent], [isDelete]) VALUES (N'A0003', N'Adult Dog Food - Natural, Chicken & Brown Rice', N'AC002', N'Simply Nourish', N'We understand pet nutrition can be confusing and choosing the right food for your pet can be overwhelming. That''s why Simply Nourish Chicken & Brown Rice Recipe Adult Dog Food believes in making pet nutrition simple and understandable.', 25.290000915527344, CAST(N'2017-01-22' AS Date), N'A0003.jpg', 11, 0, 0)
INSERT [dbo].[Accessory] ([AccID], [AccName], [AccCatID], [Brand], [Description], [Price], [StartSellingDate], [Image], [AvailableQuantity], [SalePercent], [isDelete]) VALUES (N'A0004', N'Classic Pate Adult Cat Food', N'AC001', N'Purina Fancy Feast', N'Whet your cat''s appetite with the savory flavors of Purina Fancy Feast Classic Pate Salmon & Shrimp Feast wet cat food. The gourmet blend of high-quality seafood delivers the taste discerning cats love, and the pate texture gives her something she can happily sink her teeth into. The 100% complete and balanced nutrition provides her with the nourishment she needs to support her healthy and curious lifestyle.', 0.68999999761581421, CAST(N'2000-01-17' AS Date), N'A0004.jpg', 34, 0.34000000357627869, 0)
INSERT [dbo].[Accessory] ([AccID], [AccName], [AccCatID], [Brand], [Description], [Price], [StartSellingDate], [Image], [AvailableQuantity], [SalePercent], [isDelete]) VALUES (N'A0005', N'Classic Pate Cat Food', N'AC001', N'Purina', N'Indulge your cat''s love of savory goodness with Purina Friskies Pate Mixed Grill wet cat food. The classic chicken and liver flavors make this recipe an instant hit with your cat companion, and the smooth pate invites her to nibble her way to the bottom of her dish. Featuring an enticing aroma, this tempting wet cat food guides her to her dish every time you open a can.', 0.5899999737739563, CAST(N'2016-06-02' AS Date), N'A0005.jpg', 7, 0, 0)
INSERT [dbo].[Accessory] ([AccID], [AccName], [AccCatID], [Brand], [Description], [Price], [StartSellingDate], [Image], [AvailableQuantity], [SalePercent], [isDelete]) VALUES (N'A0006', N'Cat Treat - Tasty Chicken', N'AC001', N'Temptations', N'Feed anytime as a treat to your cat or kitten.
Provide fresh drinking water at all times.', 8.4899997711181641, CAST(N'2018-01-26' AS Date), N'A0006.jpg', 27, 0, 0)
INSERT [dbo].[Accessory] ([AccID], [AccName], [AccCatID], [Brand], [Description], [Price], [StartSellingDate], [Image], [AvailableQuantity], [SalePercent], [isDelete]) VALUES (N'A0007', N'Duck Dog Toy - Plush, Squeaker', N'AC004', N'KONG', N'Finally! A plush toy that lasts! KONG''s Plush Duck Squeaker Dog Toy is the perfect toy for your pooch who loves stuffed toys - minus the mess! This plush toy comes with a pre-loaded removable internal squeaker that all dogs love.', 3.2300000190734863, CAST(N'2018-03-08' AS Date), N'A0007.jpg', 11, 0, 0)
INSERT [dbo].[Accessory] ([AccID], [AccName], [AccCatID], [Brand], [Description], [Price], [StartSellingDate], [Image], [AvailableQuantity], [SalePercent], [isDelete]) VALUES (N'A0008', N'Tennis Ball Set Squeaker Dog Toy - 3 Pack', N'AC004', N'KONG', N'The KONG SqueakAir Tennis Ball Dog Toy combines two classic dog toys -the tennis ball and the squeaker toy-to create the perfect fetch toy. This durable, high-quality Squeakair tennis ball will not wear down your dog''s teeth. It''s made with a special non-abrasive felt, compared to the abrasive material on normal tennis balls.', 5.69, CAST(N'2017-04-22' AS Date), N'A0008.jpg', 12, 0.2, 0)
INSERT [dbo].[Accessory] ([AccID], [AccName], [AccCatID], [Brand], [Description], [Price], [StartSellingDate], [Image], [AvailableQuantity], [SalePercent], [isDelete]) VALUES (N'A0009', N'Sports Ball Dog Toy', N'AC004', N'KONG', N'KONG has done it again! The KONG Sports Balls were thoughtfully designed to keep your pooch on the chase! Toss him one today and let the games begin. These tough, bouncy balls are sure to keep him entertained. ', 3.99, CAST(N'2007-09-21' AS Date), N'A0009.jpg', 46, 0, 0)
INSERT [dbo].[Accessory] ([AccID], [AccName], [AccCatID], [Brand], [Description], [Price], [StartSellingDate], [Image], [AvailableQuantity], [SalePercent], [isDelete]) VALUES (N'A0010', N'Pop-Up Tri-Tunnel Cat Toy', N'AC003', N'Whisker City', N'Provide your kitty with a place to play or to find solitude when desired with this Whisker City Pop-Up Tri Tunnel. This fun tri tunnel easily pops open and folds down. When your cat is alone, or wants to be left alone, this is the perfect toy for her. Let her play on her own, satisfying the need to explore while seeking her own adventure. Only at PetSmart.', 16.99, CAST(N'2015-07-21' AS Date), N'A0010.jpg', 34, 0, 0)
INSERT [dbo].[Accessory] ([AccID], [AccName], [AccCatID], [Brand], [Description], [Price], [StartSellingDate], [Image], [AvailableQuantity], [SalePercent], [isDelete]) VALUES (N'A0011', N'Crinkle Ball Cat Toy (COLOR VARIES)', N'AC003', N'Grreat Choice', N' Grreat Choice Mini Crinkle Balls are colorful crinkly noisemaker balls that shine and shimmer, enticing your cat with sight and sound. There''s no time like the present to bat the light balls around and then chase and pounce. Only at PetSmart.', 0.99, CAST(N'2016-02-03' AS Date), N'A0011.jpg', 13, 0.15, 0)
INSERT [dbo].[Accessory] ([AccID], [AccName], [AccCatID], [Brand], [Description], [Price], [StartSellingDate], [Image], [AvailableQuantity], [SalePercent], [isDelete]) VALUES (N'A0012', N'Dumbbell Cat Toy', N'AC003', N'Grreat Choice', N'Your cat will shake, rattle and roll the Grreat Choice Dumbbell With Bells Cat Toy, giving it a swat and a chase and enjoying the tinkling response. Colorful plastic gives your favorite feline a peek at the bells as she works out with the dumbbell. Only at PetSmart.', 1.4900000095367432, CAST(N'2015-03-02' AS Date), N'A0012.jpg', 7, 0, 0)
INSERT [dbo].[AccessoryCategory] ([AccCatID], [AccCatName], [PetCatID]) VALUES (N'AC001', N'Cat Food', N'PC001')
INSERT [dbo].[AccessoryCategory] ([AccCatID], [AccCatName], [PetCatID]) VALUES (N'AC002', N'Dog Food', N'PC002')
INSERT [dbo].[AccessoryCategory] ([AccCatID], [AccCatName], [PetCatID]) VALUES (N'AC003', N'Cat Toy', N'PC001')
INSERT [dbo].[AccessoryCategory] ([AccCatID], [AccCatName], [PetCatID]) VALUES (N'AC004', N'Dog Toy', N'PC002')
INSERT [dbo].[AccessoryTransaction] ([AccTranID], [Username], [TimeOrder], [TimeFinish], [DeliveryPhone], [DeliveryAddress], [TotalPrice], [Status]) VALUES (N'AT0076', N'as', CAST(N'2019-10-09T13:09:32.867' AS DateTime), CAST(N'2019-10-09T13:28:15.547' AS DateTime), N'12312312312', N'asdasd', 28.52, N'Canceled')
INSERT [dbo].[AccessoryTransaction] ([AccTranID], [Username], [TimeOrder], [TimeFinish], [DeliveryPhone], [DeliveryAddress], [TotalPrice], [Status]) VALUES (N'AT0754', N'as', CAST(N'2019-10-09T14:05:55.917' AS DateTime), CAST(N'2019-10-09T14:23:16.640' AS DateTime), N'12312312312', N'asdasd', 25.29, N'Canceled')
INSERT [dbo].[AccessoryTransaction] ([AccTranID], [Username], [TimeOrder], [TimeFinish], [DeliveryPhone], [DeliveryAddress], [TotalPrice], [Status]) VALUES (N'AT1321', N'as', CAST(N'2019-10-08T20:11:31.613' AS DateTime), CAST(N'2019-10-08T20:12:40.483' AS DateTime), N'12312312312', N'asdasd', 0.46000000834465027, N'Finished')
INSERT [dbo].[AccessoryTransaction] ([AccTranID], [Username], [TimeOrder], [TimeFinish], [DeliveryPhone], [DeliveryAddress], [TotalPrice], [Status]) VALUES (N'AT1565', N'as', CAST(N'2019-10-09T15:33:53.057' AS DateTime), NULL, N'12312312312', N'asdasd', 356.79, N'Waiting for payment')
INSERT [dbo].[AccessoryTransaction] ([AccTranID], [Username], [TimeOrder], [TimeFinish], [DeliveryPhone], [DeliveryAddress], [TotalPrice], [Status]) VALUES (N'AT1773', N'as', CAST(N'2019-10-09T14:19:29.083' AS DateTime), CAST(N'2019-10-09T14:23:20.843' AS DateTime), N'12312312312', N'asdasd', 32.99, N'Canceled')
INSERT [dbo].[AccessoryTransaction] ([AccTranID], [Username], [TimeOrder], [TimeFinish], [DeliveryPhone], [DeliveryAddress], [TotalPrice], [Status]) VALUES (N'AT2153', N'as', CAST(N'2019-10-07T14:38:35.677' AS DateTime), NULL, N'12312312312', N'12312321', 36.180000305175781, N'Finished')
INSERT [dbo].[AccessoryTransaction] ([AccTranID], [Username], [TimeOrder], [TimeFinish], [DeliveryPhone], [DeliveryAddress], [TotalPrice], [Status]) VALUES (N'AT2585', N'as', CAST(N'2019-10-09T13:12:03.363' AS DateTime), CAST(N'2019-10-09T13:28:21.233' AS DateTime), N'12312312312', N'asdasd', 28.52, N'Finished')
INSERT [dbo].[AccessoryTransaction] ([AccTranID], [Username], [TimeOrder], [TimeFinish], [DeliveryPhone], [DeliveryAddress], [TotalPrice], [Status]) VALUES (N'AT2828', N'd', CAST(N'2019-07-14T14:56:13.517' AS DateTime), NULL, N'324234234324', N'234', 1.0499999523162842, N'Canceled')
INSERT [dbo].[AccessoryTransaction] ([AccTranID], [Username], [TimeOrder], [TimeFinish], [DeliveryPhone], [DeliveryAddress], [TotalPrice], [Status]) VALUES (N'AT3062', N'as', CAST(N'2019-10-09T16:01:00.733' AS DateTime), NULL, N'12312312312', N'asdasd', 283.49, N'Waiting for payment')
INSERT [dbo].[AccessoryTransaction] ([AccTranID], [Username], [TimeOrder], [TimeFinish], [DeliveryPhone], [DeliveryAddress], [TotalPrice], [Status]) VALUES (N'AT4490', N'as', CAST(N'2019-10-09T14:19:57.917' AS DateTime), CAST(N'2019-10-09T14:23:31.857' AS DateTime), N'12312312312', N'asdasd', 58.28, N'Canceled')
INSERT [dbo].[AccessoryTransaction] ([AccTranID], [Username], [TimeOrder], [TimeFinish], [DeliveryPhone], [DeliveryAddress], [TotalPrice], [Status]) VALUES (N'AT7087', N'as', CAST(N'2019-10-09T13:21:54.787' AS DateTime), CAST(N'2019-10-09T13:28:24.520' AS DateTime), N'12312312312', N'asdasd', 3.23, N'Finished')
INSERT [dbo].[AccessoryTransaction] ([AccTranID], [Username], [TimeOrder], [TimeFinish], [DeliveryPhone], [DeliveryAddress], [TotalPrice], [Status]) VALUES (N'AT7503', N'd', CAST(N'2019-07-14T15:45:49.617' AS DateTime), NULL, N'324234234324', N'234', 83.25, N'Canceled')
INSERT [dbo].[AccessoryTransaction] ([AccTranID], [Username], [TimeOrder], [TimeFinish], [DeliveryPhone], [DeliveryAddress], [TotalPrice], [Status]) VALUES (N'AT8969', N'as', CAST(N'2019-10-09T14:49:22.363' AS DateTime), NULL, N'12312312312', N'asdasd', 1.82, N'Waiting for payment')
INSERT [dbo].[AccessoryTransaction] ([AccTranID], [Username], [TimeOrder], [TimeFinish], [DeliveryPhone], [DeliveryAddress], [TotalPrice], [Status]) VALUES (N'AT9824', N'as', CAST(N'2019-10-08T20:11:12.390' AS DateTime), CAST(N'2019-10-08T20:12:50.557' AS DateTime), N'12312312312', N'asdasd', 10.710000038146973, N'Canceled')
INSERT [dbo].[AccessoryTransaction] ([AccTranID], [Username], [TimeOrder], [TimeFinish], [DeliveryPhone], [DeliveryAddress], [TotalPrice], [Status]) VALUES (N'AT9864', N'as', CAST(N'2019-10-09T14:18:52.610' AS DateTime), CAST(N'2019-10-09T14:23:36.743' AS DateTime), N'12312312312', N'asdasd', 25.29, N'Finished')
INSERT [dbo].[AccessoryTransactionRel] ([AccID], [AccTranID], [AccName], [AccCatID], [Brand], [Description], [Price], [StartSellingDate], [Image], [SalePercent], [Quantity]) VALUES (N'A0001', N'AT2153', N'Purina Pro Plan Sport Dog Food - Chicken', N'AC002', N'Purina Pro Plan', N'Help your dog excel with the fine-tuned nutrition of Purina Pro Plan SPORT Performance 30/20 All Life Stages dry dog food. Designed for highly active dogs, this dry dog food appeals to owners of sporting dogs, cattle dogs, hunting dogs and competitive canine athletes. The recipe concentrates nutrition in ways that help optimize oxygen metabolism for increased endurance. ', 15.989999771118164, CAST(N'2019-02-08' AS Date), N'A0001.jpg', 0.33000001311302185, 1)
INSERT [dbo].[AccessoryTransactionRel] ([AccID], [AccTranID], [AccName], [AccCatID], [Brand], [Description], [Price], [StartSellingDate], [Image], [SalePercent], [Quantity]) VALUES (N'A0001', N'AT7503', N'Purina Pro Plan Sport Dog Food - Chicken', N'AC002', N'Purina Pro Plan', N'Help your dog excel with the fine-tuned nutrition of Purina Pro Plan SPORT Performance 30/20 All Life Stages dry dog food. Designed for highly active dogs, this dry dog food appeals to owners of sporting dogs, cattle dogs, hunting dogs and competitive canine athletes. The recipe concentrates nutrition in ways that help optimize oxygen metabolism for increased endurance. ', 15.989999771118164, CAST(N'2019-02-10' AS Date), N'A0001.jpg', 0.33000001311302185, 1)
INSERT [dbo].[AccessoryTransactionRel] ([AccID], [AccTranID], [AccName], [AccCatID], [Brand], [Description], [Price], [StartSellingDate], [Image], [SalePercent], [Quantity]) VALUES (N'A0001', N'AT9824', N'Purina Pro Plan Sport Dog Food - Chicken', N'AC002', N'Purina Pro Plan', N'Help your dog excel with the fine-tuned nutrition of Purina Pro Plan SPORT Performance 30/20 All Life Stages dry dog food. Designed for highly active dogs, this dry dog food appeals to owners of sporting dogs, cattle dogs, hunting dogs and competitive canine athletes. The recipe concentrates nutrition in ways that help optimize oxygen metabolism for increased endurance. ', 15.989999771118164, CAST(N'2019-02-06' AS Date), N'A0001.jpg', 0.33000001311302185, 1)
INSERT [dbo].[AccessoryTransactionRel] ([AccID], [AccTranID], [AccName], [AccCatID], [Brand], [Description], [Price], [StartSellingDate], [Image], [SalePercent], [Quantity]) VALUES (N'A0002', N'AT1773', N'Adult Dog Food - Chicken & Brown Rice', N'AC002', N'Life Protection Formula', N'Formulated for the health and well-being of dogs, BLUE Life Protection Formula is made with the finest natural ingredients and features.', 32.9900016784668, CAST(N'2018-12-28' AS Date), N'A0002.jpg', 0, 1)
INSERT [dbo].[AccessoryTransactionRel] ([AccID], [AccTranID], [AccName], [AccCatID], [Brand], [Description], [Price], [StartSellingDate], [Image], [SalePercent], [Quantity]) VALUES (N'A0002', N'AT3062', N'Adult Dog Food - Chicken & Brown Rice', N'AC002', N'Life Protection Formula', N'Formulated for the health and well-being of dogs, BLUE Life Protection Formula is made with the finest natural ingredients and features.', 32.9900016784668, CAST(N'2018-12-28' AS Date), N'A0002.jpg', 0, 8)
INSERT [dbo].[AccessoryTransactionRel] ([AccID], [AccTranID], [AccName], [AccCatID], [Brand], [Description], [Price], [StartSellingDate], [Image], [SalePercent], [Quantity]) VALUES (N'A0002', N'AT4490', N'Adult Dog Food - Chicken & Brown Rice', N'AC002', N'Life Protection Formula', N'Formulated for the health and well-being of dogs, BLUE Life Protection Formula is made with the finest natural ingredients and features.', 32.9900016784668, CAST(N'2018-12-28' AS Date), N'A0002.jpg', 0, 1)
INSERT [dbo].[AccessoryTransactionRel] ([AccID], [AccTranID], [AccName], [AccCatID], [Brand], [Description], [Price], [StartSellingDate], [Image], [SalePercent], [Quantity]) VALUES (N'A0002', N'AT7503', N'Adult Dog Food - Chicken & Brown Rice', N'AC002', N'Life Protection Formula', N'Formulated for the health and well-being of dogs, BLUE Life Protection Formula is made with the finest natural ingredients and features.', 32.9900016784668, CAST(N'2018-12-28' AS Date), N'A0002.jpg', 0, 1)
INSERT [dbo].[AccessoryTransactionRel] ([AccID], [AccTranID], [AccName], [AccCatID], [Brand], [Description], [Price], [StartSellingDate], [Image], [SalePercent], [Quantity]) VALUES (N'A0003', N'AT0076', N'Adult Dog Food - Natural, Chicken & Brown Rice', N'AC002', N'Simply Nourish', N'We understand pet nutrition can be confusing and choosing the right food for your pet can be overwhelming. That''s why Simply Nourish Chicken & Brown Rice Recipe Adult Dog Food believes in making pet nutrition simple and understandable.', 25.290000915527344, CAST(N'2017-01-22' AS Date), N'A0003.jpg', 0, 1)
INSERT [dbo].[AccessoryTransactionRel] ([AccID], [AccTranID], [AccName], [AccCatID], [Brand], [Description], [Price], [StartSellingDate], [Image], [SalePercent], [Quantity]) VALUES (N'A0003', N'AT0754', N'Adult Dog Food - Natural, Chicken & Brown Rice', N'AC002', N'Simply Nourish', N'We understand pet nutrition can be confusing and choosing the right food for your pet can be overwhelming. That''s why Simply Nourish Chicken & Brown Rice Recipe Adult Dog Food believes in making pet nutrition simple and understandable.', 25.290000915527344, CAST(N'2017-01-22' AS Date), N'A0003.jpg', 0, 1)
INSERT [dbo].[AccessoryTransactionRel] ([AccID], [AccTranID], [AccName], [AccCatID], [Brand], [Description], [Price], [StartSellingDate], [Image], [SalePercent], [Quantity]) VALUES (N'A0003', N'AT2585', N'Adult Dog Food - Natural, Chicken & Brown Rice', N'AC002', N'Simply Nourish', N'We understand pet nutrition can be confusing and choosing the right food for your pet can be overwhelming. That''s why Simply Nourish Chicken & Brown Rice Recipe Adult Dog Food believes in making pet nutrition simple and understandable.', 25.290000915527344, CAST(N'2017-01-22' AS Date), N'A0003.jpg', 0, 1)
INSERT [dbo].[AccessoryTransactionRel] ([AccID], [AccTranID], [AccName], [AccCatID], [Brand], [Description], [Price], [StartSellingDate], [Image], [SalePercent], [Quantity]) VALUES (N'A0003', N'AT4490', N'Adult Dog Food - Natural, Chicken & Brown Rice', N'AC002', N'Simply Nourish', N'We understand pet nutrition can be confusing and choosing the right food for your pet can be overwhelming. That''s why Simply Nourish Chicken & Brown Rice Recipe Adult Dog Food believes in making pet nutrition simple and understandable.', 25.290000915527344, CAST(N'2017-01-22' AS Date), N'A0003.jpg', 0, 1)
INSERT [dbo].[AccessoryTransactionRel] ([AccID], [AccTranID], [AccName], [AccCatID], [Brand], [Description], [Price], [StartSellingDate], [Image], [SalePercent], [Quantity]) VALUES (N'A0003', N'AT7503', N'Adult Dog Food - Natural, Chicken & Brown Rice', N'AC002', N'Simply Nourish', N'We understand pet nutrition can be confusing and choosing the right food for your pet can be overwhelming. That''s why Simply Nourish Chicken & Brown Rice Recipe Adult Dog Food believes in making pet nutrition simple and understandable.', 25.290000915527344, CAST(N'2017-01-22' AS Date), N'A0003.jpg', 0, 1)
INSERT [dbo].[AccessoryTransactionRel] ([AccID], [AccTranID], [AccName], [AccCatID], [Brand], [Description], [Price], [StartSellingDate], [Image], [SalePercent], [Quantity]) VALUES (N'A0003', N'AT9864', N'Adult Dog Food - Natural, Chicken & Brown Rice', N'AC002', N'Simply Nourish', N'We understand pet nutrition can be confusing and choosing the right food for your pet can be overwhelming. That''s why Simply Nourish Chicken & Brown Rice Recipe Adult Dog Food believes in making pet nutrition simple and understandable.', 25.290000915527344, CAST(N'2017-01-22' AS Date), N'A0003.jpg', 0, 1)
INSERT [dbo].[AccessoryTransactionRel] ([AccID], [AccTranID], [AccName], [AccCatID], [Brand], [Description], [Price], [StartSellingDate], [Image], [SalePercent], [Quantity]) VALUES (N'A0004', N'AT1321', N'Classic Pate Adult Cat Food', N'AC001', N'Purina Fancy Feast', N'Whet your cat''s appetite with the savory flavors of Purina Fancy Feast Classic Pate Salmon & Shrimp Feast wet cat food. The gourmet blend of high-quality seafood delivers the taste discerning cats love, and the pate texture gives her something she can happily sink her teeth into. The 100% complete and balanced nutrition provides her with the nourishment she needs to support her healthy and curious lifestyle.', 0.68999999761581421, CAST(N'2000-01-17' AS Date), N'A0004.jpg', 0.34000000357627869, 1)
INSERT [dbo].[AccessoryTransactionRel] ([AccID], [AccTranID], [AccName], [AccCatID], [Brand], [Description], [Price], [StartSellingDate], [Image], [SalePercent], [Quantity]) VALUES (N'A0004', N'AT2828', N'Classic Pate Adult Cat Food', N'AC001', N'Purina Fancy Feast', N'Whet your cat''s appetite with the savory flavors of Purina Fancy Feast Classic Pate Salmon & Shrimp Feast wet cat food. The gourmet blend of high-quality seafood delivers the taste discerning cats love, and the pate texture gives her something she can happily sink her teeth into. The 100% complete and balanced nutrition provides her with the nourishment she needs to support her healthy and curious lifestyle.', 0.68999999761581421, CAST(N'2000-01-21' AS Date), N'A0004.jpg', 0.34000000357627869, 1)
INSERT [dbo].[AccessoryTransactionRel] ([AccID], [AccTranID], [AccName], [AccCatID], [Brand], [Description], [Price], [StartSellingDate], [Image], [SalePercent], [Quantity]) VALUES (N'A0004', N'AT3062', N'Classic Pate Adult Cat Food', N'AC001', N'Purina Fancy Feast', N'Whet your cat''s appetite with the savory flavors of Purina Fancy Feast Classic Pate Salmon & Shrimp Feast wet cat food. The gourmet blend of high-quality seafood delivers the taste discerning cats love, and the pate texture gives her something she can happily sink her teeth into. The 100% complete and balanced nutrition provides her with the nourishment she needs to support her healthy and curious lifestyle.', 0.68999999761581421, CAST(N'2000-01-17' AS Date), N'A0004.jpg', 0.34000000357627869, 3)
INSERT [dbo].[AccessoryTransactionRel] ([AccID], [AccTranID], [AccName], [AccCatID], [Brand], [Description], [Price], [StartSellingDate], [Image], [SalePercent], [Quantity]) VALUES (N'A0004', N'AT7503', N'Classic Pate Adult Cat Food', N'AC001', N'Purina Fancy Feast', N'Whet your cat''s appetite with the savory flavors of Purina Fancy Feast Classic Pate Salmon & Shrimp Feast wet cat food. The gourmet blend of high-quality seafood delivers the taste discerning cats love, and the pate texture gives her something she can happily sink her teeth into. The 100% complete and balanced nutrition provides her with the nourishment she needs to support her healthy and curious lifestyle.', 0.68999999761581421, CAST(N'2000-01-19' AS Date), N'A0004.jpg', 0.34000000357627869, 1)
INSERT [dbo].[AccessoryTransactionRel] ([AccID], [AccTranID], [AccName], [AccCatID], [Brand], [Description], [Price], [StartSellingDate], [Image], [SalePercent], [Quantity]) VALUES (N'A0004', N'AT8969', N'Classic Pate Adult Cat Food', N'AC001', N'Purina Fancy Feast', N'Whet your cat''s appetite with the savory flavors of Purina Fancy Feast Classic Pate Salmon & Shrimp Feast wet cat food. The gourmet blend of high-quality seafood delivers the taste discerning cats love, and the pate texture gives her something she can happily sink her teeth into. The 100% complete and balanced nutrition provides her with the nourishment she needs to support her healthy and curious lifestyle.', 0.68999999761581421, CAST(N'2000-01-17' AS Date), N'A0004.jpg', 0.34000000357627869, 4)
INSERT [dbo].[AccessoryTransactionRel] ([AccID], [AccTranID], [AccName], [AccCatID], [Brand], [Description], [Price], [StartSellingDate], [Image], [SalePercent], [Quantity]) VALUES (N'A0005', N'AT2828', N'Classic Pate Cat Food', N'AC001', N'Purina', N'Indulge your cat''s love of savory goodness with Purina Friskies Pate Mixed Grill wet cat food. The classic chicken and liver flavors make this recipe an instant hit with your cat companion, and the smooth pate invites her to nibble her way to the bottom of her dish. Featuring an enticing aroma, this tempting wet cat food guides her to her dish every time you open a can.', 0.5899999737739563, CAST(N'2016-06-04' AS Date), N'A0005.jpg', 0, 1)
INSERT [dbo].[AccessoryTransactionRel] ([AccID], [AccTranID], [AccName], [AccCatID], [Brand], [Description], [Price], [StartSellingDate], [Image], [SalePercent], [Quantity]) VALUES (N'A0005', N'AT7503', N'Classic Pate Cat Food', N'AC001', N'Purina', N'Indulge your cat''s love of savory goodness with Purina Friskies Pate Mixed Grill wet cat food. The classic chicken and liver flavors make this recipe an instant hit with your cat companion, and the smooth pate invites her to nibble her way to the bottom of her dish. Featuring an enticing aroma, this tempting wet cat food guides her to her dish every time you open a can.', 0.5899999737739563, CAST(N'2016-06-02' AS Date), N'A0005.jpg', 0, 1)
INSERT [dbo].[AccessoryTransactionRel] ([AccID], [AccTranID], [AccName], [AccCatID], [Brand], [Description], [Price], [StartSellingDate], [Image], [SalePercent], [Quantity]) VALUES (N'A0006', N'AT2153', N'Cat Treat - Tasty Chicken', N'AC001', N'Temptations', N'Feed anytime as a treat to your cat or kitten.
Provide fresh drinking water at all times.', 8.4899997711181641, CAST(N'2018-01-26' AS Date), N'A0006.jpg', 0, 3)
INSERT [dbo].[AccessoryTransactionRel] ([AccID], [AccTranID], [AccName], [AccCatID], [Brand], [Description], [Price], [StartSellingDate], [Image], [SalePercent], [Quantity]) VALUES (N'A0006', N'AT7503', N'Cat Treat - Tasty Chicken', N'AC001', N'Temptations', N'Feed anytime as a treat to your cat or kitten.
Provide fresh drinking water at all times.', 8.4899997711181641, CAST(N'2018-01-28' AS Date), N'A0006.jpg', 0, 1)
INSERT [dbo].[AccessoryTransactionRel] ([AccID], [AccTranID], [AccName], [AccCatID], [Brand], [Description], [Price], [StartSellingDate], [Image], [SalePercent], [Quantity]) VALUES (N'A0007', N'AT0076', N'Duck Dog Toy - Plush, Squeaker', N'AC004', N'KONG', N'Finally! A plush toy that lasts! KONG''s Plush Duck Squeaker Dog Toy is the perfect toy for your pooch who loves stuffed toys - minus the mess! This plush toy comes with a pre-loaded removable internal squeaker that all dogs love.', 3.2300000190734863, CAST(N'2018-03-08' AS Date), N'A0007.jpg', 0, 1)
INSERT [dbo].[AccessoryTransactionRel] ([AccID], [AccTranID], [AccName], [AccCatID], [Brand], [Description], [Price], [StartSellingDate], [Image], [SalePercent], [Quantity]) VALUES (N'A0007', N'AT2585', N'Duck Dog Toy - Plush, Squeaker', N'AC004', N'KONG', N'Finally! A plush toy that lasts! KONG''s Plush Duck Squeaker Dog Toy is the perfect toy for your pooch who loves stuffed toys - minus the mess! This plush toy comes with a pre-loaded removable internal squeaker that all dogs love.', 3.2300000190734863, CAST(N'2018-03-08' AS Date), N'A0007.jpg', 0, 1)
INSERT [dbo].[AccessoryTransactionRel] ([AccID], [AccTranID], [AccName], [AccCatID], [Brand], [Description], [Price], [StartSellingDate], [Image], [SalePercent], [Quantity]) VALUES (N'A0007', N'AT7087', N'Duck Dog Toy - Plush, Squeaker', N'AC004', N'KONG', N'Finally! A plush toy that lasts! KONG''s Plush Duck Squeaker Dog Toy is the perfect toy for your pooch who loves stuffed toys - minus the mess! This plush toy comes with a pre-loaded removable internal squeaker that all dogs love.', 3.2300000190734863, CAST(N'2018-03-08' AS Date), N'A0007.jpg', 0, 1)
INSERT [dbo].[AccessoryTransactionRel] ([AccID], [AccTranID], [AccName], [AccCatID], [Brand], [Description], [Price], [StartSellingDate], [Image], [SalePercent], [Quantity]) VALUES (N'A0007', N'AT7503', N'Duck Dog Toy - Plush, Squeaker', N'AC004', N'KONG', N'Finally! A plush toy that lasts! KONG''s Plush Duck Squeaker Dog Toy is the perfect toy for your pooch who loves stuffed toys - minus the mess! This plush toy comes with a pre-loaded removable internal squeaker that all dogs love.', 3.2300000190734863, CAST(N'2018-03-08' AS Date), N'A0007.jpg', 0, 1)
INSERT [dbo].[AccessoryTransactionRel] ([AccID], [AccTranID], [AccName], [AccCatID], [Brand], [Description], [Price], [StartSellingDate], [Image], [SalePercent], [Quantity]) VALUES (N'A0008', N'AT3062', N'Tennis Ball Set Squeaker Dog Toy - 3 Pack', N'AC004', N'KONG', N'The KONG SqueakAir Tennis Ball Dog Toy combines two classic dog toys -the tennis ball and the squeaker toy-to create the perfect fetch toy. This durable, high-quality Squeakair tennis ball will not wear down your dog''s teeth. It''s made with a special non-abrasive felt, compared to the abrasive material on normal tennis balls.', 5.69, CAST(N'2017-04-22' AS Date), N'A0008.jpg', 0.2, 4)
INSERT [dbo].[AccessoryTransactionRel] ([AccID], [AccTranID], [AccName], [AccCatID], [Brand], [Description], [Price], [StartSellingDate], [Image], [SalePercent], [Quantity]) VALUES (N'A0010', N'AT1565', N'Pop-Up Tri-Tunnel Cat Toy', N'AC003', N'Whisker City', N'Provide your kitty with a place to play or to find solitude when desired with this Whisker City Pop-Up Tri Tunnel. This fun tri tunnel easily pops open and folds down. When your cat is alone, or wants to be left alone, this is the perfect toy for her. Let her play on her own, satisfying the need to explore while seeking her own adventure. Only at PetSmart.', 16.99, CAST(N'2015-07-21' AS Date), N'A0010.jpg', 0, 21)
INSERT [dbo].[AccessoryTransactionRel] ([AccID], [AccTranID], [AccName], [AccCatID], [Brand], [Description], [Price], [StartSellingDate], [Image], [SalePercent], [Quantity]) VALUES (N'A0012', N'AT7503', N'Dumbbell Cat Toy', N'AC003', N'Grreat Choice', N'Your cat will shake, rattle and roll the Grreat Choice Dumbbell With Bells Cat Toy, giving it a swat and a chase and enjoying the tinkling response. Colorful plastic gives your favorite feline a peek at the bells as she works out with the dumbbell. Only at PetSmart.', 1.4900000095367432, CAST(N'2015-03-02' AS Date), N'A0012.jpg', 0, 1)
INSERT [dbo].[Favorite] ([AccID], [Username]) VALUES (N'A0001', N'aa')
INSERT [dbo].[Favorite] ([AccID], [Username]) VALUES (N'A0003', N'as')
INSERT [dbo].[Favorite] ([AccID], [Username]) VALUES (N'A0005', N'as')
INSERT [dbo].[Favorite] ([AccID], [Username]) VALUES (N'A0006', N'as')
INSERT [dbo].[Favorite] ([AccID], [Username]) VALUES (N'A0008', N'as')
INSERT [dbo].[Favorite] ([AccID], [Username]) VALUES (N'A0001', N'asd')
INSERT [dbo].[Favorite] ([AccID], [Username]) VALUES (N'A0001', N'asdasd')
INSERT [dbo].[Favorite] ([AccID], [Username]) VALUES (N'A0002', N'asdasd')
INSERT [dbo].[Favorite] ([AccID], [Username]) VALUES (N'A0003', N'asdasd')
INSERT [dbo].[Favorite] ([AccID], [Username]) VALUES (N'A0004', N'asdasd')
INSERT [dbo].[Favorite] ([AccID], [Username]) VALUES (N'A0005', N'asdasd')
INSERT [dbo].[Favorite] ([AccID], [Username]) VALUES (N'A0007', N'asdasd')
INSERT [dbo].[Favorite] ([AccID], [Username]) VALUES (N'A0012', N'asdasd')
INSERT [dbo].[Favorite] ([AccID], [Username]) VALUES (N'A0001', N'c')
INSERT [dbo].[Favorite] ([AccID], [Username]) VALUES (N'A0004', N'c')
INSERT [dbo].[Favorite] ([AccID], [Username]) VALUES (N'A0005', N'c')
INSERT [dbo].[Favorite] ([AccID], [Username]) VALUES (N'A0006', N'c')
INSERT [dbo].[Favorite] ([AccID], [Username]) VALUES (N'A0001', N'd')
INSERT [dbo].[Favorite] ([AccID], [Username]) VALUES (N'A0002', N'd')
INSERT [dbo].[Favorite] ([AccID], [Username]) VALUES (N'A0003', N'd')
INSERT [dbo].[Favorite] ([AccID], [Username]) VALUES (N'A0004', N'd')
INSERT [dbo].[Favorite] ([AccID], [Username]) VALUES (N'A0005', N'd')
INSERT [dbo].[Favorite] ([AccID], [Username]) VALUES (N'A0006', N'd')
INSERT [dbo].[Favorite] ([AccID], [Username]) VALUES (N'A0007', N'd')
INSERT [dbo].[Favorite] ([AccID], [Username]) VALUES (N'A0001', N'qwe')
INSERT [dbo].[Favorite] ([AccID], [Username]) VALUES (N'A0002', N'qwe')
INSERT [dbo].[Favorite] ([AccID], [Username]) VALUES (N'A0003', N'qwe')
INSERT [dbo].[Favorite] ([AccID], [Username]) VALUES (N'A0004', N'qwe')
INSERT [dbo].[Favorite] ([AccID], [Username]) VALUES (N'A0005', N'qwe')
INSERT [dbo].[Favorite] ([AccID], [Username]) VALUES (N'A0006', N'qwe')
INSERT [dbo].[Favorite] ([AccID], [Username]) VALUES (N'A0004', N'qweqweq')
INSERT [dbo].[Favorite] ([AccID], [Username]) VALUES (N'A0004', N'saas')
INSERT [dbo].[PetCategory] ([PetCatID], [PetType]) VALUES (N'PC001', N'Cat')
INSERT [dbo].[PetCategory] ([PetCatID], [PetType]) VALUES (N'PC002', N'Dog')
INSERT [dbo].[Principal] ([Username], [Password], [Role], [Fullname], [Phone], [Address]) VALUES (N'aa', N'Tuananhkt', N'user', N'asd', N'2131231231', N'asddgdfgdf')
INSERT [dbo].[Principal] ([Username], [Password], [Role], [Fullname], [Phone], [Address]) VALUES (N'aaaa', N'Tuananhkt', N'user', N'asdhal', N'1231231231', N'asd')
INSERT [dbo].[Principal] ([Username], [Password], [Role], [Fullname], [Phone], [Address]) VALUES (N'aaaaa', N'Tuananhkt', N'user', N'123123', N'213123123123', N'12321')
INSERT [dbo].[Principal] ([Username], [Password], [Role], [Fullname], [Phone], [Address]) VALUES (N'aaaaaa', N'Tuananhkt', N'user', N'sldkfjsl', N'12312312312', N'd,fmsdmf,')
INSERT [dbo].[Principal] ([Username], [Password], [Role], [Fullname], [Phone], [Address]) VALUES (N'aaaaaaaa', N'Tuananhkt', N'user', N'skdjfhskd', N'23123123123123', N'jczxckcjhxz')
INSERT [dbo].[Principal] ([Username], [Password], [Role], [Fullname], [Phone], [Address]) VALUES (N'admin', N'Administrator', N'admin', N'aaaa', N'1231231231', N'sdsad')
INSERT [dbo].[Principal] ([Username], [Password], [Role], [Fullname], [Phone], [Address]) VALUES (N'as', N'Tuananhkt', N'user', N'Tuanh anh', N'123123123123', N'asdasd')
INSERT [dbo].[Principal] ([Username], [Password], [Role], [Fullname], [Phone], [Address]) VALUES (N'asa', N'Tuananahkt', N'user', N'1', N'1231231231', N'1')
INSERT [dbo].[Principal] ([Username], [Password], [Role], [Fullname], [Phone], [Address]) VALUES (N'asas', N'Tuananhkt', N'user', N'1', N'1231231231', N'1')
INSERT [dbo].[Principal] ([Username], [Password], [Role], [Fullname], [Phone], [Address]) VALUES (N'asass', N'Tuananhkt', N'user', N'1', N'1231231231', N'1')
INSERT [dbo].[Principal] ([Username], [Password], [Role], [Fullname], [Phone], [Address]) VALUES (N'asd', N'Tuananhkt', N'user', N'sdkfjhsd', N'213123123123', N'sdfksdjf;')
INSERT [dbo].[Principal] ([Username], [Password], [Role], [Fullname], [Phone], [Address]) VALUES (N'asda', N'Tuananhkt', N'user', N'sfkjsh', N'1231231231231', N'asdasdas')
INSERT [dbo].[Principal] ([Username], [Password], [Role], [Fullname], [Phone], [Address]) VALUES (N'asdasasdasdsaa', N'Tuananhkt', N'user', N'1a', N'1231231231', N'1')
INSERT [dbo].[Principal] ([Username], [Password], [Role], [Fullname], [Phone], [Address]) VALUES (N'asdasd', N'Tuananhkt', N'user', N'sadkjashd', N'123123123123', N'xcxvdsd')
INSERT [dbo].[Principal] ([Username], [Password], [Role], [Fullname], [Phone], [Address]) VALUES (N'asdasda', N'Tuananhkt', N'user', N'1', N'1231231231', N'1')
INSERT [dbo].[Principal] ([Username], [Password], [Role], [Fullname], [Phone], [Address]) VALUES (N'asdasdaa', N'Tuananhkt', N'user', N'aaaas', N'1231231231', N'a')
INSERT [dbo].[Principal] ([Username], [Password], [Role], [Fullname], [Phone], [Address]) VALUES (N'asdasdasd', N'Tuananhkt', N'user', N'ksjhsdk', N'1231231231', N'xkjxhxck')
INSERT [dbo].[Principal] ([Username], [Password], [Role], [Fullname], [Phone], [Address]) VALUES (N'assa', N'Tuananhkt', N'user', N'123123123', N'1231231231', N'1231')
INSERT [dbo].[Principal] ([Username], [Password], [Role], [Fullname], [Phone], [Address]) VALUES (N'c', N'Tuananhkt', N'user', N'asdasd', N'1231231231', N'123qwedsd')
INSERT [dbo].[Principal] ([Username], [Password], [Role], [Fullname], [Phone], [Address]) VALUES (N'd', N'Tuananhkt', N'user', N'sdfdsfds', N'324234234324', N'ssdfsdf')
INSERT [dbo].[Principal] ([Username], [Password], [Role], [Fullname], [Phone], [Address]) VALUES (N'qwe', N'Tuananhkt', N'user', N'skjfhsk', N'122312123112', N'sd,fmhsd')
INSERT [dbo].[Principal] ([Username], [Password], [Role], [Fullname], [Phone], [Address]) VALUES (N'qweqwe', N'Tuananhkt', N'user', N'ksjdfhskd', N'12312312312', N'safsd')
INSERT [dbo].[Principal] ([Username], [Password], [Role], [Fullname], [Phone], [Address]) VALUES (N'qweqweq', N'Tuananhkt', N'user', N'dlkfjsdl', N'1231231231', N'qwedasd')
INSERT [dbo].[Principal] ([Username], [Password], [Role], [Fullname], [Phone], [Address]) VALUES (N'qweqweqa', N'Tuananhkt', N'user', N'askjdh', N'12312312312', N'xclckjlxvk')
INSERT [dbo].[Principal] ([Username], [Password], [Role], [Fullname], [Phone], [Address]) VALUES (N'saas', N'Tuananhkt', N'user', N'23432', N'2342342342', N'234324')
INSERT [dbo].[Principal] ([Username], [Password], [Role], [Fullname], [Phone], [Address]) VALUES (N'sad', N'Tuananhkt', N'user', N'sad', N'234234234234', N'dsscd')
INSERT [dbo].[Principal] ([Username], [Password], [Role], [Fullname], [Phone], [Address]) VALUES (N'sada', N'Tuananhkt', N'user', N'1232141', N'32423423432', N'4334')
INSERT [dbo].[ShoppingCart] ([AccID], [Username], [Quantity]) VALUES (N'A0003', N'as', 3)
INSERT [dbo].[ShoppingCart] ([AccID], [Username], [Quantity]) VALUES (N'A0005', N'as', 2)
INSERT [dbo].[ShoppingCart] ([AccID], [Username], [Quantity]) VALUES (N'A0006', N'as', 1)
INSERT [dbo].[ShoppingCart] ([AccID], [Username], [Quantity]) VALUES (N'A0008', N'as', 1)
INSERT [dbo].[ShoppingCart] ([AccID], [Username], [Quantity]) VALUES (N'A0001', N'saas', 1)
INSERT [dbo].[ShoppingCart] ([AccID], [Username], [Quantity]) VALUES (N'A0003', N'saas', 1)
INSERT [dbo].[ShoppingCart] ([AccID], [Username], [Quantity]) VALUES (N'A0007', N'saas', 2)
ALTER TABLE [dbo].[Accessory]  WITH CHECK ADD  CONSTRAINT [FK_Accessory_AccessoryCategory] FOREIGN KEY([AccCatID])
REFERENCES [dbo].[AccessoryCategory] ([AccCatID])
GO
ALTER TABLE [dbo].[Accessory] CHECK CONSTRAINT [FK_Accessory_AccessoryCategory]
GO
ALTER TABLE [dbo].[AccessoryCategory]  WITH CHECK ADD  CONSTRAINT [FK_AccessoryCategory_PetCategory] FOREIGN KEY([PetCatID])
REFERENCES [dbo].[PetCategory] ([PetCatID])
GO
ALTER TABLE [dbo].[AccessoryCategory] CHECK CONSTRAINT [FK_AccessoryCategory_PetCategory]
GO
ALTER TABLE [dbo].[AccessoryTransaction]  WITH CHECK ADD  CONSTRAINT [FK_AccessoryTransaction_Principal] FOREIGN KEY([Username])
REFERENCES [dbo].[Principal] ([Username])
GO
ALTER TABLE [dbo].[AccessoryTransaction] CHECK CONSTRAINT [FK_AccessoryTransaction_Principal]
GO
ALTER TABLE [dbo].[AccessoryTransactionRel]  WITH CHECK ADD  CONSTRAINT [FK_TransAccRelation_Accessory] FOREIGN KEY([AccID])
REFERENCES [dbo].[Accessory] ([AccID])
GO
ALTER TABLE [dbo].[AccessoryTransactionRel] CHECK CONSTRAINT [FK_TransAccRelation_Accessory]
GO
ALTER TABLE [dbo].[AccessoryTransactionRel]  WITH CHECK ADD  CONSTRAINT [FK_TransAccRelation_AccessoryTransaction] FOREIGN KEY([AccTranID])
REFERENCES [dbo].[AccessoryTransaction] ([AccTranID])
GO
ALTER TABLE [dbo].[AccessoryTransactionRel] CHECK CONSTRAINT [FK_TransAccRelation_AccessoryTransaction]
GO
ALTER TABLE [dbo].[Favorite]  WITH CHECK ADD  CONSTRAINT [FK_Favorite_Accessory] FOREIGN KEY([AccID])
REFERENCES [dbo].[Accessory] ([AccID])
GO
ALTER TABLE [dbo].[Favorite] CHECK CONSTRAINT [FK_Favorite_Accessory]
GO
ALTER TABLE [dbo].[Favorite]  WITH CHECK ADD  CONSTRAINT [FK_Favorite_Principal] FOREIGN KEY([Username])
REFERENCES [dbo].[Principal] ([Username])
GO
ALTER TABLE [dbo].[Favorite] CHECK CONSTRAINT [FK_Favorite_Principal]
GO
ALTER TABLE [dbo].[ShoppingCart]  WITH CHECK ADD  CONSTRAINT [FK_ShoppingCart_Accessory] FOREIGN KEY([AccID])
REFERENCES [dbo].[Accessory] ([AccID])
GO
ALTER TABLE [dbo].[ShoppingCart] CHECK CONSTRAINT [FK_ShoppingCart_Accessory]
GO
ALTER TABLE [dbo].[ShoppingCart]  WITH CHECK ADD  CONSTRAINT [FK_ShoppingCart_Principal] FOREIGN KEY([Username])
REFERENCES [dbo].[Principal] ([Username])
GO
ALTER TABLE [dbo].[ShoppingCart] CHECK CONSTRAINT [FK_ShoppingCart_Principal]
GO
USE [master]
GO
ALTER DATABASE [PetShop] SET  READ_WRITE 
GO
