USE [RealEstateAgencyDb]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 11.06.2023 17:32:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Address](
	[Id] [int] NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Agents]    Script Date: 11.06.2023 17:32:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agents](
	[Id] [int] NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[MiddleName] [nvarchar](50) NOT NULL,
	[Share] [int] NOT NULL,
	[Phone] [bigint] NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[IdRole] [int] NOT NULL,
 CONSTRAINT [PK_Agents] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AttributesName]    Script Date: 11.06.2023 17:32:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AttributesName](
	[Id] [int] NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_AttributesName] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AttributesOrders]    Script Date: 11.06.2023 17:32:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AttributesOrders](
	[Id] [int] NOT NULL,
	[IdOrder] [int] NOT NULL,
	[IdAttributesName] [int] NOT NULL,
	[Value] [float] NOT NULL,
 CONSTRAINT [PK_AttributesOrders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AttributesRealEstateObjects]    Script Date: 11.06.2023 17:32:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AttributesRealEstateObjects](
	[Id] [int] NOT NULL,
	[IdObject] [int] NOT NULL,
	[IdAttributesName] [int] NOT NULL,
	[Value] [float] NOT NULL,
 CONSTRAINT [PK_AttributesRealEstateObjects] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clients]    Script Date: 11.06.2023 17:32:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clients](
	[Id] [int] NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[MiddleName] [nvarchar](50) NOT NULL,
	[Phone] [bigint] NULL,
	[Email] [nvarchar](100) NULL,
 CONSTRAINT [PK_Clients] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contracts]    Script Date: 11.06.2023 17:32:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contracts](
	[Id] [int] NOT NULL,
	[ContractNumber] [int] NOT NULL,
	[Customer] [int] NOT NULL,
	[Price] [int] NOT NULL,
	[Commission] [float] NOT NULL,
	[Date] [date] NOT NULL,
	[Realtor] [int] NOT NULL,
	[RealEstateObject] [int] NOT NULL,
	[Owner] [int] NOT NULL,
	[TypeContract] [int] NOT NULL,
	[TypeDeal] [int] NOT NULL,
 CONSTRAINT [PK_Contracts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 11.06.2023 17:32:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] NOT NULL,
	[StatusOrder] [int] NOT NULL,
	[Client] [int] NOT NULL,
	[Agent] [int] NOT NULL,
	[TypeRealEstate] [int] NOT NULL,
	[IdAddress] [int] NOT NULL,
	[MinPrice] [int] NOT NULL,
	[MaxPrice] [int] NOT NULL,
	[TypeOrder] [int] NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RealEstateObjects]    Script Date: 11.06.2023 17:32:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RealEstateObjects](
	[Id] [int] NOT NULL,
	[IdAddress] [int] NOT NULL,
	[TypeEstate] [int] NOT NULL,
	[Description] [nvarchar](255) NULL,
	[Owner] [int] NOT NULL,
 CONSTRAINT [PK_RealEstateObjects] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 11.06.2023 17:32:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [int] NOT NULL,
	[Title] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StatusOrders]    Script Date: 11.06.2023 17:32:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StatusOrders](
	[Id] [int] NOT NULL,
	[Title] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_StatusOrders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeContracts]    Script Date: 11.06.2023 17:32:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeContracts](
	[Id] [int] NOT NULL,
	[Title] [nchar](20) NOT NULL,
 CONSTRAINT [PK_TypeContracts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeDeals]    Script Date: 11.06.2023 17:32:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeDeals](
	[Id] [int] NOT NULL,
	[Title] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_TypeDeals] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeOrders]    Script Date: 11.06.2023 17:32:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeOrders](
	[Id] [int] NOT NULL,
	[Title] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_TypeOrders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeRealEstateObjects]    Script Date: 11.06.2023 17:32:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeRealEstateObjects](
	[Id] [int] NOT NULL,
	[Title] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_TypeRealEstateObjects] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Address] ([Id], [Title]) VALUES (1, N'Вологодская область, город Сергиев Посад, бульвар Ленина, 72')
