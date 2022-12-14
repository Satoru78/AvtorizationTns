USE [master]
GO
/****** Object:  Database [TelecomNevaSvyaz]    Script Date: 27.09.2022 12:28:09 ******/
CREATE DATABASE [TelecomNevaSvyaz]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TelecomNevaSvyaz', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVERR\MSSQL\DATA\TelecomNevaSvyaz.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TelecomNevaSvyaz_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVERR\MSSQL\DATA\TelecomNevaSvyaz_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [TelecomNevaSvyaz] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TelecomNevaSvyaz].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TelecomNevaSvyaz] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TelecomNevaSvyaz] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TelecomNevaSvyaz] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TelecomNevaSvyaz] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TelecomNevaSvyaz] SET ARITHABORT OFF 
GO
ALTER DATABASE [TelecomNevaSvyaz] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TelecomNevaSvyaz] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TelecomNevaSvyaz] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TelecomNevaSvyaz] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TelecomNevaSvyaz] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TelecomNevaSvyaz] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TelecomNevaSvyaz] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TelecomNevaSvyaz] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TelecomNevaSvyaz] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TelecomNevaSvyaz] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TelecomNevaSvyaz] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TelecomNevaSvyaz] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TelecomNevaSvyaz] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TelecomNevaSvyaz] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TelecomNevaSvyaz] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TelecomNevaSvyaz] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TelecomNevaSvyaz] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TelecomNevaSvyaz] SET RECOVERY FULL 
GO
ALTER DATABASE [TelecomNevaSvyaz] SET  MULTI_USER 
GO
ALTER DATABASE [TelecomNevaSvyaz] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TelecomNevaSvyaz] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TelecomNevaSvyaz] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TelecomNevaSvyaz] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TelecomNevaSvyaz] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TelecomNevaSvyaz] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'TelecomNevaSvyaz', N'ON'
GO
ALTER DATABASE [TelecomNevaSvyaz] SET QUERY_STORE = OFF
GO
USE [TelecomNevaSvyaz]
GO
/****** Object:  Table [dbo].[AbonentEqupment]    Script Date: 27.09.2022 12:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbonentEqupment](
	[SerialNumber] [nchar](20) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_AbonentEqupment] PRIMARY KEY CLUSTERED 
(
	[SerialNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Abonents]    Script Date: 27.09.2022 12:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Abonents](
	[NumberAbonent] [nvarchar](50) NOT NULL,
	[FIO] [nvarchar](50) NOT NULL,
	[IDGender] [int] NOT NULL,
	[DateOfBirth] [date] NOT NULL,
	[Phone] [nchar](40) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[AdressPropiski] [nvarchar](150) NOT NULL,
	[Adress] [nvarchar](100) NOT NULL,
	[SerialAndNumber] [nchar](50) NOT NULL,
	[Code] [nchar](10) NOT NULL,
	[Issue] [nvarchar](100) NOT NULL,
	[DateOfIssue] [date] NOT NULL,
	[NumberOfDogovor] [nvarchar](50) NOT NULL,
	[DateOfStart] [date] NOT NULL,
	[IDTypeOfDogovor] [int] NOT NULL,
	[Reason] [nvarchar](150) NULL,
	[PersonalAccount] [int] NOT NULL,
	[Services] [nvarchar](50) NOT NULL,
	[DateOfEnd] [date] NULL,
	[IDAbonentEqupment] [nchar](20) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 27.09.2022 12:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[ID] [int] NOT NULL,
	[FIO] [nvarchar](150) NOT NULL,
	[IDRole] [int] NOT NULL,
	[Code] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EqupmentMagistral]    Script Date: 27.09.2022 12:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EqupmentMagistral](
	[SerialNumber] [nchar](20) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_EqupmentMagistral] PRIMARY KEY CLUSTERED 
(
	[SerialNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gender]    Script Date: 27.09.2022 12:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gender](
	[ID] [int] NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Gender] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Request]    Script Date: 27.09.2022 12:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Request](
	[ID] [int] NOT NULL,
	[NumberRequest] [nvarchar](50) NOT NULL,
	[DateOfCreate] [date] NOT NULL,
	[PersonalAccount] [int] NOT NULL,
	[IDVidOfServices] [int] NOT NULL,
	[IDTypeOfServices] [int] NOT NULL,
	[IDStatus] [int] NOT NULL,
	[TypeOfEqupment] [nvarchar](50) NULL,
	[DescriptionProblem] [nvarchar](100) NULL,
	[DateOfEnd] [date] NULL,
	[IDTypeOfProblem] [int] NOT NULL,
 CONSTRAINT [PK_Request] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 27.09.2022 12:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[ID] [int] NOT NULL,
	[Role] [nvarchar](50) NOT NULL,
	[Information] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SetiDostupa]    Script Date: 27.09.2022 12:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SetiDostupa](
	[SerialNumber] [nchar](20) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_SetiDostupa] PRIMARY KEY CLUSTERED 
(
	[SerialNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SPB]    Script Date: 27.09.2022 12:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SPB](
	[ID] [int] NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[Ploshad] [decimal](12, 6) NOT NULL,
	[Naselenie] [int] NOT NULL,
	[CountOfAnderground] [int] NOT NULL,
	[IDTypeOfBuilding] [int] NOT NULL,
 CONSTRAINT [PK_SPB] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 27.09.2022 12:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[ID] [int] NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeOfBuilding]    Script Date: 27.09.2022 12:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeOfBuilding](
	[ID] [int] NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TypeOfBuilding] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeOfDogovor]    Script Date: 27.09.2022 12:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeOfDogovor](
	[ID] [int] NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TypeOfDogovor] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeOfProblem]    Script Date: 27.09.2022 12:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeOfProblem](
	[ID] [int] NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TypeOfProblem] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeOfServices]    Script Date: 27.09.2022 12:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeOfServices](
	[ID] [int] NOT NULL,
	[Title] [nvarchar](50) NULL,
 CONSTRAINT [PK_TypeOfServices] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VidOfServices]    Script Date: 27.09.2022 12:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VidOfServices](
	[ID] [int] NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_VidOfServices] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Abonents]  WITH CHECK ADD  CONSTRAINT [FK_Abonents_AbonentEqupment] FOREIGN KEY([IDAbonentEqupment])
REFERENCES [dbo].[AbonentEqupment] ([SerialNumber])
GO
ALTER TABLE [dbo].[Abonents] CHECK CONSTRAINT [FK_Abonents_AbonentEqupment]
GO
ALTER TABLE [dbo].[Abonents]  WITH CHECK ADD  CONSTRAINT [FK_Abonents_Gender] FOREIGN KEY([IDGender])
REFERENCES [dbo].[Gender] ([ID])
GO
ALTER TABLE [dbo].[Abonents] CHECK CONSTRAINT [FK_Abonents_Gender]
GO
ALTER TABLE [dbo].[Abonents]  WITH CHECK ADD  CONSTRAINT [FK_Abonents_TypeOfDogovor] FOREIGN KEY([IDTypeOfDogovor])
REFERENCES [dbo].[TypeOfDogovor] ([ID])
GO
ALTER TABLE [dbo].[Abonents] CHECK CONSTRAINT [FK_Abonents_TypeOfDogovor]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Role] FOREIGN KEY([IDRole])
REFERENCES [dbo].[Role] ([ID])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Role]
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_Status] FOREIGN KEY([IDStatus])
REFERENCES [dbo].[Status] ([ID])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_Status]
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_TypeOfProblem] FOREIGN KEY([IDTypeOfProblem])
REFERENCES [dbo].[TypeOfProblem] ([ID])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_TypeOfProblem]
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_TypeOfServices] FOREIGN KEY([IDTypeOfServices])
REFERENCES [dbo].[TypeOfServices] ([ID])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_TypeOfServices]
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_VidOfServices] FOREIGN KEY([IDVidOfServices])
REFERENCES [dbo].[VidOfServices] ([ID])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_VidOfServices]
GO
ALTER TABLE [dbo].[SPB]  WITH CHECK ADD  CONSTRAINT [FK_SPB_TypeOfBuilding] FOREIGN KEY([IDTypeOfBuilding])
REFERENCES [dbo].[TypeOfBuilding] ([ID])
GO
ALTER TABLE [dbo].[SPB] CHECK CONSTRAINT [FK_SPB_TypeOfBuilding]
GO
USE [master]
GO
ALTER DATABASE [TelecomNevaSvyaz] SET  READ_WRITE 
GO
