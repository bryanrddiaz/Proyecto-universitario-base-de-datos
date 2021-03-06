USE [master]
GO
/****** Nombre: Gustavo Fitzgerald Ortega Almonte   Matricula: 16-MIIN-1-032 Seccion: 0541 ******/

/****** Nombre: Bryan Eduardo Rodriguez Diaz        Matricula: 16-MIIN-1-031 Seccion: 0541 ******/

/****** Nombre: Jefry Gabriel Bautista Valdez       Matricula: 16-MIIN-1-039 Seccion: 0541 ******/

CREATE DATABASE [DistribuidoraBD]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DistribuidoraBD', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\DistribuidoraBD.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DistribuidoraBD_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\DistribuidoraBD_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [DistribuidoraBD] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DistribuidoraBD].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DistribuidoraBD] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DistribuidoraBD] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DistribuidoraBD] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DistribuidoraBD] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DistribuidoraBD] SET ARITHABORT OFF 
GO
ALTER DATABASE [DistribuidoraBD] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DistribuidoraBD] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DistribuidoraBD] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DistribuidoraBD] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DistribuidoraBD] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DistribuidoraBD] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DistribuidoraBD] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DistribuidoraBD] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DistribuidoraBD] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DistribuidoraBD] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DistribuidoraBD] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DistribuidoraBD] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DistribuidoraBD] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DistribuidoraBD] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DistribuidoraBD] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DistribuidoraBD] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DistribuidoraBD] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DistribuidoraBD] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DistribuidoraBD] SET  MULTI_USER 
GO
ALTER DATABASE [DistribuidoraBD] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DistribuidoraBD] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DistribuidoraBD] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DistribuidoraBD] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DistribuidoraBD] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DistribuidoraBD] SET QUERY_STORE = OFF
GO
USE [DistribuidoraBD]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [DistribuidoraBD]
GO
/****** Object:  Table [dbo].[Articulo]    Script Date: 4/12/2017 10:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Articulo](
	[CodigoArticulo] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](100) NULL,
	[Fabricante] [int] NULL,
	[Precio] [int] NULL,
 CONSTRAINT [PK_Articulo] PRIMARY KEY CLUSTERED 
(
	[CodigoArticulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 4/12/2017 10:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[CodigoCliente] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](100) NULL,
	[RNC] [int] NULL,
	[CodigoArticulo] [int] NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[CodigoCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fabricante]    Script Date: 4/12/2017 10:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fabricante](
	[CodigoFabricante] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](100) NULL,
 CONSTRAINT [PK_Fabricante] PRIMARY KEY CLUSTERED 
(
	[CodigoFabricante] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Articulo] ON 

INSERT [dbo].[Articulo] ([CodigoArticulo], [Nombre], [Fabricante], [Precio]) VALUES (1, N'Brugal Añejo', 1, 14000)
INSERT [dbo].[Articulo] ([CodigoArticulo], [Nombre], [Fabricante], [Precio]) VALUES (2, N'Presidente pequeña', 2, 1200)
INSERT [dbo].[Articulo] ([CodigoArticulo], [Nombre], [Fabricante], [Precio]) VALUES (3, N'Espaguetis princesa', 3, 400)
INSERT [dbo].[Articulo] ([CodigoArticulo], [Nombre], [Fabricante], [Precio]) VALUES (4, N'Papel de baño', 4, 300)
INSERT [dbo].[Articulo] ([CodigoArticulo], [Nombre], [Fabricante], [Precio]) VALUES (5, N'lays', 5, 500)
INSERT [dbo].[Articulo] ([CodigoArticulo], [Nombre], [Fabricante], [Precio]) VALUES (6, N'Vino la fuerza', 6, 8000)
INSERT [dbo].[Articulo] ([CodigoArticulo], [Nombre], [Fabricante], [Precio]) VALUES (7, N'Paletas de chocolate', 7, 5000)
INSERT [dbo].[Articulo] ([CodigoArticulo], [Nombre], [Fabricante], [Precio]) VALUES (8, N'Aguas saborizada', 8, 2500)
INSERT [dbo].[Articulo] ([CodigoArticulo], [Nombre], [Fabricante], [Precio]) VALUES (9, N'Arroz la garza', 9, 20000)
INSERT [dbo].[Articulo] ([CodigoArticulo], [Nombre], [Fabricante], [Precio]) VALUES (10, N'Jugo rica grande', 10, NULL)
SET IDENTITY_INSERT [dbo].[Articulo] OFF
SET IDENTITY_INSERT [dbo].[Cliente] ON 

INSERT [dbo].[Cliente] ([CodigoCliente], [Nombre], [RNC], [CodigoArticulo]) VALUES (1, N'Maria Perez A.', 123457896, 1)
INSERT [dbo].[Cliente] ([CodigoCliente], [Nombre], [RNC], [CodigoArticulo]) VALUES (2, N'Juliana Torrez M.', 456756249, 2)
INSERT [dbo].[Cliente] ([CodigoCliente], [Nombre], [RNC], [CodigoArticulo]) VALUES (3, N'Juan Solano F.', 845612354, 3)
INSERT [dbo].[Cliente] ([CodigoCliente], [Nombre], [RNC], [CodigoArticulo]) VALUES (4, N'Pedro Perez M.', 846421369, 4)
INSERT [dbo].[Cliente] ([CodigoCliente], [Nombre], [RNC], [CodigoArticulo]) VALUES (5, N'Maria Luisa A.', 246868465, 5)
INSERT [dbo].[Cliente] ([CodigoCliente], [Nombre], [RNC], [CodigoArticulo]) VALUES (6, N'Lucia Campusano U.', 897894654, 6)
INSERT [dbo].[Cliente] ([CodigoCliente], [Nombre], [RNC], [CodigoArticulo]) VALUES (7, N'Orlando Ariaga', 984546244, 7)
INSERT [dbo].[Cliente] ([CodigoCliente], [Nombre], [RNC], [CodigoArticulo]) VALUES (8, N'Pedro Suarez ', 879456548, 8)
INSERT [dbo].[Cliente] ([CodigoCliente], [Nombre], [RNC], [CodigoArticulo]) VALUES (9, N'Fernando Ortega', 895465856, 9)
INSERT [dbo].[Cliente] ([CodigoCliente], [Nombre], [RNC], [CodigoArticulo]) VALUES (10, N'Lucy Almonte', 987986546, 10)
SET IDENTITY_INSERT [dbo].[Cliente] OFF
SET IDENTITY_INSERT [dbo].[Fabricante] ON 

INSERT [dbo].[Fabricante] ([CodigoFabricante], [Nombre]) VALUES (1, N'Brugal')
INSERT [dbo].[Fabricante] ([CodigoFabricante], [Nombre]) VALUES (2, N'Cerveceria Nacional')
INSERT [dbo].[Fabricante] ([CodigoFabricante], [Nombre]) VALUES (3, N'Princesa')
INSERT [dbo].[Fabricante] ([CodigoFabricante], [Nombre]) VALUES (4, N'Industrias CxA')
INSERT [dbo].[Fabricante] ([CodigoFabricante], [Nombre]) VALUES (5, N'Frito lay')
INSERT [dbo].[Fabricante] ([CodigoFabricante], [Nombre]) VALUES (6, N'Vinos SA')
INSERT [dbo].[Fabricante] ([CodigoFabricante], [Nombre]) VALUES (7, N'Bon')
INSERT [dbo].[Fabricante] ([CodigoFabricante], [Nombre]) VALUES (8, N'Dasani')
INSERT [dbo].[Fabricante] ([CodigoFabricante], [Nombre]) VALUES (9, N'La Garza')
INSERT [dbo].[Fabricante] ([CodigoFabricante], [Nombre]) VALUES (10, N'Rica CxA')
SET IDENTITY_INSERT [dbo].[Fabricante] OFF
ALTER TABLE [dbo].[Articulo]  WITH CHECK ADD  CONSTRAINT [FK_Articulo_Fabricante] FOREIGN KEY([Fabricante])
REFERENCES [dbo].[Fabricante] ([CodigoFabricante])
GO
ALTER TABLE [dbo].[Articulo] CHECK CONSTRAINT [FK_Articulo_Fabricante]
GO
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD  CONSTRAINT [FK_Cliente_Articulo] FOREIGN KEY([CodigoArticulo])
REFERENCES [dbo].[Articulo] ([CodigoArticulo])
GO
ALTER TABLE [dbo].[Cliente] CHECK CONSTRAINT [FK_Cliente_Articulo]
GO
USE [master]
GO
ALTER DATABASE [DistribuidoraBD] SET  READ_WRITE 
GO