INSERT [dbo].[Address] ([Id], [Title]) VALUES (2, N'Калининградская область, город Луховицы, наб. Сталина, 01')
INSERT [dbo].[Address] ([Id], [Title]) VALUES (3, N'Оренбургская область, город Коломна, проезд Домодедовская, 91')
INSERT [dbo].[Address] ([Id], [Title]) VALUES (4, N'Пензенская область, город Подольск, шоссе Балканская, 87')
INSERT [dbo].[Address] ([Id], [Title]) VALUES (5, N'Тамбовская область, город Наро-Фоминск')
INSERT [dbo].[Address] ([Id], [Title]) VALUES (6, N'Магаданская область, город Москва, пер. Космонавтов')
GO
INSERT [dbo].[Agents] ([Id], [FirstName], [LastName], [MiddleName], [Share], [Phone], [Password], [IdRole]) VALUES (1, N'Андрей', N'Яшнов', N'Николаевич', 20, 79035382277, N'1', 1)
INSERT [dbo].[Agents] ([Id], [FirstName], [LastName], [MiddleName], [Share], [Phone], [Password], [IdRole]) VALUES (2, N'Иванов', N'Иван', N'Иванович', 15, 79113881447, N'2', 1)
INSERT [dbo].[Agents] ([Id], [FirstName], [LastName], [MiddleName], [Share], [Phone], [Password], [IdRole]) VALUES (3, N'Виктория', N'Потапова', N'Артемовна', 18, 72290267425, N'3', 2)
INSERT [dbo].[Agents] ([Id], [FirstName], [LastName], [MiddleName], [Share], [Phone], [Password], [IdRole]) VALUES (4, N'Матвей', N'Кузнецов', N'Владимирович', 25, 85164423951, N'4', 2)
INSERT [dbo].[Agents] ([Id], [FirstName], [LastName], [MiddleName], [Share], [Phone], [Password], [IdRole]) VALUES (5, N'Варвара', N'Васильева', N'Андреевна', 22, 71628531558, N'5', 2)
INSERT [dbo].[Agents] ([Id], [FirstName], [LastName], [MiddleName], [Share], [Phone], [Password], [IdRole]) VALUES (6, N'Руслан', N'Ерофеев', N'Александрович', 20, 82481685825, N'6', 2)
INSERT [dbo].[Agents] ([Id], [FirstName], [LastName], [MiddleName], [Share], [Phone], [Password], [IdRole]) VALUES (7, N'София', N'Осипова', N'Тимофеева', 16, 74371313961, N'7', 2)
INSERT [dbo].[Agents] ([Id], [FirstName], [LastName], [MiddleName], [Share], [Phone], [Password], [IdRole]) VALUES (8, N'Арина', N'Акимова', N'Игоревна', 15, 76216988674, N'8', 2)
INSERT [dbo].[Agents] ([Id], [FirstName], [LastName], [MiddleName], [Share], [Phone], [Password], [IdRole]) VALUES (9, N'Александра', N'Полякова', N'Артемьева', 18, 75472516745, N'9', 2)
INSERT [dbo].[Agents] ([Id], [FirstName], [LastName], [MiddleName], [Share], [Phone], [Password], [IdRole]) VALUES (10, N'Надежда', N'Иванова', N'Миронова', 25, 80141247083, N'10', 2)
GO
INSERT [dbo].[AttributesName] ([Id], [Title]) VALUES (1, N'Площадь')
INSERT [dbo].[AttributesName] ([Id], [Title]) VALUES (2, N'Количество комнат')
INSERT [dbo].[AttributesName] ([Id], [Title]) VALUES (3, N'Этаж')
INSERT [dbo].[AttributesName] ([Id], [Title]) VALUES (4, N'Этажность')
INSERT [dbo].[AttributesName] ([Id], [Title]) VALUES (5, N'Мин. площадь')
INSERT [dbo].[AttributesName] ([Id], [Title]) VALUES (6, N'Макс. площадь')
INSERT [dbo].[AttributesName] ([Id], [Title]) VALUES (7, N'Мин. кол-во комнат')
INSERT [dbo].[AttributesName] ([Id], [Title]) VALUES (8, N'Маск. кол-во комнат')
INSERT [dbo].[AttributesName] ([Id], [Title]) VALUES (9, N'Мин. этаж')
INSERT [dbo].[AttributesName] ([Id], [Title]) VALUES (10, N'Макс. этаж')
INSERT [dbo].[AttributesName] ([Id], [Title]) VALUES (11, N'Мин. этажность')
INSERT [dbo].[AttributesName] ([Id], [Title]) VALUES (12, N'Макс. этажность')
GO
INSERT [dbo].[AttributesOrders] ([Id], [IdOrder], [IdAttributesName], [Value]) VALUES (1, 1, 1, 95)
INSERT [dbo].[AttributesOrders] ([Id], [IdOrder], [IdAttributesName], [Value]) VALUES (2, 1, 2, 4)
INSERT [dbo].[AttributesOrders] ([Id], [IdOrder], [IdAttributesName], [Value]) VALUES (3, 1, 4, 1)
INSERT [dbo].[AttributesOrders] ([Id], [IdOrder], [IdAttributesName], [Value]) VALUES (4, 2, 5, 40)
INSERT [dbo].[AttributesOrders] ([Id], [IdOrder], [IdAttributesName], [Value]) VALUES (5, 2, 6, 55)
INSERT [dbo].[AttributesOrders] ([Id], [IdOrder], [IdAttributesName], [Value]) VALUES (6, 2, 7, 2)
INSERT [dbo].[AttributesOrders] ([Id], [IdOrder], [IdAttributesName], [Value]) VALUES (7, 2, 8, 0)
INSERT [dbo].[AttributesOrders] ([Id], [IdOrder], [IdAttributesName], [Value]) VALUES (8, 2, 9, 2)
INSERT [dbo].[AttributesOrders] ([Id], [IdOrder], [IdAttributesName], [Value]) VALUES (9, 2, 10, 4)
INSERT [dbo].[AttributesOrders] ([Id], [IdOrder], [IdAttributesName], [Value]) VALUES (10, 3, 5, 0)
INSERT [dbo].[AttributesOrders] ([Id], [IdOrder], [IdAttributesName], [Value]) VALUES (11, 3, 6, 20)
GO
INSERT [dbo].[AttributesRealEstateObjects] ([Id], [IdObject], [IdAttributesName], [Value]) VALUES (1, 1, 1, 120)
INSERT [dbo].[AttributesRealEstateObjects] ([Id], [IdObject], [IdAttributesName], [Value]) VALUES (2, 1, 2, 5)
INSERT [dbo].[AttributesRealEstateObjects] ([Id], [IdObject], [IdAttributesName], [Value]) VALUES (3, 1, 4, 2)
INSERT [dbo].[AttributesRealEstateObjects] ([Id], [IdObject], [IdAttributesName], [Value]) VALUES (4, 2, 1, 45)
INSERT [dbo].[AttributesRealEstateObjects] ([Id], [IdObject], [IdAttributesName], [Value]) VALUES (5, 2, 2, 2)
INSERT [dbo].[AttributesRealEstateObjects] ([Id], [IdObject], [IdAttributesName], [Value]) VALUES (6, 2, 3, 2)
INSERT [dbo].[AttributesRealEstateObjects] ([Id], [IdObject], [IdAttributesName], [Value]) VALUES (7, 3, 1, 15)
INSERT [dbo].[AttributesRealEstateObjects] ([Id], [IdObject], [IdAttributesName], [Value]) VALUES (8, 4, 1, 95)
INSERT [dbo].[AttributesRealEstateObjects] ([Id], [IdObject], [IdAttributesName], [Value]) VALUES (9, 4, 2, 4)
INSERT [dbo].[AttributesRealEstateObjects] ([Id], [IdObject], [IdAttributesName], [Value]) VALUES (10, 4, 4, 1)
GO
INSERT [dbo].[Clients] ([Id], [FirstName], [LastName], [MiddleName], [Phone], [Email]) VALUES (1, N'Анна', N'Кузнецова', N'Степановна', 87935462916, N'brauddudasocra-5086@yopmail.com')
INSERT [dbo].[Clients] ([Id], [FirstName], [LastName], [MiddleName], [Phone], [Email]) VALUES (2, N'Дмитрий', N'Вавилов', N'Андреевич', NULL, N'logattiquoima-4036@yopmail.com')
INSERT [dbo].[Clients] ([Id], [FirstName], [LastName], [MiddleName], [Phone], [Email]) VALUES (3, N'Матвей', N'Чумаков', N'Всеволодович', 79788116209, N'')
INSERT [dbo].[Clients] ([Id], [FirstName], [LastName], [MiddleName], [Phone], [Email]) VALUES (4, N'Николай', N'Сорокин', N'Никитич', 88424599052, N'')
INSERT [dbo].[Clients] ([Id], [FirstName], [LastName], [MiddleName], [Phone], [Email]) VALUES (5, N'Ева', N'Козлова', N'Андреевна', 79612993623, N'nuzogrumoite@yopmail.com')
INSERT [dbo].[Clients] ([Id], [FirstName], [LastName], [MiddleName], [Phone], [Email]) VALUES (6, N'Злата', N'Горшкова', N'Платонова', NULL, N'dillon.lang@heathcote.com')
INSERT [dbo].[Clients] ([Id], [FirstName], [LastName], [MiddleName], [Phone], [Email]) VALUES (7, N'Вероника', N'Лапшина', N'Марковна', NULL, N'aurore.okuneva@gmail.com')
INSERT [dbo].[Clients] ([Id], [FirstName], [LastName], [MiddleName], [Phone], [Email]) VALUES (8, N'Екатерина', N'Кузнецова', N'Владиславовна', 73727293480, N'')
INSERT [dbo].[Clients] ([Id], [FirstName], [LastName], [MiddleName], [Phone], [Email]) VALUES (9, N'Марина', N'Герасимова', N'Богдановна', 83385819433, N'xblanda@yahoo.com')
INSERT [dbo].[Clients] ([Id], [FirstName], [LastName], [MiddleName], [Phone], [Email]) VALUES (10, N'Даниил', N'Агеев', N'Александрович', 88688731476, N'adan73@yahoo.com')
GO
INSERT [dbo].[Contracts] ([Id], [ContractNumber], [Customer], [Price], [Commission], [Date], [Realtor], [RealEstateObject], [Owner], [TypeContract], [TypeDeal]) VALUES (1, 957156, 7, 1900000, 380000, CAST(N'2023-05-30' AS Date), 1, 4, 4, 1, 1)
INSERT [dbo].[Contracts] ([Id], [ContractNumber], [Customer], [Price], [Commission], [Date], [Realtor], [RealEstateObject], [Owner], [TypeContract], [TypeDeal]) VALUES (2, 672851, 6, 27500, 4950, CAST(N'2023-04-29' AS Date), 3, 3, 3, 2, 2)
GO
INSERT [dbo].[Orders] ([Id], [StatusOrder], [Client], [Agent], [TypeRealEstate], [IdAddress], [MinPrice], [MaxPrice], [TypeOrder]) VALUES (1, 2, 4, 1, 2, 4, 1850000, 0, 2)
INSERT [dbo].[Orders] ([Id], [StatusOrder], [Client], [Agent], [TypeRealEstate], [IdAddress], [MinPrice], [MaxPrice], [TypeOrder]) VALUES (2, 2, 5, 2, 1, 5, 1500000, 2250000, 1)
INSERT [dbo].[Orders] ([Id], [StatusOrder], [Client], [Agent], [TypeRealEstate], [IdAddress], [MinPrice], [MaxPrice], [TypeOrder]) VALUES (3, 2, 6, 3, 3, 6, 20000, 35000, 4)
GO
INSERT [dbo].[RealEstateObjects] ([Id], [IdAddress], [TypeEstate], [Description], [Owner]) VALUES (1, 1, 2, N'Электричество, летний водопровод. Дача находится в тихом, красивом месте, рядом с лесом, недалеко от озера.', 1)
INSERT [dbo].[RealEstateObjects] ([Id], [IdAddress], [TypeEstate], [Description], [Owner]) VALUES (2, 2, 1, N'Новый ремонт. Тихие соседи. Метро в 5 минутах ходьбы', 2)
INSERT [dbo].[RealEstateObjects] ([Id], [IdAddress], [TypeEstate], [Description], [Owner]) VALUES (3, 3, 3, N'', 3)
INSERT [dbo].[RealEstateObjects] ([Id], [IdAddress], [TypeEstate], [Description], [Owner]) VALUES (4, 4, 2, N'', 4)
GO
INSERT [dbo].[Roles] ([Id], [Title]) VALUES (1, N'Admin     ')
INSERT [dbo].[Roles] ([Id], [Title]) VALUES (2, N'Realtor   ')
GO
INSERT [dbo].[StatusOrders] ([Id], [Title]) VALUES (1, N'Обработка')
INSERT [dbo].[StatusOrders] ([Id], [Title]) VALUES (2, N'В работе')
INSERT [dbo].[StatusOrders] ([Id], [Title]) VALUES (3, N'Закрыт')
GO
INSERT [dbo].[TypeContracts] ([Id], [Title]) VALUES (1, N'Предварительный     ')
INSERT [dbo].[TypeContracts] ([Id], [Title]) VALUES (2, N'Окончательный       ')
GO
INSERT [dbo].[TypeDeals] ([Id], [Title]) VALUES (1, N'Покупка')
INSERT [dbo].[TypeDeals] ([Id], [Title]) VALUES (2, N'Аренда')
GO
INSERT [dbo].[TypeOrders] ([Id], [Title]) VALUES (1, N'Покупка')
INSERT [dbo].[TypeOrders] ([Id], [Title]) VALUES (2, N'Продажа')
INSERT [dbo].[TypeOrders] ([Id], [Title]) VALUES (3, N'Аренда')
INSERT [dbo].[TypeOrders] ([Id], [Title]) VALUES (4, N'Съем')
GO
INSERT [dbo].[TypeRealEstateObjects] ([Id], [Title]) VALUES (1, N'Квартира')
INSERT [dbo].[TypeRealEstateObjects] ([Id], [Title]) VALUES (2, N'Дом')
INSERT [dbo].[TypeRealEstateObjects] ([Id], [Title]) VALUES (3, N'Участок')
GO
ALTER TABLE [dbo].[Agents]  WITH CHECK ADD  CONSTRAINT [FK_Agents_Roles] FOREIGN KEY([IdRole])
REFERENCES [dbo].[Roles] ([Id])
GO
ALTER TABLE [dbo].[Agents] CHECK CONSTRAINT [FK_Agents_Roles]
GO
ALTER TABLE [dbo].[AttributesOrders]  WITH CHECK ADD  CONSTRAINT [FK_AttributesOrders_AttributesName] FOREIGN KEY([IdAttributesName])
REFERENCES [dbo].[AttributesName] ([Id])
GO
ALTER TABLE [dbo].[AttributesOrders] CHECK CONSTRAINT [FK_AttributesOrders_AttributesName]
GO
ALTER TABLE [dbo].[AttributesOrders]  WITH CHECK ADD  CONSTRAINT [FK_AttributesOrders_Orders] FOREIGN KEY([IdOrder])
REFERENCES [dbo].[Orders] ([Id])
GO
ALTER TABLE [dbo].[AttributesOrders] CHECK CONSTRAINT [FK_AttributesOrders_Orders]
GO
ALTER TABLE [dbo].[AttributesRealEstateObjects]  WITH CHECK ADD  CONSTRAINT [FK_AttributesRealEstateObjects_AttributesName] FOREIGN KEY([IdAttributesName])
REFERENCES [dbo].[AttributesName] ([Id])
GO
ALTER TABLE [dbo].[AttributesRealEstateObjects] CHECK CONSTRAINT [FK_AttributesRealEstateObjects_AttributesName]
GO
ALTER TABLE [dbo].[AttributesRealEstateObjects]  WITH CHECK ADD  CONSTRAINT [FK_AttributesRealEstateObjects_RealEstateObjects] FOREIGN KEY([IdObject])
REFERENCES [dbo].[RealEstateObjects] ([Id])
GO
ALTER TABLE [dbo].[AttributesRealEstateObjects] CHECK CONSTRAINT [FK_AttributesRealEstateObjects_RealEstateObjects]
GO
ALTER TABLE [dbo].[Contracts]  WITH CHECK ADD  CONSTRAINT [FK_Contracts_Agents] FOREIGN KEY([Realtor])
REFERENCES [dbo].[Agents] ([Id])
GO
ALTER TABLE [dbo].[Contracts] CHECK CONSTRAINT [FK_Contracts_Agents]
GO
ALTER TABLE [dbo].[Contracts]  WITH CHECK ADD  CONSTRAINT [FK_Contracts_Clients] FOREIGN KEY([Owner])
REFERENCES [dbo].[Clients] ([Id])
GO
ALTER TABLE [dbo].[Contracts] CHECK CONSTRAINT [FK_Contracts_Clients]
GO
ALTER TABLE [dbo].[Contracts]  WITH CHECK ADD  CONSTRAINT [FK_Contracts_Clients1] FOREIGN KEY([Customer])
REFERENCES [dbo].[Clients] ([Id])
GO
ALTER TABLE [dbo].[Contracts] CHECK CONSTRAINT [FK_Contracts_Clients1]
GO
ALTER TABLE [dbo].[Contracts]  WITH CHECK ADD  CONSTRAINT [FK_Contracts_RealEstateObjects] FOREIGN KEY([RealEstateObject])
REFERENCES [dbo].[RealEstateObjects] ([Id])
GO
ALTER TABLE [dbo].[Contracts] CHECK CONSTRAINT [FK_Contracts_RealEstateObjects]
GO
ALTER TABLE [dbo].[Contracts]  WITH CHECK ADD  CONSTRAINT [FK_Contracts_TypeContracts] FOREIGN KEY([TypeContract])
REFERENCES [dbo].[TypeContracts] ([Id])
GO
ALTER TABLE [dbo].[Contracts] CHECK CONSTRAINT [FK_Contracts_TypeContracts]
GO
ALTER TABLE [dbo].[Contracts]  WITH CHECK ADD  CONSTRAINT [FK_Contracts_TypeDeals] FOREIGN KEY([TypeDeal])
REFERENCES [dbo].[TypeDeals] ([Id])
GO
ALTER TABLE [dbo].[Contracts] CHECK CONSTRAINT [FK_Contracts_TypeDeals]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Address] FOREIGN KEY([IdAddress])
REFERENCES [dbo].[Address] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Address]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Agents] FOREIGN KEY([Agent])
REFERENCES [dbo].[Agents] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Agents]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Clients] FOREIGN KEY([Client])
REFERENCES [dbo].[Clients] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Clients]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_StatusOrders] FOREIGN KEY([StatusOrder])
REFERENCES [dbo].[StatusOrders] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_StatusOrders]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_TypeOrders] FOREIGN KEY([TypeOrder])
REFERENCES [dbo].[TypeOrders] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_TypeOrders]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_TypeRealEstateObjects] FOREIGN KEY([TypeRealEstate])
REFERENCES [dbo].[TypeRealEstateObjects] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_TypeRealEstateObjects]
GO
ALTER TABLE [dbo].[RealEstateObjects]  WITH CHECK ADD  CONSTRAINT [FK_RealEstateObjects_Address] FOREIGN KEY([IdAddress])
REFERENCES [dbo].[Address] ([Id])
GO
ALTER TABLE [dbo].[RealEstateObjects] CHECK CONSTRAINT [FK_RealEstateObjects_Address]
GO
ALTER TABLE [dbo].[RealEstateObjects]  WITH CHECK ADD  CONSTRAINT [FK_RealEstateObjects_Clients] FOREIGN KEY([Owner])
REFERENCES [dbo].[Clients] ([Id])
GO
ALTER TABLE [dbo].[RealEstateObjects] CHECK CONSTRAINT [FK_RealEstateObjects_Clients]
GO
ALTER TABLE [dbo].[RealEstateObjects]  WITH CHECK ADD  CONSTRAINT [FK_RealEstateObjects_TypeRealEstateObjects] FOREIGN KEY([TypeEstate])
REFERENCES [dbo].[TypeRealEstateObjects] ([Id])
GO
ALTER TABLE [dbo].[RealEstateObjects] CHECK CONSTRAINT [FK_RealEstateObjects_TypeRealEstateObjects]
GO
