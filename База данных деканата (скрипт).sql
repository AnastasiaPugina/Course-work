USE [master]
GO
/****** Object:  Database [DB_Deanery]    Script Date: 19.02.2021 18:03:09 ******/
CREATE DATABASE [DB_Deanery]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DB_Deanery', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\DB_Deanery.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DB_Deanery_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\DB_Deanery_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DB_Deanery] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DB_Deanery].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DB_Deanery] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DB_Deanery] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DB_Deanery] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DB_Deanery] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DB_Deanery] SET ARITHABORT OFF 
GO
ALTER DATABASE [DB_Deanery] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [DB_Deanery] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DB_Deanery] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DB_Deanery] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DB_Deanery] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DB_Deanery] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DB_Deanery] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DB_Deanery] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DB_Deanery] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DB_Deanery] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DB_Deanery] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DB_Deanery] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DB_Deanery] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DB_Deanery] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DB_Deanery] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DB_Deanery] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DB_Deanery] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DB_Deanery] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DB_Deanery] SET  MULTI_USER 
GO
ALTER DATABASE [DB_Deanery] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DB_Deanery] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DB_Deanery] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DB_Deanery] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DB_Deanery] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DB_Deanery] SET QUERY_STORE = OFF
GO
USE [DB_Deanery]
GO
/****** Object:  User [Users          ]    Script Date: 19.02.2021 18:03:11 ******/
CREATE USER [Users          ] FOR LOGIN [Users          ] WITH DEFAULT_SCHEMA=[Users          ]
GO
/****** Object:  User [User           ]    Script Date: 19.02.2021 18:03:11 ******/
CREATE USER [User           ] FOR LOGIN [User           ] WITH DEFAULT_SCHEMA=[User           ]
GO
/****** Object:  User [Use            ]    Script Date: 19.02.2021 18:03:11 ******/
CREATE USER [Use            ] FOR LOGIN [Use            ] WITH DEFAULT_SCHEMA=[Use            ]
GO
/****** Object:  User [u              ]    Script Date: 19.02.2021 18:03:11 ******/
CREATE USER [u              ] FOR LOGIN [u              ] WITH DEFAULT_SCHEMA=[u              ]
GO
/****** Object:  User [myusers        ]    Script Date: 19.02.2021 18:03:11 ******/
CREATE USER [myusers        ] FOR LOGIN [myusers        ] WITH DEFAULT_SCHEMA=[myusers        ]
GO
/****** Object:  Schema [myusers        ]    Script Date: 19.02.2021 18:03:11 ******/
CREATE SCHEMA [myusers        ]
GO
/****** Object:  Schema [u              ]    Script Date: 19.02.2021 18:03:11 ******/
CREATE SCHEMA [u              ]
GO
/****** Object:  Schema [Use            ]    Script Date: 19.02.2021 18:03:11 ******/
CREATE SCHEMA [Use            ]
GO
/****** Object:  Schema [User           ]    Script Date: 19.02.2021 18:03:11 ******/
CREATE SCHEMA [User           ]
GO
/****** Object:  Schema [Users          ]    Script Date: 19.02.2021 18:03:11 ******/
CREATE SCHEMA [Users          ]
GO
/****** Object:  Table [dbo].[Curriculum]    Script Date: 19.02.2021 18:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Curriculum](
	[Id_plan] [int] NOT NULL,
	[Title] [varchar](10) NOT NULL,
	[Id_sub] [int] NOT NULL,
	[Offset] [bit] NOT NULL,
	[Exam] [bit] NOT NULL,
	[Semester] [int] NOT NULL,
	[Course_work] [bit] NULL,
	[Course_project] [bit] NULL,
 CONSTRAINT [PK__Curricul__5D7EF159DB6530AA] PRIMARY KEY CLUSTERED 
(
	[Id_plan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Groups]    Script Date: 19.02.2021 18:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Groups](
	[Title] [varchar](10) NOT NULL,
	[Course] [int] NOT NULL,
	[Specialty] [varchar](30) NOT NULL,
	[Curator] [varchar](40) NOT NULL,
	[Elder] [varchar](40) NOT NULL,
 CONSTRAINT [PK__Groups__2CB664DD3A2D103B] PRIMARY KEY CLUSTERED 
(
	[Title] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Result_Session]    Script Date: 19.02.2021 18:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Result_Session](
	[Id_stud] [int] NOT NULL,
	[Id_sub] [int] NOT NULL,
	[Date_exam] [datetime] NOT NULL,
	[Mark] [int] NOT NULL,
	[Semester] [int] NOT NULL,
 CONSTRAINT [PK__Result_S__732922CAAE014030] PRIMARY KEY CLUSTERED 
(
	[Id_stud] ASC,
	[Id_sub] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 19.02.2021 18:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[Id_stud] [int] NOT NULL,
	[FIO] [varchar](50) NOT NULL,
	[Title] [varchar](10) NOT NULL,
	[Addres] [varchar](100) NOT NULL,
	[Tel] [bigint] NOT NULL,
	[Date_birth] [datetime] NOT NULL,
 CONSTRAINT [PK__Students__C1FB5B0B5652B21C] PRIMARY KEY CLUSTERED 
(
	[Id_stud] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subjects]    Script Date: 19.02.2021 18:03:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subjects](
	[Title_sub] [varchar](20) NOT NULL,
	[Id_sub] [int] NOT NULL,
	[Professor] [varchar](40) NOT NULL,
 CONSTRAINT [PK__Subjects__2D279C1A664EC519] PRIMARY KEY CLUSTERED 
(
	[Id_sub] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Curriculum] ([Id_plan], [Title], [Id_sub], [Offset], [Exam], [Semester], [Course_work], [Course_project]) VALUES (5, N'ВТ-119', 8, 0, 1, 1, 0, 0)
INSERT [dbo].[Curriculum] ([Id_plan], [Title], [Id_sub], [Offset], [Exam], [Semester], [Course_work], [Course_project]) VALUES (6, N'ВТ-119', 2, 1, 0, 1, 1, 0)
INSERT [dbo].[Curriculum] ([Id_plan], [Title], [Id_sub], [Offset], [Exam], [Semester], [Course_work], [Course_project]) VALUES (7, N'ВТ-119', 5, 1, 0, 1, 0, 0)
INSERT [dbo].[Curriculum] ([Id_plan], [Title], [Id_sub], [Offset], [Exam], [Semester], [Course_work], [Course_project]) VALUES (8, N'ВТ-119', 3, 0, 1, 1, 0, 0)
INSERT [dbo].[Curriculum] ([Id_plan], [Title], [Id_sub], [Offset], [Exam], [Semester], [Course_work], [Course_project]) VALUES (9, N'ВТ-119', 1, 0, 1, 1, 0, 0)
INSERT [dbo].[Curriculum] ([Id_plan], [Title], [Id_sub], [Offset], [Exam], [Semester], [Course_work], [Course_project]) VALUES (11, N'ИСТ-118', 1, 0, 1, 3, 0, 0)
INSERT [dbo].[Curriculum] ([Id_plan], [Title], [Id_sub], [Offset], [Exam], [Semester], [Course_work], [Course_project]) VALUES (12, N'ИБ-117', 10, 0, 1, 5, 0, 0)
INSERT [dbo].[Curriculum] ([Id_plan], [Title], [Id_sub], [Offset], [Exam], [Semester], [Course_work], [Course_project]) VALUES (13, N'ПИпб-119', 7, 0, 1, 2, 0, 0)
GO
INSERT [dbo].[Groups] ([Title], [Course], [Specialty], [Curator], [Elder]) VALUES (N'ВТ-119', 2, N'Вычислительная техника', N'Коровин Борис Вениаминович', N'Пересветов Сергей Петрович')
INSERT [dbo].[Groups] ([Title], [Course], [Specialty], [Curator], [Elder]) VALUES (N'ИБ-117', 3, N'Информационная безопасность', N'Азимов Владимир Михайлович', N'Петровская Алена Дмитриевна')
INSERT [dbo].[Groups] ([Title], [Course], [Specialty], [Curator], [Elder]) VALUES (N'ИСТ-118', 3, N'Информационные системы', N'Цветков Владимир Иванович', N'Алексеев Дмитрий Олегович')
INSERT [dbo].[Groups] ([Title], [Course], [Specialty], [Curator], [Elder]) VALUES (N'ПИпб-118', 3, N'Прикладная информатика', N'Смирнов Максим Владимирович', N'Бакалова Елена Борисовна')
INSERT [dbo].[Groups] ([Title], [Course], [Specialty], [Curator], [Elder]) VALUES (N'ПИпб-119', 1, N'Прикладная информатика', N'Цветков Владимир Иванович', N'Александрова Ольга Сергеевна')
INSERT [dbo].[Groups] ([Title], [Course], [Specialty], [Curator], [Elder]) VALUES (N'ПРИ-119', 1, N'Программная инженерия', N'Иванов Василий Петрович', N'Комарова Елизавета Андреевна')
GO
INSERT [dbo].[Result_Session] ([Id_stud], [Id_sub], [Date_exam], [Mark], [Semester]) VALUES (3, 1, CAST(N'2020-01-22T00:00:00.000' AS DateTime), 2, 1)
INSERT [dbo].[Result_Session] ([Id_stud], [Id_sub], [Date_exam], [Mark], [Semester]) VALUES (3, 5, CAST(N'2020-01-26T00:00:00.000' AS DateTime), 4, 1)
INSERT [dbo].[Result_Session] ([Id_stud], [Id_sub], [Date_exam], [Mark], [Semester]) VALUES (5, 1, CAST(N'2020-01-24T00:00:00.000' AS DateTime), 3, 3)
INSERT [dbo].[Result_Session] ([Id_stud], [Id_sub], [Date_exam], [Mark], [Semester]) VALUES (5, 3, CAST(N'2020-01-21T00:00:00.000' AS DateTime), 4, 5)
INSERT [dbo].[Result_Session] ([Id_stud], [Id_sub], [Date_exam], [Mark], [Semester]) VALUES (6, 1, CAST(N'2020-01-22T00:00:00.000' AS DateTime), 4, 1)
INSERT [dbo].[Result_Session] ([Id_stud], [Id_sub], [Date_exam], [Mark], [Semester]) VALUES (6, 3, CAST(N'2020-01-26T00:00:00.000' AS DateTime), 5, 1)
INSERT [dbo].[Result_Session] ([Id_stud], [Id_sub], [Date_exam], [Mark], [Semester]) VALUES (6, 4, CAST(N'2020-01-23T00:00:00.000' AS DateTime), 5, 1)
INSERT [dbo].[Result_Session] ([Id_stud], [Id_sub], [Date_exam], [Mark], [Semester]) VALUES (7, 1, CAST(N'2020-01-23T00:00:00.000' AS DateTime), 5, 1)
INSERT [dbo].[Result_Session] ([Id_stud], [Id_sub], [Date_exam], [Mark], [Semester]) VALUES (8, 1, CAST(N'2020-01-23T00:00:00.000' AS DateTime), 5, 1)
INSERT [dbo].[Result_Session] ([Id_stud], [Id_sub], [Date_exam], [Mark], [Semester]) VALUES (9, 10, CAST(N'2020-01-24T00:00:00.000' AS DateTime), 5, 5)
INSERT [dbo].[Result_Session] ([Id_stud], [Id_sub], [Date_exam], [Mark], [Semester]) VALUES (11, 7, CAST(N'2020-06-16T00:00:00.000' AS DateTime), 4, 2)
GO
INSERT [dbo].[Students] ([Id_stud], [FIO], [Title], [Addres], [Tel], [Date_birth]) VALUES (3, N'Пересветов Сергей Петрович', N'ВТ-119', N'Гороховец улица Дегтярева дом 15 квартира 70', 89100763425, CAST(N'2001-07-16T00:00:00.000' AS DateTime))
INSERT [dbo].[Students] ([Id_stud], [FIO], [Title], [Addres], [Tel], [Date_birth]) VALUES (5, N'Бунин Илья Федорович', N'ИСТ-118', N'Москва улица Гастелло дом 18 квартира 45', 89106716544, CAST(N'2000-09-12T00:00:00.000' AS DateTime))
INSERT [dbo].[Students] ([Id_stud], [FIO], [Title], [Addres], [Tel], [Date_birth]) VALUES (6, N'Соловьева Ирина Сергеевна', N'ВТ-119', N'Ковров улица Генералова дом 10 квартира 17', 89191768974, CAST(N'2001-10-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Students] ([Id_stud], [FIO], [Title], [Addres], [Tel], [Date_birth]) VALUES (7, N'Комарова Елизавета Андреевна', N'ПРИ-119', N'Гороховец улица Мира дом 15 квартира 36', 89100234756, CAST(N'2001-05-19T00:00:00.000' AS DateTime))
INSERT [dbo].[Students] ([Id_stud], [FIO], [Title], [Addres], [Tel], [Date_birth]) VALUES (8, N'Елизаров Николай Алексеевич', N'ПРИ-119', N'Вязники улица Правды дом 10 квартира 6', 89065732457, CAST(N'2001-08-15T00:00:00.000' AS DateTime))
INSERT [dbo].[Students] ([Id_stud], [FIO], [Title], [Addres], [Tel], [Date_birth]) VALUES (9, N'Петровская Алена Дмитриевна', N'ИБ-117', N'Ковров улица Свердлова дом 23 квартира 15', 89100956875, CAST(N'1999-09-15T00:00:00.000' AS DateTime))
INSERT [dbo].[Students] ([Id_stud], [FIO], [Title], [Addres], [Tel], [Date_birth]) VALUES (10, N'Светлякова Алина Васильевна', N'ПИпб-118', N'Ковров улица Генералова дом 10 квартира 17', 89100884567, CAST(N'1999-10-20T00:00:00.000' AS DateTime))
INSERT [dbo].[Students] ([Id_stud], [FIO], [Title], [Addres], [Tel], [Date_birth]) VALUES (11, N'Александрова Ольга Сергеевна', N'ПИпб-119', N'Владимир проспект Строителей дом 18 квартира 16', 89106715746, CAST(N'2001-07-19T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Subjects] ([Title_sub], [Id_sub], [Professor]) VALUES (N'Математика', 1, N'Николаев Василий Андреевич')
INSERT [dbo].[Subjects] ([Title_sub], [Id_sub], [Professor]) VALUES (N'История', 2, N'Васильева Ольга Викторовна')
INSERT [dbo].[Subjects] ([Title_sub], [Id_sub], [Professor]) VALUES (N'Информатика', 3, N'Белов Алексей Петрович')
INSERT [dbo].[Subjects] ([Title_sub], [Id_sub], [Professor]) VALUES (N'Экономика', 4, N'Смирнов Максим Владимирович')
INSERT [dbo].[Subjects] ([Title_sub], [Id_sub], [Professor]) VALUES (N'Правоведение ', 5, N'Александрова Ирина Андреевна')
INSERT [dbo].[Subjects] ([Title_sub], [Id_sub], [Professor]) VALUES (N'Программирование ', 6, N'Петрова Светлана Владимировна')
INSERT [dbo].[Subjects] ([Title_sub], [Id_sub], [Professor]) VALUES (N'ИС', 7, N'Цветков Владимир Иванович')
INSERT [dbo].[Subjects] ([Title_sub], [Id_sub], [Professor]) VALUES (N'Электротехника', 8, N'Коровин Борис Вениаминович')
INSERT [dbo].[Subjects] ([Title_sub], [Id_sub], [Professor]) VALUES (N'Программирование ЯВУ', 9, N'Иванов Василий Петрович')
INSERT [dbo].[Subjects] ([Title_sub], [Id_sub], [Professor]) VALUES (N'ИБ', 10, N'Азимов Владимир Михайлович')
GO
ALTER TABLE [dbo].[Curriculum]  WITH CHECK ADD  CONSTRAINT [FK__Curriculu__Id_su__3B75D760] FOREIGN KEY([Id_sub])
REFERENCES [dbo].[Subjects] ([Id_sub])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Curriculum] CHECK CONSTRAINT [FK__Curriculu__Id_su__3B75D760]
GO
ALTER TABLE [dbo].[Curriculum]  WITH CHECK ADD  CONSTRAINT [FK__Curriculu__Title__3A81B327] FOREIGN KEY([Title])
REFERENCES [dbo].[Groups] ([Title])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Curriculum] CHECK CONSTRAINT [FK__Curriculu__Title__3A81B327]
GO
ALTER TABLE [dbo].[Result_Session]  WITH CHECK ADD  CONSTRAINT [FK__Result_Se__Id_st__412EB0B6] FOREIGN KEY([Id_stud])
REFERENCES [dbo].[Students] ([Id_stud])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Result_Session] CHECK CONSTRAINT [FK__Result_Se__Id_st__412EB0B6]
GO
ALTER TABLE [dbo].[Result_Session]  WITH CHECK ADD  CONSTRAINT [FK__Result_Se__Id_su__4222D4EF] FOREIGN KEY([Id_sub])
REFERENCES [dbo].[Subjects] ([Id_sub])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Result_Session] CHECK CONSTRAINT [FK__Result_Se__Id_su__4222D4EF]
GO
ALTER TABLE [dbo].[Students]  WITH CHECK ADD  CONSTRAINT [FK__Students__Title__3E52440B] FOREIGN KEY([Title])
REFERENCES [dbo].[Groups] ([Title])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [FK__Students__Title__3E52440B]
GO
ALTER TABLE [dbo].[Curriculum]  WITH CHECK ADD  CONSTRAINT [CK_Curriculum] CHECK  (([Semester]>(0) AND [Semester]<=(8)))
GO
ALTER TABLE [dbo].[Curriculum] CHECK CONSTRAINT [CK_Curriculum]
GO
ALTER TABLE [dbo].[Groups]  WITH CHECK ADD  CONSTRAINT [CK_Groups] CHECK  (([Course]>(0) AND [Course]<=(5)))
GO
ALTER TABLE [dbo].[Groups] CHECK CONSTRAINT [CK_Groups]
GO
ALTER TABLE [dbo].[Result_Session]  WITH CHECK ADD  CONSTRAINT [CK_Result_Session] CHECK  (([Mark]>(1) AND [Mark]<=(5)))
GO
ALTER TABLE [dbo].[Result_Session] CHECK CONSTRAINT [CK_Result_Session]
GO
ALTER TABLE [dbo].[Result_Session]  WITH CHECK ADD  CONSTRAINT [CK_Result_Session_1] CHECK  (([Semester]>(0) AND [Semester]<=(8)))
GO
ALTER TABLE [dbo].[Result_Session] CHECK CONSTRAINT [CK_Result_Session_1]
GO
ALTER TABLE [dbo].[Students]  WITH CHECK ADD  CONSTRAINT [tel_check] CHECK  (([Tel] like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'))
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [tel_check]
GO
/****** Object:  StoredProcedure [dbo].[addlogin1]    Script Date: 19.02.2021 18:03:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[addlogin1]  @login_ char(15), @password1 char(15) 
AS 
exec sp_addlogin @login_,@password1,'DB_Deanery' 
exec sp_adduser @login_,@login_ 
GO
/****** Object:  StoredProcedure [dbo].[grantlogin]    Script Date: 19.02.2021 18:03:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[grantlogin]
@text1 char(250)
AS
declare @SQLString nvarchar(250)
SET @SQLString =  CAST( @text1 AS NVARCHAR(250) )
EXECUTE sp_executesql @SQLString 
GO
/****** Object:  StoredProcedure [dbo].[notpass]    Script Date: 19.02.2021 18:03:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[notpass]
@dat1 DateTime,
@dat2 DateTime,
@count Int Output
AS
SELECT DISTINCT @count=COUNT(Students.Id_stud)
FROM Students INNER JOIN Result_Session ON Students.Id_stud=Result_Session.Id_stud
WHERE (Date_exam Between @dat1 And @dat2) And Students.Id_stud IN (
      SELECT DISTINCT Result_Session.Id_stud
	  FROM Result_Session
	  WHERE Mark=2)
	  SET @count=ISNULL(@count,0)
GO
/****** Object:  StoredProcedure [dbo].[Plans]    Script Date: 19.02.2021 18:03:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Plans]
@specialties Varchar(30), 
@semesters Int
AS
  SELECT Specialty, Semester, Title_sub, Id_plan, Groups.Title, Offset, Exam, Course_work, Course_project
  FROM Groups, Subjects, Curriculum
  WHERE Specialty=@specialties And Semester=@semesters And Groups.Title=Curriculum.Title And Subjects.Id_sub=Curriculum.Id_sub
GO
/****** Object:  StoredProcedure [dbo].[Statements]    Script Date: 19.02.2021 18:03:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Statements]
@groupa Varchar(10), 
@sub Varchar(20),
@sem Int
AS
  SELECT FIO, Title, Title_sub, Date_exam, Mark, Semester
  FROM Students, Subjects, Result_Session
  WHERE @sem=Semester And @groupa=Title And 
  @sub=Title_sub And Students.Id_stud=Result_Session.Id_stud And Subjects.Id_sub=Result_Session.Id_sub
GO
/****** Object:  StoredProcedure [dbo].[Stud]    Script Date: 19.02.2021 18:03:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Stud]
@name Varchar(50)
AS
  SELECT *
  FROM Students
  WHERE FIO=@name
GO
USE [master]
GO
ALTER DATABASE [DB_Deanery] SET  READ_WRITE 
GO
