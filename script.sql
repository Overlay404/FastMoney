USE [FastMoney]
GO
/****** Object:  Table [dbo].[Card]    Script Date: 21.12.2022 12:02:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Card](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[amount] [money] NULL,
	[UserId] [int] NULL,
	[number] [nvarchar](16) NULL,
 CONSTRAINT [PK_Card] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Credit]    Script Date: 21.12.2022 12:02:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Credit](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[totalAmount] [money] NULL,
	[dateOfIssue] [date] NULL,
	[expirationDate] [date] NULL,
	[rate] [decimal](4, 2) NULL,
	[UserId] [int] NULL,
	[type] [nvarchar](50) NULL,
	[status] [nvarchar](50) NULL,
	[CardId] [int] NULL,
 CONSTRAINT [PK_Credit] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Deposit]    Script Date: 21.12.2022 12:02:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deposit](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[amount] [money] NULL,
	[date] [date] NULL,
	[rate] [decimal](4, 2) NULL,
	[UserId] [int] NULL,
 CONSTRAINT [PK_Deposit] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Failure_Schedule]    Script Date: 21.12.2022 12:02:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Failure_Schedule](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[date] [date] NULL,
	[status] [bit] NULL,
	[amount] [money] NULL,
	[CreditId] [int] NULL,
 CONSTRAINT [PK_Failure_Schedule] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Operation]    Script Date: 21.12.2022 12:02:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Operation](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[amount] [money] NULL,
	[type] [nvarchar](50) NULL,
	[icon] [nvarchar](50) NULL,
	[UserId] [int] NULL,
	[operation] [nvarchar](50) NULL,
	[date] [date] NULL,
 CONSTRAINT [PK_Operation] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Request]    Script Date: 21.12.2022 12:02:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Request](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[CreditId] [int] NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_Request] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 21.12.2022 12:02:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 21.12.2022 12:02:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[lastname] [nvarchar](50) NULL,
	[patronymic] [nvarchar](50) NULL,
	[login] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
	[RoleId] [int] NULL,
	[phone] [nvarchar](11) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Card] ON 

INSERT [dbo].[Card] ([id], [amount], [UserId], [number]) VALUES (1, 174799.0000, 1, N'2324243312342345')
INSERT [dbo].[Card] ([id], [amount], [UserId], [number]) VALUES (2, 5164951.2300, 1, N'2324243312342345')
INSERT [dbo].[Card] ([id], [amount], [UserId], [number]) VALUES (5, 75601432.1230, 2, N'2324243312342345')
INSERT [dbo].[Card] ([id], [amount], [UserId], [number]) VALUES (9, 55104007.0000, 3, N'1231232132132322')
INSERT [dbo].[Card] ([id], [amount], [UserId], [number]) VALUES (10, 0.0000, 5, N'2322333434355456')
SET IDENTITY_INSERT [dbo].[Card] OFF
GO
SET IDENTITY_INSERT [dbo].[Credit] ON 

INSERT [dbo].[Credit] ([id], [totalAmount], [dateOfIssue], [expirationDate], [rate], [UserId], [type], [status], [CardId]) VALUES (1023, 6000000.0000, CAST(N'2022-12-20' AS Date), CAST(N'2025-12-20' AS Date), CAST(5.00 AS Decimal(4, 2)), 1, N'Ауинтентный', N'Одобрен', 2)
INSERT [dbo].[Credit] ([id], [totalAmount], [dateOfIssue], [expirationDate], [rate], [UserId], [type], [status], [CardId]) VALUES (1024, 15300000.0000, CAST(N'2022-12-20' AS Date), CAST(N'2027-12-20' AS Date), CAST(5.00 AS Decimal(4, 2)), 1, N'Дифференцированный', N'Одобрен', 1)
INSERT [dbo].[Credit] ([id], [totalAmount], [dateOfIssue], [expirationDate], [rate], [UserId], [type], [status], [CardId]) VALUES (1025, 39700000.0000, CAST(N'2022-12-20' AS Date), CAST(N'2027-12-20' AS Date), CAST(5.00 AS Decimal(4, 2)), 3, N'Дифференцированный', N'Одобрен', 9)
INSERT [dbo].[Credit] ([id], [totalAmount], [dateOfIssue], [expirationDate], [rate], [UserId], [type], [status], [CardId]) VALUES (1026, 7300000.0000, CAST(N'2022-12-20' AS Date), CAST(N'2023-12-20' AS Date), CAST(5.00 AS Decimal(4, 2)), 3, N'Ауинтентный', N'Одобрен', 9)
INSERT [dbo].[Credit] ([id], [totalAmount], [dateOfIssue], [expirationDate], [rate], [UserId], [type], [status], [CardId]) VALUES (1027, 7100000.0000, CAST(N'2022-12-20' AS Date), CAST(N'2024-12-20' AS Date), CAST(5.00 AS Decimal(4, 2)), 1, N'Дифференцированный', N'Не одобрен', 1)
INSERT [dbo].[Credit] ([id], [totalAmount], [dateOfIssue], [expirationDate], [rate], [UserId], [type], [status], [CardId]) VALUES (1028, 9600000.0000, CAST(N'2022-12-21' AS Date), CAST(N'2025-12-21' AS Date), CAST(5.00 AS Decimal(4, 2)), 3, N'Дифференцированный', N'Одобрен', 9)
INSERT [dbo].[Credit] ([id], [totalAmount], [dateOfIssue], [expirationDate], [rate], [UserId], [type], [status], [CardId]) VALUES (1029, 11300000.0000, CAST(N'2022-12-21' AS Date), CAST(N'2026-12-21' AS Date), CAST(10.00 AS Decimal(4, 2)), 5, N'Дифференцированный', N'Не одобрен', 10)
SET IDENTITY_INSERT [dbo].[Credit] OFF
GO
SET IDENTITY_INSERT [dbo].[Deposit] ON 

INSERT [dbo].[Deposit] ([id], [amount], [date], [rate], [UserId]) VALUES (1, 12323.0000, CAST(N'2022-12-12' AS Date), CAST(12.00 AS Decimal(4, 2)), 1)
INSERT [dbo].[Deposit] ([id], [amount], [date], [rate], [UserId]) VALUES (2, 12323.0000, CAST(N'2022-12-12' AS Date), CAST(12.00 AS Decimal(4, 2)), 1)
SET IDENTITY_INSERT [dbo].[Deposit] OFF
GO
SET IDENTITY_INSERT [dbo].[Failure_Schedule] ON 

INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (688, CAST(N'2022-11-20' AS Date), 1, 175000.0000, 1023)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (689, CAST(N'2022-12-20' AS Date), NULL, 175000.0000, 1023)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (690, CAST(N'2023-01-20' AS Date), NULL, 175000.0000, 1023)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (691, CAST(N'2023-02-20' AS Date), NULL, 175000.0000, 1023)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (692, CAST(N'2023-03-20' AS Date), NULL, 175000.0000, 1023)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (693, CAST(N'2023-04-20' AS Date), NULL, 175000.0000, 1023)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (694, CAST(N'2023-05-20' AS Date), NULL, 175000.0000, 1023)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (695, CAST(N'2023-06-20' AS Date), NULL, 175000.0000, 1023)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (696, CAST(N'2023-07-20' AS Date), NULL, 175000.0000, 1023)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (697, CAST(N'2023-08-20' AS Date), NULL, 175000.0000, 1023)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (698, CAST(N'2023-09-20' AS Date), NULL, 175000.0000, 1023)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (699, CAST(N'2023-10-20' AS Date), NULL, 175000.0000, 1023)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (700, CAST(N'2023-11-20' AS Date), NULL, 175000.0000, 1023)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (701, CAST(N'2023-12-20' AS Date), NULL, 175000.0000, 1023)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (702, CAST(N'2024-01-20' AS Date), NULL, 175000.0000, 1023)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (703, CAST(N'2024-02-20' AS Date), NULL, 175000.0000, 1023)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (704, CAST(N'2024-03-20' AS Date), NULL, 175000.0000, 1023)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (705, CAST(N'2024-04-20' AS Date), NULL, 175000.0000, 1023)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (706, CAST(N'2024-05-20' AS Date), NULL, 175000.0000, 1023)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (707, CAST(N'2024-06-20' AS Date), NULL, 175000.0000, 1023)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (708, CAST(N'2024-07-20' AS Date), NULL, 175000.0000, 1023)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (709, CAST(N'2024-08-20' AS Date), NULL, 175000.0000, 1023)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (710, CAST(N'2024-09-20' AS Date), NULL, 175000.0000, 1023)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (711, CAST(N'2024-10-20' AS Date), NULL, 175000.0000, 1023)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (712, CAST(N'2024-11-20' AS Date), NULL, 175000.0000, 1023)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (713, CAST(N'2024-12-20' AS Date), NULL, 175000.0000, 1023)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (714, CAST(N'2025-01-20' AS Date), NULL, 175000.0000, 1023)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (715, CAST(N'2025-02-20' AS Date), NULL, 175000.0000, 1023)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (716, CAST(N'2025-03-20' AS Date), NULL, 175000.0000, 1023)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (717, CAST(N'2025-04-20' AS Date), NULL, 175000.0000, 1023)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (718, CAST(N'2025-05-20' AS Date), NULL, 175000.0000, 1023)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (719, CAST(N'2025-06-20' AS Date), NULL, 175000.0000, 1023)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (720, CAST(N'2025-07-20' AS Date), NULL, 175000.0000, 1023)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (721, CAST(N'2025-08-20' AS Date), NULL, 175000.0000, 1023)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (722, CAST(N'2025-09-20' AS Date), NULL, 175000.0000, 1023)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (723, CAST(N'2025-10-20' AS Date), NULL, 175000.0000, 1023)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (724, CAST(N'2025-11-20' AS Date), NULL, 175000.0000, 1023)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (725, CAST(N'2022-11-20' AS Date), 0, 255000.0000, 1024)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (726, CAST(N'2022-12-20' AS Date), NULL, 317688.0000, 1024)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (727, CAST(N'2023-01-20' AS Date), NULL, 380375.0000, 1024)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (728, CAST(N'2023-02-20' AS Date), NULL, 443062.0000, 1024)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (729, CAST(N'2023-03-20' AS Date), NULL, 505750.0000, 1024)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (730, CAST(N'2023-04-20' AS Date), NULL, 568438.0000, 1024)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (731, CAST(N'2023-05-20' AS Date), NULL, 631125.0000, 1024)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (732, CAST(N'2023-06-20' AS Date), NULL, 693812.0000, 1024)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (733, CAST(N'2023-07-20' AS Date), NULL, 756500.0000, 1024)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (734, CAST(N'2023-08-20' AS Date), NULL, 819188.0000, 1024)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (735, CAST(N'2023-09-20' AS Date), NULL, 881875.0000, 1024)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (736, CAST(N'2023-10-20' AS Date), NULL, 944562.0000, 1024)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (737, CAST(N'2023-11-20' AS Date), NULL, 1007250.0000, 1024)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (738, CAST(N'2023-12-20' AS Date), NULL, 1069938.0000, 1024)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (739, CAST(N'2024-01-20' AS Date), NULL, 1132625.0000, 1024)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (740, CAST(N'2024-02-20' AS Date), NULL, 1195312.0000, 1024)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (741, CAST(N'2024-03-20' AS Date), NULL, 1258000.0000, 1024)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (742, CAST(N'2024-04-20' AS Date), NULL, 1320688.0000, 1024)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (743, CAST(N'2024-05-20' AS Date), NULL, 1383375.0000, 1024)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (744, CAST(N'2024-06-20' AS Date), NULL, 1446062.0000, 1024)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (745, CAST(N'2024-07-20' AS Date), NULL, 1508750.0000, 1024)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (746, CAST(N'2024-08-20' AS Date), NULL, 1571438.0000, 1024)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (747, CAST(N'2024-09-20' AS Date), NULL, 1634125.0000, 1024)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (748, CAST(N'2024-10-20' AS Date), NULL, 1696812.0000, 1024)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (749, CAST(N'2024-11-20' AS Date), NULL, 1759500.0000, 1024)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (750, CAST(N'2024-12-20' AS Date), NULL, 1822188.0000, 1024)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (751, CAST(N'2025-01-20' AS Date), NULL, 1884875.0000, 1024)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (752, CAST(N'2025-02-20' AS Date), NULL, 1947562.0000, 1024)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (753, CAST(N'2025-03-20' AS Date), NULL, 2010250.0000, 1024)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (754, CAST(N'2025-04-20' AS Date), NULL, 2072938.0000, 1024)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (755, CAST(N'2025-05-20' AS Date), NULL, 2135625.0000, 1024)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (756, CAST(N'2025-06-20' AS Date), NULL, 2198312.0000, 1024)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (757, CAST(N'2025-07-20' AS Date), NULL, 2261000.0000, 1024)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (758, CAST(N'2025-08-20' AS Date), NULL, 2323688.0000, 1024)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (759, CAST(N'2025-09-20' AS Date), NULL, 2386375.0000, 1024)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (760, CAST(N'2025-10-20' AS Date), NULL, 2449062.0000, 1024)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (761, CAST(N'2025-11-20' AS Date), NULL, 2511750.0000, 1024)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (762, CAST(N'2025-12-20' AS Date), NULL, 2574438.0000, 1024)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (763, CAST(N'2026-01-20' AS Date), NULL, 2637125.0000, 1024)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (764, CAST(N'2026-02-20' AS Date), NULL, 2699812.0000, 1024)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (765, CAST(N'2026-03-20' AS Date), NULL, 2762500.0000, 1024)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (766, CAST(N'2026-04-20' AS Date), NULL, 2825188.0000, 1024)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (767, CAST(N'2026-05-20' AS Date), NULL, 2887875.0000, 1024)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (768, CAST(N'2026-06-20' AS Date), NULL, 2950562.0000, 1024)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (769, CAST(N'2026-07-20' AS Date), NULL, 3013250.0000, 1024)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (770, CAST(N'2026-08-20' AS Date), NULL, 3075938.0000, 1024)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (771, CAST(N'2026-09-20' AS Date), NULL, 3138625.0000, 1024)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (772, CAST(N'2026-10-20' AS Date), NULL, 3201312.0000, 1024)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (773, CAST(N'2026-11-20' AS Date), NULL, 3264000.0000, 1024)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (774, CAST(N'2026-12-20' AS Date), NULL, 3326688.0000, 1024)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (775, CAST(N'2027-01-20' AS Date), NULL, 3389375.0000, 1024)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (776, CAST(N'2027-02-20' AS Date), NULL, 3452062.0000, 1024)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (777, CAST(N'2027-03-20' AS Date), NULL, 3514750.0000, 1024)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (778, CAST(N'2027-04-20' AS Date), NULL, 3577438.0000, 1024)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (779, CAST(N'2027-05-20' AS Date), NULL, 3640125.0000, 1024)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (780, CAST(N'2027-06-20' AS Date), NULL, 3702812.0000, 1024)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (781, CAST(N'2027-07-20' AS Date), NULL, 3765500.0000, 1024)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (782, CAST(N'2027-08-20' AS Date), NULL, 3828188.0000, 1024)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (783, CAST(N'2027-09-20' AS Date), NULL, 3890875.0000, 1024)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (784, CAST(N'2027-10-20' AS Date), NULL, 3953562.0000, 1024)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (785, CAST(N'2027-11-20' AS Date), NULL, 4016250.0000, 1024)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (786, CAST(N'2022-11-20' AS Date), 1, 661667.0000, 1025)
GO
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (787, CAST(N'2022-12-20' AS Date), 1, 824326.0000, 1025)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (788, CAST(N'2023-01-20' AS Date), NULL, 986986.0000, 1025)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (789, CAST(N'2023-02-20' AS Date), NULL, 1149646.0000, 1025)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (790, CAST(N'2023-03-20' AS Date), NULL, 1312306.0000, 1025)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (791, CAST(N'2023-04-20' AS Date), NULL, 1474965.0000, 1025)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (792, CAST(N'2023-05-20' AS Date), NULL, 1637625.0000, 1025)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (793, CAST(N'2023-06-20' AS Date), NULL, 1800285.0000, 1025)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (794, CAST(N'2023-07-20' AS Date), NULL, 1962944.0000, 1025)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (795, CAST(N'2023-08-20' AS Date), NULL, 2125604.0000, 1025)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (796, CAST(N'2023-09-20' AS Date), NULL, 2288264.0000, 1025)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (797, CAST(N'2023-10-20' AS Date), NULL, 2450924.0000, 1025)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (798, CAST(N'2023-11-20' AS Date), NULL, 2613583.0000, 1025)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (799, CAST(N'2023-12-20' AS Date), NULL, 2776243.0000, 1025)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (800, CAST(N'2024-01-20' AS Date), NULL, 2938903.0000, 1025)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (801, CAST(N'2024-02-20' AS Date), NULL, 3101562.0000, 1025)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (802, CAST(N'2024-03-20' AS Date), NULL, 3264222.0000, 1025)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (803, CAST(N'2024-04-20' AS Date), NULL, 3426882.0000, 1025)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (804, CAST(N'2024-05-20' AS Date), NULL, 3589542.0000, 1025)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (805, CAST(N'2024-06-20' AS Date), NULL, 3752201.0000, 1025)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (806, CAST(N'2024-07-20' AS Date), NULL, 3914861.0000, 1025)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (807, CAST(N'2024-08-20' AS Date), NULL, 4077521.0000, 1025)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (808, CAST(N'2024-09-20' AS Date), NULL, 4240181.0000, 1025)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (809, CAST(N'2024-10-20' AS Date), NULL, 4402840.0000, 1025)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (810, CAST(N'2024-11-20' AS Date), NULL, 4565500.0000, 1025)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (811, CAST(N'2024-12-20' AS Date), NULL, 4728160.0000, 1025)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (812, CAST(N'2025-01-20' AS Date), NULL, 4890819.0000, 1025)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (813, CAST(N'2025-02-20' AS Date), NULL, 5053479.0000, 1025)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (814, CAST(N'2025-03-20' AS Date), NULL, 5216139.0000, 1025)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (815, CAST(N'2025-04-20' AS Date), NULL, 5378799.0000, 1025)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (816, CAST(N'2025-05-20' AS Date), NULL, 5541458.0000, 1025)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (817, CAST(N'2025-06-20' AS Date), NULL, 5704118.0000, 1025)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (818, CAST(N'2025-07-20' AS Date), NULL, 5866778.0000, 1025)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (819, CAST(N'2025-08-20' AS Date), NULL, 6029438.0000, 1025)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (820, CAST(N'2025-09-20' AS Date), NULL, 6192097.0000, 1025)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (821, CAST(N'2025-10-20' AS Date), NULL, 6354757.0000, 1025)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (822, CAST(N'2025-11-20' AS Date), NULL, 6517417.0000, 1025)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (823, CAST(N'2025-12-20' AS Date), NULL, 6680076.0000, 1025)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (824, CAST(N'2026-01-20' AS Date), NULL, 6842736.0000, 1025)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (825, CAST(N'2026-02-20' AS Date), NULL, 7005396.0000, 1025)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (826, CAST(N'2026-03-20' AS Date), NULL, 7168056.0000, 1025)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (827, CAST(N'2026-04-20' AS Date), NULL, 7330715.0000, 1025)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (828, CAST(N'2026-05-20' AS Date), NULL, 7493375.0000, 1025)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (829, CAST(N'2026-06-20' AS Date), NULL, 7656035.0000, 1025)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (830, CAST(N'2026-07-20' AS Date), NULL, 7818694.0000, 1025)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (831, CAST(N'2026-08-20' AS Date), NULL, 7981354.0000, 1025)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (832, CAST(N'2026-09-20' AS Date), NULL, 8144014.0000, 1025)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (833, CAST(N'2026-10-20' AS Date), NULL, 8306674.0000, 1025)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (834, CAST(N'2026-11-20' AS Date), NULL, 8469333.0000, 1025)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (835, CAST(N'2026-12-20' AS Date), NULL, 8631993.0000, 1025)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (836, CAST(N'2027-01-20' AS Date), NULL, 8794653.0000, 1025)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (837, CAST(N'2027-02-20' AS Date), NULL, 8957312.0000, 1025)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (838, CAST(N'2027-03-20' AS Date), NULL, 9119972.0000, 1025)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (839, CAST(N'2027-04-20' AS Date), NULL, 9282632.0000, 1025)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (840, CAST(N'2027-05-20' AS Date), NULL, 9445292.0000, 1025)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (841, CAST(N'2027-06-20' AS Date), NULL, 9607951.0000, 1025)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (842, CAST(N'2027-07-20' AS Date), NULL, 9770611.0000, 1025)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (843, CAST(N'2027-08-20' AS Date), NULL, 9933271.0000, 1025)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (844, CAST(N'2027-09-20' AS Date), NULL, 10095931.0000, 1025)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (845, CAST(N'2027-10-20' AS Date), NULL, 10258590.0000, 1025)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (846, CAST(N'2027-11-20' AS Date), NULL, 10421250.0000, 1025)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (847, CAST(N'2022-11-20' AS Date), NULL, 638750.0000, 1026)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (848, CAST(N'2022-12-20' AS Date), NULL, 638750.0000, 1026)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (849, CAST(N'2023-01-20' AS Date), NULL, 638750.0000, 1026)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (850, CAST(N'2023-02-20' AS Date), NULL, 638750.0000, 1026)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (851, CAST(N'2023-03-20' AS Date), NULL, 638750.0000, 1026)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (852, CAST(N'2023-04-20' AS Date), NULL, 638750.0000, 1026)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (853, CAST(N'2023-05-20' AS Date), NULL, 638750.0000, 1026)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (854, CAST(N'2023-06-20' AS Date), NULL, 638750.0000, 1026)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (855, CAST(N'2023-07-20' AS Date), NULL, 638750.0000, 1026)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (856, CAST(N'2023-08-20' AS Date), NULL, 638750.0000, 1026)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (857, CAST(N'2023-09-20' AS Date), NULL, 638750.0000, 1026)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (858, CAST(N'2023-10-20' AS Date), NULL, 638750.0000, 1026)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (859, CAST(N'2023-11-20' AS Date), NULL, 638750.0000, 1026)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (860, CAST(N'2022-11-20' AS Date), NULL, 295833.0000, 1027)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (861, CAST(N'2022-12-20' AS Date), NULL, 324184.0000, 1027)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (862, CAST(N'2023-01-20' AS Date), NULL, 352535.0000, 1027)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (863, CAST(N'2023-02-20' AS Date), NULL, 380885.0000, 1027)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (864, CAST(N'2023-03-20' AS Date), NULL, 409236.0000, 1027)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (865, CAST(N'2023-04-20' AS Date), NULL, 437587.0000, 1027)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (866, CAST(N'2023-05-20' AS Date), NULL, 465938.0000, 1027)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (867, CAST(N'2023-06-20' AS Date), NULL, 494288.0000, 1027)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (868, CAST(N'2023-07-20' AS Date), NULL, 522639.0000, 1027)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (869, CAST(N'2023-08-20' AS Date), NULL, 550990.0000, 1027)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (870, CAST(N'2023-09-20' AS Date), NULL, 579340.0000, 1027)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (871, CAST(N'2023-10-20' AS Date), NULL, 607691.0000, 1027)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (872, CAST(N'2023-11-20' AS Date), NULL, 636042.0000, 1027)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (873, CAST(N'2023-12-20' AS Date), NULL, 664392.0000, 1027)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (874, CAST(N'2024-01-20' AS Date), NULL, 692743.0000, 1027)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (875, CAST(N'2024-02-20' AS Date), NULL, 721094.0000, 1027)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (876, CAST(N'2024-03-20' AS Date), NULL, 749444.0000, 1027)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (877, CAST(N'2024-04-20' AS Date), NULL, 777795.0000, 1027)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (878, CAST(N'2024-05-20' AS Date), NULL, 806146.0000, 1027)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (879, CAST(N'2024-06-20' AS Date), NULL, 834497.0000, 1027)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (880, CAST(N'2024-07-20' AS Date), NULL, 862847.0000, 1027)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (881, CAST(N'2024-08-20' AS Date), NULL, 891198.0000, 1027)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (882, CAST(N'2024-09-20' AS Date), NULL, 919549.0000, 1027)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (883, CAST(N'2024-10-20' AS Date), NULL, 947899.0000, 1027)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (884, CAST(N'2024-11-20' AS Date), NULL, 976250.0000, 1027)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (885, CAST(N'2022-11-21' AS Date), NULL, 266667.0000, 1028)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (886, CAST(N'2022-12-21' AS Date), NULL, 305556.0000, 1028)
GO
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (887, CAST(N'2023-01-21' AS Date), NULL, 344444.0000, 1028)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (888, CAST(N'2023-02-21' AS Date), NULL, 383333.0000, 1028)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (889, CAST(N'2023-03-21' AS Date), NULL, 422222.0000, 1028)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (890, CAST(N'2023-04-21' AS Date), NULL, 461111.0000, 1028)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (891, CAST(N'2023-05-21' AS Date), NULL, 500000.0000, 1028)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (892, CAST(N'2023-06-21' AS Date), NULL, 538889.0000, 1028)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (893, CAST(N'2023-07-21' AS Date), NULL, 577778.0000, 1028)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (894, CAST(N'2023-08-21' AS Date), NULL, 616667.0000, 1028)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (895, CAST(N'2023-09-21' AS Date), NULL, 655556.0000, 1028)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (896, CAST(N'2023-10-21' AS Date), NULL, 694444.0000, 1028)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (897, CAST(N'2023-11-21' AS Date), NULL, 733333.0000, 1028)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (898, CAST(N'2023-12-21' AS Date), NULL, 772222.0000, 1028)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (899, CAST(N'2024-01-21' AS Date), NULL, 811111.0000, 1028)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (900, CAST(N'2024-02-21' AS Date), NULL, 850000.0000, 1028)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (901, CAST(N'2024-03-21' AS Date), NULL, 888889.0000, 1028)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (902, CAST(N'2024-04-21' AS Date), NULL, 927778.0000, 1028)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (903, CAST(N'2024-05-21' AS Date), NULL, 966667.0000, 1028)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (904, CAST(N'2024-06-21' AS Date), NULL, 1005556.0000, 1028)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (905, CAST(N'2024-07-21' AS Date), NULL, 1044444.0000, 1028)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (906, CAST(N'2024-08-21' AS Date), NULL, 1083333.0000, 1028)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (907, CAST(N'2024-09-21' AS Date), NULL, 1122222.0000, 1028)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (908, CAST(N'2024-10-21' AS Date), NULL, 1161111.0000, 1028)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (909, CAST(N'2024-11-21' AS Date), NULL, 1200000.0000, 1028)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (910, CAST(N'2024-12-21' AS Date), NULL, 1238889.0000, 1028)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (911, CAST(N'2025-01-21' AS Date), NULL, 1277778.0000, 1028)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (912, CAST(N'2025-02-21' AS Date), NULL, 1316667.0000, 1028)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (913, CAST(N'2025-03-21' AS Date), NULL, 1355556.0000, 1028)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (914, CAST(N'2025-04-21' AS Date), NULL, 1394444.0000, 1028)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (915, CAST(N'2025-05-21' AS Date), NULL, 1433333.0000, 1028)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (916, CAST(N'2025-06-21' AS Date), NULL, 1472222.0000, 1028)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (917, CAST(N'2025-07-21' AS Date), NULL, 1511111.0000, 1028)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (918, CAST(N'2025-08-21' AS Date), NULL, 1550000.0000, 1028)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (919, CAST(N'2025-09-21' AS Date), NULL, 1588889.0000, 1028)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (920, CAST(N'2025-10-21' AS Date), NULL, 1627778.0000, 1028)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (921, CAST(N'2025-11-21' AS Date), NULL, 1666667.0000, 1028)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (922, CAST(N'2022-11-21' AS Date), NULL, 235417.0000, 1029)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (923, CAST(N'2022-12-21' AS Date), NULL, 327622.0000, 1029)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (924, CAST(N'2023-01-21' AS Date), NULL, 419826.0000, 1029)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (925, CAST(N'2023-02-21' AS Date), NULL, 512031.0000, 1029)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (926, CAST(N'2023-03-21' AS Date), NULL, 604236.0000, 1029)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (927, CAST(N'2023-04-21' AS Date), NULL, 696441.0000, 1029)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (928, CAST(N'2023-05-21' AS Date), NULL, 788646.0000, 1029)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (929, CAST(N'2023-06-21' AS Date), NULL, 880851.0000, 1029)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (930, CAST(N'2023-07-21' AS Date), NULL, 973056.0000, 1029)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (931, CAST(N'2023-08-21' AS Date), NULL, 1065260.0000, 1029)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (932, CAST(N'2023-09-21' AS Date), NULL, 1157465.0000, 1029)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (933, CAST(N'2023-10-21' AS Date), NULL, 1249670.0000, 1029)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (934, CAST(N'2023-11-21' AS Date), NULL, 1341875.0000, 1029)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (935, CAST(N'2023-12-21' AS Date), NULL, 1434080.0000, 1029)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (936, CAST(N'2024-01-21' AS Date), NULL, 1526285.0000, 1029)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (937, CAST(N'2024-02-21' AS Date), NULL, 1618490.0000, 1029)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (938, CAST(N'2024-03-21' AS Date), NULL, 1710694.0000, 1029)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (939, CAST(N'2024-04-21' AS Date), NULL, 1802899.0000, 1029)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (940, CAST(N'2024-05-21' AS Date), NULL, 1895104.0000, 1029)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (941, CAST(N'2024-06-21' AS Date), NULL, 1987309.0000, 1029)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (942, CAST(N'2024-07-21' AS Date), NULL, 2079514.0000, 1029)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (943, CAST(N'2024-08-21' AS Date), NULL, 2171719.0000, 1029)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (944, CAST(N'2024-09-21' AS Date), NULL, 2263924.0000, 1029)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (945, CAST(N'2024-10-21' AS Date), NULL, 2356128.0000, 1029)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (946, CAST(N'2024-11-21' AS Date), NULL, 2448333.0000, 1029)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (947, CAST(N'2024-12-21' AS Date), NULL, 2540538.0000, 1029)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (948, CAST(N'2025-01-21' AS Date), NULL, 2632743.0000, 1029)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (949, CAST(N'2025-02-21' AS Date), NULL, 2724948.0000, 1029)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (950, CAST(N'2025-03-21' AS Date), NULL, 2817153.0000, 1029)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (951, CAST(N'2025-04-21' AS Date), NULL, 2909358.0000, 1029)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (952, CAST(N'2025-05-21' AS Date), NULL, 3001562.0000, 1029)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (953, CAST(N'2025-06-21' AS Date), NULL, 3093767.0000, 1029)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (954, CAST(N'2025-07-21' AS Date), NULL, 3185972.0000, 1029)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (955, CAST(N'2025-08-21' AS Date), NULL, 3278177.0000, 1029)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (956, CAST(N'2025-09-21' AS Date), NULL, 3370382.0000, 1029)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (957, CAST(N'2025-10-21' AS Date), NULL, 3462587.0000, 1029)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (958, CAST(N'2025-11-21' AS Date), NULL, 3554792.0000, 1029)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (959, CAST(N'2025-12-21' AS Date), NULL, 3646997.0000, 1029)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (960, CAST(N'2026-01-21' AS Date), NULL, 3739201.0000, 1029)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (961, CAST(N'2026-02-21' AS Date), NULL, 3831406.0000, 1029)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (962, CAST(N'2026-03-21' AS Date), NULL, 3923611.0000, 1029)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (963, CAST(N'2026-04-21' AS Date), NULL, 4015816.0000, 1029)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (964, CAST(N'2026-05-21' AS Date), NULL, 4108021.0000, 1029)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (965, CAST(N'2026-06-21' AS Date), NULL, 4200226.0000, 1029)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (966, CAST(N'2026-07-21' AS Date), NULL, 4292431.0000, 1029)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (967, CAST(N'2026-08-21' AS Date), NULL, 4384635.0000, 1029)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (968, CAST(N'2026-09-21' AS Date), NULL, 4476840.0000, 1029)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (969, CAST(N'2026-10-21' AS Date), NULL, 4569045.0000, 1029)
INSERT [dbo].[Failure_Schedule] ([id], [date], [status], [amount], [CreditId]) VALUES (970, CAST(N'2026-11-21' AS Date), NULL, 4661250.0000, 1029)
SET IDENTITY_INSERT [dbo].[Failure_Schedule] OFF
GO
SET IDENTITY_INSERT [dbo].[Operation] ON 

INSERT [dbo].[Operation] ([id], [amount], [type], [icon], [UserId], [operation], [date]) VALUES (1, 231.0000, N'Перевод', N'Solid_RightLeft', 1, N'Денис Алексеев Александрович', CAST(N'2022-12-15' AS Date))
INSERT [dbo].[Operation] ([id], [amount], [type], [icon], [UserId], [operation], [date]) VALUES (2, 2321.0000, N'Перевод', N'Solid_RightLeft', 1, N'Денис Алексеев Александрович', CAST(N'2022-12-15' AS Date))
INSERT [dbo].[Operation] ([id], [amount], [type], [icon], [UserId], [operation], [date]) VALUES (3, 2311.0000, N'Перевод', N'Solid_RightLeft', 1, N'Денис Алексеев Александрович', CAST(N'2022-12-14' AS Date))
INSERT [dbo].[Operation] ([id], [amount], [type], [icon], [UserId], [operation], [date]) VALUES (4, 2231231.0000, N'Перевод', N'Solid_RightLeft', 1, N'Денис Алексеев Александрович', CAST(N'2022-12-14' AS Date))
INSERT [dbo].[Operation] ([id], [amount], [type], [icon], [UserId], [operation], [date]) VALUES (5, 100031.0000, N'Перевод', N'Solid_RightLeft', 1, N'Денис Алексеев Александрович', CAST(N'2022-12-13' AS Date))
INSERT [dbo].[Operation] ([id], [amount], [type], [icon], [UserId], [operation], [date]) VALUES (6, 3921.0000, N'Перевод', N'Solid_RightLeft', 1, N'Денис Алексеев Александрович', CAST(N'2022-12-13' AS Date))
INSERT [dbo].[Operation] ([id], [amount], [type], [icon], [UserId], [operation], [date]) VALUES (7, 90231.0000, N'Перевод', N'Solid_RightLeft', 1, N'Денис Алексеев Александрович', CAST(N'2022-12-12' AS Date))
INSERT [dbo].[Operation] ([id], [amount], [type], [icon], [UserId], [operation], [date]) VALUES (8, 89231.0000, N'Перевод', N'Solid_RightLeft', 1, N'Денис Алексеев Александрович', CAST(N'2022-12-12' AS Date))
INSERT [dbo].[Operation] ([id], [amount], [type], [icon], [UserId], [operation], [date]) VALUES (9, 102331.0000, N'Перевод', N'Solid_RightLeft', 1, N'Денис Алексеев Александрович', CAST(N'2022-12-11' AS Date))
INSERT [dbo].[Operation] ([id], [amount], [type], [icon], [UserId], [operation], [date]) VALUES (26, -175000.0000, N'Оплата кредита', N'Solid_HandHoldingDollar', 1, N'Оплата кредита на сумму 6000000,0000', CAST(N'2022-12-20' AS Date))
INSERT [dbo].[Operation] ([id], [amount], [type], [icon], [UserId], [operation], [date]) VALUES (27, -100.0000, N'Перевод средств', N'Solid_RightLeft', 1, N'Денис Алексеев Александрович', CAST(N'2022-12-20' AS Date))
INSERT [dbo].[Operation] ([id], [amount], [type], [icon], [UserId], [operation], [date]) VALUES (28, 100.0000, N'Перевод средств', N'Solid_RightLeft', 2, N'Денис Алексеев Александрович', CAST(N'2022-12-20' AS Date))
INSERT [dbo].[Operation] ([id], [amount], [type], [icon], [UserId], [operation], [date]) VALUES (29, -100.0000, N'Перевод средств', N'Solid_RightLeft', 1, N'Денис Алексеев Александрович', CAST(N'2022-12-20' AS Date))
INSERT [dbo].[Operation] ([id], [amount], [type], [icon], [UserId], [operation], [date]) VALUES (30, 100.0000, N'Перевод средств', N'Solid_RightLeft', 2, N'Денис Алексеев Александрович', CAST(N'2022-12-20' AS Date))
INSERT [dbo].[Operation] ([id], [amount], [type], [icon], [UserId], [operation], [date]) VALUES (31, -175000.0000, N'Оплата кредита', N'Solid_HandHoldingDollar', 1, N'Оплата кредита на сумму 6000000,0000', CAST(N'2022-12-20' AS Date))
INSERT [dbo].[Operation] ([id], [amount], [type], [icon], [UserId], [operation], [date]) VALUES (32, -1.0000, N'Перевод средств', N'Solid_RightLeft', 1, N'Денис Алексеев Александрович', CAST(N'2022-12-20' AS Date))
INSERT [dbo].[Operation] ([id], [amount], [type], [icon], [UserId], [operation], [date]) VALUES (33, 1.0000, N'Перевод средств', N'Solid_RightLeft', 2, N'Денис Алексеев Александрович', CAST(N'2022-12-20' AS Date))
INSERT [dbo].[Operation] ([id], [amount], [type], [icon], [UserId], [operation], [date]) VALUES (34, 39700000.0000, N'Получение кредита', N'Solid_SackDollar', 3, N'Получен кредит на сумму 39700000,0000', CAST(N'2022-12-21' AS Date))
INSERT [dbo].[Operation] ([id], [amount], [type], [icon], [UserId], [operation], [date]) VALUES (35, 7300000.0000, N'Получение кредита', N'Solid_SackDollar', 3, N'Получен кредит на сумму 7300000,0000', CAST(N'2022-12-21' AS Date))
INSERT [dbo].[Operation] ([id], [amount], [type], [icon], [UserId], [operation], [date]) VALUES (36, 9600000.0000, N'Получение кредита', N'Solid_SackDollar', 3, N'Получен кредит на сумму 9600000,0000', CAST(N'2022-12-21' AS Date))
INSERT [dbo].[Operation] ([id], [amount], [type], [icon], [UserId], [operation], [date]) VALUES (37, -10000.0000, N'Перевод средств', N'Solid_RightLeft', 3, N'Денис Алексеев Александрович', CAST(N'2022-12-21' AS Date))
INSERT [dbo].[Operation] ([id], [amount], [type], [icon], [UserId], [operation], [date]) VALUES (38, 10000.0000, N'Перевод средств', N'Solid_RightLeft', 1, N'Николай Зовченко Арспантович', CAST(N'2022-12-21' AS Date))
INSERT [dbo].[Operation] ([id], [amount], [type], [icon], [UserId], [operation], [date]) VALUES (39, -661667.0000, N'Оплата кредита', N'Solid_HandHoldingDollar', 3, N'Оплата кредита на сумму 39700000,0000', CAST(N'2022-12-21' AS Date))
INSERT [dbo].[Operation] ([id], [amount], [type], [icon], [UserId], [operation], [date]) VALUES (40, -824326.0000, N'Оплата кредита', N'Solid_HandHoldingDollar', 3, N'Оплата кредита на сумму 39700000,0000', CAST(N'2022-12-21' AS Date))
SET IDENTITY_INSERT [dbo].[Operation] OFF
GO
SET IDENTITY_INSERT [dbo].[Request] ON 

INSERT [dbo].[Request] ([id], [name], [CreditId], [status]) VALUES (10, N'Одобрить кредит?', 1023, 0)
INSERT [dbo].[Request] ([id], [name], [CreditId], [status]) VALUES (11, N'Одобрить кредит?', 1024, 0)
INSERT [dbo].[Request] ([id], [name], [CreditId], [status]) VALUES (12, N'Одобрить кредит?', 1025, 0)
INSERT [dbo].[Request] ([id], [name], [CreditId], [status]) VALUES (13, N'Одобрить кредит?', 1026, 0)
INSERT [dbo].[Request] ([id], [name], [CreditId], [status]) VALUES (14, N'Одобрить кредит?', 1027, 0)
INSERT [dbo].[Request] ([id], [name], [CreditId], [status]) VALUES (15, N'Одобрить кредит?', 1028, 0)
INSERT [dbo].[Request] ([id], [name], [CreditId], [status]) VALUES (16, N'Одобрить кредит?', 1029, 0)
SET IDENTITY_INSERT [dbo].[Request] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([id], [name]) VALUES (1, N'client')
INSERT [dbo].[Role] ([id], [name]) VALUES (2, N'manager')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([id], [name], [lastname], [patronymic], [login], [password], [RoleId], [phone]) VALUES (1, N'Денис', N'Алексеев', N'Александрович', N'232', N'123', 1, N'89510691153')
INSERT [dbo].[User] ([id], [name], [lastname], [patronymic], [login], [password], [RoleId], [phone]) VALUES (2, N'Денис', N'Алексеев', N'Александрович', N'232', N'124', 2, N'89510691143')
INSERT [dbo].[User] ([id], [name], [lastname], [patronymic], [login], [password], [RoleId], [phone]) VALUES (3, N'Николай', N'Зовченко', N'Арспантович', N'222', N'123', 1, N'89409123453')
INSERT [dbo].[User] ([id], [name], [lastname], [patronymic], [login], [password], [RoleId], [phone]) VALUES (4, N'wqe', N'qwd', N'asd', N'123', N'321', 1, N'12313123122')
INSERT [dbo].[User] ([id], [name], [lastname], [patronymic], [login], [password], [RoleId], [phone]) VALUES (5, N'Евгений', N'Днепренко', N'Анатольевич', N'122', N'123', 1, N'89510691133')
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Card]  WITH CHECK ADD  CONSTRAINT [FK_Card_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[Card] CHECK CONSTRAINT [FK_Card_User]
GO
ALTER TABLE [dbo].[Credit]  WITH CHECK ADD  CONSTRAINT [FK_Credit_Card] FOREIGN KEY([CardId])
REFERENCES [dbo].[Card] ([id])
GO
ALTER TABLE [dbo].[Credit] CHECK CONSTRAINT [FK_Credit_Card]
GO
ALTER TABLE [dbo].[Credit]  WITH CHECK ADD  CONSTRAINT [FK_Credit_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[Credit] CHECK CONSTRAINT [FK_Credit_User]
GO
ALTER TABLE [dbo].[Deposit]  WITH CHECK ADD  CONSTRAINT [FK_Deposit_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[Deposit] CHECK CONSTRAINT [FK_Deposit_User]
GO
ALTER TABLE [dbo].[Failure_Schedule]  WITH CHECK ADD  CONSTRAINT [FK_Failure_Schedule_Credit] FOREIGN KEY([CreditId])
REFERENCES [dbo].[Credit] ([id])
GO
ALTER TABLE [dbo].[Failure_Schedule] CHECK CONSTRAINT [FK_Failure_Schedule_Credit]
GO
ALTER TABLE [dbo].[Operation]  WITH CHECK ADD  CONSTRAINT [FK_Operation_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[Operation] CHECK CONSTRAINT [FK_Operation_User]
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_Credit] FOREIGN KEY([CreditId])
REFERENCES [dbo].[Credit] ([id])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_Credit]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
