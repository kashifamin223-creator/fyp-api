USE [master]
GO
/****** Object:  Database [MHT]    Script Date: 06/05/2026 12:38:20 am ******/
CREATE DATABASE [MHT]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MHT', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\MHT.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MHT_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\MHT_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [MHT] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MHT].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MHT] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MHT] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MHT] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MHT] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MHT] SET ARITHABORT OFF 
GO
ALTER DATABASE [MHT] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [MHT] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MHT] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MHT] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MHT] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MHT] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MHT] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MHT] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MHT] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MHT] SET  ENABLE_BROKER 
GO
ALTER DATABASE [MHT] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MHT] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MHT] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MHT] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MHT] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MHT] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MHT] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MHT] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MHT] SET  MULTI_USER 
GO
ALTER DATABASE [MHT] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MHT] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MHT] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MHT] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MHT] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MHT] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [MHT] SET QUERY_STORE = ON
GO
ALTER DATABASE [MHT] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [MHT]
GO
/****** Object:  Table [dbo].[Child]    Script Date: 06/05/2026 12:38:21 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Child](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[Userid] [bigint] NULL,
	[Q1] [int] NULL,
	[Q2] [int] NULL,
	[Q3] [int] NULL,
	[Q4] [int] NULL,
	[Q5] [int] NULL,
	[Q6] [int] NULL,
	[Q7] [int] NULL,
	[Q8] [int] NULL,
	[Q9] [int] NULL,
 CONSTRAINT [PK_Child] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employed]    Script Date: 06/05/2026 12:38:21 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employed](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[Userid] [bigint] NULL,
	[Age] [nvarchar](50) NULL,
	[Gender] [nvarchar](50) NULL,
	[employment] [nvarchar](50) NULL,
	[years] [nvarchar](50) NULL,
	[diagnosed] [bit] NULL,
	[support] [nvarchar](50) NULL,
	[Q1] [bit] NULL,
	[Q2] [bit] NULL,
	[Q3] [bit] NULL,
	[Q4] [bit] NULL,
	[Q5] [bit] NULL,
	[Q6] [bit] NULL,
	[Q7] [bit] NULL,
	[Q8] [bit] NULL,
	[Q9] [bit] NULL,
 CONSTRAINT [PK_Employed] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Graduate]    Script Date: 06/05/2026 12:38:21 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Graduate](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[Userid] [bigint] NULL,
	[Age] [nvarchar](50) NULL,
	[Gender] [nvarchar](50) NULL,
	[Education] [nvarchar](50) NULL,
	[Diagnosed] [bit] NULL,
	[support] [nvarchar](50) NULL,
	[Q1] [bit] NULL,
	[Q2] [bit] NULL,
	[Q3] [bit] NULL,
	[Q4] [bit] NULL,
	[Q5] [bit] NULL,
	[Q6] [bit] NULL,
	[Q7] [bit] NULL,
	[Q8] [bit] NULL,
	[Q9] [bit] NULL,
 CONSTRAINT [PK_Graduate] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Harassment]    Script Date: 06/05/2026 12:38:21 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Harassment](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[Userid] [bigint] NULL,
	[Q1] [int] NULL,
	[Q2] [int] NULL,
	[Q3] [int] NULL,
	[Q4] [int] NULL,
	[Q5] [int] NULL,
	[Q6] [int] NULL,
	[Q7] [int] NULL,
	[Q8] [int] NULL,
	[Q9] [int] NULL,
 CONSTRAINT [PK_Harassment] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Intern]    Script Date: 06/05/2026 12:38:21 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Intern](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Userid] [int] NULL,
	[Age] [nvarchar](50) NULL,
	[Gender] [nvarchar](50) NULL,
	[status] [nvarchar](50) NULL,
	[diagnosed] [bit] NULL,
	[treatment] [nvarchar](50) NULL,
	[Q1] [bit] NULL,
	[Q2] [bit] NULL,
	[Q3] [bit] NULL,
	[Q4] [bit] NULL,
	[Q5] [bit] NULL,
	[Q6] [bit] NULL,
	[Q7] [bit] NULL,
	[Q8] [bit] NULL,
	[Q9] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Oldage]    Script Date: 06/05/2026 12:38:21 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Oldage](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[Userid] [bigint] NULL,
	[Age] [nvarchar](50) NULL,
	[Gender] [nvarchar](50) NULL,
	[living] [nvarchar](50) NULL,
	[diagnosed] [bit] NULL,
	[support] [nvarchar](50) NULL,
	[Q1] [bit] NULL,
	[Q2] [bit] NULL,
	[Q3] [bit] NULL,
	[Q4] [bit] NULL,
	[Q5] [bit] NULL,
	[Q6] [bit] NULL,
	[Q7] [bit] NULL,
	[Q8] [bit] NULL,
	[Q9] [bit] NULL,
 CONSTRAINT [PK_Oldage] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Parents]    Script Date: 06/05/2026 12:38:21 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Parents](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[Userid] [bigint] NULL,
	[Age] [nvarchar](50) NULL,
	[Gender] [nvarchar](50) NULL,
	[parenting] [nvarchar](50) NULL,
	[number] [nvarchar](50) NULL,
	[diagnosed] [bit] NULL,
	[support] [nvarchar](50) NULL,
	[Q1] [bit] NULL,
	[Q2] [bit] NULL,
	[Q3] [bit] NULL,
	[Q4] [bit] NULL,
	[Q5] [bit] NULL,
	[Q6] [bit] NULL,
	[Q7] [bit] NULL,
	[Q8] [bit] NULL,
	[Q9] [bit] NULL,
 CONSTRAINT [PK_Parents] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sign_up]    Script Date: 06/05/2026 12:38:21 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sign_up](
	[Userid] [bigint] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
 CONSTRAINT [PK_Sign_up] PRIMARY KEY CLUSTERED 
(
	[Userid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Trauma]    Script Date: 06/05/2026 12:38:21 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Trauma](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[Userid] [bigint] NULL,
	[Q1] [int] NULL,
	[Q2] [int] NULL,
	[Q3] [int] NULL,
	[Q4] [int] NULL,
	[Q5] [int] NULL,
	[Q6] [int] NULL,
	[Q7] [int] NULL,
	[Q8] [int] NULL,
	[Q9] [int] NULL,
 CONSTRAINT [PK_Trauma] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Unemployed]    Script Date: 06/05/2026 12:38:21 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Unemployed](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[Userid] [bigint] NULL,
	[Age] [nvarchar](50) NULL,
	[Gender] [nvarchar](50) NULL,
	[employment] [nvarchar](50) NULL,
	[diagnosed] [bit] NULL,
	[support] [nvarchar](50) NULL,
	[Q1] [bit] NULL,
	[Q2] [bit] NULL,
	[Q3] [bit] NULL,
	[Q4] [bit] NULL,
	[Q5] [bit] NULL,
	[Q6] [bit] NULL,
	[Q7] [bit] NULL,
	[Q8] [bit] NULL,
	[Q9] [bit] NULL,
 CONSTRAINT [PK_Unemployed] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Graduate] ON 
GO
INSERT [dbo].[Graduate] ([id], [Userid], [Age], [Gender], [Education], [Diagnosed], [support], [Q1], [Q2], [Q3], [Q4], [Q5], [Q6], [Q7], [Q8], [Q9]) VALUES (1, 0, N'0', N'string', N'string', 1, N'string', 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Graduate] ([id], [Userid], [Age], [Gender], [Education], [Diagnosed], [support], [Q1], [Q2], [Q3], [Q4], [Q5], [Q6], [Q7], [Q8], [Q9]) VALUES (2, 0, N'0', N'string', N'string', 1, N'string', 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Graduate] ([id], [Userid], [Age], [Gender], [Education], [Diagnosed], [support], [Q1], [Q2], [Q3], [Q4], [Q5], [Q6], [Q7], [Q8], [Q9]) VALUES (3, 0, N'23', N'Male', N'Bachelor''s', 1, N'Career coaching', 1, 1, 0, 1, 1, 0, 0, 0, 0)
GO
INSERT [dbo].[Graduate] ([id], [Userid], [Age], [Gender], [Education], [Diagnosed], [support], [Q1], [Q2], [Q3], [Q4], [Q5], [Q6], [Q7], [Q8], [Q9]) VALUES (4, 0, N'50', N'Male', N'Graduate', 1, N'Therapy', 0, 1, 0, 0, 0, 1, 1, 1, 1)
GO
SET IDENTITY_INSERT [dbo].[Graduate] OFF
GO
SET IDENTITY_INSERT [dbo].[Harassment] ON 
GO
INSERT [dbo].[Harassment] ([id], [Userid], [Q1], [Q2], [Q3], [Q4], [Q5], [Q6], [Q7], [Q8], [Q9]) VALUES (1, 1001, 1, 2, 3, 4, 1, 2, 3, 4, 1)
GO
INSERT [dbo].[Harassment] ([id], [Userid], [Q1], [Q2], [Q3], [Q4], [Q5], [Q6], [Q7], [Q8], [Q9]) VALUES (2, 1001, 1, 2, 3, 4, 1, 2, 3, 4, 1)
GO
SET IDENTITY_INSERT [dbo].[Harassment] OFF
GO
SET IDENTITY_INSERT [dbo].[Intern] ON 
GO
INSERT [dbo].[Intern] ([Id], [Userid], [Age], [Gender], [status], [diagnosed], [treatment], [Q1], [Q2], [Q3], [Q4], [Q5], [Q6], [Q7], [Q8], [Q9]) VALUES (1, 0, N'0', N'string', N'string', 1, N'string', 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Intern] ([Id], [Userid], [Age], [Gender], [status], [diagnosed], [treatment], [Q1], [Q2], [Q3], [Q4], [Q5], [Q6], [Q7], [Q8], [Q9]) VALUES (2, 0, N'0', N'string', N'string', 1, N'string', 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Intern] ([Id], [Userid], [Age], [Gender], [status], [diagnosed], [treatment], [Q1], [Q2], [Q3], [Q4], [Q5], [Q6], [Q7], [Q8], [Q9]) VALUES (3, 0, N'23', N'Male', N'Intern - Full-time', 1, N'', 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Intern] ([Id], [Userid], [Age], [Gender], [status], [diagnosed], [treatment], [Q1], [Q2], [Q3], [Q4], [Q5], [Q6], [Q7], [Q8], [Q9]) VALUES (4, 0, N'23', N'Male', N'Intern - Full-time', 1, N'Therapy', 1, 1, 0, 0, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Intern] ([Id], [Userid], [Age], [Gender], [status], [diagnosed], [treatment], [Q1], [Q2], [Q3], [Q4], [Q5], [Q6], [Q7], [Q8], [Q9]) VALUES (5, 0, N'24', N'Male', N'Intern - Part-time', 1, N'Therapy', 0, 0, 1, 1, 0, 1, 0, 1, 1)
GO
INSERT [dbo].[Intern] ([Id], [Userid], [Age], [Gender], [status], [diagnosed], [treatment], [Q1], [Q2], [Q3], [Q4], [Q5], [Q6], [Q7], [Q8], [Q9]) VALUES (6, 0, N'24', N'Male', N'Intern - Part-time', 1, N'Therapy', 0, 0, 1, 1, 0, 1, 0, 1, 1)
GO
INSERT [dbo].[Intern] ([Id], [Userid], [Age], [Gender], [status], [diagnosed], [treatment], [Q1], [Q2], [Q3], [Q4], [Q5], [Q6], [Q7], [Q8], [Q9]) VALUES (7, 0, N'23', N'Male', N'Intern - Full-time', 1, N'Medication', 1, 1, 1, 0, 0, 0, 0, 0, 1)
GO
SET IDENTITY_INSERT [dbo].[Intern] OFF
GO
SET IDENTITY_INSERT [dbo].[Trauma] ON 
GO
INSERT [dbo].[Trauma] ([id], [Userid], [Q1], [Q2], [Q3], [Q4], [Q5], [Q6], [Q7], [Q8], [Q9]) VALUES (1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Trauma] ([id], [Userid], [Q1], [Q2], [Q3], [Q4], [Q5], [Q6], [Q7], [Q8], [Q9]) VALUES (2, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Trauma] ([id], [Userid], [Q1], [Q2], [Q3], [Q4], [Q5], [Q6], [Q7], [Q8], [Q9]) VALUES (3, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Trauma] ([id], [Userid], [Q1], [Q2], [Q3], [Q4], [Q5], [Q6], [Q7], [Q8], [Q9]) VALUES (4, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Trauma] ([id], [Userid], [Q1], [Q2], [Q3], [Q4], [Q5], [Q6], [Q7], [Q8], [Q9]) VALUES (5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Trauma] ([id], [Userid], [Q1], [Q2], [Q3], [Q4], [Q5], [Q6], [Q7], [Q8], [Q9]) VALUES (6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Trauma] ([id], [Userid], [Q1], [Q2], [Q3], [Q4], [Q5], [Q6], [Q7], [Q8], [Q9]) VALUES (7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Trauma] ([id], [Userid], [Q1], [Q2], [Q3], [Q4], [Q5], [Q6], [Q7], [Q8], [Q9]) VALUES (8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Trauma] ([id], [Userid], [Q1], [Q2], [Q3], [Q4], [Q5], [Q6], [Q7], [Q8], [Q9]) VALUES (9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Trauma] ([id], [Userid], [Q1], [Q2], [Q3], [Q4], [Q5], [Q6], [Q7], [Q8], [Q9]) VALUES (10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
INSERT [dbo].[Trauma] ([id], [Userid], [Q1], [Q2], [Q3], [Q4], [Q5], [Q6], [Q7], [Q8], [Q9]) VALUES (11, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1)
GO
INSERT [dbo].[Trauma] ([id], [Userid], [Q1], [Q2], [Q3], [Q4], [Q5], [Q6], [Q7], [Q8], [Q9]) VALUES (12, 0, 0, 1, 1, 1, 1, 1, 1, 0, 1)
GO
INSERT [dbo].[Trauma] ([id], [Userid], [Q1], [Q2], [Q3], [Q4], [Q5], [Q6], [Q7], [Q8], [Q9]) VALUES (13, 0, 0, 1, 1, 1, 0, 1, 1, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Trauma] OFF
GO
/****** Object:  StoredProcedure [dbo].[InsertGraduate]    Script Date: 06/05/2026 12:38:21 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[InsertGraduate]
    @Userid BIGINT,
    @Age NVARCHAR(50),
    @Gender NVARCHAR(50),
    @Education NVARCHAR(50),
    @Diagnosed BIT,
    @support NVARCHAR(50),
    @Q1 BIT,
    @Q2 BIT,
    @Q3 BIT,
    @Q4 BIT,
    @Q5 BIT,
    @Q6 BIT,
    @Q7 BIT,
    @Q8 BIT,
    @Q9 BIT
AS
BEGIN
    INSERT INTO [dbo].[Graduate]
    (
        [Userid],
        [Age],
        [Gender],
        [Education],
        [Diagnosed],
        [support],
        [Q1],
        [Q2],
        [Q3],
        [Q4],
        [Q5],
        [Q6],
        [Q7],
        [Q8],
        [Q9]
    )
    VALUES
    (
        @Userid,
        @Age,
        @Gender,
        @Education,
        @Diagnosed,
        @support,
        @Q1,
        @Q2,
        @Q3,
        @Q4,
        @Q5,
        @Q6,
        @Q7,
        @Q8,
        @Q9
    )
END
GO
/****** Object:  StoredProcedure [dbo].[InsertHarassment]    Script Date: 06/05/2026 12:38:21 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[InsertHarassment]
    @Userid BIGINT,
    @Q1 INT,
    @Q2 INT,
    @Q3 INT,
    @Q4 INT,
    @Q5 INT,
    @Q6 INT,
    @Q7 INT,
    @Q8 INT,
    @Q9 INT
AS
BEGIN
    INSERT INTO dbo.Harassment
    (Userid, Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q8,Q9)
    VALUES
    (@Userid, @Q1,@Q2,@Q3,@Q4,@Q5,@Q6,@Q7,@Q8,@Q9)
END
GO
/****** Object:  StoredProcedure [dbo].[InsertIntern]    Script Date: 06/05/2026 12:38:21 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[InsertIntern]
    @Userid INT,
    @Age NVARCHAR(50),
    @Gender NVARCHAR(50),
    @status NVARCHAR(50),
    @diagnosed BIT,
    @treatment NVARCHAR(50),
    @Q1 BIT,
    @Q2 BIT,
    @Q3 BIT,
    @Q4 BIT,
    @Q5 BIT,
    @Q6 BIT,
    @Q7 BIT,
    @Q8 BIT,
    @Q9 BIT
AS
BEGIN
    INSERT INTO [dbo].[Intern]
    (
        [Userid],
        [Age],
        [Gender],
        [status],
        [diagnosed],
        [treatment],
        [Q1],
        [Q2],
        [Q3],
        [Q4],
        [Q5],
        [Q6],
        [Q7],
        [Q8],
        [Q9]
    )
    VALUES
    (
        @Userid,
        @Age,
        @Gender,
        @status,
        @diagnosed,
        @treatment,
        @Q1,
        @Q2,
        @Q3,
        @Q4,
        @Q5,
        @Q6,
        @Q7,
        @Q8,
        @Q9
    )
END
GO
/****** Object:  StoredProcedure [dbo].[InsertTrauma]    Script Date: 06/05/2026 12:38:21 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertTrauma]
    @Userid INT,
    @Q1 BIT,
    @Q2 BIT,
    @Q3 BIT,
    @Q4 BIT,
    @Q5 BIT,
    @Q6 BIT,
    @Q7 BIT,
    @Q8 BIT,
    @Q9 BIT,
    @Result INT OUTPUT
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO Trauma
    (Userid, Q1, Q2, Q3, Q4, Q5, Q6, Q7, Q8, Q9)
    VALUES
    (@Userid, @Q1, @Q2, @Q3, @Q4, @Q5, @Q6, @Q7, @Q8, @Q9)

    SET @Result = 1
END
GO
/****** Object:  StoredProcedure [dbo].[InsertChild]    Script Date: 06/05/2026 12:38:21 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[InsertChild]
    @Userid BIGINT,
    @Q1 INT,
    @Q2 INT,
    @Q3 INT,
    @Q4 INT,
    @Q5 INT,
    @Q6 INT,
    @Q7 INT,
    @Q8 INT,
    @Q9 INT
AS
BEGIN
    INSERT INTO [dbo].[Child]
    (
        [Userid],
        [Q1],
        [Q2],
        [Q3],
        [Q4],
        [Q5],
        [Q6],
        [Q7],
        [Q8],
        [Q9]
    )
    VALUES
    (
        @Userid,
        @Q1,
        @Q2,
        @Q3,
        @Q4,
        @Q5,
        @Q6,
        @Q7,
        @Q8,
        @Q9
    )
END
GO

/****** Object:  StoredProcedure [dbo].[InsertEmployed]    Script Date: 06/05/2026 12:38:21 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[InsertEmployed]
    @Userid BIGINT,
    @Age NVARCHAR(50),
    @Gender NVARCHAR(50),
    @employment NVARCHAR(50),
    @years NVARCHAR(50),
    @diagnosed BIT,
    @support NVARCHAR(50),
    @Q1 BIT,
    @Q2 BIT,
    @Q3 BIT,
    @Q4 BIT,
    @Q5 BIT,
    @Q6 BIT,
    @Q7 BIT,
    @Q8 BIT,
    @Q9 BIT
AS
BEGIN
    INSERT INTO [dbo].[Employed]
    (
        [Userid],
        [Age],
        [Gender],
        [employment],
        [years],
        [diagnosed],
        [support],
        [Q1],
        [Q2],
        [Q3],
        [Q4],
        [Q5],
        [Q6],
        [Q7],
        [Q8],
        [Q9]
    )
    VALUES
    (
        @Userid,
        @Age,
        @Gender,
        @employment,
        @years,
        @diagnosed,
        @support,
        @Q1,
        @Q2,
        @Q3,
        @Q4,
        @Q5,
        @Q6,
        @Q7,
        @Q8,
        @Q9
    )
END
GO

/****** Object:  StoredProcedure [dbo].[InsertUnemployed]    Script Date: 06/05/2026 12:38:21 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[InsertUnemployed]
    @Userid BIGINT,
    @Age NVARCHAR(50),
    @Gender NVARCHAR(50),
    @employment NVARCHAR(50),
    @diagnosed BIT,
    @support NVARCHAR(50),
    @Q1 BIT,
    @Q2 BIT,
    @Q3 BIT,
    @Q4 BIT,
    @Q5 BIT,
    @Q6 BIT,
    @Q7 BIT,
    @Q8 BIT,
    @Q9 BIT
AS
BEGIN
    INSERT INTO [dbo].[Unemployed]
    (
        [Userid],
        [Age],
        [Gender],
        [employment],
        [diagnosed],
        [support],
        [Q1],
        [Q2],
        [Q3],
        [Q4],
        [Q5],
        [Q6],
        [Q7],
        [Q8],
        [Q9]
    )
    VALUES
    (
        @Userid,
        @Age,
        @Gender,
        @employment,
        @diagnosed,
        @support,
        @Q1,
        @Q2,
        @Q3,
        @Q4,
        @Q5,
        @Q6,
        @Q7,
        @Q8,
        @Q9
    )
END
GO

/****** Object:  StoredProcedure [dbo].[InsertParents]    Script Date: 06/05/2026 12:38:21 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[InsertParents]
    @Userid BIGINT,
    @Age NVARCHAR(50),
    @Gender NVARCHAR(50),
    @parenting NVARCHAR(50),
    @number NVARCHAR(50),
    @diagnosed BIT,
    @support NVARCHAR(50),
    @Q1 BIT,
    @Q2 BIT,
    @Q3 BIT,
    @Q4 BIT,
    @Q5 BIT,
    @Q6 BIT,
    @Q7 BIT,
    @Q8 BIT,
    @Q9 BIT
AS
BEGIN
    INSERT INTO [dbo].[Parents]
    (
        [Userid],
        [Age],
        [Gender],
        [parenting],
        [number],
        [diagnosed],
        [support],
        [Q1],
        [Q2],
        [Q3],
        [Q4],
        [Q5],
        [Q6],
        [Q7],
        [Q8],
        [Q9]
    )
    VALUES
    (
        @Userid,
        @Age,
        @Gender,
        @parenting,
        @number,
        @diagnosed,
        @support,
        @Q1,
        @Q2,
        @Q3,
        @Q4,
        @Q5,
        @Q6,
        @Q7,
        @Q8,
        @Q9
    )
END
GO

/****** Object:  StoredProcedure [dbo].[InsertOldage]    Script Date: 06/05/2026 12:38:21 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[InsertOldage]
    @Userid BIGINT,
    @Age NVARCHAR(50),
    @Gender NVARCHAR(50),
    @living NVARCHAR(50),
    @diagnosed BIT,
    @support NVARCHAR(50),
    @Q1 BIT,
    @Q2 BIT,
    @Q3 BIT,
    @Q4 BIT,
    @Q5 BIT,
    @Q6 BIT,
    @Q7 BIT,
    @Q8 BIT,
    @Q9 BIT
AS
BEGIN
    INSERT INTO [dbo].[Oldage]
    (
        [Userid],
        [Age],
        [Gender],
        [living],
        [diagnosed],
        [support],
        [Q1],
        [Q2],
        [Q3],
        [Q4],
        [Q5],
        [Q6],
        [Q7],
        [Q8],
        [Q9]
    )
    VALUES
    (
        @Userid,
        @Age,
        @Gender,
        @living,
        @diagnosed,
        @support,
        @Q1,
        @Q2,
        @Q3,
        @Q4,
        @Q5,
        @Q6,
        @Q7,
        @Q8,
        @Q9
    )
END
GO

/****** Object:  StoredProcedure [dbo].[InsertSign_up]    Script Date: 06/05/2026 12:38:21 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[InsertSign_up]
    @Email NVARCHAR(50),
    @Password NVARCHAR(50),
    @Userid BIGINT OUTPUT
AS
BEGIN
    SET NOCOUNT ON;
    
    INSERT INTO [dbo].[Sign_up]
    (
        [Email],
        [Password]
    )
    VALUES
    (
        @Email,
        @Password
    )
    
    SET @Userid = SCOPE_IDENTITY()
END
GO

/****** Object:  StoredProcedure [dbo].[AuthenticateUser]    Script Date: 06/05/2026 12:38:21 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[AuthenticateUser]
    @Email NVARCHAR(50),
    @Password NVARCHAR(50),
    @Userid BIGINT OUTPUT,
    @IsValid BIT OUTPUT
AS
BEGIN
    SET NOCOUNT ON;
    
    SET @Userid = NULL;
    SET @IsValid = 0;
    
    SELECT @Userid = Userid
    FROM [dbo].[Sign_up]
    WHERE Email = @Email AND Password = @Password;
    
    IF @Userid IS NOT NULL
    BEGIN
        SET @IsValid = 1;
    END
END
GO

USE [master]
GO
ALTER DATABASE [MHT] SET  READ_WRITE 
GO
