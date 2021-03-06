USE [Bar]
GO
/****** Object:  Table [dbo].[ALIMENTOS]    Script Date: 21/03/2019 13:20:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ALIMENTOS](
	[ID_ALIMENTO] [int] NULL,
	[NOM_ALIMENTO] [nvarchar](20) NULL,
	[TIPO_ALIMENTO] [nvarchar](15) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BEBIDAS]    Script Date: 21/03/2019 13:20:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BEBIDAS](
	[ID_BEBIDA] [int] NULL,
	[NOM_BEBIDA] [nvarchar](15) NULL,
	[TIPO_BEBIDA] [nvarchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CLIENTES]    Script Date: 21/03/2019 13:20:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLIENTES](
	[ID_CLIENTE] [int] NULL,
	[NOM_CLIENTE] [nvarchar](30) NULL,
	[CUENTA_CLIENTE] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[COMPRA]    Script Date: 21/03/2019 13:20:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COMPRA](
	[ID_COMPRA] [int] NULL,
	[ID_PROV] [nvarchar](20) NULL,
	[PRODUCTOS] [nvarchar](30) NULL,
	[SUBTOTAL] [int] NULL,
	[IVA] [decimal](18, 0) NULL,
	[FECHA] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DETALLE_COMPRA]    Script Date: 21/03/2019 13:20:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DETALLE_COMPRA](
	[ID] [int] NULL,
	[PRODUCTOS] [nvarchar](30) NULL,
	[PRECIO_COSTO] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DETALLE_VENTA]    Script Date: 21/03/2019 13:20:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DETALLE_VENTA](
	[ID] [int] NULL,
	[NOM_CLIENTE] [nvarchar](30) NULL,
	[NOM_ALIMENTO] [nvarchar](20) NULL,
	[NOM_BEBIDA] [nvarchar](15) NULL,
	[CANT_ALIMENTO] [int] NULL,
	[CANT_BEBIDA] [int] NULL,
	[TOTAL] [money] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EMPLEADOS]    Script Date: 21/03/2019 13:20:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMPLEADOS](
	[ID_EMPLEADO] [int] NULL,
	[NOM_EMPLEADO] [nvarchar](50) NULL,
	[PUESTO_EMPLEADO] [nvarchar](15) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[INVENTARIO]    Script Date: 21/03/2019 13:20:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INVENTARIO](
	[ID] [int] NULL,
	[ID_B] [int] NULL,
	[ID_A] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PROVEEDORES]    Script Date: 21/03/2019 13:20:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PROVEEDORES](
	[ID_PROV] [int] NULL,
	[NOM_PROV] [nvarchar](20) NULL,
	[PRODUCTOS] [nvarchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VENTA]    Script Date: 21/03/2019 13:20:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VENTA](
	[ID] [int] NULL,
	[ID_CLIENTE] [int] NULL,
	[SUBTOTAL] [int] NULL,
	[IVA] [decimal](18, 0) NULL,
	[TOTAL] [money] NULL
) ON [PRIMARY]
GO
