USE [master]
GO
/******Base de datos para una licoreria hecha por: ******/
/****** Jesus Gabriel Garcia Castillo	20-SIIT-033 ******/
/****** Seccion: 0541 ******
CREATE DATABASE [Licoreria]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Licoreria', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Licoreria.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Licoreria_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Licoreria_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Licoreria] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Licoreria].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Licoreria] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Licoreria] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Licoreria] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Licoreria] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Licoreria] SET ARITHABORT OFF 
GO
ALTER DATABASE [Licoreria] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Licoreria] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Licoreria] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Licoreria] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Licoreria] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Licoreria] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Licoreria] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Licoreria] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Licoreria] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Licoreria] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Licoreria] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Licoreria] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Licoreria] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Licoreria] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Licoreria] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Licoreria] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Licoreria] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Licoreria] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Licoreria] SET  MULTI_USER 
GO
ALTER DATABASE [Licoreria] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Licoreria] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Licoreria] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Licoreria] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Licoreria] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Licoreria] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Licoreria] SET QUERY_STORE = OFF
GO
USE [Licoreria]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 14/4/2022 4:55:39 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[IdCliente] [int] IDENTITY(20,1) NOT NULL,
	[Nombre] [varchar](20) NOT NULL,
	[Apellido] [varchar](20) NULL,
	[Direccion] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 14/4/2022 4:55:39 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleados](
	[IdEmpleado] [int] IDENTITY(9,1) NOT NULL,
	[Nombre] [varchar](20) NOT NULL,
	[Apellido] [varchar](20) NULL,
	[Direccion] [varchar](50) NULL,
	[Telefono] [decimal](10, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 14/4/2022 4:55:39 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productos](
	[IdProducto] [int] IDENTITY(54968,10) NOT NULL,
	[Marca] [varchar](20) NULL,
	[IdProveedor] [int] NULL,
	[Tipo_de_Producto] [varchar](80) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Proveedores_Producto]    Script Date: 14/4/2022 4:55:39 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proveedores_Producto](
	[IdProveedor] [int] IDENTITY(30,1) NOT NULL,
	[Proveedor] [varchar](20) NULL,
	[Persona_de_Contacto] [varchar](60) NULL,
	[Email] [varchar](40) NULL,
	[Telefono] [decimal](10, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdProveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ventas]    Script Date: 14/4/2022 4:55:39 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ventas](
	[IdVenta] [int] IDENTITY(50,1) NOT NULL,
	[IdProducto] [int] NULL,
	[Cantidad] [int] NULL,
	[IdCliente] [int] NULL,
	[Monto_Pago] [decimal](10, 0) NULL,
	[IdEmpleado] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Clientes] ON 

INSERT [dbo].[Clientes] ([IdCliente], [Nombre], [Apellido], [Direccion]) VALUES (20, N'Angelica', N'Duran', N'Av, Independencia, Km 9 / San miguel')
INSERT [dbo].[Clientes] ([IdCliente], [Nombre], [Apellido], [Direccion]) VALUES (21, N'Jadelyn ', N'Jimenez', N'Av, Nuñez de Caceres C/Simon Bolivar')
INSERT [dbo].[Clientes] ([IdCliente], [Nombre], [Apellido], [Direccion]) VALUES (22, N'Maria', N'Perez', N'Calle Agustin Lara No. 69')
INSERT [dbo].[Clientes] ([IdCliente], [Nombre], [Apellido], [Direccion]) VALUES (23, N'Luisa', N'Piña Alvarez', N'Carretera a Lomas Altas S/N')
INSERT [dbo].[Clientes] ([IdCliente], [Nombre], [Apellido], [Direccion]) VALUES (24, N'Ailin ', N'Ramirez', N'Av,Independencia No, 779')
INSERT [dbo].[Clientes] ([IdCliente], [Nombre], [Apellido], [Direccion]) VALUES (25, N'Daniela ', N'Mendez', N'Calle Aldama No. 156')
INSERT [dbo].[Clientes] ([IdCliente], [Nombre], [Apellido], [Direccion]) VALUES (26, N'Jerorly', N'Nuñez', N'Calle Ignacio Rayon No.934')
INSERT [dbo].[Clientes] ([IdCliente], [Nombre], [Apellido], [Direccion]) VALUES (27, N'Tania ', N'Hernandez', N'Av, 20 de Noviembre No. 1178')
INSERT [dbo].[Clientes] ([IdCliente], [Nombre], [Apellido], [Direccion]) VALUES (28, N'Elizabeth', N'Alcantara', N'Av, Independencia No. 678')
INSERT [dbo].[Clientes] ([IdCliente], [Nombre], [Apellido], [Direccion]) VALUES (29, N'Maribel', N'Brazoban', N'Calle Mata Moros No. 325')
SET IDENTITY_INSERT [dbo].[Clientes] OFF
GO
SET IDENTITY_INSERT [dbo].[Empleados] ON 

INSERT [dbo].[Empleados] ([IdEmpleado], [Nombre], [Apellido], [Direccion], [Telefono]) VALUES (9, N'Juan Fernando', N'Perez', N'La palma, Domicilio conocido', CAST(8299466341 AS Decimal(10, 0)))
INSERT [dbo].[Empleados] ([IdEmpleado], [Nombre], [Apellido], [Direccion], [Telefono]) VALUES (10, N'Valentina', N'De La Rosa', N'Av, Guadalupe S/N', CAST(8299541604 AS Decimal(10, 0)))
INSERT [dbo].[Empleados] ([IdEmpleado], [Nombre], [Apellido], [Direccion], [Telefono]) VALUES (11, N'Oscar', N'De la Renta', N'Av, Niños Heroes No, 3', CAST(8299569545 AS Decimal(10, 0)))
INSERT [dbo].[Empleados] ([IdEmpleado], [Nombre], [Apellido], [Direccion], [Telefono]) VALUES (12, N'Sara Tereza', N'Sanches', N'Carreter Mexico Laredo Km, 125', CAST(8299543880 AS Decimal(10, 0)))
INSERT [dbo].[Empleados] ([IdEmpleado], [Nombre], [Apellido], [Direccion], [Telefono]) VALUES (13, N'Efrain ', N'Mejia', N'Calle Constitucioin No.1', CAST(8299460880 AS Decimal(10, 0)))
INSERT [dbo].[Empleados] ([IdEmpleado], [Nombre], [Apellido], [Direccion], [Telefono]) VALUES (14, N'Julieta', N'Ponce', N'Av, Miguel Hidalgo S/N', CAST(8295649595 AS Decimal(10, 0)))
INSERT [dbo].[Empleados] ([IdEmpleado], [Nombre], [Apellido], [Direccion], [Telefono]) VALUES (15, N'Martin Elias', N'Rios', N'Av, Lic Vicente Aguirre', CAST(8294958328 AS Decimal(10, 0)))
INSERT [dbo].[Empleados] ([IdEmpleado], [Nombre], [Apellido], [Direccion], [Telefono]) VALUES (16, N'Gebriela', N'De la Pava', N'Domicilio Conocido', CAST(8296658731 AS Decimal(10, 0)))
INSERT [dbo].[Empleados] ([IdEmpleado], [Nombre], [Apellido], [Direccion], [Telefono]) VALUES (17, N'Matias ', N'Rincon', N'Calle 21 de Marzo No. 17', CAST(8296952179 AS Decimal(10, 0)))
INSERT [dbo].[Empleados] ([IdEmpleado], [Nombre], [Apellido], [Direccion], [Telefono]) VALUES (18, N'Manuela ', N'Del pino', N'Av, Independenci No, 1231', CAST(8095563214 AS Decimal(10, 0)))
SET IDENTITY_INSERT [dbo].[Empleados] OFF
GO
SET IDENTITY_INSERT [dbo].[Productos] ON 

INSERT [dbo].[Productos] ([IdProducto], [Marca], [IdProveedor], [Tipo_de_Producto]) VALUES (54968, N'Jibaro', 30, N'Agua Ardiente')
INSERT [dbo].[Productos] ([IdProducto], [Marca], [IdProveedor], [Tipo_de_Producto]) VALUES (54978, N'Diangelo', 32, N'Amaretto')
INSERT [dbo].[Productos] ([IdProducto], [Marca], [IdProveedor], [Tipo_de_Producto]) VALUES (54988, N'Blue', 33, N'Benedicte')
INSERT [dbo].[Productos] ([IdProducto], [Marca], [IdProveedor], [Tipo_de_Producto]) VALUES (54998, N'El Conde', 34, N'Brandy')
INSERT [dbo].[Productos] ([IdProducto], [Marca], [IdProveedor], [Tipo_de_Producto]) VALUES (55008, N'La Campiña', 30, N'Bourbon')
INSERT [dbo].[Productos] ([IdProducto], [Marca], [IdProveedor], [Tipo_de_Producto]) VALUES (55018, N'El Añejo', 30, N'Cooñac')
INSERT [dbo].[Productos] ([IdProducto], [Marca], [IdProveedor], [Tipo_de_Producto]) VALUES (55028, N'Chapultepec', 35, N'Tequila')
INSERT [dbo].[Productos] ([IdProducto], [Marca], [IdProveedor], [Tipo_de_Producto]) VALUES (55038, N'El Finlandez', 36, N'Vodka')
INSERT [dbo].[Productos] ([IdProducto], [Marca], [IdProveedor], [Tipo_de_Producto]) VALUES (55048, N'Jhonson', 32, N'Whisky')
INSERT [dbo].[Productos] ([IdProducto], [Marca], [IdProveedor], [Tipo_de_Producto]) VALUES (55058, N'Salomon', 37, N'Gin')
SET IDENTITY_INSERT [dbo].[Productos] OFF
GO
SET IDENTITY_INSERT [dbo].[Proveedores_Producto] ON 

INSERT [dbo].[Proveedores_Producto] ([IdProveedor], [Proveedor], [Persona_de_Contacto], [Email], [Telefono]) VALUES (30, N'Transportes Caceres', N'Manolo Arias', N'AreasM@gmai.com', CAST(8492137887 AS Decimal(10, 0)))
INSERT [dbo].[Proveedores_Producto] ([IdProveedor], [Proveedor], [Persona_de_Contacto], [Email], [Telefono]) VALUES (32, N'Cereveceria Nacional', N'Angela Diaz', N'Ang123@gmail.com', CAST(8093458761 AS Decimal(10, 0)))
INSERT [dbo].[Proveedores_Producto] ([IdProveedor], [Proveedor], [Persona_de_Contacto], [Email], [Telefono]) VALUES (33, N'Licores Horford', N'Jose Perez', N'Jp45@hotmail.com', CAST(8091238766 AS Decimal(10, 0)))
INSERT [dbo].[Proveedores_Producto] ([IdProveedor], [Proveedor], [Persona_de_Contacto], [Email], [Telefono]) VALUES (34, N'Al. Asoc', N'Juan Brito', N'JuanB@gmai.com', CAST(8496531757 AS Decimal(10, 0)))
INSERT [dbo].[Proveedores_Producto] ([IdProveedor], [Proveedor], [Persona_de_Contacto], [Email], [Telefono]) VALUES (35, N'Etiquetas Premiun', N'Alejandro Guzman', N'AGuzmangmail.com', CAST(8296558714 AS Decimal(10, 0)))
INSERT [dbo].[Proveedores_Producto] ([IdProveedor], [Proveedor], [Persona_de_Contacto], [Email], [Telefono]) VALUES (36, N'Sellados Nacionales', N'Albart Caceres', N'AC65@gmail.com', CAST(8095369746 AS Decimal(10, 0)))
INSERT [dbo].[Proveedores_Producto] ([IdProveedor], [Proveedor], [Persona_de_Contacto], [Email], [Telefono]) VALUES (37, N'Orbechol', N'Julian Reyes', N'JulianR@gmail.com', CAST(8493317757 AS Decimal(10, 0)))
INSERT [dbo].[Proveedores_Producto] ([IdProveedor], [Proveedor], [Persona_de_Contacto], [Email], [Telefono]) VALUES (38, N'Plus', N'Mateo Mejia', N'Mmejia@gmail.com', CAST(8093425647 AS Decimal(10, 0)))
INSERT [dbo].[Proveedores_Producto] ([IdProveedor], [Proveedor], [Persona_de_Contacto], [Email], [Telefono]) VALUES (39, N'Caribe Licor', N'Federico Diaz', N'FDiazgmail.com', CAST(8295476844 AS Decimal(10, 0)))
INSERT [dbo].[Proveedores_Producto] ([IdProveedor], [Proveedor], [Persona_de_Contacto], [Email], [Telefono]) VALUES (40, N'Industrias Carmelo', N'Alberto Jazbun', N'JazbunA@gmai.com', CAST(8492107402 AS Decimal(10, 0)))
SET IDENTITY_INSERT [dbo].[Proveedores_Producto] OFF
GO
SET IDENTITY_INSERT [dbo].[Ventas] ON 

INSERT [dbo].[Ventas] ([IdVenta], [IdProducto], [Cantidad], [IdCliente], [Monto_Pago], [IdEmpleado]) VALUES (50, 54968, 8, 20, CAST(10800 AS Decimal(10, 0)), 18)
INSERT [dbo].[Ventas] ([IdVenta], [IdProducto], [Cantidad], [IdCliente], [Monto_Pago], [IdEmpleado]) VALUES (51, 54978, 6, 21, CAST(2850 AS Decimal(10, 0)), 17)
INSERT [dbo].[Ventas] ([IdVenta], [IdProducto], [Cantidad], [IdCliente], [Monto_Pago], [IdEmpleado]) VALUES (52, 54988, 10, 22, CAST(600 AS Decimal(10, 0)), 16)
INSERT [dbo].[Ventas] ([IdVenta], [IdProducto], [Cantidad], [IdCliente], [Monto_Pago], [IdEmpleado]) VALUES (53, 54998, 6, 23, CAST(19500 AS Decimal(10, 0)), 18)
INSERT [dbo].[Ventas] ([IdVenta], [IdProducto], [Cantidad], [IdCliente], [Monto_Pago], [IdEmpleado]) VALUES (54, 55008, 6, 24, CAST(19800 AS Decimal(10, 0)), 15)
INSERT [dbo].[Ventas] ([IdVenta], [IdProducto], [Cantidad], [IdCliente], [Monto_Pago], [IdEmpleado]) VALUES (55, 55018, 20, 25, CAST(37000 AS Decimal(10, 0)), 18)
INSERT [dbo].[Ventas] ([IdVenta], [IdProducto], [Cantidad], [IdCliente], [Monto_Pago], [IdEmpleado]) VALUES (56, 55028, 15, 26, CAST(18000 AS Decimal(10, 0)), 15)
INSERT [dbo].[Ventas] ([IdVenta], [IdProducto], [Cantidad], [IdCliente], [Monto_Pago], [IdEmpleado]) VALUES (57, 55038, 10, 27, CAST(18750 AS Decimal(10, 0)), 16)
INSERT [dbo].[Ventas] ([IdVenta], [IdProducto], [Cantidad], [IdCliente], [Monto_Pago], [IdEmpleado]) VALUES (58, 55048, 3, 28, CAST(2625 AS Decimal(10, 0)), 18)
INSERT [dbo].[Ventas] ([IdVenta], [IdProducto], [Cantidad], [IdCliente], [Monto_Pago], [IdEmpleado]) VALUES (59, 55058, 9, 29, CAST(7875 AS Decimal(10, 0)), 16)
SET IDENTITY_INSERT [dbo].[Ventas] OFF
GO
ALTER TABLE [dbo].[Productos]  WITH CHECK ADD FOREIGN KEY([IdProveedor])
REFERENCES [dbo].[Proveedores_Producto] ([IdProveedor])
GO
ALTER TABLE [dbo].[Ventas]  WITH CHECK ADD FOREIGN KEY([IdCliente])
REFERENCES [dbo].[Clientes] ([IdCliente])
GO
ALTER TABLE [dbo].[Ventas]  WITH CHECK ADD FOREIGN KEY([IdEmpleado])
REFERENCES [dbo].[Empleados] ([IdEmpleado])
GO
ALTER TABLE [dbo].[Ventas]  WITH CHECK ADD FOREIGN KEY([IdProducto])
REFERENCES [dbo].[Productos] ([IdProducto])
GO
USE [master]
GO
ALTER DATABASE [Licoreria] SET  READ_WRITE 
GO
