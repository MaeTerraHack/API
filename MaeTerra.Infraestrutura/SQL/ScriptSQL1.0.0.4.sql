USE [UnileverDB]
GO

/****** Object:  Table [dbo].[tbUsuarios]    Script Date: 24/11/2018 17:30:03 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tbUsuarios](
	[codUsuario] [int] IDENTITY(1,1) NOT NULL,
	[nome] [nvarchar](150) NULL,
	[email] [nvarchar](250) NULL,
	[senha] [nvarchar](50) NULL,
	[ativo] [bit] NULL,
 CONSTRAINT [PK_tbUsuarios] PRIMARY KEY CLUSTERED 
(
	[codUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[tbUsuarios] ADD  CONSTRAINT [DF_tbUsuarios_ativo]  DEFAULT ((1)) FOR [ativo]
GO


