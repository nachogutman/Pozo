USE [Pozo]
GO
/****** Object:  User [alumno]    Script Date: 19/10/2022 12:08:41 ******/
CREATE USER [alumno] FOR LOGIN [alumno] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Carta]    Script Date: 19/10/2022 12:08:41 ******/
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
/****** Object:  Table [dbo].[HistorialPozos]    Script Date: 19/10/2022 12:08:41 ******/
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
/****** Object:  Table [dbo].[Jugador]    Script Date: 19/10/2022 12:08:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Jugador](
	[idJugador] [int] NOT NULL,
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

INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (1, 1, N'Espada', NULL)
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (2, 1, N'Basto', NULL)
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (3, 1, N'Oro', NULL)
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (4, 1, N'Copa', NULL)
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (5, 2, N'Espada', NULL)
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (6, 2, N'Basto', NULL)
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (7, 2, N'Oro', NULL)
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (8, 2, N'Copa', NULL)
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (9, 3, N'Espada', NULL)
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (10, 3, N'Basto', NULL)
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (11, 3, N'Oro', NULL)
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (12, 3, N'Copa', NULL)
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (13, 4, N'Espada', NULL)
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (14, 4, N'Basto', NULL)
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (15, 4, N'Oro', NULL)
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (16, 4, N'Copa', NULL)
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (17, 5, N'Espada', NULL)
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (18, 5, N'Basto', NULL)
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (19, 5, N'Oro', NULL)
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (20, 5, N'Copa', NULL)
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (21, 6, N'Espada', NULL)
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (22, 6, N'Basto', NULL)
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (23, 6, N'Oro', NULL)
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (24, 6, N'Copa', NULL)
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (25, 7, N'Espada', NULL)
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (26, 7, N'Basto', NULL)
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (27, 7, N'Oro', NULL)
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (28, 7, N'Copa', NULL)
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (29, 10, N'Espada', NULL)
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (30, 10, N'Basto', NULL)
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (31, 10, N'Oro', NULL)
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (32, 10, N'Copa', NULL)
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (33, 11, N'Espada', NULL)
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (34, 11, N'Basto', NULL)
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (35, 11, N'Oro', NULL)
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (36, 11, N'Copa', NULL)
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (37, 12, N'Espada', NULL)
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (38, 12, N'Basto', NULL)
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (39, 12, N'Oro', NULL)
INSERT [dbo].[Carta] ([idCarta], [numero], [palo], [foto]) VALUES (40, 12, N'Copa', NULL)
SET IDENTITY_INSERT [dbo].[Carta] OFF
GO
