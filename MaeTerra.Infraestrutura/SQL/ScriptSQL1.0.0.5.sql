USE [UnileverDB]
GO

/****** Object:  Table [dbo].[tbFornecedoresDocumentos]    Script Date: 24/11/2018 17:31:29 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tbFornecedoresDocumentos](
	[codFornecedorDocumento] [int] IDENTITY(1,1) NOT NULL,
	[codFornecedor] [int] NOT NULL,
	[nome] [nvarchar](50) NULL,
	[arquivo] [binary](250) NULL,
	[aprovado] [bit] NULL,
	[dataAprovado] [datetime] NULL,
	[codUsuarioAprovado] [int] NULL,
 CONSTRAINT [PK_tbFornecedoresDocumentos] PRIMARY KEY CLUSTERED 
(
	[codFornecedorDocumento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[tbFornecedoresDocumentos] ADD  CONSTRAINT [DF_tbFornecedoresDocumentos_aprovado]  DEFAULT ((0)) FOR [aprovado]
GO

ALTER TABLE [dbo].[tbFornecedoresDocumentos]  WITH CHECK ADD  CONSTRAINT [FK_tbFornecedoresDocumentos_tbFornecedores] FOREIGN KEY([codFornecedor])
REFERENCES [dbo].[tbFornecedores] ([codFornecedor])
GO

ALTER TABLE [dbo].[tbFornecedoresDocumentos] CHECK CONSTRAINT [FK_tbFornecedoresDocumentos_tbFornecedores]
GO

ALTER TABLE [dbo].[tbFornecedoresDocumentos]  WITH CHECK ADD  CONSTRAINT [FK_tbFornecedoresDocumentos_tbUsuarios] FOREIGN KEY([codUsuarioAprovado])
REFERENCES [dbo].[tbUsuarios] ([codUsuario])
GO

ALTER TABLE [dbo].[tbFornecedoresDocumentos] CHECK CONSTRAINT [FK_tbFornecedoresDocumentos_tbUsuarios]
GO


