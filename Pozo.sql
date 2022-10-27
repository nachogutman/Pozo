USE [Pozo]
GO
/****** Object:  User [alumno]    Script Date: 27/10/2022 15:57:11 ******/
CREATE USER [alumno] FOR LOGIN [alumno] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Carta]    Script Date: 27/10/2022 15:57:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carta](
	[idCarta] [int] IDENTITY(1,1) NOT NULL,
	[numero] [int] NULL,
	[palo] [varchar](50) NULL,
	[foto] [text] NULL,
 CONSTRAINT [PK_Carta] PRIMARY KEY CLUSTERED 
(
	[idCarta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HistorialPozos]    Script Date: 27/10/2022 15:57:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HistorialPozos](
	[idPozo] [int] IDENTITY(1,1) NOT NULL,
	[montoInicial] [int] NULL,
	[recordDeMonto] [int] NULL,
	[ganador] [varchar](50) NULL,
 CONSTRAINT [PK_HistorialPozos] PRIMARY KEY CLUSTERED 
(
	[idPozo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Jugador]    Script Date: 27/10/2022 15:57:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Jugador](
	[idJugador] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[saldo] [int] NULL,
	[record] [money] NULL,
	[jugando] [bit] NULL,
 CONSTRAINT [PK_Jugador] PRIMARY KEY CLUSTERED 
(
	[idJugador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Carta] ON 

INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (1, 1, N'Espada', N'/sources/Espada/1Espada.jpg')
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (2, 1, N'Basto', N'/sources/Basto/1Basto.jpg')
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (3, 1, N'Oro', N'/sources/Oro/1Oro.jpg')
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (4, 1, N'Copa', N'/sources/Copa/1Copa.jpg')
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (5, 2, N'Espada', N'/sources/Espada/2Espada.jpg')
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (6, 2, N'Basto', N'/sources/Basto/2Basto.jpg')
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (7, 2, N'Oro', N'/sources/Oro/2Oro.jpg')
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (8, 2, N'Copa', N'/sources/Copa/2Copa.jpg')
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (9, 3, N'Espada', N'/sources/Espada/3Espada.jpg')
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (10, 3, N'Basto', N'/sources/Basto/3Basto.jpg')
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (11, 3, N'Oro', N'/sources/Oro/3Oro.jpg')
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (12, 3, N'Copa', N'/sources/Copa/3Copa.jpg')
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (13, 4, N'Espada', N'/sources/Espada/4Espada.jpg')
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (14, 4, N'Basto', N'/sources/Basto/4Basto.jpg')
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (15, 4, N'Oro', N'/sources/Oro/4Oro.jpg')
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (16, 4, N'Copa', N'/sources/Copa/4Copa.jpg')
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (17, 5, N'Espada', N'/sources/Espada/5Espada.jpg')
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (18, 5, N'Basto', N'/sources/Basto/5Basto.jpg')
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (19, 5, N'Oro', N'/sources/Oro/5Oro.jpg')
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (20, 5, N'Copa', N'/sources/Copa/5Copa.jpg')
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (21, 6, N'Espada', N'/sources/Espada/6Espada.jpg')
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (22, 6, N'Basto', N'/sources/Basto/6Basto.jpg')
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (23, 6, N'Oro', N'/sources/Oro/6Oro.jpg')
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (24, 6, N'Copa', N'/sources/Copa/6Copa.jpg')
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (25, 7, N'Espada', N'/sources/Espada/7Espada.jpg')
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (26, 7, N'Basto', N'/sources/Basto/7Basto.jpg')
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (27, 7, N'Oro', N'/sources/Oro/7Oro.jpg')
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (28, 7, N'Copa', N'/sources/Copa/7Copa.jpg')
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (29, 10, N'Espada', N'/sources/Espada/10Espada.jpg')
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (30, 10, N'Basto', N'/sources/Basto/10Basto.jpg')
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (31, 10, N'Oro', N'/sources/Oro/10Oro.jpg')
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (32, 10, N'Copa', N'/sources/Copa/10Copa.jpg')
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (33, 11, N'Espada', N'/sources/Espada/11Espada.jpg')
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (34, 11, N'Basto', N'/sources/Basto/11Basto.jpg')
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (35, 11, N'Oro', N'/sources/Oro/11Oro.jpg')
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (36, 11, N'Copa', N'/sources/Copa/11Copa.jpg')
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (37, 12, N'Espada', N'/sources/Espada/12Espada.jpg')
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (38, 12, N'Basto', N'/sources/Basto/12Basto.jpg')
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (39, 12, N'Oro', N'/sources/Oro/12Oro.jpg')
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (40, 12, N'Copa', N'/sources/Copa/12Copa.jpg')
SET IDENTITY_INSERT [dbo].[Carta] OFF
GO
SET IDENTITY_INSERT [dbo].[Jugador] ON 

INSERT [dbo].[Jugador] ([idJugador], [nombre], [saldo], [record], [jugando]) VALUES (1, N'Nacho', 999, 999.0000, 1)
INSERT [dbo].[Jugador] ([idJugador], [nombre], [saldo], [record], [jugando]) VALUES (2, N'Pedro', 2, 2.0000, 1)
SET IDENTITY_INSERT [dbo].[Jugador] OFF
GO
