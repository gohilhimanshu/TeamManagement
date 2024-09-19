USE [master]
GO
/****** Object:  Database [TeamManagement]    Script Date: 19-09-2024 7.22.31 PM ******/
CREATE DATABASE [TeamManagement]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TeamManagement', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\TeamManagement.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TeamManagement_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\TeamManagement_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [TeamManagement] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TeamManagement].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TeamManagement] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TeamManagement] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TeamManagement] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TeamManagement] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TeamManagement] SET ARITHABORT OFF 
GO
ALTER DATABASE [TeamManagement] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TeamManagement] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TeamManagement] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TeamManagement] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TeamManagement] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TeamManagement] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TeamManagement] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TeamManagement] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TeamManagement] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TeamManagement] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TeamManagement] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TeamManagement] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TeamManagement] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TeamManagement] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TeamManagement] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TeamManagement] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TeamManagement] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TeamManagement] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TeamManagement] SET  MULTI_USER 
GO
ALTER DATABASE [TeamManagement] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TeamManagement] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TeamManagement] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TeamManagement] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TeamManagement] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TeamManagement] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [TeamManagement] SET QUERY_STORE = OFF
GO
USE [TeamManagement]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 19-09-2024 7.22.31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[DepartmentId] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentName] [varchar](150) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[DepartmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 19-09-2024 7.22.31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[EmployeeId] [int] IDENTITY(1,1) NOT NULL,
	[EmpName] [varchar](150) NOT NULL,
	[DepartmentId] [int] NOT NULL,
	[Salary] [decimal](18, 2) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Department] ON 
GO
INSERT [dbo].[Department] ([DepartmentId], [DepartmentName], [CreatedDate], [ModifiedDate]) VALUES (1, N'Human Resources', CAST(N'2024-09-19T18:34:56.127' AS DateTime), NULL)
GO
INSERT [dbo].[Department] ([DepartmentId], [DepartmentName], [CreatedDate], [ModifiedDate]) VALUES (2, N'Finance', CAST(N'2024-09-19T18:34:56.127' AS DateTime), NULL)
GO
INSERT [dbo].[Department] ([DepartmentId], [DepartmentName], [CreatedDate], [ModifiedDate]) VALUES (3, N'IT', CAST(N'2024-09-19T18:34:56.127' AS DateTime), NULL)
GO
INSERT [dbo].[Department] ([DepartmentId], [DepartmentName], [CreatedDate], [ModifiedDate]) VALUES (4, N'Marketing', CAST(N'2024-09-19T18:34:56.127' AS DateTime), NULL)
GO
SET IDENTITY_INSERT [dbo].[Department] OFF
GO
SET IDENTITY_INSERT [dbo].[Employee] ON 
GO
INSERT [dbo].[Employee] ([EmployeeId], [EmpName], [DepartmentId], [Salary], [CreatedDate], [ModifiedDate]) VALUES (1, N'John Doe', 1, CAST(55000.00 AS Decimal(18, 2)), CAST(N'2024-09-19T18:35:19.143' AS DateTime), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeId], [EmpName], [DepartmentId], [Salary], [CreatedDate], [ModifiedDate]) VALUES (2, N'Jane Smith', 2, CAST(60000.00 AS Decimal(18, 2)), CAST(N'2024-09-19T18:35:19.143' AS DateTime), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeId], [EmpName], [DepartmentId], [Salary], [CreatedDate], [ModifiedDate]) VALUES (3, N'Mark Johnson', 3, CAST(65000.00 AS Decimal(18, 2)), CAST(N'2024-09-19T18:35:19.143' AS DateTime), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeId], [EmpName], [DepartmentId], [Salary], [CreatedDate], [ModifiedDate]) VALUES (4, N'Emily Davis', 4, CAST(50000.00 AS Decimal(18, 2)), CAST(N'2024-09-19T18:35:19.143' AS DateTime), NULL)
GO
SET IDENTITY_INSERT [dbo].[Employee] OFF
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Department] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Department] ([DepartmentId])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Department]
GO
USE [master]
GO
ALTER DATABASE [TeamManagement] SET  READ_WRITE 
GO
