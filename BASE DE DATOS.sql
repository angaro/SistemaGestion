USE [master]
GO
/****** Object:  Database [BDS_SysGest]    Script Date: 13/12/2021 10:14:30 a. m. ******/
CREATE DATABASE [BDS_SysGest]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BDS_SysGest', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\BDS_SysGest.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BDS_SysGest_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\BDS_SysGest_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [BDS_SysGest] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BDS_SysGest].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BDS_SysGest] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BDS_SysGest] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BDS_SysGest] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BDS_SysGest] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BDS_SysGest] SET ARITHABORT OFF 
GO
ALTER DATABASE [BDS_SysGest] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BDS_SysGest] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BDS_SysGest] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BDS_SysGest] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BDS_SysGest] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BDS_SysGest] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BDS_SysGest] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BDS_SysGest] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BDS_SysGest] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BDS_SysGest] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BDS_SysGest] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BDS_SysGest] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BDS_SysGest] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BDS_SysGest] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BDS_SysGest] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BDS_SysGest] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BDS_SysGest] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BDS_SysGest] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BDS_SysGest] SET  MULTI_USER 
GO
ALTER DATABASE [BDS_SysGest] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BDS_SysGest] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BDS_SysGest] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BDS_SysGest] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BDS_SysGest] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BDS_SysGest] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [BDS_SysGest] SET QUERY_STORE = OFF
GO
USE [BDS_SysGest]
GO
/****** Object:  Table [dbo].[TBL_Alumno]    Script Date: 13/12/2021 10:14:30 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_Alumno](
	[ALM_Nombres] [varchar](50) NULL,
	[ALM_Apellidos] [varchar](50) NULL,
	[ALM_Creditos] [int] NULL,
	[PK_ALM_IdAlumno] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PK_ALM_IdAlumno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_Materia]    Script Date: 13/12/2021 10:14:30 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_Materia](
	[MTR_Nombre] [nvarchar](50) NULL,
	[MTR_Modulo] [varchar](50) NULL,
	[MTR_Curso] [varchar](50) NULL,
	[FK_PGM_IdPrograma] [int] NULL,
	[PK_MTR_IdMateria] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PK_MTR_IdMateria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_Materia_Has_Alumno]    Script Date: 13/12/2021 10:14:30 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_Materia_Has_Alumno](
	[FK_MTR_IdMateria] [int] NULL,
	[FK_ALM_IdAlumno] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_Profesor]    Script Date: 13/12/2021 10:14:30 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_Profesor](
	[PFS_Nombres] [varchar](50) NULL,
	[PFS_Apellidos] [varchar](50) NULL,
	[PFS_Especialidad] [varchar](50) NULL,
	[PFS_Cargo] [varchar](50) NULL,
	[FK_PGM_IdPrograma] [int] NULL,
	[PK_PFS_IdProfesor] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PK_PFS_IdProfesor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_Programa]    Script Date: 13/12/2021 10:14:30 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_Programa](
	[PGM_Nombre] [nvarchar](50) NOT NULL,
	[PGM_Duracion] [int] NULL,
	[PGM_Costo] [int] NULL,
	[PGM_Aula] [nvarchar](50) NULL,
	[PK_PGM_IdPrograma] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PK_PGM_IdPrograma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TBL_Alumno] ON 
GO
INSERT [dbo].[TBL_Alumno] ([ALM_Nombres], [ALM_Apellidos], [ALM_Creditos], [PK_ALM_IdAlumno]) VALUES (N'Carlos', N'Buitrago', 50, 1)
GO
INSERT [dbo].[TBL_Alumno] ([ALM_Nombres], [ALM_Apellidos], [ALM_Creditos], [PK_ALM_IdAlumno]) VALUES (N'María', N'Mendoza', 100, 2)
GO
INSERT [dbo].[TBL_Alumno] ([ALM_Nombres], [ALM_Apellidos], [ALM_Creditos], [PK_ALM_IdAlumno]) VALUES (N'Fernanda', N'Moreno', 30, 3)
GO
INSERT [dbo].[TBL_Alumno] ([ALM_Nombres], [ALM_Apellidos], [ALM_Creditos], [PK_ALM_IdAlumno]) VALUES (N'Andres', N'Garcia', 150, 4)
GO
INSERT [dbo].[TBL_Alumno] ([ALM_Nombres], [ALM_Apellidos], [ALM_Creditos], [PK_ALM_IdAlumno]) VALUES (N'Alan', N'Brito Delgado', 25, 5)
GO
INSERT [dbo].[TBL_Alumno] ([ALM_Nombres], [ALM_Apellidos], [ALM_Creditos], [PK_ALM_IdAlumno]) VALUES (N'Armando', N'Leal', 200, 6)
GO
INSERT [dbo].[TBL_Alumno] ([ALM_Nombres], [ALM_Apellidos], [ALM_Creditos], [PK_ALM_IdAlumno]) VALUES (N'Esteban', N'Dido Lopez', 150, 7)
GO
INSERT [dbo].[TBL_Alumno] ([ALM_Nombres], [ALM_Apellidos], [ALM_Creditos], [PK_ALM_IdAlumno]) VALUES (N'Andres', N'Hernandez', 200, 8)
GO
INSERT [dbo].[TBL_Alumno] ([ALM_Nombres], [ALM_Apellidos], [ALM_Creditos], [PK_ALM_IdAlumno]) VALUES (N'Gina', N'Calderon', 50, 9)
GO
INSERT [dbo].[TBL_Alumno] ([ALM_Nombres], [ALM_Apellidos], [ALM_Creditos], [PK_ALM_IdAlumno]) VALUES (N'Felipe', N'Lopez', 300, 10)
GO
INSERT [dbo].[TBL_Alumno] ([ALM_Nombres], [ALM_Apellidos], [ALM_Creditos], [PK_ALM_IdAlumno]) VALUES (N'Juan', N'Medina', 100, 11)
GO
INSERT [dbo].[TBL_Alumno] ([ALM_Nombres], [ALM_Apellidos], [ALM_Creditos], [PK_ALM_IdAlumno]) VALUES (N'Esperanza', N'Gomez', 200, 12)
GO
INSERT [dbo].[TBL_Alumno] ([ALM_Nombres], [ALM_Apellidos], [ALM_Creditos], [PK_ALM_IdAlumno]) VALUES (N'Luis', N'Lozano', 250, 13)
GO
INSERT [dbo].[TBL_Alumno] ([ALM_Nombres], [ALM_Apellidos], [ALM_Creditos], [PK_ALM_IdAlumno]) VALUES (N'William ', N'Soto', 150, 14)
GO
INSERT [dbo].[TBL_Alumno] ([ALM_Nombres], [ALM_Apellidos], [ALM_Creditos], [PK_ALM_IdAlumno]) VALUES (N'Edwin', N'Quintero', 50, 15)
GO
INSERT [dbo].[TBL_Alumno] ([ALM_Nombres], [ALM_Apellidos], [ALM_Creditos], [PK_ALM_IdAlumno]) VALUES (N'Humberto', N'Triana', 200, 16)
GO
INSERT [dbo].[TBL_Alumno] ([ALM_Nombres], [ALM_Apellidos], [ALM_Creditos], [PK_ALM_IdAlumno]) VALUES (N'Nelsy', N'Taylor', 50, 17)
GO
INSERT [dbo].[TBL_Alumno] ([ALM_Nombres], [ALM_Apellidos], [ALM_Creditos], [PK_ALM_IdAlumno]) VALUES (N'Daniel', N'Palacios', 50, 18)
GO
INSERT [dbo].[TBL_Alumno] ([ALM_Nombres], [ALM_Apellidos], [ALM_Creditos], [PK_ALM_IdAlumno]) VALUES (N'Dulce', N'Mora', 150, 19)
GO
INSERT [dbo].[TBL_Alumno] ([ALM_Nombres], [ALM_Apellidos], [ALM_Creditos], [PK_ALM_IdAlumno]) VALUES (N'Rodrigo', N'florez', 100, 20)
GO
SET IDENTITY_INSERT [dbo].[TBL_Alumno] OFF
GO
SET IDENTITY_INSERT [dbo].[TBL_Materia] ON 
GO
INSERT [dbo].[TBL_Materia] ([MTR_Nombre], [MTR_Modulo], [MTR_Curso], [FK_PGM_IdPrograma], [PK_MTR_IdMateria]) VALUES (N'Calculo Diferencial', NULL, NULL, 1, 1)
GO
INSERT [dbo].[TBL_Materia] ([MTR_Nombre], [MTR_Modulo], [MTR_Curso], [FK_PGM_IdPrograma], [PK_MTR_IdMateria]) VALUES (N'Fisica', NULL, NULL, 4, 2)
GO
INSERT [dbo].[TBL_Materia] ([MTR_Nombre], [MTR_Modulo], [MTR_Curso], [FK_PGM_IdPrograma], [PK_MTR_IdMateria]) VALUES (N'Química', NULL, NULL, 3, 3)
GO
INSERT [dbo].[TBL_Materia] ([MTR_Nombre], [MTR_Modulo], [MTR_Curso], [FK_PGM_IdPrograma], [PK_MTR_IdMateria]) VALUES (N'Análisis de Datos', NULL, NULL, 5, 4)
GO
INSERT [dbo].[TBL_Materia] ([MTR_Nombre], [MTR_Modulo], [MTR_Curso], [FK_PGM_IdPrograma], [PK_MTR_IdMateria]) VALUES (N'Leyes', NULL, NULL, 5, 5)
GO
INSERT [dbo].[TBL_Materia] ([MTR_Nombre], [MTR_Modulo], [MTR_Curso], [FK_PGM_IdPrograma], [PK_MTR_IdMateria]) VALUES (N'Escultura', NULL, NULL, 3, 6)
GO
INSERT [dbo].[TBL_Materia] ([MTR_Nombre], [MTR_Modulo], [MTR_Curso], [FK_PGM_IdPrograma], [PK_MTR_IdMateria]) VALUES (N'Lenguaje', NULL, NULL, 1, 7)
GO
INSERT [dbo].[TBL_Materia] ([MTR_Nombre], [MTR_Modulo], [MTR_Curso], [FK_PGM_IdPrograma], [PK_MTR_IdMateria]) VALUES (N'Danza', NULL, NULL, 2, 8)
GO
SET IDENTITY_INSERT [dbo].[TBL_Materia] OFF
GO
INSERT [dbo].[TBL_Materia_Has_Alumno] ([FK_MTR_IdMateria], [FK_ALM_IdAlumno]) VALUES (1, 1)
GO
INSERT [dbo].[TBL_Materia_Has_Alumno] ([FK_MTR_IdMateria], [FK_ALM_IdAlumno]) VALUES (1, 2)
GO
INSERT [dbo].[TBL_Materia_Has_Alumno] ([FK_MTR_IdMateria], [FK_ALM_IdAlumno]) VALUES (1, 3)
GO
INSERT [dbo].[TBL_Materia_Has_Alumno] ([FK_MTR_IdMateria], [FK_ALM_IdAlumno]) VALUES (1, 4)
GO
INSERT [dbo].[TBL_Materia_Has_Alumno] ([FK_MTR_IdMateria], [FK_ALM_IdAlumno]) VALUES (2, 5)
GO
INSERT [dbo].[TBL_Materia_Has_Alumno] ([FK_MTR_IdMateria], [FK_ALM_IdAlumno]) VALUES (2, 6)
GO
INSERT [dbo].[TBL_Materia_Has_Alumno] ([FK_MTR_IdMateria], [FK_ALM_IdAlumno]) VALUES (2, 7)
GO
INSERT [dbo].[TBL_Materia_Has_Alumno] ([FK_MTR_IdMateria], [FK_ALM_IdAlumno]) VALUES (2, 8)
GO
INSERT [dbo].[TBL_Materia_Has_Alumno] ([FK_MTR_IdMateria], [FK_ALM_IdAlumno]) VALUES (2, 9)
GO
INSERT [dbo].[TBL_Materia_Has_Alumno] ([FK_MTR_IdMateria], [FK_ALM_IdAlumno]) VALUES (3, 10)
GO
INSERT [dbo].[TBL_Materia_Has_Alumno] ([FK_MTR_IdMateria], [FK_ALM_IdAlumno]) VALUES (3, 11)
GO
INSERT [dbo].[TBL_Materia_Has_Alumno] ([FK_MTR_IdMateria], [FK_ALM_IdAlumno]) VALUES (3, 12)
GO
INSERT [dbo].[TBL_Materia_Has_Alumno] ([FK_MTR_IdMateria], [FK_ALM_IdAlumno]) VALUES (3, 13)
GO
INSERT [dbo].[TBL_Materia_Has_Alumno] ([FK_MTR_IdMateria], [FK_ALM_IdAlumno]) VALUES (4, 14)
GO
INSERT [dbo].[TBL_Materia_Has_Alumno] ([FK_MTR_IdMateria], [FK_ALM_IdAlumno]) VALUES (4, 15)
GO
INSERT [dbo].[TBL_Materia_Has_Alumno] ([FK_MTR_IdMateria], [FK_ALM_IdAlumno]) VALUES (4, 16)
GO
INSERT [dbo].[TBL_Materia_Has_Alumno] ([FK_MTR_IdMateria], [FK_ALM_IdAlumno]) VALUES (4, 17)
GO
INSERT [dbo].[TBL_Materia_Has_Alumno] ([FK_MTR_IdMateria], [FK_ALM_IdAlumno]) VALUES (5, 18)
GO
INSERT [dbo].[TBL_Materia_Has_Alumno] ([FK_MTR_IdMateria], [FK_ALM_IdAlumno]) VALUES (5, 19)
GO
INSERT [dbo].[TBL_Materia_Has_Alumno] ([FK_MTR_IdMateria], [FK_ALM_IdAlumno]) VALUES (5, 20)
GO
SET IDENTITY_INSERT [dbo].[TBL_Profesor] ON 
GO
INSERT [dbo].[TBL_Profesor] ([PFS_Nombres], [PFS_Apellidos], [PFS_Especialidad], [PFS_Cargo], [FK_PGM_IdPrograma], [PK_PFS_IdProfesor]) VALUES (N'Pedro', N'Suarez', N'Matemático', N'Profesor', 1, 1)
GO
INSERT [dbo].[TBL_Profesor] ([PFS_Nombres], [PFS_Apellidos], [PFS_Especialidad], [PFS_Cargo], [FK_PGM_IdPrograma], [PK_PFS_IdProfesor]) VALUES (N'Johanna', N'Delgado', N'Bailarina', N'Profesor', 3, 2)
GO
INSERT [dbo].[TBL_Profesor] ([PFS_Nombres], [PFS_Apellidos], [PFS_Especialidad], [PFS_Cargo], [FK_PGM_IdPrograma], [PK_PFS_IdProfesor]) VALUES (N'Joel', N'Hernandez', N'Físico', N'Profesor', 4, 3)
GO
INSERT [dbo].[TBL_Profesor] ([PFS_Nombres], [PFS_Apellidos], [PFS_Especialidad], [PFS_Cargo], [FK_PGM_IdPrograma], [PK_PFS_IdProfesor]) VALUES (N'Edwin', N'Lozano', N'Abogado civil', N'Profesor', 2, 4)
GO
INSERT [dbo].[TBL_Profesor] ([PFS_Nombres], [PFS_Apellidos], [PFS_Especialidad], [PFS_Cargo], [FK_PGM_IdPrograma], [PK_PFS_IdProfesor]) VALUES (N'Lina', N'Perez', N'Mantenimiento Hardware', N'Profesor', 5, 5)
GO
INSERT [dbo].[TBL_Profesor] ([PFS_Nombres], [PFS_Apellidos], [PFS_Especialidad], [PFS_Cargo], [FK_PGM_IdPrograma], [PK_PFS_IdProfesor]) VALUES (N'Tatiana', N'Torres', N'Quimica', N'Profesor', 1, 6)
GO
INSERT [dbo].[TBL_Profesor] ([PFS_Nombres], [PFS_Apellidos], [PFS_Especialidad], [PFS_Cargo], [FK_PGM_IdPrograma], [PK_PFS_IdProfesor]) VALUES (N'Martin', N'Gomez', N'Desarrollo de software', N'Profesor', 5, 7)
GO
INSERT [dbo].[TBL_Profesor] ([PFS_Nombres], [PFS_Apellidos], [PFS_Especialidad], [PFS_Cargo], [FK_PGM_IdPrograma], [PK_PFS_IdProfesor]) VALUES (N'Flor', N'Muñoz', N'Escultor', N'Profesor', 3, 8)
GO
SET IDENTITY_INSERT [dbo].[TBL_Profesor] OFF
GO
SET IDENTITY_INSERT [dbo].[TBL_Programa] ON 
GO
INSERT [dbo].[TBL_Programa] ([PGM_Nombre], [PGM_Duracion], [PGM_Costo], [PGM_Aula], [PK_PGM_IdPrograma]) VALUES (N'Ingeniería Industrial', 10, 8000000, N'204', 1)
GO
INSERT [dbo].[TBL_Programa] ([PGM_Nombre], [PGM_Duracion], [PGM_Costo], [PGM_Aula], [PK_PGM_IdPrograma]) VALUES (N'Derecho', 10, 8500000, N'201', 2)
GO
INSERT [dbo].[TBL_Programa] ([PGM_Nombre], [PGM_Duracion], [PGM_Costo], [PGM_Aula], [PK_PGM_IdPrograma]) VALUES (N'Bellas artes', 8, 8000000, N'202', 3)
GO
INSERT [dbo].[TBL_Programa] ([PGM_Nombre], [PGM_Duracion], [PGM_Costo], [PGM_Aula], [PK_PGM_IdPrograma]) VALUES (N'Ingenieria catastral', 10, 8000000, N'205', 4)
GO
INSERT [dbo].[TBL_Programa] ([PGM_Nombre], [PGM_Duracion], [PGM_Costo], [PGM_Aula], [PK_PGM_IdPrograma]) VALUES (N'Ingenieria de sistemas', 10, 8000000, N'203', 5)
GO
SET IDENTITY_INSERT [dbo].[TBL_Programa] OFF
GO
ALTER TABLE [dbo].[TBL_Materia]  WITH CHECK ADD FOREIGN KEY([FK_PGM_IdPrograma])
REFERENCES [dbo].[TBL_Programa] ([PK_PGM_IdPrograma])
GO
ALTER TABLE [dbo].[TBL_Materia_Has_Alumno]  WITH CHECK ADD FOREIGN KEY([FK_ALM_IdAlumno])
REFERENCES [dbo].[TBL_Alumno] ([PK_ALM_IdAlumno])
GO
ALTER TABLE [dbo].[TBL_Materia_Has_Alumno]  WITH CHECK ADD FOREIGN KEY([FK_MTR_IdMateria])
REFERENCES [dbo].[TBL_Materia] ([PK_MTR_IdMateria])
GO
ALTER TABLE [dbo].[TBL_Profesor]  WITH CHECK ADD FOREIGN KEY([FK_PGM_IdPrograma])
REFERENCES [dbo].[TBL_Programa] ([PK_PGM_IdPrograma])
GO
USE [master]
GO
ALTER DATABASE [BDS_SysGest] SET  READ_WRITE 
GO
