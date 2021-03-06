USE [master]
GO
/****** Object:  Database [SimpleFact]    Script Date: 4/6/2018 17:14:55 ******/
CREATE DATABASE [SimpleFact]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SimpleFact', FILENAME = N'D:\SQL DB\SimpleFact\SimpleFact.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SimpleFact_log', FILENAME = N'D:\SQL DB\SimpleFact\SimpleFact_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [SimpleFact] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SimpleFact].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SimpleFact] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SimpleFact] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SimpleFact] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SimpleFact] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SimpleFact] SET ARITHABORT OFF 
GO
ALTER DATABASE [SimpleFact] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SimpleFact] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SimpleFact] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SimpleFact] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SimpleFact] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SimpleFact] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SimpleFact] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SimpleFact] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SimpleFact] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SimpleFact] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SimpleFact] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SimpleFact] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SimpleFact] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SimpleFact] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SimpleFact] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SimpleFact] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [SimpleFact] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SimpleFact] SET RECOVERY FULL 
GO
ALTER DATABASE [SimpleFact] SET  MULTI_USER 
GO
ALTER DATABASE [SimpleFact] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SimpleFact] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SimpleFact] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SimpleFact] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SimpleFact] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'SimpleFact', N'ON'
GO
ALTER DATABASE [SimpleFact] SET QUERY_STORE = OFF
GO
USE [SimpleFact]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
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
USE [SimpleFact]
GO
/****** Object:  Schema [pos]    Script Date: 4/6/2018 17:14:55 ******/
CREATE SCHEMA [pos]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 4/6/2018 17:14:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 4/6/2018 17:14:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 4/6/2018 17:14:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 4/6/2018 17:14:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 4/6/2018 17:14:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 4/6/2018 17:14:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[UserName] [nvarchar](256) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 4/6/2018 17:14:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [pos].[DetalleFactura]    Script Date: 4/6/2018 17:14:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [pos].[DetalleFactura](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdFactura] [int] NOT NULL,
	[IdProducto] [int] NOT NULL,
	[Cantidad] [int] NOT NULL,
	[Exoneracion_NombreInstitucion] [varchar](200) NULL,
	[Exoneracion_FechaEmision] [datetime] NULL,
	[Exoneracion_MontoImpuesto] [decimal](18, 5) NULL,
	[Exoneracion_PorcentajeCompra] [int] NULL,
	[Impuesto_Tarifa] [decimal](4, 2) NULL,
	[Impuestp_Monto] [decimal](18, 5) NULL,
	[MontoDescuento] [decimal](18, 5) NULL,
	[NaturalezaDescuento] [decimal](18, 5) NULL,
	[SubTotal] [decimal](18, 5) NULL,
	[MontoTotal] [decimal](18, 5) NULL,
 CONSTRAINT [PK_DetalleFactura] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [pos].[EncabezadoFactura]    Script Date: 4/6/2018 17:14:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [pos].[EncabezadoFactura](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaveNumerica] [varchar](50) NOT NULL,
	[NumeroConsecutivo] [varchar](20) NOT NULL,
	[FechaEmision] [datetime] NULL,
	[IdEmisor] [int] NOT NULL,
	[IdReceptor] [int] NOT NULL,
	[IdTipoPago] [int] NOT NULL,
	[IdTipoCondicionVenta] [int] NOT NULL,
	[IdUsuario] [nvarchar](450) NOT NULL,
	[EstadoFactura] [varchar](250) NOT NULL,
	[TotalServiciosGravados] [decimal](18, 5) NULL,
	[TotalServiciosExentos] [decimal](18, 5) NULL,
	[TotalMercanciaGravada] [decimal](18, 5) NULL,
	[TotalMercanciaExenta] [decimal](18, 5) NULL,
	[TotalGravado] [decimal](18, 5) NULL,
	[TotalExento] [decimal](18, 5) NULL,
	[TotalVenta] [decimal](18, 5) NULL,
	[TotalDescuentos] [decimal](18, 5) NULL,
	[TotalVentaNeta] [decimal](18, 5) NULL,
	[TotalImpuesto] [decimal](18, 5) NULL,
	[TotalComprobante] [decimal](18, 5) NULL,
 CONSTRAINT [PK_EncabezadoFactura] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [pos].[LogErrores]    Script Date: 4/6/2018 17:14:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [pos].[LogErrores](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Modulo] [int] NOT NULL,
	[MensajeError] [nvarchar](max) NULL,
	[DetalleError] [nvarchar](max) NULL,
	[Fecha] [datetime] NULL,
 CONSTRAINT [PK_LogErrores] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [pos].[ModulosSistema]    Script Date: 4/6/2018 17:14:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [pos].[ModulosSistema](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Modulo] [varchar](50) NULL,
	[Descripcion] [varchar](250) NULL,
	[Activo] [bit] NULL,
 CONSTRAINT [PK_ModulosSistema] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [pos].[MovimientosInventario]    Script Date: 4/6/2018 17:14:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [pos].[MovimientosInventario](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IdProducto] [int] NOT NULL,
	[TipoMovimiento] [varchar](50) NOT NULL,
	[IdRazonMovimiento] [int] NOT NULL,
	[Cantidad] [int] NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[IdUsuario] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_MovimientosInventario] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [pos].[Persona]    Script Date: 4/6/2018 17:14:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [pos].[Persona](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdIdentificacion] [int] NULL,
	[IdUbicacion] [int] NULL,
	[IdTipoFigura] [int] NOT NULL,
	[Identificacion] [varchar](12) NOT NULL,
	[Nombre] [varchar](250) NOT NULL,
	[NombreComercial] [varchar](250) NULL,
	[CorreoElectronico] [varchar](60) NOT NULL,
	[FechaNacimiento] [date] NOT NULL,
	[Tel_CodïgoPais] [varchar](3) NULL,
	[Tel_Numero] [varchar](20) NULL,
	[Fax_CodïgoPais] [varchar](3) NULL,
	[Fax_Numero] [varchar](20) NULL,
	[Direccion_OtrasSenas] [varchar](160) NULL,
	[EsCorreoValido] [bit] NOT NULL,
	[Activo] [bit] NOT NULL,
 CONSTRAINT [PK_Persona] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [pos].[Producto]    Script Date: 4/6/2018 17:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [pos].[Producto](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdCategoria] [int] NOT NULL,
	[IdProveedor] [int] NOT NULL,
	[IdUnidadMedida] [int] NOT NULL,
	[IdImpuesto] [int] NULL,
	[IdExoneracion] [int] NULL,
	[Nombre] [varchar](160) NOT NULL,
	[Detalle] [varchar](160) NOT NULL,
	[CantidadDisponible] [int] NOT NULL,
	[PrecioUnitario] [decimal](18, 5) NOT NULL,
	[CostoUnitario] [decimal](18, 5) NOT NULL,
	[Codigo] [varchar](30) NULL,
	[FechaCreacion] [datetime] NULL,
	[FechaModificacion] [datetime] NULL,
	[Gravado] [char](1) NOT NULL,
	[Activo] [bit] NULL,
 CONSTRAINT [PK_Producto] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [pos].[ProductoCategoria]    Script Date: 4/6/2018 17:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [pos].[ProductoCategoria](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NombreCategoria] [varchar](450) NOT NULL,
	[Descripcion] [varchar](450) NULL,
	[Activo] [bit] NOT NULL,
 CONSTRAINT [PK_ProductoCategoria] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [pos].[RazonMovimientoInventario]    Script Date: 4/6/2018 17:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [pos].[RazonMovimientoInventario](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RazonMovimiento] [varchar](250) NULL,
	[Descripcion] [varchar](250) NULL,
	[Activo] [bit] NOT NULL,
 CONSTRAINT [PK_RazonMovimientoInventario] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [pos].[ServicioFacturaElectronica]    Script Date: 4/6/2018 17:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [pos].[ServicioFacturaElectronica](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdFactura] [int] NOT NULL,
	[TiempoEnvio] [datetime] NULL,
	[XmlFacturaElectronica] [xml] NULL,
	[TiempoRecibido] [datetime] NULL,
	[XmlRecibido] [nvarchar](max) NULL,
	[EmailEnviado] [nvarchar](250) NULL,
	[FechaCreacion] [datetime] NULL,
	[Procesada] [bit] NOT NULL,
 CONSTRAINT [PK_ServicioFacturaElectronica] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [pos].[TipoCedula]    Script Date: 4/6/2018 17:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [pos].[TipoCedula](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](100) NOT NULL,
	[Codigo] [varchar](2) NULL,
	[Activo] [bit] NOT NULL,
 CONSTRAINT [PK_TipoCedula] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [pos].[TipoCondicionVenta]    Script Date: 4/6/2018 17:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [pos].[TipoCondicionVenta](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NULL,
	[Codigo] [varchar](2) NULL,
	[Activo] [bit] NOT NULL,
 CONSTRAINT [PK_TipoCondicionVenta] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [pos].[TipoDocumentosReferencia]    Script Date: 4/6/2018 17:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [pos].[TipoDocumentosReferencia](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NULL,
	[Codigo] [varchar](50) NULL,
	[Activo] [bit] NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [pos].[TipoExoneraciones]    Script Date: 4/6/2018 17:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [pos].[TipoExoneraciones](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](200) NULL,
	[Codigo] [varchar](2) NULL,
	[Activo] [bit] NULL,
 CONSTRAINT [PK_TipoExoneraciones] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [pos].[TipoFigura]    Script Date: 4/6/2018 17:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [pos].[TipoFigura](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](250) NOT NULL,
	[Descripcion] [varchar](250) NOT NULL,
	[Activo] [bit] NOT NULL,
 CONSTRAINT [PK_TipoFigura] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [pos].[TipoImpuestos]    Script Date: 4/6/2018 17:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [pos].[TipoImpuestos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](150) NULL,
	[Codigo] [varchar](2) NULL,
	[Excepcion] [bit] NULL,
 CONSTRAINT [PK_TipoImpuestos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [pos].[TipoPago]    Script Date: 4/6/2018 17:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [pos].[TipoPago](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NULL,
	[Codigo] [varchar](2) NULL,
	[Activo] [bit] NULL,
 CONSTRAINT [PK_TipoPago] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [pos].[TipoUnidadesMedida]    Script Date: 4/6/2018 17:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [pos].[TipoUnidadesMedida](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](200) NULL,
	[Codigo] [varchar](50) NULL,
	[Activo] [bit] NULL,
 CONSTRAINT [PK_TipoUnidadesMedida] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [pos].[Ubicacion]    Script Date: 4/6/2018 17:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [pos].[Ubicacion](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [varchar](50) NULL,
	[Descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_Ubicacion] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 4/6/2018 17:14:56 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 4/6/2018 17:14:56 ******/
CREATE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 4/6/2018 17:14:56 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 4/6/2018 17:14:56 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 4/6/2018 17:14:56 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_UserId]    Script Date: 4/6/2018 17:14:56 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 4/6/2018 17:14:56 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 4/6/2018 17:14:56 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [pos].[ModulosSistema] ADD  CONSTRAINT [DF_ModulosSistema_Activo]  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [pos].[Persona] ADD  CONSTRAINT [DF_Persona_EsCorreoValido]  DEFAULT ((1)) FOR [EsCorreoValido]
GO
ALTER TABLE [pos].[Persona] ADD  CONSTRAINT [DF_Persona_Activo]  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [pos].[Producto] ADD  DEFAULT ('S') FOR [Gravado]
GO
ALTER TABLE [pos].[ProductoCategoria] ADD  CONSTRAINT [DF_ProductoCategoria_Activo]  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [pos].[RazonMovimientoInventario] ADD  CONSTRAINT [DF_RazonMovimientoInventario_Activo]  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [pos].[ServicioFacturaElectronica] ADD  CONSTRAINT [DF_ServicioFacturaElectronica_Procesada]  DEFAULT ((0)) FOR [Procesada]
GO
ALTER TABLE [pos].[TipoCedula] ADD  CONSTRAINT [DF_TipoCedula_Activo]  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [pos].[TipoCondicionVenta] ADD  CONSTRAINT [DF_TipoCondicionVenta_Activo]  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [pos].[TipoDocumentosReferencia] ADD  CONSTRAINT [DF_TipoDocumentosReferencia_Activo]  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [pos].[TipoExoneraciones] ADD  CONSTRAINT [DF_TipoExoneraciones_Activo]  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [pos].[TipoFigura] ADD  CONSTRAINT [DF_TipoFigura_Activo]  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [pos].[TipoImpuestos] ADD  CONSTRAINT [DF_TipoImpuestos_Excepcion]  DEFAULT ((0)) FOR [Excepcion]
GO
ALTER TABLE [pos].[TipoPago] ADD  CONSTRAINT [DF_TipoPago_Activo]  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [pos].[TipoUnidadesMedida] ADD  CONSTRAINT [DF_TipoUnidadesMedida_Activo]  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [pos].[DetalleFactura]  WITH CHECK ADD  CONSTRAINT [FK_DetalleFactura_EncabezadoFactura] FOREIGN KEY([IdFactura])
REFERENCES [pos].[EncabezadoFactura] ([Id])
GO
ALTER TABLE [pos].[DetalleFactura] CHECK CONSTRAINT [FK_DetalleFactura_EncabezadoFactura]
GO
ALTER TABLE [pos].[DetalleFactura]  WITH CHECK ADD  CONSTRAINT [FK_DetalleFactura_Producto] FOREIGN KEY([IdProducto])
REFERENCES [pos].[Producto] ([Id])
GO
ALTER TABLE [pos].[DetalleFactura] CHECK CONSTRAINT [FK_DetalleFactura_Producto]
GO
ALTER TABLE [pos].[EncabezadoFactura]  WITH CHECK ADD  CONSTRAINT [FK_EncabezadoFactura_EncabezadoFactura] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [pos].[EncabezadoFactura] CHECK CONSTRAINT [FK_EncabezadoFactura_EncabezadoFactura]
GO
ALTER TABLE [pos].[EncabezadoFactura]  WITH CHECK ADD  CONSTRAINT [FK_EncabezadoFactura_Persona] FOREIGN KEY([IdEmisor])
REFERENCES [pos].[Persona] ([Id])
GO
ALTER TABLE [pos].[EncabezadoFactura] CHECK CONSTRAINT [FK_EncabezadoFactura_Persona]
GO
ALTER TABLE [pos].[EncabezadoFactura]  WITH CHECK ADD  CONSTRAINT [FK_EncabezadoFactura_Persona1] FOREIGN KEY([IdReceptor])
REFERENCES [pos].[Persona] ([Id])
GO
ALTER TABLE [pos].[EncabezadoFactura] CHECK CONSTRAINT [FK_EncabezadoFactura_Persona1]
GO
ALTER TABLE [pos].[EncabezadoFactura]  WITH CHECK ADD  CONSTRAINT [FK_EncabezadoFactura_TipoCondicionVenta] FOREIGN KEY([IdTipoCondicionVenta])
REFERENCES [pos].[TipoCondicionVenta] ([Id])
GO
ALTER TABLE [pos].[EncabezadoFactura] CHECK CONSTRAINT [FK_EncabezadoFactura_TipoCondicionVenta]
GO
ALTER TABLE [pos].[EncabezadoFactura]  WITH CHECK ADD  CONSTRAINT [FK_EncabezadoFactura_TipoPago] FOREIGN KEY([IdTipoPago])
REFERENCES [pos].[TipoPago] ([Id])
GO
ALTER TABLE [pos].[EncabezadoFactura] CHECK CONSTRAINT [FK_EncabezadoFactura_TipoPago]
GO
ALTER TABLE [pos].[MovimientosInventario]  WITH CHECK ADD  CONSTRAINT [FK_MovimientosInventario_MovimientosInventario] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [pos].[MovimientosInventario] CHECK CONSTRAINT [FK_MovimientosInventario_MovimientosInventario]
GO
ALTER TABLE [pos].[Persona]  WITH CHECK ADD  CONSTRAINT [FK_Persona_TipoCedula] FOREIGN KEY([IdIdentificacion])
REFERENCES [pos].[TipoCedula] ([Id])
GO
ALTER TABLE [pos].[Persona] CHECK CONSTRAINT [FK_Persona_TipoCedula]
GO
ALTER TABLE [pos].[Persona]  WITH CHECK ADD  CONSTRAINT [FK_Persona_TipoFigura] FOREIGN KEY([IdTipoFigura])
REFERENCES [pos].[TipoFigura] ([Id])
GO
ALTER TABLE [pos].[Persona] CHECK CONSTRAINT [FK_Persona_TipoFigura]
GO
ALTER TABLE [pos].[Persona]  WITH CHECK ADD  CONSTRAINT [FK_Persona_Ubicacion] FOREIGN KEY([IdUbicacion])
REFERENCES [pos].[Ubicacion] ([Id])
GO
ALTER TABLE [pos].[Persona] CHECK CONSTRAINT [FK_Persona_Ubicacion]
GO
ALTER TABLE [pos].[Producto]  WITH CHECK ADD  CONSTRAINT [FK_Producto_Persona] FOREIGN KEY([IdProveedor])
REFERENCES [pos].[Persona] ([Id])
GO
ALTER TABLE [pos].[Producto] CHECK CONSTRAINT [FK_Producto_Persona]
GO
ALTER TABLE [pos].[Producto]  WITH CHECK ADD  CONSTRAINT [FK_Producto_ProductoCategoria] FOREIGN KEY([IdCategoria])
REFERENCES [pos].[ProductoCategoria] ([Id])
GO
ALTER TABLE [pos].[Producto] CHECK CONSTRAINT [FK_Producto_ProductoCategoria]
GO
ALTER TABLE [pos].[Producto]  WITH CHECK ADD  CONSTRAINT [FK_Producto_TipoExoneraciones] FOREIGN KEY([IdExoneracion])
REFERENCES [pos].[TipoExoneraciones] ([Id])
GO
ALTER TABLE [pos].[Producto] CHECK CONSTRAINT [FK_Producto_TipoExoneraciones]
GO
ALTER TABLE [pos].[Producto]  WITH CHECK ADD  CONSTRAINT [FK_Producto_TipoImpuestos] FOREIGN KEY([IdImpuesto])
REFERENCES [pos].[TipoImpuestos] ([Id])
GO
ALTER TABLE [pos].[Producto] CHECK CONSTRAINT [FK_Producto_TipoImpuestos]
GO
ALTER TABLE [pos].[Producto]  WITH CHECK ADD  CONSTRAINT [FK_Producto_TipoUnidadesMedida] FOREIGN KEY([IdUnidadMedida])
REFERENCES [pos].[TipoUnidadesMedida] ([Id])
GO
ALTER TABLE [pos].[Producto] CHECK CONSTRAINT [FK_Producto_TipoUnidadesMedida]
GO
ALTER TABLE [pos].[ServicioFacturaElectronica]  WITH CHECK ADD  CONSTRAINT [FK_ServicioFacturaElectronica_EncabezadoFactura] FOREIGN KEY([IdFactura])
REFERENCES [pos].[EncabezadoFactura] ([Id])
GO
ALTER TABLE [pos].[ServicioFacturaElectronica] CHECK CONSTRAINT [FK_ServicioFacturaElectronica_EncabezadoFactura]
GO
/****** Object:  StoredProcedure [dbo].[crud_TipoFigura_Insertar]    Script Date: 4/6/2018 17:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
   /* ============================================================================   Author:      sa   Create date: May 22 2018  5:36PM   Description: Add description        History   Date   Name    Comments   ==============================================================================     ==============================================================================*/ 
    CREATE PROCEDURE [dbo].[crud_TipoFigura_Insertar]  
	(    
		@Nombre VARCHAR (250), 
		@Descripcion VARCHAR (250),  
		@Activo BIT
	 )  
	 AS  
	 BEGIN     
	 SET FMTONLY OFF;      
	 SET NOCOUNT ON;      
	 DECLARE @ErrorMessage  VARCHAR(MAX)     ,@ErrorProcedure VARCHAR(255)     ,@ErrorSeverity  INT     ,@ErrorState  INT     ,@ErrorLine   INT        
	 BEGIN TRY    
	 
		 INSERT INTO TipoFigura    
		 (      Activo,    Descripcion,    Nombre    )    
		 VALUES    (      @Activo,    @Descripcion,    @Nombre    )        
	 END TRY      
	 BEGIN CATCH             
		 SELECT  @ErrorMessage  = ERROR_MESSAGE()      ,@ErrorSeverity  = ERROR_SEVERITY()      ,@ErrorProcedure = ERROR_PROCEDURE()      ,@ErrorState  = ERROR_STATE()      ,@ErrorLine   = ERROR_LINE()      SET @ErrorMessage = 'Procedure: ' + @ErrorProcedure + space(1) +     @ErrorMessage + ' Line: ' + CONVERT(VARCHAR(20),@ErrorLine)              
		 RAISERROR ( @ErrorMessage, @ErrorSeverity, @ErrorState)        
	 END CATCH 
	 
 END 
 
GO
/****** Object:  StoredProcedure [dbo].[usp_DetalleFacturaActualizar]    Script Date: 4/6/2018 17:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_DetalleFacturaActualizar] 
    @Id int,
    @IdFactura int,
    @IdProducto int,
    @Cantidad int,
    @Precio decimal(24, 6) = NULL
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	UPDATE [dbo].[DetalleFactura]
	SET    [IdFactura] = @IdFactura, [IdProducto] = @IdProducto, [Cantidad] = @Cantidad, [Precio] = @Precio
	WHERE  [Id] = @Id
	
	-- Begin Return Select <- do not remove
	SELECT [Id], [IdFactura], [IdProducto], [Cantidad], [Precio]
	FROM   [dbo].[DetalleFactura]
	WHERE  [Id] = @Id	
	-- End Return Select <- do not remove

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_DetalleFacturaEliminar]    Script Date: 4/6/2018 17:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_DetalleFacturaEliminar] 
    @Id int
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	DELETE
	FROM   [dbo].[DetalleFactura]
	WHERE  [Id] = @Id

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_DetalleFacturaInsertar]    Script Date: 4/6/2018 17:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_DetalleFacturaInsertar] 
    @IdFactura int,
    @IdProducto int,
    @Cantidad int,
    @Precio decimal(24, 6) = NULL
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN
	
	INSERT INTO [dbo].[DetalleFactura] ([IdFactura], [IdProducto], [Cantidad], [Precio])
	SELECT @IdFactura, @IdProducto, @Cantidad, @Precio
	
	-- Begin Return Select <- do not remove
	SELECT [Id], [IdFactura], [IdProducto], [Cantidad], [Precio]
	FROM   [dbo].[DetalleFactura]
	WHERE  [Id] = SCOPE_IDENTITY()
	-- End Return Select <- do not remove
               
	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_DetalleFacturaSelect]    Script Date: 4/6/2018 17:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_DetalleFacturaSelect] 
    @Id int
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	SELECT [Id], [IdFactura], [IdProducto], [Cantidad], [Precio] 
	FROM   [dbo].[DetalleFactura] 
	WHERE  ([Id] = @Id OR @Id IS NULL) 

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_EncabezadoFacturaActualizar]    Script Date: 4/6/2018 17:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_EncabezadoFacturaActualizar] 
    @Id int,
    @ClaveNumerica nvarchar(MAX),
    @CodigoFactura nvarchar(MAX),
    @IdEmpresa int,
    @EstadoFactura varchar(250),
    @IdPersona int,
    @TipoPago int,
    @Descuento float = NULL,
    @SubTotal decimal(24, 6) = NULL,
    @Total decimal(24, 6) = NULL,
    @ImpuestoVenta decimal(24, 6) = NULL,
    @ImpuestoOtros decimal(24, 6) = NULL,
    @FechaHora datetime = NULL,
    @IdUsuario nvarchar(450)
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	UPDATE [dbo].[EncabezadoFactura]
	SET    [ClaveNumerica] = @ClaveNumerica, [CodigoFactura] = @CodigoFactura, [IdEmpresa] = @IdEmpresa, [EstadoFactura] = @EstadoFactura, [IdPersona] = @IdPersona, [TipoPago] = @TipoPago, [Descuento] = @Descuento, [SubTotal] = @SubTotal, [Total] = @Total, [ImpuestoVenta] = @ImpuestoVenta, [ImpuestoOtros] = @ImpuestoOtros, [FechaHora] = @FechaHora, [IdUsuario] = @IdUsuario
	WHERE  [Id] = @Id
	
	-- Begin Return Select <- do not remove
	SELECT [Id], [ClaveNumerica], [CodigoFactura], [IdEmpresa], [EstadoFactura], [IdPersona], [TipoPago], [Descuento], [SubTotal], [Total], [ImpuestoVenta], [ImpuestoOtros], [FechaHora], [IdUsuario]
	FROM   [dbo].[EncabezadoFactura]
	WHERE  [Id] = @Id	
	-- End Return Select <- do not remove

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_EncabezadoFacturaEliminar]    Script Date: 4/6/2018 17:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_EncabezadoFacturaEliminar] 
    @Id int
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	DELETE
	FROM   [dbo].[EncabezadoFactura]
	WHERE  [Id] = @Id

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_EncabezadoFacturaInsertar]    Script Date: 4/6/2018 17:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_EncabezadoFacturaInsertar] 
    @ClaveNumerica nvarchar(MAX),
    @CodigoFactura nvarchar(MAX),
    @IdEmpresa int,
    @EstadoFactura varchar(250),
    @IdPersona int,
    @TipoPago int,
    @Descuento float = NULL,
    @SubTotal decimal(24, 6) = NULL,
    @Total decimal(24, 6) = NULL,
    @ImpuestoVenta decimal(24, 6) = NULL,
    @ImpuestoOtros decimal(24, 6) = NULL,
    @FechaHora datetime = NULL,
    @IdUsuario nvarchar(450)
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN
	
	INSERT INTO [dbo].[EncabezadoFactura] ([ClaveNumerica], [CodigoFactura], [IdEmpresa], [EstadoFactura], [IdPersona], [TipoPago], [Descuento], [SubTotal], [Total], [ImpuestoVenta], [ImpuestoOtros], [FechaHora], [IdUsuario])
	SELECT @ClaveNumerica, @CodigoFactura, @IdEmpresa, @EstadoFactura, @IdPersona, @TipoPago, @Descuento, @SubTotal, @Total, @ImpuestoVenta, @ImpuestoOtros, @FechaHora, @IdUsuario
	
	-- Begin Return Select <- do not remove
	SELECT [Id], [ClaveNumerica], [CodigoFactura], [IdEmpresa], [EstadoFactura], [IdPersona], [TipoPago], [Descuento], [SubTotal], [Total], [ImpuestoVenta], [ImpuestoOtros], [FechaHora], [IdUsuario]
	FROM   [dbo].[EncabezadoFactura]
	WHERE  [Id] = SCOPE_IDENTITY()
	-- End Return Select <- do not remove
               
	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_EncabezadoFacturaSeleccionarTodo]    Script Date: 4/6/2018 17:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_EncabezadoFacturaSeleccionarTodo] 
    @Id int
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	SELECT [Id], [ClaveNumerica], [CodigoFactura], [IdEmpresa], [EstadoFactura], [IdPersona], [TipoPago], [Descuento], [SubTotal], [Total], [ImpuestoVenta], [ImpuestoOtros], [FechaHora], [IdUsuario] 
	FROM   [dbo].[EncabezadoFactura] 
	WHERE  ([Id] = @Id OR @Id IS NULL) 

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_LogErroresActualizar]    Script Date: 4/6/2018 17:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_LogErroresActualizar] 
    @Id int,
    @Modulo int,
    @MensajeError nvarchar(MAX) = NULL,
    @DetalleError nvarchar(MAX) = NULL,
    @Fecha datetime = NULL
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	UPDATE [dbo].[LogErrores]
	SET    [Modulo] = @Modulo, [MensajeError] = @MensajeError, [DetalleError] = @DetalleError, [Fecha] = @Fecha
	WHERE  [Id] = @Id
	
	-- Begin Return Select <- do not remove
	SELECT [Id], [Modulo], [MensajeError], [DetalleError], [Fecha]
	FROM   [dbo].[LogErrores]
	WHERE  [Id] = @Id	
	-- End Return Select <- do not remove

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_LogErroresEliminar]    Script Date: 4/6/2018 17:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_LogErroresEliminar] 
    @Id int
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	DELETE
	FROM   [dbo].[LogErrores]
	WHERE  [Id] = @Id

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_LogErroresInsertar]    Script Date: 4/6/2018 17:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_LogErroresInsertar] 
    @Modulo int,
    @MensajeError nvarchar(MAX) = NULL,
    @DetalleError nvarchar(MAX) = NULL,
    @Fecha datetime = NULL
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN
	
	INSERT INTO [dbo].[LogErrores] ([Modulo], [MensajeError], [DetalleError], [Fecha])
	SELECT @Modulo, @MensajeError, @DetalleError, @Fecha
	
	-- Begin Return Select <- do not remove
	SELECT [Id], [Modulo], [MensajeError], [DetalleError], [Fecha]
	FROM   [dbo].[LogErrores]
	WHERE  [Id] = SCOPE_IDENTITY()
	-- End Return Select <- do not remove
               
	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_LogErroresSeleccionarTodo]    Script Date: 4/6/2018 17:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_LogErroresSeleccionarTodo] 
    @Id int
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	SELECT [Id], [Modulo], [MensajeError], [DetalleError], [Fecha] 
	FROM   [dbo].[LogErrores] 
	WHERE  ([Id] = @Id OR @Id IS NULL) 

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_MovimientosInventarioActualizar]    Script Date: 4/6/2018 17:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_MovimientosInventarioActualizar] 
    @ID int,
    @IdProducto int,
    @TipoMovimiento varchar(50),
    @IdRazonMovimiento int,
    @Cantidad int,
    @Fecha datetime,
    @IdUsuario nvarchar(450)
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	UPDATE [dbo].[MovimientosInventario]
	SET    [IdProducto] = @IdProducto, [TipoMovimiento] = @TipoMovimiento, [IdRazonMovimiento] = @IdRazonMovimiento, [Cantidad] = @Cantidad, [Fecha] = @Fecha, [IdUsuario] = @IdUsuario
	WHERE  [ID] = @ID
	
	-- Begin Return Select <- do not remove
	SELECT [ID], [IdProducto], [TipoMovimiento], [IdRazonMovimiento], [Cantidad], [Fecha], [IdUsuario]
	FROM   [dbo].[MovimientosInventario]
	WHERE  [ID] = @ID	
	-- End Return Select <- do not remove

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_MovimientosInventarioEliminar]    Script Date: 4/6/2018 17:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_MovimientosInventarioEliminar] 
    @ID int
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	DELETE
	FROM   [dbo].[MovimientosInventario]
	WHERE  [ID] = @ID

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_MovimientosInventarioInsertar]    Script Date: 4/6/2018 17:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_MovimientosInventarioInsertar] 
    @IdProducto int,
    @TipoMovimiento varchar(50),
    @IdRazonMovimiento int,
    @Cantidad int,
    @Fecha datetime,
    @IdUsuario nvarchar(450)
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN
	
	INSERT INTO [dbo].[MovimientosInventario] ([IdProducto], [TipoMovimiento], [IdRazonMovimiento], [Cantidad], [Fecha], [IdUsuario])
	SELECT @IdProducto, @TipoMovimiento, @IdRazonMovimiento, @Cantidad, @Fecha, @IdUsuario
	
	-- Begin Return Select <- do not remove
	SELECT [ID], [IdProducto], [TipoMovimiento], [IdRazonMovimiento], [Cantidad], [Fecha], [IdUsuario]
	FROM   [dbo].[MovimientosInventario]
	WHERE  [ID] = SCOPE_IDENTITY()
	-- End Return Select <- do not remove
               
	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_MovimientosInventarioSeleccionarTodo]    Script Date: 4/6/2018 17:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_MovimientosInventarioSeleccionarTodo] 
    @ID int
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	SELECT [ID], [IdProducto], [TipoMovimiento], [IdRazonMovimiento], [Cantidad], [Fecha], [IdUsuario] 
	FROM   [dbo].[MovimientosInventario] 
	WHERE  ([ID] = @ID OR @ID IS NULL) 

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_PersonaActualizar]    Script Date: 4/6/2018 17:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_PersonaActualizar] 
    @Id int,
    @TipoFigura int,
    @Cedula varchar(50),
    @TipoCedula int,
    @Nombre varchar(250),
    @Correo varchar(50),
    @FechaNacimiento date,
    @Celular varchar(50),
    @Direccion varchar(250),
    @EsCorreoValido bit,
    @Eliminado bit
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	UPDATE [dbo].[Persona]
	SET    [TipoFigura] = @TipoFigura, [Cedula] = @Cedula, [TipoCedula] = @TipoCedula, [Nombre] = @Nombre, [Correo] = @Correo, [FechaNacimiento] = @FechaNacimiento, [Celular] = @Celular, [Direccion] = @Direccion, [EsCorreoValido] = @EsCorreoValido, [Eliminado] = @Eliminado
	WHERE  [Id] = @Id
	
	-- Begin Return Select <- do not remove
	SELECT [Id], [TipoFigura], [Cedula], [TipoCedula], [Nombre], [Correo], [FechaNacimiento], [Celular], [Direccion], [EsCorreoValido], [Version], [Eliminado]
	FROM   [dbo].[Persona]
	WHERE  [Id] = @Id	
	-- End Return Select <- do not remove

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_PersonaEliminar]    Script Date: 4/6/2018 17:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_PersonaEliminar] 
    @Id int
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	DELETE
	FROM   [dbo].[Persona]
	WHERE  [Id] = @Id

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_PersonaInsertar]    Script Date: 4/6/2018 17:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_PersonaInsertar] 
    @TipoFigura int,
    @Cedula varchar(50),
    @TipoCedula int,
    @Nombre varchar(250),
    @Correo varchar(50),
    @FechaNacimiento date,
    @Celular varchar(50),
    @Direccion varchar(250),
    @EsCorreoValido bit,
    @Eliminado bit
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN
	
	INSERT INTO [dbo].[Persona] ([TipoFigura], [Cedula], [TipoCedula], [Nombre], [Correo], [FechaNacimiento], [Celular], [Direccion], [EsCorreoValido], [Eliminado])
	SELECT @TipoFigura, @Cedula, @TipoCedula, @Nombre, @Correo, @FechaNacimiento, @Celular, @Direccion, @EsCorreoValido, @Eliminado
	
	-- Begin Return Select <- do not remove
	SELECT [Id], [TipoFigura], [Cedula], [TipoCedula], [Nombre], [Correo], [FechaNacimiento], [Celular], [Direccion], [EsCorreoValido], [Version], [Eliminado]
	FROM   [dbo].[Persona]
	WHERE  [Id] = SCOPE_IDENTITY()
	-- End Return Select <- do not remove
               
	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_PersonaSeleccionarTodo]    Script Date: 4/6/2018 17:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_PersonaSeleccionarTodo] 
    @Id int
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	SELECT [Id], [TipoFigura], [Cedula], [TipoCedula], [Nombre], [Correo], [FechaNacimiento], [Celular], [Direccion], [EsCorreoValido], [Version], [Eliminado] 
	FROM   [dbo].[Persona] 
	WHERE  ([Id] = @Id OR @Id IS NULL) 

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_ProductoActualizar]    Script Date: 4/6/2018 17:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_ProductoActualizar] 
    @Id int,
    @IdCategoria int,
    @IdProveedor int,
    @Nombre varchar(250),
    @Descripcion varchar(250),
    @NumeroConsecutivo int,
    @Cantidad int,
    @Costo decimal(18, 4),
    @Precio decimal(18, 4),
    @Codigo nvarchar(MAX) = NULL,
    @FechaCreacion datetime = NULL,
    @FechaModificacion datetime = NULL,
    @Gravado char(1),
    @Activo bit = NULL
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	UPDATE [dbo].[Producto]
	SET    [IdCategoria] = @IdCategoria, [IdProveedor] = @IdProveedor, [Nombre] = @Nombre, [Descripcion] = @Descripcion, [NumeroConsecutivo] = @NumeroConsecutivo, [Cantidad] = @Cantidad, [Costo] = @Costo, [Precio] = @Precio, [Codigo] = @Codigo, [FechaCreacion] = @FechaCreacion, [FechaModificacion] = @FechaModificacion, [Gravado] = @Gravado, [Activo] = @Activo
	WHERE  [Id] = @Id
	
	-- Begin Return Select <- do not remove
	SELECT [Id], [IdCategoria], [IdProveedor], [Nombre], [Descripcion], [NumeroConsecutivo], [Cantidad], [Costo], [Precio], [Codigo], [FechaCreacion], [FechaModificacion], [Gravado], [Activo], [Version]
	FROM   [dbo].[Producto]
	WHERE  [Id] = @Id	
	-- End Return Select <- do not remove

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_ProductoCategoriaActualizar]    Script Date: 4/6/2018 17:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_ProductoCategoriaActualizar] 
    @Id int,
    @NombreCategoria varchar(450),
    @Descripcion varchar(450) = NULL,
    @Activo bit
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	UPDATE [dbo].[ProductoCategoria]
	SET    [NombreCategoria] = @NombreCategoria, [Descripcion] = @Descripcion, [Activo] = @Activo
	WHERE  [Id] = @Id
	
	-- Begin Return Select <- do not remove
	SELECT [Id], [NombreCategoria], [Descripcion], [Activo]
	FROM   [dbo].[ProductoCategoria]
	WHERE  [Id] = @Id	
	-- End Return Select <- do not remove

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_ProductoCategoriaEliminar]    Script Date: 4/6/2018 17:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_ProductoCategoriaEliminar] 
    @Id int
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	DELETE
	FROM   [dbo].[ProductoCategoria]
	WHERE  [Id] = @Id

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_ProductoCategoriaInsertar]    Script Date: 4/6/2018 17:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_ProductoCategoriaInsertar] 
    @NombreCategoria varchar(450),
    @Descripcion varchar(450) = NULL,
    @Activo bit
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN
	
	INSERT INTO [dbo].[ProductoCategoria] ([NombreCategoria], [Descripcion], [Activo])
	SELECT @NombreCategoria, @Descripcion, @Activo
	
	-- Begin Return Select <- do not remove
	SELECT [Id], [NombreCategoria], [Descripcion], [Activo]
	FROM   [dbo].[ProductoCategoria]
	WHERE  [Id] = SCOPE_IDENTITY()
	-- End Return Select <- do not remove
               
	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_ProductoCategoriaSeleccionarTodo]    Script Date: 4/6/2018 17:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_ProductoCategoriaSeleccionarTodo] 
    @Id int
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	SELECT [Id], [NombreCategoria], [Descripcion], [Activo] 
	FROM   [dbo].[ProductoCategoria] 
	WHERE  ([Id] = @Id OR @Id IS NULL) 

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_ProductoEliminar]    Script Date: 4/6/2018 17:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_ProductoEliminar] 
    @Id int
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	DELETE
	FROM   [dbo].[Producto]
	WHERE  [Id] = @Id

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_ProductoInsertar]    Script Date: 4/6/2018 17:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_ProductoInsertar] 
    @IdCategoria int,
    @IdProveedor int,
    @Nombre varchar(250),
    @Descripcion varchar(250),
    @NumeroConsecutivo int,
    @Cantidad int,
    @Costo decimal(18, 4),
    @Precio decimal(18, 4),
    @Codigo nvarchar(MAX) = NULL,
    @FechaCreacion datetime = NULL,
    @FechaModificacion datetime = NULL,
    @Gravado char(1),
    @Activo bit = NULL
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN
	
	INSERT INTO [dbo].[Producto] ([IdCategoria], [IdProveedor], [Nombre], [Descripcion], [NumeroConsecutivo], [Cantidad], [Costo], [Precio], [Codigo], [FechaCreacion], [FechaModificacion], [Gravado], [Activo])
	SELECT @IdCategoria, @IdProveedor, @Nombre, @Descripcion, @NumeroConsecutivo, @Cantidad, @Costo, @Precio, @Codigo, @FechaCreacion, @FechaModificacion, @Gravado, @Activo
	
	-- Begin Return Select <- do not remove
	SELECT [Id], [IdCategoria], [IdProveedor], [Nombre], [Descripcion], [NumeroConsecutivo], [Cantidad], [Costo], [Precio], [Codigo], [FechaCreacion], [FechaModificacion], [Gravado], [Activo], [Version]
	FROM   [dbo].[Producto]
	WHERE  [Id] = SCOPE_IDENTITY()
	-- End Return Select <- do not remove
               
	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_ProductoSeleccionarTodo]    Script Date: 4/6/2018 17:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_ProductoSeleccionarTodo] 
    @Id int
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	SELECT [Id], [IdCategoria], [IdProveedor], [Nombre], [Descripcion], [NumeroConsecutivo], [Cantidad], [Costo], [Precio], [Codigo], [FechaCreacion], [FechaModificacion], [Gravado], [Activo], [Version] 
	FROM   [dbo].[Producto] 
	WHERE  ([Id] = @Id OR @Id IS NULL) 

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_ServicioFacturaElectronicaActualizar]    Script Date: 4/6/2018 17:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_ServicioFacturaElectronicaActualizar] 
    @Id int,
    @IdFactura int,
    @TiempoEnvio datetime = NULL,
    @XmlFacturaElectronica xml = NULL,
    @TiempoRecibido datetime = NULL,
    @XmlRecibido nvarchar(MAX) = NULL,
    @EmailEnviado nvarchar(250) = NULL,
    @FechaCreacion datetime = NULL,
    @Procesada bit
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	UPDATE [dbo].[ServicioFacturaElectronica]
	SET    [IdFactura] = @IdFactura, [TiempoEnvio] = @TiempoEnvio, [XmlFacturaElectronica] = @XmlFacturaElectronica, [TiempoRecibido] = @TiempoRecibido, [XmlRecibido] = @XmlRecibido, [EmailEnviado] = @EmailEnviado, [FechaCreacion] = @FechaCreacion, [Procesada] = @Procesada
	WHERE  [Id] = @Id
	
	-- Begin Return Select <- do not remove
	SELECT [Id], [IdFactura], [TiempoEnvio], [XmlFacturaElectronica], [TiempoRecibido], [XmlRecibido], [EmailEnviado], [FechaCreacion], [Procesada]
	FROM   [dbo].[ServicioFacturaElectronica]
	WHERE  [Id] = @Id	
	-- End Return Select <- do not remove

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_ServicioFacturaElectronicaEliminar]    Script Date: 4/6/2018 17:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_ServicioFacturaElectronicaEliminar] 
    @Id int
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	DELETE
	FROM   [dbo].[ServicioFacturaElectronica]
	WHERE  [Id] = @Id

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_ServicioFacturaElectronicaInsertar]    Script Date: 4/6/2018 17:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_ServicioFacturaElectronicaInsertar] 
    @IdFactura int,
    @TiempoEnvio datetime = NULL,
    @XmlFacturaElectronica xml = NULL,
    @TiempoRecibido datetime = NULL,
    @XmlRecibido nvarchar(MAX) = NULL,
    @EmailEnviado nvarchar(250) = NULL,
    @FechaCreacion datetime = NULL,
    @Procesada bit
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN
	
	INSERT INTO [dbo].[ServicioFacturaElectronica] ([IdFactura], [TiempoEnvio], [XmlFacturaElectronica], [TiempoRecibido], [XmlRecibido], [EmailEnviado], [FechaCreacion], [Procesada])
	SELECT @IdFactura, @TiempoEnvio, @XmlFacturaElectronica, @TiempoRecibido, @XmlRecibido, @EmailEnviado, @FechaCreacion, @Procesada
	
	-- Begin Return Select <- do not remove
	SELECT [Id], [IdFactura], [TiempoEnvio], [XmlFacturaElectronica], [TiempoRecibido], [XmlRecibido], [EmailEnviado], [FechaCreacion], [Procesada]
	FROM   [dbo].[ServicioFacturaElectronica]
	WHERE  [Id] = SCOPE_IDENTITY()
	-- End Return Select <- do not remove
               
	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_ServicioFacturaElectronicaSeleccionarTodo]    Script Date: 4/6/2018 17:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_ServicioFacturaElectronicaSeleccionarTodo] 
    @Id int
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	SELECT [Id], [IdFactura], [TiempoEnvio], [XmlFacturaElectronica], [TiempoRecibido], [XmlRecibido], [EmailEnviado], [FechaCreacion], [Procesada] 
	FROM   [dbo].[ServicioFacturaElectronica] 
	WHERE  ([Id] = @Id OR @Id IS NULL) 

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_TipoCedulaActualizar]    Script Date: 4/6/2018 17:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_TipoCedulaActualizar] 
    @Id int,
    @TipoCedula varchar(450),
    @Descripcion varchar(450) = NULL,
    @Activo bit
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	UPDATE [dbo].[TipoCedula]
	SET    [TipoCedula] = @TipoCedula, [Descripcion] = @Descripcion, [Activo] = @Activo
	WHERE  [Id] = @Id
	
	-- Begin Return Select <- do not remove
	SELECT [Id], [TipoCedula], [Descripcion], [Activo]
	FROM   [dbo].[TipoCedula]
	WHERE  [Id] = @Id	
	-- End Return Select <- do not remove

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_TipoCedulaEliminar]    Script Date: 4/6/2018 17:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_TipoCedulaEliminar] 
    @Id int
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	DELETE
	FROM   [dbo].[TipoCedula]
	WHERE  [Id] = @Id

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_TipoCedulaInsertar]    Script Date: 4/6/2018 17:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_TipoCedulaInsertar] 
    @TipoCedula varchar(450),
    @Descripcion varchar(450) = NULL,
    @Activo bit
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN
	
	INSERT INTO [dbo].[TipoCedula] ([TipoCedula], [Descripcion], [Activo])
	SELECT @TipoCedula, @Descripcion, @Activo
	
	-- Begin Return Select <- do not remove
	SELECT [Id], [TipoCedula], [Descripcion], [Activo]
	FROM   [dbo].[TipoCedula]
	WHERE  [Id] = SCOPE_IDENTITY()
	-- End Return Select <- do not remove
               
	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_TipoCedulaSeleccionar]    Script Date: 4/6/2018 17:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_TipoCedulaSeleccionar] 
    @Id int
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	SELECT [Id], [TipoCedula], [Descripcion], [Activo] 
	FROM   [dbo].[TipoCedula] 
	WHERE  ([Id] = @Id OR @Id IS NULL) 

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_TipoFiguraActualizar]    Script Date: 4/6/2018 17:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_TipoFiguraActualizar] 
    @Id int,
    @Nombre varchar(250),
    @Descripcion varchar(250),
    @Activo bit
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	UPDATE [dbo].[TipoFigura]
	SET    [Nombre] = @Nombre, [Descripcion] = @Descripcion, [Activo] = @Activo
	WHERE  [Id] = @Id
	
	-- Begin Return Select <- do not remove
	SELECT [Id], [Nombre], [Descripcion], [Activo], [Version]
	FROM   [dbo].[TipoFigura]
	WHERE  [Id] = @Id	
	-- End Return Select <- do not remove

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_TipoFiguraEliminar]    Script Date: 4/6/2018 17:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_TipoFiguraEliminar] 
    @Id int
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	DELETE
	FROM   [dbo].[TipoFigura]
	WHERE  [Id] = @Id

	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_TipoFiguraInsertar]    Script Date: 4/6/2018 17:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_TipoFiguraInsertar] 
    @Nombre varchar(250),
    @Descripcion varchar(250),
    @Activo bit
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN
	
	INSERT INTO [dbo].[TipoFigura] ([Nombre], [Descripcion], [Activo])
	SELECT @Nombre, @Descripcion, @Activo
	
	-- Begin Return Select <- do not remove
	SELECT [Id], [Nombre], [Descripcion], [Activo], [Version]
	FROM   [dbo].[TipoFigura]
	WHERE  [Id] = SCOPE_IDENTITY()
	-- End Return Select <- do not remove
               
	COMMIT
GO
/****** Object:  StoredProcedure [dbo].[usp_TipoFiguraSeleccionarTodo]    Script Date: 4/6/2018 17:14:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_TipoFiguraSeleccionarTodo] 
    @Id int
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	SELECT [Id], [Nombre], [Descripcion], [Activo], [Version] 
	FROM   [dbo].[TipoFigura] 
	WHERE  ([Id] = @Id OR @Id IS NULL) 

	COMMIT
GO
USE [master]
GO
ALTER DATABASE [SimpleFact] SET  READ_WRITE 
GO
