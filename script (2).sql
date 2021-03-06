
/****** Object:  Table [dbo].[Admin_Table]    Script Date: 4/14/2020 9:44:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin_Table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[User_Name] [varchar](50) NULL,
	[User_Password] [varchar](50) NULL,
 CONSTRAINT [PK_Admin_Login] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact_Table]    Script Date: 4/14/2020 9:44:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact_Table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Message] [varchar](50) NULL,
 CONSTRAINT [PK_Contact_Table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_Table]    Script Date: 4/14/2020 9:44:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [varchar](50) NULL,
	[ProductName] [varchar](50) NULL,
	[Qty] [varchar](50) NULL,
	[Price] [varchar](50) NULL,
	[Image] [varchar](max) NULL,
 CONSTRAINT [PK_Product_Table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Salary_Table]    Script Date: 4/14/2020 9:44:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Salary_Table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Contact] [varchar](50) NULL,
	[Salary] [varchar](50) NULL,
	[PaymentDate] [varchar](50) NULL,
 CONSTRAINT [PK_Salary_Table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staff_Table]    Script Date: 4/14/2020 9:44:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff_Table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[FatherName] [varchar](50) NULL,
	[Contact] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
	[Desgination] [varchar](50) NULL,
	[Salary] [varchar](50) NULL,
 CONSTRAINT [PK_Staff_Table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Admin_Table] ON 

INSERT [dbo].[Admin_Table] ([id], [User_Name], [User_Password]) VALUES (1, N'admin@gmail.com', N'admin')
SET IDENTITY_INSERT [dbo].[Admin_Table] OFF
SET IDENTITY_INSERT [dbo].[Product_Table] ON 

INSERT [dbo].[Product_Table] ([id], [CompanyName], [ProductName], [Qty], [Price], [Image]) VALUES (3, N'sony', N'led tv', N'1', N'12000', N'~/ProductImage/a4200219185.JPG')
INSERT [dbo].[Product_Table] ([id], [CompanyName], [ProductName], [Qty], [Price], [Image]) VALUES (4, N'sony', N'camera', N'1', N'1700', N'~/ProductImage/203747941e5.jpg')
SET IDENTITY_INSERT [dbo].[Product_Table] OFF
USE [master]
GO
ALTER DATABASE [ElectronicStore] SET  READ_WRITE 
GO
