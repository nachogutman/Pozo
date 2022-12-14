USE [Pozo]
GO
/****** Object:  User [alumno]    Script Date: 17/11/2022 15:24:11 ******/
CREATE USER [alumno] FOR LOGIN [alumno] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Carta]    Script Date: 17/11/2022 15:24:11 ******/
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
/****** Object:  Table [dbo].[HistorialPozos]    Script Date: 17/11/2022 15:24:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HistorialPozos](
	[idPozo] [int] IDENTITY(1,1) NOT NULL,
	[montoInicial] [int] NULL,
	[recordDeMonto] [int] NULL,
 CONSTRAINT [PK_HistorialPozos] PRIMARY KEY CLUSTERED 
(
	[idPozo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Jugador]    Script Date: 17/11/2022 15:24:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Jugador](
	[idJugador] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[saldo] [int] NULL,
	[record] [money] NULL,
	[foto] [varchar](50) NULL,
 CONSTRAINT [PK_Jugador] PRIMARY KEY CLUSTERED 
(
	[idJugador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Carta] ON 

INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (1, 1, N'Diamante', N'/sources/Diamante/1Diamante.png')
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (2, 1, N'Corazon', N'/sources/Corazon/1Corazon.png')
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (3, 1, N'Pikas', N'/sources/Pikas/1Pikas.png')
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (4, 1, N'Trebol', N'/sources/Trebol/1Trebol.png')
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (5, 2, N'Diamante', N'/sources/Diamante/2Diamante.png')
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (6, 2, N'Corazon', N'/sources/Corazon/2Corazon.png')
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (7, 2, N'Pikas', N'/sources/Pikas/2Pikas.png')
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (8, 2, N'Trebol', N'/sources/Trebol/2Trebol.png')
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (9, 3, N'Diamante', N'/sources/Diamante/3Diamante.png')
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (10, 3, N'Corazon', N'/sources/Corazon/3Corazon.png')
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (11, 3, N'Pikas', N'/sources/Pikas/3Pikas.png')
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (12, 3, N'Trebol', N'/sources/Trebol/3Trebol.png')
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (13, 4, N'Diamante', N'/sources/Diamante/4Diamante.png')
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (14, 4, N'Corazon', N'/sources/Corazon/4Corazon.png')
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (15, 4, N'Pikas', N'/sources/Pikas/4Pikas.png')
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (16, 4, N'Trebol', N'/sources/Trebol/4Trebol.png')
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (17, 5, N'Diamante', N'/sources/Diamante/5Diamante.png')
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (18, 5, N'Corazon', N'/sources/Corazon/5Corazon.png')
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (19, 5, N'Pikas', N'/sources/Pikas/5Pikas.png')
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (20, 5, N'Trebol', N'/sources/Trebol/5Trebol.png')
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (21, 6, N'Diamante', N'/sources/Diamante/6Diamante.png')
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (22, 6, N'Corazon', N'/sources/Corazon/6Corazon.png')
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (23, 6, N'Pikas', N'/sources/Pikas/6Pikas.png')
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (24, 6, N'Trebol', N'/sources/Trebol/6Trebol.png')
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (25, 7, N'Diamante', N'/sources/Diamante/7Diamante.png')
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (26, 7, N'Corazon', N'/sources/Corazon/7Corazon.png')
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (27, 7, N'Pikas', N'/sources/Pikas/7Pikas.png')
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (28, 7, N'Trebol', N'/sources/Trebol/7Trebol.png')
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (29, 10, N'Diamante', N'/sources/Diamante/10Diamante.png')
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (30, 10, N'Corazon', N'/sources/Corazon/10Corazon.png')
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (31, 10, N'Pikas', N'/sources/Pikas/10Pikas.png')
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (32, 10, N'Trebol', N'/sources/Trebol/10Trebol.png')
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (33, 11, N'Diamante', N'/sources/Diamante/11Diamante.png')
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (34, 11, N'Corazon', N'/sources/Corazon/11Corazon.png')
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (35, 11, N'Pikas', N'/sources/Pikas/11Pikas.png')
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (36, 11, N'Trebol', N'/sources/Trebol/11Trebol.png')
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (37, 12, N'Diamante', N'/sources/Diamante/12Diamante.png')
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (38, 12, N'Corazon', N'/sources/Corazon/12Corazon.png')
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (39, 12, N'Pikas', N'/sources/Pikas/12Pikas.png')
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (40, 12, N'Trebol', N'/sources/Trebol/12Trebol.png')
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (41, 9, N'Diamante', N'/sources/Diamante/9Diamante.png')
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (42, 9, N'Corazon', N'/sources/Corazon/9Corazon.png')
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (43, 9, N'Pikas', N'/sources/Pikas/9Pikas.png')
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (44, 9, N'Trebol', N'/sources/Trebol/9Trebol.png')
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (57, 8, N'Diamante', N'/sources/Diamante/8Diamante.png')
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (58, 8, N'Corazon', N'/sources/Corazon/8Corazon.png')
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (59, 8, N'Pikas', N'/sources/Pikas/8Pikas.png')
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (60, 8, N'Trebol', N'/sources/Trebol/8Trebol.png')
SET IDENTITY_INSERT [dbo].[Carta] OFF
GO
SET IDENTITY_INSERT [dbo].[HistorialPozos] ON 

INSERT [dbo].[HistorialPozos] ([idPozo], [montoInicial], [recordDeMonto]) VALUES (1, 200, 600)
INSERT [dbo].[HistorialPozos] ([idPozo], [montoInicial], [recordDeMonto]) VALUES (2, 100, 300)
INSERT [dbo].[HistorialPozos] ([idPozo], [montoInicial], [recordDeMonto]) VALUES (13, 900, 2800)
INSERT [dbo].[HistorialPozos] ([idPozo], [montoInicial], [recordDeMonto]) VALUES (14, 100, 300)
INSERT [dbo].[HistorialPozos] ([idPozo], [montoInicial], [recordDeMonto]) VALUES (15, 800, 400)
INSERT [dbo].[HistorialPozos] ([idPozo], [montoInicial], [recordDeMonto]) VALUES (16, 1100, 1000)
SET IDENTITY_INSERT [dbo].[HistorialPozos] OFF
GO
SET IDENTITY_INSERT [dbo].[Jugador] ON 

INSERT [dbo].[Jugador] ([idJugador], [nombre], [saldo], [record], [foto]) VALUES (1, N'Nacho', 3600, 3600.0000, N'\sources\profilePictures\Nacho.jpg')
INSERT [dbo].[Jugador] ([idJugador], [nombre], [saldo], [record], [foto]) VALUES (3, N'pepe', 5400, 5400.0000, N'\sources\profilePictures\pepe.jpg')
INSERT [dbo].[Jugador] ([idJugador], [nombre], [saldo], [record], [foto]) VALUES (1003, N'Pepino', 1800, 2000.0000, N'\sources\profilePictures\Pepino.jpg')
INSERT [dbo].[Jugador] ([idJugador], [nombre], [saldo], [record], [foto]) VALUES (1004, N'JUli', 83150, 83150.0000, N'\sources\profilePictures\JUli.jpg')
INSERT [dbo].[Jugador] ([idJugador], [nombre], [saldo], [record], [foto]) VALUES (1009, N'MIcho', 2500, 2500.0000, N'/sources/profilePictures/micho.jpg')
SET IDENTITY_INSERT [dbo].[Jugador] OFF
GO
