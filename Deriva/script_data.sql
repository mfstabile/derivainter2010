USE [DB1380_Inter2010]
GO
/****** Object:  User [DB1380_Inter2010]    Script Date: 11/09/2010 18:42:27 ******/
CREATE USER [DB1380_Inter2010] FOR LOGIN [DB1380_Inter2010] WITH DEFAULT_SCHEMA=[DB1380_Inter2010]
GO
/****** Object:  Table [dbo].[Interesse]    Script Date: 11/09/2010 18:42:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Interesse](
	[interestId] [int] IDENTITY(1,1) NOT NULL,
	[titulo] [varchar](255) NOT NULL,
	[descricao] [varchar](255) NULL,
 CONSTRAINT [PK_Interesse] PRIMARY KEY CLUSTERED 
(
	[interestId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Comunidade]    Script Date: 11/09/2010 18:42:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Comunidade](
	[comunidadeId] [int] IDENTITY(1,1) NOT NULL,
	[titulo] [varchar](255) NULL,
	[descricao] [varchar](255) NULL,
	[categoriaId] [int] NOT NULL,
 CONSTRAINT [PK_Comunidade] PRIMARY KEY CLUSTERED 
(
	[comunidadeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 11/09/2010 18:42:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuario](
	[idusuario] [int] IDENTITY(1,1) NOT NULL,
	[email] [varchar](255) NOT NULL,
	[senha] [varchar](50) NOT NULL,
	[nickname] [varchar](255) NULL,
	[nome] [varchar](255) NULL,
	[sobrenome] [varchar](255) NULL,
	[sexo] [char](1) NULL,
	[mensagemPessoal] [text] NULL,
	[imagemPerfil] [varchar](255) NULL,
	[dtnasc] [datetime] NULL,
 CONSTRAINT [PK_Perfil] PRIMARY KEY CLUSTERED 
(
	[idusuario] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Usuario] ON
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (2, N'worf@worf.com', N'123', N'12334', N'123', N'123', N'M', N'oioioioioioi
tudo bem contigo?', N'http://blug.com.br/exodus/macaco.jpg', CAST(0x00009E10001099E5 AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (3, N'rosa@vermelho.com.br', N'123', N'rosinha', N'Rosa', N'Rosalina', N'F', N'MP MP MPMPMPMPMPMPMPMPMPM', N'http://media.giantbomb.com/uploads/0/137/435391-kaneda_large.jpg', CAST(0x00009E130175A052 AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (4, N'oi@oi.com', N'oi', N'oi nick', N'oi nome', N'oi sobrenome', N'F', N'oi mp mp mp mp', N'http://profile.ak.fbcdn.net/hprofile-ak-snc4/hs304.ash1/23283_108594729159967_3888_q.jpg', CAST(0x0000739C00000000 AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (5, N'1@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433C5 AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (6, N'2@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433D1 AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (7, N'3@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433D2 AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (8, N'4@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433D2 AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (9, N'5@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433D2 AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (10, N'6@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433D2 AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (11, N'7@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433D5 AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (12, N'8@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433D6 AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (13, N'9@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433D6 AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (14, N'10@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433D6 AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (15, N'11@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433D6 AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (16, N'12@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433D6 AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (17, N'13@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433D6 AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (18, N'14@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433D6 AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (19, N'15@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433D7 AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (20, N'16@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433DC AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (21, N'17@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433DC AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (22, N'18@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433DC AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (23, N'19@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433DC AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (24, N'20@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433DC AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (25, N'21@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433DC AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (26, N'22@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433DD AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (27, N'23@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433DD AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (28, N'24@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433DD AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (29, N'25@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433DD AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (30, N'26@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433DD AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (31, N'27@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433DE AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (32, N'28@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433DE AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (33, N'29@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433DF AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (34, N'30@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433DF AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (35, N'31@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433DF AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (36, N'32@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433DF AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (37, N'33@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433DF AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (38, N'34@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433DF AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (39, N'35@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433E0 AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (40, N'36@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433E0 AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (41, N'37@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433E0 AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (42, N'38@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433E0 AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (43, N'39@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433E0 AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (44, N'40@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433E0 AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (45, N'41@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433E0 AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (46, N'42@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433E1 AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (47, N'43@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433E1 AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (48, N'44@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433E1 AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (49, N'45@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433E1 AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (50, N'46@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433E4 AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (51, N'47@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433E4 AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (52, N'48@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433E4 AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (53, N'49@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433E4 AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (54, N'50@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433E4 AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (55, N'51@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433E4 AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (56, N'52@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433E4 AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (57, N'53@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433E4 AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (58, N'54@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433E4 AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (59, N'55@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433E5 AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (60, N'56@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433E5 AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (61, N'57@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433E5 AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (62, N'58@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433E5 AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (63, N'59@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433F3 AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (64, N'60@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433F3 AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (65, N'61@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433F3 AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (66, N'62@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433F3 AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (67, N'63@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433F4 AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (68, N'64@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433F4 AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (69, N'65@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433F4 AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (70, N'66@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433F4 AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (71, N'67@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433F4 AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (72, N'68@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433F5 AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (73, N'69@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433F5 AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (74, N'70@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433F5 AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (75, N'71@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433F5 AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (76, N'72@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433F6 AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (77, N'73@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433F6 AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (78, N'74@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433F6 AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (79, N'75@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433F6 AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (80, N'76@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433F6 AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (81, N'77@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433F7 AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (82, N'78@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433F7 AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (83, N'79@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433F7 AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (84, N'80@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433F7 AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (85, N'81@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433F7 AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (86, N'82@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433F8 AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (87, N'83@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433F8 AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (88, N'84@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433F8 AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (89, N'85@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433F8 AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (90, N'86@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433F8 AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (91, N'87@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433F9 AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (92, N'88@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433F9 AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (93, N'89@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433F9 AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (94, N'90@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433F9 AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (95, N'91@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433F9 AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (96, N'92@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433F9 AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (97, N'93@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433F9 AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (98, N'94@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433F9 AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (99, N'95@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433F9 AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (100, N'96@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433F9 AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (101, N'97@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433FA AS DateTime))
GO
print 'Processed 100 total records'
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (102, N'98@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433FA AS DateTime))
INSERT [dbo].[Usuario] ([idusuario], [email], [senha], [nickname], [nome], [sobrenome], [sexo], [mensagemPessoal], [imagemPerfil], [dtnasc]) VALUES (103, N'99@com.br', N'123', N'123', N'123', N'123', N'M', N'BOLINHA', N'http://www.avatarya.com/avatares/television/beavis-3.jpg', CAST(0x00009E2400E433FA AS DateTime))
SET IDENTITY_INSERT [dbo].[Usuario] OFF
/****** Object:  Table [dbo].[RelProfileComunidade]    Script Date: 11/09/2010 18:42:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RelProfileComunidade](
	[profileId] [int] NOT NULL,
	[comunidadeId] [int] NOT NULL,
 CONSTRAINT [PK_RelProfileComunidade] PRIMARY KEY CLUSTERED 
(
	[profileId] ASC,
	[comunidadeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RelPerfilInteresse]    Script Date: 11/09/2010 18:42:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RelPerfilInteresse](
	[profileId] [int] NOT NULL,
	[interestId] [int] NOT NULL,
 CONSTRAINT [PK_RelPerfilInteresse] PRIMARY KEY CLUSTERED 
(
	[profileId] ASC,
	[interestId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RelAmigo]    Script Date: 11/09/2010 18:42:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RelAmigo](
	[idusuario] [int] NOT NULL,
	[idamigo] [int] NOT NULL,
 CONSTRAINT [PK_RelAmigo] PRIMARY KEY CLUSTERED 
(
	[idusuario] ASC,
	[idamigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Post]    Script Date: 11/09/2010 18:42:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Post](
	[postId] [int] IDENTITY(1,1) NOT NULL,
	[titulo] [varchar](255) NOT NULL,
	[conteudo] [text] NOT NULL,
	[comunidadeId] [int] NOT NULL,
	[profileId] [int] NOT NULL,
	[topicoId] [int] NOT NULL,
 CONSTRAINT [PK_Topico] PRIMARY KEY CLUSTERED 
(
	[postId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  ForeignKey [FK_Post_Comunidade]    Script Date: 11/09/2010 18:42:27 ******/
