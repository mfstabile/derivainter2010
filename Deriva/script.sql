USE [Deriva]
GO
/****** Object:  Table [dbo].[Interesse]    Script Date: 10/06/2010 02:35:19 ******/
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
/****** Object:  Table [dbo].[Comunidade]    Script Date: 10/06/2010 02:35:19 ******/
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
/****** Object:  Table [dbo].[Usuario]    Script Date: 10/06/2010 02:35:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuario](
	[idusuario] [int] IDENTITY(1,1) NOT NULL,
	[email] [varchar](255) NULL,
	[nickname] [varchar](255) NULL,
	[nome] [varchar](255) NOT NULL,
	[sobrenome] [varchar](255) NULL,
	[sexo] [char](1) NULL,
	[idade] [int] NULL,
	[mensagemPessoal] [text] NULL,
	[imagemPerfil] [varchar](255) NULL,
	[dtnasc] [datetime] NULL,
	[senha] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Perfil] PRIMARY KEY CLUSTERED 
(
	[idusuario] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RelProfileComunidade]    Script Date: 10/06/2010 02:35:19 ******/
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
/****** Object:  Table [dbo].[RelPerfilInteresse]    Script Date: 10/06/2010 02:35:19 ******/
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
/****** Object:  Table [dbo].[RelAmigo]    Script Date: 10/06/2010 02:35:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RelAmigo](
	[profileId] [int] NOT NULL,
	[amigoId] [int] NOT NULL,
 CONSTRAINT [PK_RelAmigo] PRIMARY KEY CLUSTERED 
(
	[profileId] ASC,
	[amigoId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Post]    Script Date: 10/06/2010 02:35:19 ******/
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
/****** Object:  ForeignKey [FK_Post_Comunidade]    Script Date: 10/06/2010 02:35:19 ******/
ALTER TABLE [dbo].[Post]  WITH CHECK ADD  CONSTRAINT [FK_Post_Comunidade] FOREIGN KEY([comunidadeId])
REFERENCES [dbo].[Comunidade] ([comunidadeId])
GO
ALTER TABLE [dbo].[Post] CHECK CONSTRAINT [FK_Post_Comunidade]
GO
/****** Object:  ForeignKey [FK_Post_Post]    Script Date: 10/06/2010 02:35:19 ******/
ALTER TABLE [dbo].[Post]  WITH CHECK ADD  CONSTRAINT [FK_Post_Post] FOREIGN KEY([topicoId])
REFERENCES [dbo].[Post] ([postId])
GO
ALTER TABLE [dbo].[Post] CHECK CONSTRAINT [FK_Post_Post]
GO
/****** Object:  ForeignKey [FK_RelAmigo_Perfil1]    Script Date: 10/06/2010 02:35:19 ******/
ALTER TABLE [dbo].[RelAmigo]  WITH CHECK ADD  CONSTRAINT [FK_RelAmigo_Perfil1] FOREIGN KEY([profileId])
REFERENCES [dbo].[Usuario] ([idusuario])
GO
ALTER TABLE [dbo].[RelAmigo] CHECK CONSTRAINT [FK_RelAmigo_Perfil1]
GO
/****** Object:  ForeignKey [FK_RelAmigo_Perfil3]    Script Date: 10/06/2010 02:35:19 ******/
ALTER TABLE [dbo].[RelAmigo]  WITH CHECK ADD  CONSTRAINT [FK_RelAmigo_Perfil3] FOREIGN KEY([amigoId])
REFERENCES [dbo].[Usuario] ([idusuario])
GO
ALTER TABLE [dbo].[RelAmigo] CHECK CONSTRAINT [FK_RelAmigo_Perfil3]
GO
/****** Object:  ForeignKey [FK_RelPerfilInteresse_Interesse]    Script Date: 10/06/2010 02:35:19 ******/
ALTER TABLE [dbo].[RelPerfilInteresse]  WITH CHECK ADD  CONSTRAINT [FK_RelPerfilInteresse_Interesse] FOREIGN KEY([interestId])
REFERENCES [dbo].[Interesse] ([interestId])
GO
ALTER TABLE [dbo].[RelPerfilInteresse] CHECK CONSTRAINT [FK_RelPerfilInteresse_Interesse]
GO
/****** Object:  ForeignKey [FK_RelPerfilInteresse_Perfil]    Script Date: 10/06/2010 02:35:19 ******/
ALTER TABLE [dbo].[RelPerfilInteresse]  WITH CHECK ADD  CONSTRAINT [FK_RelPerfilInteresse_Perfil] FOREIGN KEY([profileId])
REFERENCES [dbo].[Usuario] ([idusuario])
GO
ALTER TABLE [dbo].[RelPerfilInteresse] CHECK CONSTRAINT [FK_RelPerfilInteresse_Perfil]
GO
/****** Object:  ForeignKey [FK_RelProfileComunidade_Comunidade]    Script Date: 10/06/2010 02:35:19 ******/
ALTER TABLE [dbo].[RelProfileComunidade]  WITH CHECK ADD  CONSTRAINT [FK_RelProfileComunidade_Comunidade] FOREIGN KEY([comunidadeId])
REFERENCES [dbo].[Comunidade] ([comunidadeId])
GO
ALTER TABLE [dbo].[RelProfileComunidade] CHECK CONSTRAINT [FK_RelProfileComunidade_Comunidade]
GO
/****** Object:  ForeignKey [FK_RelProfileComunidade_Perfil]    Script Date: 10/06/2010 02:35:19 ******/
ALTER TABLE [dbo].[RelProfileComunidade]  WITH CHECK ADD  CONSTRAINT [FK_RelProfileComunidade_Perfil] FOREIGN KEY([profileId])
REFERENCES [dbo].[Usuario] ([idusuario])
GO
ALTER TABLE [dbo].[RelProfileComunidade] CHECK CONSTRAINT [FK_RelProfileComunidade_Perfil]
GO
