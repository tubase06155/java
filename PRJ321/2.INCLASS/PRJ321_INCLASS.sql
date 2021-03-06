USE [PRJ321]
GO
/****** Object:  Table [dbo].[Authentication]    Script Date: 8/31/2018 2:44:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Authentication](
	[username] [varchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 8/31/2018 2:44:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[BOD] [date] NULL,
	[Image] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentFap]    Script Date: 8/31/2018 2:44:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentFap](
	[No] [int] NOT NULL,
	[Group] [nchar](10) NOT NULL,
	[Code] [nchar](10) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Image] [nvarchar](max) NOT NULL,
	[Status] [nvarchar](50) NOT NULL,
	[Comment] [nvarchar](50) NULL,
	[Taker] [nvarchar](50) NOT NULL,
	[Time] [date] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Taker]    Script Date: 8/31/2018 2:44:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Taker](
	[username] [nvarchar](50) NOT NULL,
	[firstname] [nvarchar](50) NOT NULL,
	[lastname] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[gender] [bit] NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Authentication] ([username], [password]) VALUES (N'hoapn', N'123456')
INSERT [dbo].[Authentication] ([username], [password]) VALUES (N'cuongnx', N'123456')
SET IDENTITY_INSERT [dbo].[Student] ON 

INSERT [dbo].[Student] ([id], [name], [BOD], [Image]) VALUES (2, N'Pham Van B', CAST(N'1998-03-20' AS Date), N'defg')
INSERT [dbo].[Student] ([id], [name], [BOD], [Image]) VALUES (3, N'Pham Van C', CAST(N'1998-03-20' AS Date), N'dce')
INSERT [dbo].[Student] ([id], [name], [BOD], [Image]) VALUES (4, N'Pham Van d', CAST(N'1998-03-20' AS Date), N'dce')
INSERT [dbo].[Student] ([id], [name], [BOD], [Image]) VALUES (5, N'Pham Van d', CAST(N'1998-03-20' AS Date), N'dce')
SET IDENTITY_INSERT [dbo].[Student] OFF
INSERT [dbo].[StudentFap] ([No], [Group], [Code], [Name], [Image], [Status], [Comment], [Taker], [Time]) VALUES (1, N'PRJ321.EB5', N'SE03335   ', N'Cao Bá Khánh Linh', N'1.png', N'absent', N'', N'duongtb', CAST(N'2018-08-13' AS Date))
INSERT [dbo].[StudentFap] ([No], [Group], [Code], [Name], [Image], [Status], [Comment], [Taker], [Time]) VALUES (2, N'PRJ321.EB5', N'SE03555   ', N'Phan Lâm', N'2.png', N'present', N'', N'duongtb', CAST(N'2018-08-13' AS Date))
INSERT [dbo].[StudentFap] ([No], [Group], [Code], [Name], [Image], [Status], [Comment], [Taker], [Time]) VALUES (3, N'PRJ321.EB5', N'SE03810   ', N'Nguyễn Minh Hiếu', N'3.png', N'present', N'', N'duongtb', CAST(N'2018-08-13' AS Date))
INSERT [dbo].[StudentFap] ([No], [Group], [Code], [Name], [Image], [Status], [Comment], [Taker], [Time]) VALUES (4, N'PRJ321.EB5', N'SE05740   ', N'Pham Ngoc Hoa', N'4.png', N'present', N'', N'hoapn', CAST(N'2018-08-14' AS Date))
INSERT [dbo].[Taker] ([username], [firstname], [lastname], [password], [email], [gender]) VALUES (N'khuongpd', N'Phùng Duy', N'Khương', N'123456', N'khuongpd@fpt.edu.vn', 1)
INSERT [dbo].[Taker] ([username], [firstname], [lastname], [password], [email], [gender]) VALUES (N'hoapn', N'pham ngoc', N'hoa', N'123456', N'hoapnse05740@fpt.edu.vn', 1)
INSERT [dbo].[Taker] ([username], [firstname], [lastname], [password], [email], [gender]) VALUES (N'duongtb', N'Thai Binh', N'Duong', N'123456', N'duongtb@fpt.edu.vn', 1)