ALTER TABLE [dbo].[Post]  WITH CHECK ADD  CONSTRAINT [FK_Post_Comunidade] FOREIGN KEY([comunidadeId])
REFERENCES [dbo].[Comunidade] ([comunidadeId])
GO
ALTER TABLE [dbo].[Post] CHECK CONSTRAINT [FK_Post_Comunidade]
GO
/****** Object:  ForeignKey [FK_Post_Post]    Script Date: 11/09/2010 18:42:27 ******/
ALTER TABLE [dbo].[Post]  WITH CHECK ADD  CONSTRAINT [FK_Post_Post] FOREIGN KEY([topicoId])
REFERENCES [dbo].[Post] ([postId])
GO
ALTER TABLE [dbo].[Post] CHECK CONSTRAINT [FK_Post_Post]
GO
/****** Object:  ForeignKey [FK_RelAmigo_Perfil1]    Script Date: 11/09/2010 18:42:27 ******/
ALTER TABLE [dbo].[RelAmigo]  WITH CHECK ADD  CONSTRAINT [FK_RelAmigo_Perfil1] FOREIGN KEY([idusuario])
REFERENCES [dbo].[Usuario] ([idusuario])
GO
ALTER TABLE [dbo].[RelAmigo] CHECK CONSTRAINT [FK_RelAmigo_Perfil1]
GO
/****** Object:  ForeignKey [FK_RelAmigo_Perfil3]    Script Date: 11/09/2010 18:42:27 ******/
ALTER TABLE [dbo].[RelAmigo]  WITH CHECK ADD  CONSTRAINT [FK_RelAmigo_Perfil3] FOREIGN KEY([idamigo])
REFERENCES [dbo].[Usuario] ([idusuario])
GO
ALTER TABLE [dbo].[RelAmigo] CHECK CONSTRAINT [FK_RelAmigo_Perfil3]
GO
/****** Object:  ForeignKey [FK_RelPerfilInteresse_Interesse]    Script Date: 11/09/2010 18:42:27 ******/
ALTER TABLE [dbo].[RelPerfilInteresse]  WITH CHECK ADD  CONSTRAINT [FK_RelPerfilInteresse_Interesse] FOREIGN KEY([interestId])
REFERENCES [dbo].[Interesse] ([interestId])
GO
ALTER TABLE [dbo].[RelPerfilInteresse] CHECK CONSTRAINT [FK_RelPerfilInteresse_Interesse]
GO
/****** Object:  ForeignKey [FK_RelPerfilInteresse_Perfil]    Script Date: 11/09/2010 18:42:27 ******/
ALTER TABLE [dbo].[RelPerfilInteresse]  WITH CHECK ADD  CONSTRAINT [FK_RelPerfilInteresse_Perfil] FOREIGN KEY([profileId])
REFERENCES [dbo].[Usuario] ([idusuario])
GO
ALTER TABLE [dbo].[RelPerfilInteresse] CHECK CONSTRAINT [FK_RelPerfilInteresse_Perfil]
GO
/****** Object:  ForeignKey [FK_RelProfileComunidade_Comunidade]    Script Date: 11/09/2010 18:42:27 ******/
ALTER TABLE [dbo].[RelProfileComunidade]  WITH CHECK ADD  CONSTRAINT [FK_RelProfileComunidade_Comunidade] FOREIGN KEY([comunidadeId])
REFERENCES [dbo].[Comunidade] ([comunidadeId])
GO
ALTER TABLE [dbo].[RelProfileComunidade] CHECK CONSTRAINT [FK_RelProfileComunidade_Comunidade]
GO
/****** Object:  ForeignKey [FK_RelProfileComunidade_Perfil]    Script Date: 11/09/2010 18:42:27 ******/
ALTER TABLE [dbo].[RelProfileComunidade]  WITH CHECK ADD  CONSTRAINT [FK_RelProfileComunidade_Perfil] FOREIGN KEY([profileId])
REFERENCES [dbo].[Usuario] ([idusuario])
GO
ALTER TABLE [dbo].[RelProfileComunidade] CHECK CONSTRAINT [FK_RelProfileComunidade_Perfil]
GO
