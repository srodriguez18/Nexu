CREATE DATABASE [NEXU]  (EDITION = 'GeneralPurpose', SERVICE_OBJECTIVE = 'GP_S_Gen5_1', MAXSIZE = 32 GB) WITH CATALOG_COLLATION = SQL_Latin1_General_CP1_CI_AS, LEDGER = OFF;
GO
ALTER DATABASE [NEXU] SET COMPATIBILITY_LEVEL = 160
GO
ALTER DATABASE [NEXU] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [NEXU] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [NEXU] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [NEXU] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [NEXU] SET ARITHABORT OFF 
GO
ALTER DATABASE [NEXU] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [NEXU] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [NEXU] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [NEXU] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [NEXU] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [NEXU] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [NEXU] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [NEXU] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [NEXU] SET ALLOW_SNAPSHOT_ISOLATION ON 
GO
ALTER DATABASE [NEXU] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [NEXU] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [NEXU] SET  MULTI_USER 
GO
ALTER DATABASE [NEXU] SET ENCRYPTION ON
GO
ALTER DATABASE [NEXU] SET QUERY_STORE = ON
GO
ALTER DATABASE [NEXU] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 100, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
/*** The scripts of database scoped configurations in Azure should be executed inside the target database connection. ***/
GO
-- ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 8;
GO
/****** Object:  Table [dbo].[Brands]    Script Date: 6/24/2024 11:17:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brands](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Models]    Script Date: 6/24/2024 11:17:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Models](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[average_price] [int] NOT NULL,
	[brand_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Brands] ON 
GO
INSERT [dbo].[Brands] ([id], [name]) VALUES (1, N'Abarth')
GO
INSERT [dbo].[Brands] ([id], [name]) VALUES (2, N'Acura')
GO
INSERT [dbo].[Brands] ([id], [name]) VALUES (3, N'Alfa Romeo')
GO
INSERT [dbo].[Brands] ([id], [name]) VALUES (4, N'Aston Martin')
GO
INSERT [dbo].[Brands] ([id], [name]) VALUES (5, N'Audi')
GO
INSERT [dbo].[Brands] ([id], [name]) VALUES (6, N'Baic')
GO
INSERT [dbo].[Brands] ([id], [name]) VALUES (7, N'Bentley')
GO
INSERT [dbo].[Brands] ([id], [name]) VALUES (8, N'BMW')
GO
INSERT [dbo].[Brands] ([id], [name]) VALUES (9, N'Buick')
GO
INSERT [dbo].[Brands] ([id], [name]) VALUES (10, N'Cadillac')
GO
INSERT [dbo].[Brands] ([id], [name]) VALUES (11, N'Cbo')
GO
INSERT [dbo].[Brands] ([id], [name]) VALUES (12, N'Chevrolet')
GO
INSERT [dbo].[Brands] ([id], [name]) VALUES (13, N'Chrysler')
GO
INSERT [dbo].[Brands] ([id], [name]) VALUES (14, N'Dodge')
GO
INSERT [dbo].[Brands] ([id], [name]) VALUES (15, N'FAW')
GO
INSERT [dbo].[Brands] ([id], [name]) VALUES (16, N'Ferrari')
GO
INSERT [dbo].[Brands] ([id], [name]) VALUES (17, N'Fiat')
GO
INSERT [dbo].[Brands] ([id], [name]) VALUES (18, N'Ford')
GO
INSERT [dbo].[Brands] ([id], [name]) VALUES (19, N'GMC')
GO
INSERT [dbo].[Brands] ([id], [name]) VALUES (20, N'HINO')
GO
INSERT [dbo].[Brands] ([id], [name]) VALUES (21, N'Honda')
GO
INSERT [dbo].[Brands] ([id], [name]) VALUES (22, N'Hummer')
GO
INSERT [dbo].[Brands] ([id], [name]) VALUES (23, N'Hyundai')
GO
INSERT [dbo].[Brands] ([id], [name]) VALUES (24, N'Infiniti')
GO
INSERT [dbo].[Brands] ([id], [name]) VALUES (25, N'International')
GO
INSERT [dbo].[Brands] ([id], [name]) VALUES (26, N'Isuzu')
GO
INSERT [dbo].[Brands] ([id], [name]) VALUES (27, N'JAC')
GO
INSERT [dbo].[Brands] ([id], [name]) VALUES (28, N'Jaguar')
GO
INSERT [dbo].[Brands] ([id], [name]) VALUES (29, N'Jeep')
GO
INSERT [dbo].[Brands] ([id], [name]) VALUES (30, N'KIA')
GO
INSERT [dbo].[Brands] ([id], [name]) VALUES (31, N'Lamborghini')
GO
INSERT [dbo].[Brands] ([id], [name]) VALUES (32, N'Land Rover')
GO
INSERT [dbo].[Brands] ([id], [name]) VALUES (33, N'Lincoln')
GO
INSERT [dbo].[Brands] ([id], [name]) VALUES (34, N'Lotus')
GO
INSERT [dbo].[Brands] ([id], [name]) VALUES (35, N'Maserati')
GO
INSERT [dbo].[Brands] ([id], [name]) VALUES (36, N'Mastretta')
GO
INSERT [dbo].[Brands] ([id], [name]) VALUES (37, N'Mazda')
GO
INSERT [dbo].[Brands] ([id], [name]) VALUES (38, N'McLaren')
GO
INSERT [dbo].[Brands] ([id], [name]) VALUES (39, N'Mercedes Benz')
GO
INSERT [dbo].[Brands] ([id], [name]) VALUES (40, N'Mercury')
GO
INSERT [dbo].[Brands] ([id], [name]) VALUES (41, N'MG')
GO
INSERT [dbo].[Brands] ([id], [name]) VALUES (42, N'Mini Cooper')
GO
INSERT [dbo].[Brands] ([id], [name]) VALUES (43, N'Mitsubishi')
GO
INSERT [dbo].[Brands] ([id], [name]) VALUES (44, N'Nissan')
GO
INSERT [dbo].[Brands] ([id], [name]) VALUES (45, N'Peugeot')
GO
INSERT [dbo].[Brands] ([id], [name]) VALUES (46, N'Pontiac')
GO
INSERT [dbo].[Brands] ([id], [name]) VALUES (47, N'Porsche')
GO
INSERT [dbo].[Brands] ([id], [name]) VALUES (48, N'RAM')
GO
INSERT [dbo].[Brands] ([id], [name]) VALUES (49, N'Renault')
GO
INSERT [dbo].[Brands] ([id], [name]) VALUES (50, N'Rolls Royce')
GO
INSERT [dbo].[Brands] ([id], [name]) VALUES (51, N'Saab')
GO
INSERT [dbo].[Brands] ([id], [name]) VALUES (52, N'Seat')
GO
INSERT [dbo].[Brands] ([id], [name]) VALUES (53, N'Smart')
GO
INSERT [dbo].[Brands] ([id], [name]) VALUES (54, N'Subaru')
GO
INSERT [dbo].[Brands] ([id], [name]) VALUES (55, N'Suzuki')
GO
INSERT [dbo].[Brands] ([id], [name]) VALUES (56, N'Tesla')
GO
INSERT [dbo].[Brands] ([id], [name]) VALUES (57, N'Toyota')
GO
INSERT [dbo].[Brands] ([id], [name]) VALUES (58, N'UAZ')
GO
INSERT [dbo].[Brands] ([id], [name]) VALUES (59, N'Volkswagen')
GO
INSERT [dbo].[Brands] ([id], [name]) VALUES (60, N'Volvo')
GO
INSERT [dbo].[Brands] ([id], [name]) VALUES (61, N'Zacua')
GO
INSERT [dbo].[Brands] ([id], [name]) VALUES (62, N'Toyota')
GO
INSERT [dbo].[Brands] ([id], [name]) VALUES (63, N'Toyota2')
GO
SET IDENTITY_INSERT [dbo].[Brands] OFF
GO
SET IDENTITY_INSERT [dbo].[Models] ON 
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1, N'ILX', 303176, 2)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (2, N'MDX', 448193, 2)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (3, N'RDX', 395753, 2)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (4, N'RLX', 453100, 2)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (5, N'TL', 247225, 2)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (6, N'TSX', 232533, 2)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (7, N'A1', 260696, 5)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (9, N'A3', 255299, 5)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (10, N'A4', 299412, 5)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (11, N'A5', 511069, 5)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (12, N'A6', 499782, 5)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (13, N'A7', 1040891, 5)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (14, N'A8', 1059155, 5)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (15, N'Q3', 454949, 5)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (16, N'Q5', 532993, 5)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (17, N'Q7', 593487, 5)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (18, N'R8', 1463936, 5)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (21, N'TT', 498670, 5)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (24, N'Continental', 0, 7)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (25, N'Flying Spur', 3968000, 7)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (26, N'Continental GT', 4498875, 7)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (27, N'Mulsanne', 3968000, 7)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (54, N'X6', 898716, 8)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (60, N'Enclave', 583200, 9)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (61, N'Encore', 335845, 9)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (62, N'LaCrosse', 419233, 9)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (63, N'Regal', 352460, 9)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (64, N'Verano', 325409, 9)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (65, N'ATS', 737342, 10)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (66, N'CTS', 636500, 10)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (70, N'SRX', 422207, 10)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (71, N'Aveo', 128557, 12)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (72, N'Camaro', 507271, 12)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (74, N'Cheyenne', 345435, 12)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (75, N'Colorado', 284984, 12)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (76, N'Cruze', 227283, 12)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (80, N'Malibu', 238000, 12)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (81, N'Matiz', 56821, 12)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (84, N'Sonic', 146029, 12)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (85, N'Spark', 144415, 12)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (86, N'Suburban', 572851, 12)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (87, N'Tahoe', 519019, 12)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (88, N'Tornado', 152882, 12)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (89, N'Traverse', 412188, 12)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (90, N'Trax', 236175, 12)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (91, N'Chrysler 200', 283907, 13)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (92, N'Chrysler 300', 366584, 13)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (93, N'Town', 317192, 13)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (94, N'Attitude', 121966, 14)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (95, N'Avenger', 134104, 14)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (96, N'Challenger', 630386, 14)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (97, N'Charger', 376721, 14)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (98, N'Dart', 278366, 14)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (99, N'Durango', 294664, 14)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (101, N'Journey', 274681, 14)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (102, N'GF250 ', 0, 15)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (103, N'GF6000', 0, 15)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (104, N'GF70', 112600, 15)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (105, N'GF7000', 0, 15)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (106, N'GF8', 103500, 15)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (107, N'GF900', 0, 15)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (110, N'California', 0, 16)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (112, N'FF', 0, 16)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (113, N'Ducato', 0, 17)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (114, N'F500', 0, 17)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (115, N'Palio', 130515, 17)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (116, N'Palio Adventure', 0, 17)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (117, N'Punto', 181600, 17)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (118, N'Palio Strada', 110558, 17)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (119, N'Strada Adventure', 0, 17)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (120, N'Uno', 161305, 17)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (121, N'E-150', 0, 18)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (122, N'E-350', 0, 18)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (123, N'Eco Sport', 189465, 18)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (124, N'Edge', 408952, 18)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (125, N'Escape', 226759, 18)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (126, N'Expedition', 436655, 18)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (127, N'Explorer', 318270, 18)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (128, N'F-150', 268727, 18)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (129, N'F-250', 201785, 18)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (130, N'F-350', 287341, 18)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (131, N'F-450', 320575, 18)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (132, N'F-550', 370436, 18)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (133, N'Fiesta', 138747, 18)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (134, N'Focus', 189192, 18)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (135, N'Fusion', 252518, 18)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (136, N'Ikon hatchback', 0, 18)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (137, N'Lobo', 363385, 18)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (138, N'Lobo Raptor', 0, 18)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (139, N'Mustang', 367921, 18)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (140, N'Ranger', 210497, 18)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (141, N'Transit', 278628, 18)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (142, N'Acadia', 400347, 19)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (143, N'Sierra', 464248, 19)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (146, N'Terrain', 444504, 19)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (147, N'Yukon', 556491, 19)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (148, N'Accord', 221035, 21)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (149, N'City', 166870, 21)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (150, N'Civic', 185562, 21)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (151, N'CR-V', 247293, 21)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (152, N'CR-Z', 209033, 21)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (153, N'Crosstour', 255420, 21)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (154, N'Fit', 142098, 21)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (155, N'Odyssey', 343033, 21)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (156, N'Pilot', 331339, 21)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (157, N'Ridge Line', 253687, 21)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (158, N'Q60', 673900, 24)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (159, N'Q70', 651500, 24)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (160, N'QX60', 665011, 24)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (161, N'QX70', 660861, 24)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (162, N'QX80', 951850, 24)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (163, N'F', 1484528, 28)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (164, N'XF', 791032, 28)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (165, N'XJ', 606150, 28)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (166, N'XKR', 0, 28)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (167, N'Cherokee', 456109, 29)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (168, N'Compass', 263629, 29)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (169, N'Grand Cherokee', 562944, 29)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (170, N'Patriot', 185558, 29)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (171, N'Wrangler', 396757, 29)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (173, N'Aventador', 0, 31)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (174, N'Gallardo', 0, 31)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (175, N'Defender', 923797, 32)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (176, N'Discovery', 1019830, 32)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (177, N'LR2', 482077, 32)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (178, N'Range Rover', 1762459, 32)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (179, N'Mark LT', 318420, 33)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (180, N'MKS', 309425, 33)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (181, N'MKX', 429064, 33)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (182, N'MKZ', 417642, 33)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (183, N'Navigator', 578993, 33)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (184, N'Gran Cabrio', 0, 35)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (185, N'Gran Turismo', 2810925, 35)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (186, N'Quattroporte', 2263000, 35)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (187, N'MXT', 0, 36)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (188, N'Mazda 2', 183824, 37)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (189, N'Mazda 3', 192010, 37)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (191, N'Mazda 5', 135327, 37)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (192, N'Mazda 6', 194683, 37)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (194, N'CX9', 383370, 37)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (195, N'MX5', 261504, 37)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (196, N'Clase A', 463191, 39)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (197, N'Clase B', 239151, 39)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (198, N'Clase C', 672744, 39)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (199, N'Clase CLA', 488793, 39)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (200, N'Clase CLS', 767931, 39)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (201, N'Clase E', 727529, 39)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (202, N'Clase G', 2193198, 39)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (203, N'Clase GL', 696475, 39)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (204, N'Clase GLK', 351929, 39)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (205, N'Clase ML', 0, 39)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (206, N'Clase S', 2556844, 39)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (207, N'Clase SL', 1584684, 39)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (208, N'Clase SLK', 530838, 39)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (209, N'Clase SLS AMG', 0, 39)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (210, N'Viano', 433878, 39)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (220, N'ASX', 209442, 43)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (221, N'L200', 215532, 43)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (222, N'Lancer', 153796, 43)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (223, N'Montero', 350767, 43)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (224, N'Outlander', 236435, 43)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (225, N'370Z', 440869, 44)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (226, N'Altima', 184092, 44)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (227, N'Armada', 340681, 44)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (228, N'Frontier LE', 0, 44)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (229, N'Frontier XE', 0, 44)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (230, N'Juke', 226880, 44)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (231, N'March', 130214, 44)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (232, N'Maxima', 295525, 44)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (233, N'Murano', 262091, 44)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (234, N'Note', 184206, 44)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (235, N'NP300', 0, 44)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (236, N'Pathfinder', 342334, 44)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (237, N'Rogue', 175936, 44)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (238, N'Sentra', 157613, 44)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (239, N'Titan', 251044, 44)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (240, N'Tsuru', 78120, 44)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (241, N'Urvan', 239288, 44)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (242, N'Versa', 159324, 44)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (243, N'X Trail', 260731, 44)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (245, N'207 CC', 0, 45)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (246, N'208', 201530, 45)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (249, N'3008', 336527, 45)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (250, N'301', 184431, 45)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (251, N'308', 245043, 45)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (252, N'308 CC', 0, 45)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (253, N'508', 314191, 45)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (254, N'Manager', 342506, 45)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (257, N'RCZ', 404630, 45)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (258, N'911', 1371633, 47)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (267, N'Boxster', 745149, 47)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (269, N'Cayenne', 941314, 47)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (270, N'Cayman', 743222, 47)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (272, N'Panamera', 1500840, 47)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (278, N'Bighorn', 0, 48)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (279, N'Crew Cab', 0, 48)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (281, N'Hemi Sport', 0, 48)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (282, N'Power Wagon', 0, 48)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (283, N'Regular Cab R/T', 0, 48)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (284, N'Regular Cab SLT', 0, 48)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (285, N'ST', 0, 48)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (286, N'Duster', 209145, 49)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (287, N'Fluence', 169802, 49)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (288, N'Kangoo', 60585, 49)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (289, N'Koleos', 257672, 49)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (290, N'Safrane', 181925, 49)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (291, N'Sandero', 126814, 49)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (292, N'Stepway', 167890, 49)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (294, N'Ghost', 0, 50)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (295, N'Phantom', 0, 50)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (296, N'Altea', 141055, 52)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (297, N'Freetrack', 164408, 52)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (298, N'Ibiza', 156859, 52)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (299, N'Leon', 234543, 52)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (301, N'Toledo', 191512, 52)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (302, N'Brabus', 0, 53)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (303, N'Fortwo', 0, 53)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (304, N'Forester', 307996, 54)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (305, N'Impreza', 232322, 54)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (306, N'Legacy', 231704, 54)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (307, N'Outback', 294950, 54)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (308, N'WRX', 344748, 54)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (309, N'XV', 310570, 54)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (310, N'Grand Vitara', 197100, 55)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (311, N'Kizashi', 241536, 55)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (312, N'S-Cross', 235612, 55)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (313, N'Swift', 171901, 55)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (314, N'SX 4 Crossover', 0, 55)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (316, N'SX 4 Sedan ', 0, 55)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (317, N'Avanza', 161502, 57)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (318, N'Camry', 260490, 57)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (319, N'Corolla', 180456, 57)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (320, N'FJ Cruiser', 301680, 57)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (321, N'Hiace', 226078, 57)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (322, N'Highlander', 375704, 57)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (323, N'Hilux', 209308, 57)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (324, N'Land Cruiser', 700584, 57)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (325, N'Prius', 281072, 57)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (326, N'Rav4', 254634, 57)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (327, N'Sequoia', 490790, 57)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (328, N'Sienna', 329930, 57)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (329, N'Tacoma', 352954, 57)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (330, N'Tundra', 402731, 57)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (333, N'Amarok', 341421, 59)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (334, N'Beetle', 174920, 59)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (335, N'CC', 299380, 59)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (336, N'Clasico', 0, 59)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (337, N'CrossFox', 158882, 59)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (338, N'Gol', 115926, 59)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (339, N'Gol Sedan', 0, 59)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (340, N'Jetta Clasico', 100096, 59)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (341, N'Passat', 216005, 59)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (342, N'Polo', 165026, 59)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (343, N'Saveiro', 199246, 59)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (344, N'Tiguan', 317202, 59)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (345, N'Touareg', 483431, 59)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (346, N'Vento', 175146, 59)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (347, N'S60', 372106, 60)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (348, N'S80', 256982, 60)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (349, N'V40', 332068, 60)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (351, N'V60', 460872, 60)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (352, N'XC60', 498311, 60)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (353, N'XC90', 587919, 60)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (354, N'RL', 239050, 2)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (355, N'ZDX', 405550, 2)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (356, N'147', 0, 3)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (357, N'166', 0, 3)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (358, N'4C', 1081850, 3)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (359, N'Giulietta', 457240, 3)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (360, N'MiTo', 345862, 3)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (366, N'i3', 671180, 8)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (367, N'i8', 2195133, 8)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (373, N'Serie 1', 277295, 8)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (374, N'Serie 2', 584746, 8)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (375, N'Serie 3', 415477, 8)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (376, N'Serie 4', 758820, 8)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (377, N'Serie 5', 553739, 8)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (378, N'Serie 6', 891559, 8)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (379, N'Serie 7', 1132673, 8)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (380, N'Serie 8', 2179900, 8)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (381, N'X1', 373718, 8)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (382, N'X3', 398124, 8)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (383, N'X4', 730075, 8)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (384, N'X5', 796909, 8)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (386, N'Z', 479845, 8)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (387, N'LeSabre', 0, 9)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (388, N'Rendezvous', 0, 9)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (389, N'Terraza', 0, 9)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (391, N'BLS', 113350, 10)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (392, N'DTS', 0, 10)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (394, N'STS', 192210, 10)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (395, N'3500', 253193, 12)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (397, N'Astra', 79910, 12)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (398, N'Avalanche', 289500, 12)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (399, N'Blazer', 697900, 12)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (403, N'Captiva', 204955, 12)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (408, N'Chevy', 61489, 12)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (410, N'Cobalt', 0, 12)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (411, N'Corsa', 61780, 12)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (412, N'Corvette', 811984, 12)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (415, N'Epica', 93033, 12)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (416, N'Equinox', 340491, 12)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (417, N'Express', 0, 12)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (418, N'HHR', 94141, 12)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (419, N'Impala', 0, 12)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (420, N'Meriva', 62754, 12)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (422, N'Optra', 78281, 12)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (423, N'S10', 306100, 12)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (424, N'SS R', 0, 12)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (426, N'Sonora', 104450, 12)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (427, N'Tracker', 91066, 12)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (428, N'Trailblazer', 101966, 12)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (429, N'Uplander', 113130, 12)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (431, N'Vectra', 90933, 12)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (432, N'Venture', 0, 12)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (433, N'Zafira', 90400, 12)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (434, N'Aspen', 174762, 13)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (435, N'Avenger', 135956, 13)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (436, N'Cirrus', 126755, 13)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (438, N'Crossfire', 149550, 13)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (439, N'Dart', 220718, 13)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (441, N'Grand Voyager', 0, 13)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (443, N'PT Cruiser', 83738, 13)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (444, N'Pacifica', 521537, 13)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (445, N'Sebring', 0, 13)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (448, N'Voyager', 113932, 13)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (449, N'Atos', 61385, 14)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (450, N'Caliber', 113914, 14)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (453, N'Dakota', 143623, 14)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (454, N'Grand Caravan', 497464, 14)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (455, N'H 100', 173933, 14)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (456, N'i10', 85793, 14)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (457, N'Intrepid', 0, 14)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (458, N'Magnum', 0, 14)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (460, N'Neon', 254521, 14)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (461, N'Nitro', 157452, 14)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (462, N'RAM', 0, 14)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (468, N'Stratus', 60283, 14)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (469, N'Van 1000', 97850, 14)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (470, N'Verna', 50766, 14)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (471, N'Viper', 890387, 14)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (475, N'430', 0, 16)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (476, N'458', 0, 16)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (477, N'599', 0, 16)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (478, N'612', 0, 16)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (479, N'F12', 0, 16)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (480, N'La Ferrari', 0, 16)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (481, N'500', 221640, 17)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (482, N'Albea', 75400, 17)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (483, N'Bravo', 117000, 17)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (484, N'Grande Punto', 76657, 17)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (485, N'Linea', 118000, 17)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (486, N'Panda', 77908, 17)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (487, N'Stilo', 97800, 17)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (488, N'Bronco', 0, 18)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (489, N'Club Wagon', 0, 18)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (493, N'Econoline', 171225, 18)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (494, N'Escort', 0, 18)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (495, N'Excursion', 0, 18)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (496, N'F-100', 0, 18)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (499, N'Five Hundred', 82700, 18)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (500, N'Freestar', 100350, 18)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (502, N'Ikon', 98350, 18)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (503, N'Interceptor', 338475, 18)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (504, N'Ka', 45233, 18)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (506, N'Mondeo', 69310, 18)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (508, N'Taurus', 0, 18)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (510, N'Windstar', 0, 18)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (511, N'Canyon', 182000, 19)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (515, N'Savana', 0, 19)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (517, N'Element', 0, 21)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (518, N'Passport', 0, 21)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (519, N'H1', 0, 22)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (520, N'H2', 0, 22)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (521, N'H3', 0, 22)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (522, N'Atos', 0, 23)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (523, N'Attitude', 0, 23)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (524, N'Elantra', 224769, 23)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (525, N'Grand i10', 136722, 23)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (527, N'H100', 0, 23)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (528, N'ix35', 200520, 23)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (529, N'Sonata', 300443, 23)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (530, N'Verna', 0, 23)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (531, N'FX', 500350, 24)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (532, N'FX 50', 0, 24)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (533, N'G', 357625, 24)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (534, N'I30', 0, 24)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (535, N'JX', 430200, 24)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (536, N'Q 45', 0, 24)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (537, N'Q50', 519076, 24)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (538, N'QX', 0, 24)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (539, N'Rodeo', 0, 26)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (540, N'S-Type', 150450, 28)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (541, N'X-Type', 122725, 28)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (542, N'XK', 615857, 28)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (543, N'CJ5', 0, 29)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (544, N'Commander', 157492, 29)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (545, N'Grand Wagoneer', 0, 29)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (546, N'Liberty', 188641, 29)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (547, N'Asterion', 0, 31)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (548, N'Huracan', 0, 31)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (549, N'Veneno', 0, 31)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (550, N'Evoque', 690500, 32)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (551, N'Freelander', 108600, 32)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (552, N'LR3', 209962, 32)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (553, N'LR4', 505630, 32)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (554, N'Aviator', 0, 33)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (555, N'LS', 97000, 33)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (556, N'MKC', 499270, 33)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (557, N'Town Car', 122750, 33)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (558, N'Zephyr', 113700, 33)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (559, N'CX7', 179026, 37)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (560, N'Tribute', 0, 37)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (561, N'MP4-12C', 0, 38)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (566, N'Clase CL', 937917, 39)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (567, N'Clase CLK', 263046, 39)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (568, N'Clase M', 578767, 39)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (569, N'Clase R', 316430, 39)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (570, N'Sprinter', 476619, 39)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (571, N'Vito', 219848, 39)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (572, N'Grand Marquis', 0, 40)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (573, N'Mariner', 0, 40)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (574, N'Milan', 0, 40)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (576, N'Mountaineer', 0, 40)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (578, N'CBO', 125775, 11)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (580, N'Eclipse', 142225, 43)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (581, N'Endeavor', 146240, 43)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (582, N'Galant', 79163, 43)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (583, N'Grandis', 125200, 43)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (584, N'240SX', 0, 44)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (585, N'350Z', 189600, 44)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (586, N'Aprio', 69450, 44)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (587, N'Cabstar', 294305, 44)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (588, N'Estacas', 169790, 44)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (589, N'NV2500', 303385, 44)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (590, N'Platina', 58266, 44)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (591, N'Quest', 128606, 44)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (592, N'Tiida', 111954, 44)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (593, N'Xterra', 0, 44)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (595, N'206', 63464, 45)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (596, N'307', 81807, 45)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (597, N'406', 0, 45)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (598, N'407', 93361, 45)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (599, N'607', 103000, 45)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (600, N'Grand Raid', 89709, 45)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (601, N'Partner', 172626, 45)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (605, N'G-3', 70855, 46)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (606, N'G-4', 66766, 46)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (607, N'G-5', 88000, 46)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (608, N'G-6', 95266, 46)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (609, N'Grand Am', 0, 46)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (610, N'Grand Prix', 0, 46)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (611, N'Matiz', 44885, 46)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (612, N'Montana', 107887, 46)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (613, N'Solstice', 144780, 46)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (614, N'Sunfire', 0, 46)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (615, N'Torrent', 111772, 46)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (621, N'918 Spyder', 0, 47)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (624, N'Clio', 108000, 49)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (625, N'Euroclio', 0, 49)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (627, N'Laguna', 66600, 49)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (628, N'Megane', 80572, 49)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (630, N'Scala', 94237, 49)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (631, N'Scenic', 73400, 49)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (632, N'Trafic Panel', 171911, 49)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (633, N'Wraith', 0, 50)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (634, N'9-2', 0, 51)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (635, N'9-3', 0, 51)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (636, N'90', 0, 51)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (639, N'Alhambra', 101700, 52)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (640, N'Cordoba', 82635, 52)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (641, N'Exeo', 211150, 52)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (642, N'Forfour', 219000, 53)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (643, N'B9 Tribeca', 0, 54)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (644, N'Tribeca', 235850, 54)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (645, N'Aerio', 62600, 55)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (646, N'SX4', 134540, 55)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (647, N'Vitara', 289756, 55)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (648, N'XL7', 137360, 55)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (649, N'4Runner', 155264, 57)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (650, N'Matrix', 109200, 57)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (651, N'Rush', 113750, 57)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (652, N'Solara', 113700, 57)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (653, N'Tercel', 0, 57)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (654, N'Yaris', 143268, 57)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (655, N'Bora', 124253, 59)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (656, N'Derby', 63075, 59)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (657, N'Cabrio', 0, 59)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (658, N'Caribe', 0, 59)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (659, N'Golf', 252992, 59)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (665, N'TLX', 478290, 2)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (666, N'Spider', 0, 3)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (667, N'Mirage', 167900, 43)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (668, N'C30', 171037, 60)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (672, N'DBS', 0, 4)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (673, N'DB9', 3859500, 4)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (674, N'Lagonda', 0, 4)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (675, N'Vantage', 2720250, 4)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (676, N'Vanquish', 5580000, 4)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (677, N'Rapide', 3906000, 4)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (678, N'Elise', 0, 34)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (679, N'Exige', 0, 34)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (680, N'Evora', 0, 34)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (681, N'MG3', 0, 41)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (682, N'MG6', 0, 41)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (683, N'S', 2137587, 56)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (684, N'X', 2326825, 56)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (685, N'500', 0, 1)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (686, N'Forte', 270506, 30)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (687, N'Sorento', 440080, 30)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (688, N'Sportage', 368219, 30)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (689, N'Logan', 174524, 49)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (692, N'Macan', 1010744, 47)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (693, N'Escalade', 689650, 10)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (694, N'Silverado', 178660, 12)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (695, N'Mini', 343512, 42)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (696, N'Mini S', 323112, 42)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (697, N'Coupe', 301593, 42)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (698, N'Convertible', 290934, 42)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (699, N'Roadster', 313133, 42)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (700, N'Countryman', 331884, 42)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (701, N'Paceman', 349017, 42)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (702, N'John Cooper Works', 0, 42)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (703, N'207', 109263, 45)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (704, N'2008', 286114, 45)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (705, N'V50', 126000, 60)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (706, N'C70', 304557, 60)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (707, N'S40', 149377, 60)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (708, N'488', 0, 16)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (709, N'Tucson', 343817, 23)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (710, N'CX5', 321758, 37)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (711, N'HR-V', 311173, 21)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (712, N'CX3', 295390, 37)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (713, N'Clase GLA', 485557, 39)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (714, N'Clase GLC', 723551, 39)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (715, N'Clase GLE', 1368918, 39)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (716, N'AMG GT', 2718345, 39)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (717, N'Aero', 0, 51)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (718, N'Ciaz', 216360, 55)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (719, N'Clase V', 844904, 39)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (722, N'Up', 163962, 59)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (723, N'Optima', 360900, 30)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (724, N'Rio', 223032, 30)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (725, N'Leaf', 531990, 44)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (726, N'S3', 0, 5)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (727, N'3', 0, 56)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (728, N'Twizy', 0, 49)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (729, N'Soul', 275188, 30)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (730, N'Volt', 658880, 12)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (731, N'Figo', 171262, 18)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (732, N'D20', 169088, 6)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (733, N'X25', 237345, 6)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (734, N'Ignis', 197956, 55)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (735, N'Creta', 189895, 23)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (737, N'SEI2', 383714, 27)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (738, N'SEI3', 346922, 27)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (802, N'Serie 500', 1142796, 20)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1264, N'NSX', 3818225, 2)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1265, N'Q2', 541153, 5)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1266, N'BJ40', 520166, 6)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1267, N'Bentayga', 4278000, 7)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1268, N'Serie Z', 555130, 8)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1269, N'Envision', 597200, 9)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1270, N'XT5', 775655, 10)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1271, N'CBO', 173000, 11)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1272, N'Transit Van', 498596, 18)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1273, N'Beat', 167757, 12)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1274, N'Bolt EV', 695333, 12)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1275, N'Cargo Van', 361027, 12)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1276, N'Cavalier', 272971, 12)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1277, N'Express Cutaway', 326457, 12)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1278, N'Express Van', 439228, 12)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1279, N'S-10', 270122, 12)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1280, N'Sierra', 580652, 12)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1281, N'Silverado 1500', 363866, 12)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1282, N'Silverado 2500', 404665, 12)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1283, N'Silverado 3500', 402850, 12)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1284, N'ACCENT', 240760, 23)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1285, N'SANTA FE', 533277, 23)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1286, N'QX30', 632983, 24)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1287, N'CITYSTAR', 717030, 25)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1288, N'F Pace', 1300675, 28)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1289, N'XE', 970270, 28)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1290, N'NIRO', 452475, 30)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1291, N'Discovery Sport', 772785, 32)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1292, N'Range Rover Sport', 1326131, 32)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1293, N'Continental', 1196750, 33)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1294, N'Ghibli', 1320600, 35)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1295, N'Cargo Van', 504323, 39)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1296, N'Chasis Cabina', 367440, 39)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1297, N'Clase GLS', 1801912, 39)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1298, N'Clase SLC', 835650, 39)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1299, N'Clase SLS', 3415950, 39)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1300, N'Crew Cab', 429587, 39)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1301, N'Chasis Cabina', 185095, 44)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1302, N'Doble Cabina', 223808, 44)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1303, N'Frontier', 347004, 44)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1304, N'GT-R', 2180600, 44)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1305, N'Kicks', 311277, 44)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1306, N'Pick Up', 214570, 44)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1307, N'Partner Maxi', 221392, 45)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1308, N'Captur', 307844, 49)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1309, N'Kangoo Express', 175550, 49)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1310, N'Twitzy Z.E.', 250300, 49)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1311, N'ATECA', 406112, 52)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1312, N'BRZ', 470283, 54)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1313, N'Hunter', 542000, 58)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1314, N'Caddy', 237534, 59)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1315, N'Crafter', 426691, 59)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1316, N'Crafter Pasajeros', 549187, 59)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1317, N'Cross Golf', 277150, 59)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1318, N'Jetta Nuevo', 214175, 59)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1319, N'Transporter', 332755, 59)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1320, N'S90', 1042940, 60)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1321, N'Ducato Van', 285908, 17)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1322, N'Mobi', 165188, 17)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1523, N'Stinger', 647283, 30)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1524, N'Ioniq', 438900, 23)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1525, N'C-HR', 367400, 57)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1526, N'Renegade', 396920, 29)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1527, N'Starex', 416400, 23)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1528, N'Sedona', 654650, 30)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1536, N'Arona', 345150, 52)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1537, N'Ram 1500', 453421, 48)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1538, N'Ram 2500', 439179, 48)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1539, N'Ram 4000', 379308, 48)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1540, N'H 100 Wagon', 223850, 14)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1541, N'Econoline Wagon', 291950, 18)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1542, N'ELF 200', 380933, 26)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1543, N'ELF 400', 481755, 26)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1544, N'ELF 300', 426500, 26)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1545, N'Clubman', 361742, 42)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1546, N'GTS', 151950, 14)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1547, N'Ram Promaster', 389350, 48)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1548, N'Cabrio', 212563, 53)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1549, N'Coupé', 181446, 53)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1550, N'Vision', 156660, 14)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1551, N'Ram 700', 220046, 48)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1552, N'ELF 100', 299800, 26)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1553, N'GF60', 152850, 15)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1554, N'Giulia', 1187400, 3)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1555, N'X65', 343880, 6)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1556, N'Expert', 403700, 45)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1557, N'Expert Van', 469750, 45)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1558, N'Traveller', 682200, 45)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1559, N'XC40', 684950, 60)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1560, N'Stelvio', 1456666, 3)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1561, N'Q8', 1449900, 5)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1562, N'X35', 288900, 6)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1563, N'X2', 652400, 8)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1564, N'X7', 1769900, 8)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1565, N'XT4', 746500, 10)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1566, N'Serie 300', 811452, 20)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1567, N'BRV', 333900, 21)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1568, N'Insight', 549900, 21)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1569, N'QX50', 821233, 24)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1570, N'Frison', 364000, 27)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1571, N'J4', 214000, 27)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1572, N'SEI7', 506500, 27)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1573, N'E Pace', 1111564, 28)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1574, N'I Pace', 2250375, 28)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1575, N'Velar', 1252681, 32)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1576, N'Nautilus', 951600, 33)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1577, N'Eclipse Cross', 429950, 43)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1578, N'5008', 661566, 45)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1579, N'Rifter', 339900, 45)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1580, N'Oroch', 310900, 49)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1581, N'Ertiga', 288323, 55)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1582, N'Teramont', 788398, 59)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1583, N'Kwid', 181566, 49)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1734, N'Virtus', 321600, 59)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1735, N'MX2', 0, 61)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1736, N'MX3', 0, 61)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1737, N'CX30', 439900, 37)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1738, N'Seltos', 0, 30)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1739, N'Onix', 270500, 12)
GO
INSERT [dbo].[Models] ([id], [name], [average_price], [brand_id]) VALUES (1740, N'T-Cross', 0, 59)
GO
SET IDENTITY_INSERT [dbo].[Models] OFF
GO
ALTER TABLE [dbo].[Models]  WITH CHECK ADD  CONSTRAINT [FK_BrandId] FOREIGN KEY([brand_id])
REFERENCES [dbo].[Brands] ([id])
GO
ALTER TABLE [dbo].[Models] CHECK CONSTRAINT [FK_BrandId]
GO
ALTER DATABASE [NEXU] SET  READ_WRITE 
GO
