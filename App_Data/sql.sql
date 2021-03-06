USE [master]
GO
/****** Object:  Database [shuifeng]    Script Date: 2020/6/15 18:29:19 ******/
CREATE DATABASE [shuifeng]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'shuifeng', FILENAME = N'E:\aaaaa项目\sql文件\shuifeng.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'shuifeng_log', FILENAME = N'E:\aaaaa项目\sql文件\shuifeng_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [shuifeng] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [shuifeng].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [shuifeng] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [shuifeng] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [shuifeng] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [shuifeng] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [shuifeng] SET ARITHABORT OFF 
GO
ALTER DATABASE [shuifeng] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [shuifeng] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [shuifeng] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [shuifeng] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [shuifeng] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [shuifeng] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [shuifeng] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [shuifeng] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [shuifeng] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [shuifeng] SET  DISABLE_BROKER 
GO
ALTER DATABASE [shuifeng] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [shuifeng] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [shuifeng] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [shuifeng] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [shuifeng] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [shuifeng] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [shuifeng] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [shuifeng] SET RECOVERY FULL 
GO
ALTER DATABASE [shuifeng] SET  MULTI_USER 
GO
ALTER DATABASE [shuifeng] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [shuifeng] SET DB_CHAINING OFF 
GO
ALTER DATABASE [shuifeng] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [shuifeng] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [shuifeng] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'shuifeng', N'ON'
GO
ALTER DATABASE [shuifeng] SET QUERY_STORE = OFF
GO
USE [shuifeng]
GO
/****** Object:  Table [dbo].[Admins]    Script Date: 2020/6/15 18:29:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admins](
	[Admin_ID] [int] IDENTITY(1,1) NOT NULL,
	[Admin_Name] [nvarchar](50) NULL,
	[Admin_Pwd] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Admin_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ALL_status]    Script Date: 2020/6/15 18:29:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ALL_status](
	[Users_Sta_ID] [int] NULL,
	[Users_Sta_Name] [int] NULL,
	[Music_Play_Sta_ID] [int] NULL,
	[Music_Play_Sta_Name] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 2020/6/15 18:29:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[Music_ID] [int] NULL,
	[Users_ID] [int] NULL,
	[Content] [nvarchar](500) NULL,
	[Comment_Time] [date] NULL,
	[Like_Count] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Favorite]    Script Date: 2020/6/15 18:29:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Favorite](
	[Song_list_ID] [int] NULL,
	[Song_list_Name] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[I_Like]    Script Date: 2020/6/15 18:29:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[I_Like](
	[Users_ID] [int] NULL,
	[Music_ID] [int] NULL,
	[Music_Url] [nvarchar](200) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Music]    Script Date: 2020/6/15 18:29:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Music](
	[Music_ID] [int] IDENTITY(1,1) NOT NULL,
	[Category_ID] [int] NULL,
	[Singer_ID] [int] NULL,
	[Music_Url] [nvarchar](200) NULL,
	[Music_Name] [nvarchar](50) NULL,
	[Music_Img] [nvarchar](200) NULL,
	[Music_Play_Count] [int] NULL,
	[Music_Play_Sta_ID] [int] NULL,
	[Music_Mv_Url] [nvarchar](200) NULL,
	[Music_Mv_Name] [nvarchar](200) NULL,
	[Music_Mv_Play_Count] [int] NULL,
	[Add_Time] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Music_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Music_Category]    Script Date: 2020/6/15 18:29:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Music_Category](
	[Category_ID] [int] IDENTITY(1,1) NOT NULL,
	[Category_Name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Category_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Music_Rec_Area]    Script Date: 2020/6/15 18:29:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Music_Rec_Area](
	[Area_ID] [int] NULL,
	[Area_Music_Play_Count] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Music_Rec_Category]    Script Date: 2020/6/15 18:29:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Music_Rec_Category](
	[Category_ID] [int] NULL,
	[Category_Play_Count] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Music_Rec_Singer]    Script Date: 2020/6/15 18:29:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Music_Rec_Singer](
	[Singer_ID] [int] NULL,
	[Singer_Music_Play_Count] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Play_History]    Script Date: 2020/6/15 18:29:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Play_History](
	[Users_ID] [int] NULL,
	[Music_ID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Play_lists]    Script Date: 2020/6/15 18:29:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Play_lists](
	[Users_ID] [int] NULL,
	[Music_ID] [int] NULL,
	[Music_Url] [nvarchar](200) NULL,
	[Music_Name] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reply]    Script Date: 2020/6/15 18:29:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reply](
	[Reply_ID] [int] NULL,
	[Music_ID] [int] NULL,
	[Reply_Users_ID] [int] NULL,
	[Comment_Users_ID] [int] NULL,
	[Reply_Content] [nvarchar](500) NULL,
	[Reply_Time] [date] NULL,
	[Like_Count] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Singer]    Script Date: 2020/6/15 18:29:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Singer](
	[Singer_ID] [int] IDENTITY(1,1) NOT NULL,
	[Singer_Name] [nvarchar](50) NULL,
	[Singer_area] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Singer_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Song_list]    Script Date: 2020/6/15 18:29:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Song_list](
	[Song_list_ID] [int] NULL,
	[Song_list_Name] [nvarchar](100) NULL,
	[Users_ID] [int] NULL,
	[Music_ID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 2020/6/15 18:29:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Users_ID] [int] IDENTITY(1,1) NOT NULL,
	[Users_Email] [nvarchar](50) NULL,
	[Users_Phone] [nvarchar](50) NULL,
	[Users_Name] [nvarchar](50) NULL,
	[Users_Pwd] [nvarchar](50) NULL,
	[Users_Img_Url] [nvarchar](50) NULL,
	[Users_Sex] [nvarchar](50) NULL,
	[Users_Age] [int] NULL,
	[Users_Sta_ID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Users_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Music] ON 

INSERT [dbo].[Music] ([Music_ID], [Category_ID], [Singer_ID], [Music_Url], [Music_Name], [Music_Img], [Music_Play_Count], [Music_Play_Sta_ID], [Music_Mv_Url], [Music_Mv_Name], [Music_Mv_Play_Count], [Add_Time]) VALUES (1, 1, 6, N'KoKoBop-EXO.mp3', N'Ko Ko Bop', N'1.jpg', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Music] ([Music_ID], [Category_ID], [Singer_ID], [Music_Url], [Music_Name], [Music_Img], [Music_Play_Count], [Music_Play_Sta_ID], [Music_Mv_Url], [Music_Mv_Name], [Music_Mv_Play_Count], [Add_Time]) VALUES (2, 1, 15, N'那女孩对我说-Uu.mp3', N'那女孩对我说', N'1.jpg', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Music] ([Music_ID], [Category_ID], [Singer_ID], [Music_Url], [Music_Name], [Music_Img], [Music_Play_Count], [Music_Play_Sta_ID], [Music_Mv_Url], [Music_Mv_Name], [Music_Mv_Play_Count], [Add_Time]) VALUES (3, 1, 17, N'你若三冬-阿悠悠.mp3', N'你若三冬', N'1.jpg', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Music] ([Music_ID], [Category_ID], [Singer_ID], [Music_Url], [Music_Name], [Music_Img], [Music_Play_Count], [Music_Play_Sta_ID], [Music_Mv_Url], [Music_Mv_Name], [Music_Mv_Play_Count], [Add_Time]) VALUES (4, 1, 19, N'月亮不睡你不睡-金6.mp3', N'月亮不睡你不睡', N'1.jpg', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Music] ([Music_ID], [Category_ID], [Singer_ID], [Music_Url], [Music_Name], [Music_Img], [Music_Play_Count], [Music_Play_Sta_ID], [Music_Mv_Url], [Music_Mv_Name], [Music_Mv_Play_Count], [Add_Time]) VALUES (5, 1, 20, N'爱你胜过爱自己-鞠红川.mp3', N'爱你胜过爱自己', N'1.jpg', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Music] ([Music_ID], [Category_ID], [Singer_ID], [Music_Url], [Music_Name], [Music_Img], [Music_Play_Count], [Music_Play_Sta_ID], [Music_Mv_Url], [Music_Mv_Name], [Music_Mv_Play_Count], [Add_Time]) VALUES (6, 1, 23, N'炸山姑娘-七音盒.mp3', N'炸山姑娘', N'1.jpg', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Music] ([Music_ID], [Category_ID], [Singer_ID], [Music_Url], [Music_Name], [Music_Img], [Music_Play_Count], [Music_Play_Sta_ID], [Music_Mv_Url], [Music_Mv_Name], [Music_Mv_Play_Count], [Add_Time]) VALUES (7, 1, 25, N'处处吻-杨千嬅.mp3', N'处处吻', N'1.jpg', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Music] ([Music_ID], [Category_ID], [Singer_ID], [Music_Url], [Music_Name], [Music_Img], [Music_Play_Count], [Music_Play_Sta_ID], [Music_Mv_Url], [Music_Mv_Name], [Music_Mv_Play_Count], [Add_Time]) VALUES (8, 1, 26, N'芒种-音阙诗听&赵方婧.mp3', N'芒种', N'1.jpg', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Music] ([Music_ID], [Category_ID], [Singer_ID], [Music_Url], [Music_Name], [Music_Img], [Music_Play_Count], [Music_Play_Sta_ID], [Music_Mv_Url], [Music_Mv_Name], [Music_Mv_Play_Count], [Add_Time]) VALUES (9, 1, 27, N'只是太爱你-张敬轩.mp3', N'只是太爱你', N'1.jpg', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Music] ([Music_ID], [Category_ID], [Singer_ID], [Music_Url], [Music_Name], [Music_Img], [Music_Play_Count], [Music_Play_Sta_ID], [Music_Mv_Url], [Music_Mv_Name], [Music_Mv_Play_Count], [Add_Time]) VALUES (10, 2, 2, N'KeepThisFireBurning-Bolier.mp3', N'Keep This Fire Burning', N'', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Music] ([Music_ID], [Category_ID], [Singer_ID], [Music_Url], [Music_Name], [Music_Img], [Music_Play_Count], [Music_Play_Sta_ID], [Music_Mv_Url], [Music_Mv_Name], [Music_Mv_Play_Count], [Add_Time]) VALUES (11, 2, 3, N'Hero-Cash.mp3', N'Hero', N'', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Music] ([Music_ID], [Category_ID], [Singer_ID], [Music_Url], [Music_Name], [Music_Img], [Music_Play_Count], [Music_Play_Sta_ID], [Music_Mv_Url], [Music_Mv_Name], [Music_Mv_Play_Count], [Add_Time]) VALUES (12, 2, 7, N'buttercup-Jack.mp3', N'buttercup', N'', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Music] ([Music_ID], [Category_ID], [Singer_ID], [Music_Url], [Music_Name], [Music_Img], [Music_Play_Count], [Music_Play_Sta_ID], [Music_Mv_Url], [Music_Mv_Name], [Music_Mv_Play_Count], [Add_Time]) VALUES (13, 2, 9, N'LoveSongs-KaashPaige&6LACK.mp3', N'Love Songs', N'', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Music] ([Music_ID], [Category_ID], [Singer_ID], [Music_Url], [Music_Name], [Music_Img], [Music_Play_Count], [Music_Play_Sta_ID], [Music_Mv_Url], [Music_Mv_Name], [Music_Mv_Play_Count], [Add_Time]) VALUES (14, 2, 10, N'Knockout-MartinTungevaag.mp3', N'Knockout', N'', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Music] ([Music_ID], [Category_ID], [Singer_ID], [Music_Url], [Music_Name], [Music_Img], [Music_Play_Count], [Music_Play_Sta_ID], [Music_Mv_Url], [Music_Mv_Name], [Music_Mv_Play_Count], [Add_Time]) VALUES (15, 2, 11, N'AllComesBackToYou-R3hab.mp3', N'All Comes Back To You', N'', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Music] ([Music_ID], [Category_ID], [Singer_ID], [Music_Url], [Music_Name], [Music_Img], [Music_Play_Count], [Music_Play_Sta_ID], [Music_Mv_Url], [Music_Mv_Name], [Music_Mv_Play_Count], [Add_Time]) VALUES (16, 2, 13, N'DaDaDa-Tanir&Tyomcha.mp3', N'Da Da Da', N'', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Music] ([Music_ID], [Category_ID], [Singer_ID], [Music_Url], [Music_Name], [Music_Img], [Music_Play_Count], [Music_Play_Sta_ID], [Music_Mv_Url], [Music_Mv_Name], [Music_Mv_Play_Count], [Add_Time]) VALUES (17, 2, 14, N'Fake-TheTechThieves.mp3', N'Fake', N'', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Music] ([Music_ID], [Category_ID], [Singer_ID], [Music_Url], [Music_Name], [Music_Img], [Music_Play_Count], [Music_Play_Sta_ID], [Music_Mv_Url], [Music_Mv_Name], [Music_Mv_Play_Count], [Add_Time]) VALUES (18, 2, 16, N'AintMyFault-Zara.mp3', N'Aint My Fault', N'', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Music] ([Music_ID], [Category_ID], [Singer_ID], [Music_Url], [Music_Name], [Music_Img], [Music_Play_Count], [Music_Play_Sta_ID], [Music_Mv_Url], [Music_Mv_Name], [Music_Mv_Play_Count], [Add_Time]) VALUES (19, 3, 1, N'PinkChampagne-ArianaGrande.mp3', N'Pink Champagne', N'', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Music] ([Music_ID], [Category_ID], [Singer_ID], [Music_Url], [Music_Name], [Music_Img], [Music_Play_Count], [Music_Play_Sta_ID], [Music_Mv_Url], [Music_Mv_Name], [Music_Mv_Play_Count], [Add_Time]) VALUES (20, 3, 4, N'PitbullTerrier-DieAntwoord.mp3', N'Pitbull Terrier', N'', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Music] ([Music_ID], [Category_ID], [Singer_ID], [Music_Url], [Music_Name], [Music_Img], [Music_Play_Count], [Music_Play_Sta_ID], [Music_Mv_Url], [Music_Mv_Name], [Music_Mv_Play_Count], [Add_Time]) VALUES (21, 3, 5, N'ShapeofYou-EdSheeran.mp3', N'Shapeof You', N'', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Music] ([Music_ID], [Category_ID], [Singer_ID], [Music_Url], [Music_Name], [Music_Img], [Music_Play_Count], [Music_Play_Sta_ID], [Music_Mv_Url], [Music_Mv_Name], [Music_Mv_Play_Count], [Add_Time]) VALUES (22, 3, 8, N'PleaseDontGo-JoelAdams.mp3', N'Please Dont Go', N'', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Music] ([Music_ID], [Category_ID], [Singer_ID], [Music_Url], [Music_Name], [Music_Img], [Music_Play_Count], [Music_Play_Sta_ID], [Music_Mv_Url], [Music_Mv_Name], [Music_Mv_Play_Count], [Add_Time]) VALUES (23, 3, 12, N'LoveYouLikeaLoveSong-SelenaGomez.mp3', N'Love You Likea Love Song', N'', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Music] ([Music_ID], [Category_ID], [Singer_ID], [Music_Url], [Music_Name], [Music_Img], [Music_Play_Count], [Music_Play_Sta_ID], [Music_Mv_Url], [Music_Mv_Name], [Music_Mv_Play_Count], [Add_Time]) VALUES (24, 3, 18, N'love9-江辰.mp3', N'love9', N'', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Music] ([Music_ID], [Category_ID], [Singer_ID], [Music_Url], [Music_Name], [Music_Img], [Music_Play_Count], [Music_Play_Sta_ID], [Music_Mv_Url], [Music_Mv_Name], [Music_Mv_Play_Count], [Add_Time]) VALUES (25, 3, 21, N'NOONE(Feat.B-李夏怡B.I.mp3', N'NOONE(Feat.B)', N'', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Music] ([Music_ID], [Category_ID], [Singer_ID], [Music_Url], [Music_Name], [Music_Img], [Music_Play_Count], [Music_Play_Sta_ID], [Music_Mv_Url], [Music_Mv_Name], [Music_Mv_Play_Count], [Add_Time]) VALUES (26, 3, 22, N'ShallWeChat-李行亮.mp3', N'Shall WeChat-李行亮', N'', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Music] ([Music_ID], [Category_ID], [Singer_ID], [Music_Url], [Music_Name], [Music_Img], [Music_Play_Count], [Music_Play_Sta_ID], [Music_Mv_Url], [Music_Mv_Name], [Music_Mv_Play_Count], [Add_Time]) VALUES (27, 3, 24, N'RinduSemalam-沈梦逸.mp3', N'Rindu Semalam', N'', NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Music] OFF
SET IDENTITY_INSERT [dbo].[Singer] ON 

INSERT [dbo].[Singer] ([Singer_ID], [Singer_Name], [Singer_area]) VALUES (1, N'Ariana Grande', N'中国')
INSERT [dbo].[Singer] ([Singer_ID], [Singer_Name], [Singer_area]) VALUES (2, N'Bolier', N'中国')
INSERT [dbo].[Singer] ([Singer_ID], [Singer_Name], [Singer_area]) VALUES (3, N'Cash', N'中国')
INSERT [dbo].[Singer] ([Singer_ID], [Singer_Name], [Singer_area]) VALUES (4, N'Die Antwoord', N'中国')
INSERT [dbo].[Singer] ([Singer_ID], [Singer_Name], [Singer_area]) VALUES (5, N'EdSheeran', N'中国')
INSERT [dbo].[Singer] ([Singer_ID], [Singer_Name], [Singer_area]) VALUES (6, N'EXO', N'中国')
INSERT [dbo].[Singer] ([Singer_ID], [Singer_Name], [Singer_area]) VALUES (7, N'Jack', N'中国')
INSERT [dbo].[Singer] ([Singer_ID], [Singer_Name], [Singer_area]) VALUES (8, N'Joel Adams', N'中国')
INSERT [dbo].[Singer] ([Singer_ID], [Singer_Name], [Singer_area]) VALUES (9, N'Kaash Paige&6LACK', N'中国')
INSERT [dbo].[Singer] ([Singer_ID], [Singer_Name], [Singer_area]) VALUES (10, N'Martin Tungevaag', N'中国')
INSERT [dbo].[Singer] ([Singer_ID], [Singer_Name], [Singer_area]) VALUES (11, N'R3hab', N'英国')
INSERT [dbo].[Singer] ([Singer_ID], [Singer_Name], [Singer_area]) VALUES (12, N'SelenaGomez', N'中国')
INSERT [dbo].[Singer] ([Singer_ID], [Singer_Name], [Singer_area]) VALUES (13, N'Tanir&Tyomcha', N'中国')
INSERT [dbo].[Singer] ([Singer_ID], [Singer_Name], [Singer_area]) VALUES (14, N'The Tech Thieves', N'中国')
INSERT [dbo].[Singer] ([Singer_ID], [Singer_Name], [Singer_area]) VALUES (15, N'Uu', N'中国')
INSERT [dbo].[Singer] ([Singer_ID], [Singer_Name], [Singer_area]) VALUES (16, N'Zara', N'英国')
INSERT [dbo].[Singer] ([Singer_ID], [Singer_Name], [Singer_area]) VALUES (17, N'阿悠悠', N'中国')
INSERT [dbo].[Singer] ([Singer_ID], [Singer_Name], [Singer_area]) VALUES (18, N'江辰', N'中国')
INSERT [dbo].[Singer] ([Singer_ID], [Singer_Name], [Singer_area]) VALUES (19, N'金6', N'中国')
INSERT [dbo].[Singer] ([Singer_ID], [Singer_Name], [Singer_area]) VALUES (20, N'鞠红川', N'中国')
INSERT [dbo].[Singer] ([Singer_ID], [Singer_Name], [Singer_area]) VALUES (21, N'李夏怡', N'中国')
INSERT [dbo].[Singer] ([Singer_ID], [Singer_Name], [Singer_area]) VALUES (22, N'李行亮', N'中国')
INSERT [dbo].[Singer] ([Singer_ID], [Singer_Name], [Singer_area]) VALUES (23, N'七音盒', N'中国')
INSERT [dbo].[Singer] ([Singer_ID], [Singer_Name], [Singer_area]) VALUES (24, N'沈梦逸', N'中国')
INSERT [dbo].[Singer] ([Singer_ID], [Singer_Name], [Singer_area]) VALUES (25, N'杨千嬅', N'中国')
INSERT [dbo].[Singer] ([Singer_ID], [Singer_Name], [Singer_area]) VALUES (26, N'音阙诗听&赵方婧', N'中国')
INSERT [dbo].[Singer] ([Singer_ID], [Singer_Name], [Singer_area]) VALUES (27, N'张敬轩', N'中国')
SET IDENTITY_INSERT [dbo].[Singer] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Users_ID], [Users_Email], [Users_Phone], [Users_Name], [Users_Pwd], [Users_Img_Url], [Users_Sex], [Users_Age], [Users_Sta_ID]) VALUES (1, N'1', N'1', N'1', N'1', N'1', N'1', 1, 0)
SET IDENTITY_INSERT [dbo].[Users] OFF
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [Users_Sta_ID]
GO
/****** Object:  StoredProcedure [dbo].[sel_music_singer_all]    Script Date: 2020/6/15 18:29:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sel_music_singer_all]
as
select m.*,s.Singer_Name,s.Singer_area from Music m,Singer s where s.Singer_ID = m.Singer_ID
GO
USE [master]
GO
ALTER DATABASE [shuifeng] SET  READ_WRITE 
GO
