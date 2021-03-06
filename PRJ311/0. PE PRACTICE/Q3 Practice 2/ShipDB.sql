CREATE DATABASE ShipDB
GO
USE [ShipDB]
GO
/****** Object:  Table [dbo].[Battles]    Script Date: 05/23/2017 21:25:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Battles](
	[name] [nchar](20) NOT NULL,
	[date] [date] NULL,
 CONSTRAINT [PK_Batteles] PRIMARY KEY CLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Battles] ([name], [date]) VALUES (N'Denmark Strait', CAST(0xDACF0A00 AS Date))
INSERT [dbo].[Battles] ([name], [date]) VALUES (N'Guadalcanal', CAST(0xDACF0A00 AS Date))
INSERT [dbo].[Battles] ([name], [date]) VALUES (N'HHH', NULL)
INSERT [dbo].[Battles] ([name], [date]) VALUES (N'North Cape', CAST(0xDACF0A00 AS Date))
INSERT [dbo].[Battles] ([name], [date]) VALUES (N'Surigao Strait', CAST(0xFCD60A00 AS Date))
/****** Object:  Table [dbo].[Outcomes]    Script Date: 05/23/2017 21:25:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Outcomes](
	[ship] [nchar](20) NOT NULL,
	[battle] [nchar](20) NOT NULL,
	[result] [nchar](10) NULL,
 CONSTRAINT [PK_Outcomes] PRIMARY KEY CLUSTERED 
(
	[ship] ASC,
	[battle] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Outcomes] ([ship], [battle], [result]) VALUES (N'Bismarck', N'Denmark Strait', N'sunk')
INSERT [dbo].[Outcomes] ([ship], [battle], [result]) VALUES (N'California', N'North Cape', N'ok')
INSERT [dbo].[Outcomes] ([ship], [battle], [result]) VALUES (N'California', N'Surigao Strait', N'ok')
INSERT [dbo].[Outcomes] ([ship], [battle], [result]) VALUES (N'Fuso', N'Denmark Strait', N'sunk')
INSERT [dbo].[Outcomes] ([ship], [battle], [result]) VALUES (N'King George', N'HHH', N'ok')
/****** Object:  ForeignKey [FK__Outcomes__battle__0425A276]    Script Date: 05/23/2017 21:25:50 ******/
ALTER TABLE [dbo].[Outcomes]  WITH CHECK ADD FOREIGN KEY([battle])
REFERENCES [dbo].[Battles] ([name])
GO
