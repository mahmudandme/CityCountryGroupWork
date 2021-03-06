USE [master]
GO
/****** Object:  Database [CityCountryDB]    Script Date: 6/15/2015 2:07:12 PM ******/
CREATE DATABASE [CityCountryDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CityCountryDB', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\CityCountryDB.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'CityCountryDB_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\CityCountryDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [CityCountryDB] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CityCountryDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CityCountryDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CityCountryDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CityCountryDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CityCountryDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CityCountryDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [CityCountryDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CityCountryDB] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [CityCountryDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CityCountryDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CityCountryDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CityCountryDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CityCountryDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CityCountryDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CityCountryDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CityCountryDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CityCountryDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CityCountryDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CityCountryDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CityCountryDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CityCountryDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CityCountryDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CityCountryDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CityCountryDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CityCountryDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [CityCountryDB] SET  MULTI_USER 
GO
ALTER DATABASE [CityCountryDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CityCountryDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CityCountryDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CityCountryDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [CityCountryDB]
GO
/****** Object:  StoredProcedure [dbo].[spGetSomeCityInformation]    Script Date: 6/15/2015 2:07:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create proc [dbo].[spGetSomeCityInformation]
as
begin
select tblCity.cityName , tblCity.numberOfDwellers , tblCountry.countryName
from tblCity join tblCountry on tblCity.countryID = tblCountry.id
end

GO
/****** Object:  StoredProcedure [dbo].[spGetSomeCityInformations]    Script Date: 6/15/2015 2:07:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[spGetSomeCityInformations]
as
begin
select tblCity.cityName , tblCity.numberOfDwellers , tblCountry.countryName
from tblCity join tblCountry on tblCity.countryID = tblCountry.id
end


GO
/****** Object:  Table [dbo].[tblCity]    Script Date: 6/15/2015 2:07:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblCity](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[cityName] [varchar](50) NOT NULL,
	[about] [varchar](1000) NOT NULL,
	[numberOfDwellers] [int] NOT NULL,
	[location] [varchar](500) NOT NULL,
	[weather] [varchar](500) NOT NULL,
	[countryID] [int] NOT NULL,
 CONSTRAINT [PK_tblCity] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblCountry]    Script Date: 6/15/2015 2:07:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblCountry](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[countryName] [varchar](50) NOT NULL,
	[about] [varchar](1500) NOT NULL,
 CONSTRAINT [PK_tblCountry] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblCity] ON 

INSERT [dbo].[tblCity] ([id], [cityName], [about], [numberOfDwellers], [location], [weather], [countryID]) VALUES (1, N'Dhaka', N'Capital of Bangladesh', 1234, N'southest region of Bangladesh', N'Moderate', 1)
INSERT [dbo].[tblCity] ([id], [cityName], [about], [numberOfDwellers], [location], [weather], [countryID]) VALUES (2, N'Sylhet', N'City of peace in Bangladesh', 103455, N'north-east region of Bangladesh', N'Moderate', 1)
INSERT [dbo].[tblCity] ([id], [cityName], [about], [numberOfDwellers], [location], [weather], [countryID]) VALUES (3, N'Mombai', N'City of commerce in India ', 12345680, N'Center of India', N'Moderate', 10)
INSERT [dbo].[tblCity] ([id], [cityName], [about], [numberOfDwellers], [location], [weather], [countryID]) VALUES (4, N'Rajshahi', N'<p>This city has a rich history and contributes a lot to the economy of Bangladesh.</p><p><img class="fr-fil fr-dib" alt="Image title" src="http://i.froala.com/download/caa9e490089f3b002dd5a126184b7a27b4259043.jpg?1434316117" width="71"></p><p><br></p>', 344543, N'Northest region of Bangladesh', N'Moderate', 1)
INSERT [dbo].[tblCity] ([id], [cityName], [about], [numberOfDwellers], [location], [weather], [countryID]) VALUES (12, N'Tehran', N'<p>Capital of Iran&nbsp;<img class="fr-fin fr-dib" alt="Image title" src="http://i.froala.com/download/797c6df9cc352072f732d8afbed0cddf94790c80.jpg?1434354452" width="132"></p>', 4545, N'Middle of Iran', N'Moderate', 39)
INSERT [dbo].[tblCity] ([id], [cityName], [about], [numberOfDwellers], [location], [weather], [countryID]) VALUES (13, N'Comilla', N'<p>It has some historic place<img class="fr-fin fr-dib" alt="Image title" src="http://i.froala.com/download/59d5c21648dd88111e388f3fe33c30c2851835f8.jpg?1434354801" width="140"></p>', 34555, N'Southest region of BD', N'Moderate', 1)
INSERT [dbo].[tblCity] ([id], [cityName], [about], [numberOfDwellers], [location], [weather], [countryID]) VALUES (14, N'comilla1', N'<p>c rtgrg grweg retgrtg</p>', 4545, N'Middle of Iran', N'frtgwvg wr g', 1)
INSERT [dbo].[tblCity] ([id], [cityName], [about], [numberOfDwellers], [location], [weather], [countryID]) VALUES (15, N'erfeas rfgae', N'<p>f afaf awef aewrfawerf</p>', 3453, N'dfgsdfgdfgv', N'dfsadfasd', 10)
SET IDENTITY_INSERT [dbo].[tblCity] OFF
SET IDENTITY_INSERT [dbo].[tblCountry] ON 

INSERT [dbo].[tblCountry] ([id], [countryName], [about]) VALUES (1, N'Bangladesh', N'Bangladesh is an independent country But it has a large population . It''s a democratic country')
INSERT [dbo].[tblCountry] ([id], [countryName], [about]) VALUES (2, N'Pakistan', N'Jongider desh')
INSERT [dbo].[tblCountry] ([id], [countryName], [about]) VALUES (10, N'India', N'erkfje fthfh')
INSERT [dbo].[tblCountry] ([id], [countryName], [about]) VALUES (12, N'Maldip', N'Small Country')
INSERT [dbo].[tblCountry] ([id], [countryName], [about]) VALUES (13, N'China', N'It has a large economy')
INSERT [dbo].[tblCountry] ([id], [countryName], [about]) VALUES (14, N'Japan', N'Situated in ASIA')
INSERT [dbo].[tblCountry] ([id], [countryName], [about]) VALUES (18, N'England', N'It''s a Europe country')
INSERT [dbo].[tblCountry] ([id], [countryName], [about]) VALUES (19, N'USA', N'It''s a terrorist country')
INSERT [dbo].[tblCountry] ([id], [countryName], [about]) VALUES (28, N'ghghghg', N' drufyerfqer erf r ererw
 erew rewyrgfier 
rfe ruewr')
INSERT [dbo].[tblCountry] ([id], [countryName], [about]) VALUES (31, N'kuasefd', N'<p>siu dweide&nbsp; &nbsp; wfqw efqw efefe re</p><p>ef eruferfiuerf</p>')
INSERT [dbo].[tblCountry] ([id], [countryName], [about]) VALUES (32, N'jamai', N'<p>du fwu&nbsp;</p>')
INSERT [dbo].[tblCountry] ([id], [countryName], [about]) VALUES (33, N'jjuiuiu', N'<p>dsjcjsadcas wofwef wef</p><p><img class="fr-fin fr-dib" alt="Image title" src="http://i.froala.com/download/5311797354dcf158c88ca6083422e8ea994c322b.jpg?1434309708" width="130"></p><p><br></p>')
INSERT [dbo].[tblCountry] ([id], [countryName], [about]) VALUES (35, N'Saudiarab', N'<p>Profet Mohammad(S) born here&nbsp;<img class="fr-fin fr-dib" alt="Image title" src="http://i.froala.com/download/8cc84d5a29462d4e1e9f8f50e360fd8ec918a672.jpg?1434341761" width="194"></p>')
INSERT [dbo].[tblCountry] ([id], [countryName], [about]) VALUES (36, N'Malayshia', N'<p>Beautifu country<img class="fr-fin fr-dib" alt="Image title" src="http://i.froala.com/download/d4b7609036de5c08cfab3ab9b7da53a1d3559342.jpg?1434345172" width="177"></p>')
INSERT [dbo].[tblCountry] ([id], [countryName], [about]) VALUES (37, N'Bubai', N'<p>A beautiful country&nbsp;<img class="fr-fin fr-dib" alt="Image title" src="http://i.froala.com/download/8e19ecdd10e4cec3fdba881e6530df9cc1b4409b.jpg?1434346387" width="225"></p>')
INSERT [dbo].[tblCountry] ([id], [countryName], [about]) VALUES (38, N'Indineshia', N'<p>&nbsp;efyefye f&nbsp;</p><p><img class="fr-fin fr-dib" alt="Image title" src="http://i.froala.com/download/bfe8c8b94fb0c3e84a124fdb4a7a352df60967af.jpg?1434348236" width="132"></p><p><br></p>')
INSERT [dbo].[tblCountry] ([id], [countryName], [about]) VALUES (39, N'Iran', N'<p>Islamic republic country<img class="fr-fin fr-dib" alt="Image title" src="http://i.froala.com/download/b598eb12c843920ae9e594cbd6304874f2c87298.jpg?1434354409" width="122"></p>')
SET IDENTITY_INSERT [dbo].[tblCountry] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_tblCity]    Script Date: 6/15/2015 2:07:12 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_tblCity] ON [dbo].[tblCity]
(
	[cityName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_tblCountry_1]    Script Date: 6/15/2015 2:07:12 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_tblCountry_1] ON [dbo].[tblCountry]
(
	[countryName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblCity]  WITH CHECK ADD  CONSTRAINT [FK_tblCity_PK_tblCountry] FOREIGN KEY([countryID])
REFERENCES [dbo].[tblCountry] ([id])
GO
ALTER TABLE [dbo].[tblCity] CHECK CONSTRAINT [FK_tblCity_PK_tblCountry]
GO
USE [master]
GO
ALTER DATABASE [CityCountryDB] SET  READ_WRITE 
GO
