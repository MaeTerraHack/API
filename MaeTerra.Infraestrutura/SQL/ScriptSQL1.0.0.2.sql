USE [UnileverDB]
GO

/****** Object:  Table [dbo].[tbFornecedores]    Script Date: 24/11/2018 17:29:31 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tbFornecedores](
	[codFornecedor] [int] IDENTITY(1,1) NOT NULL,
	[razaoSocial] [nvarchar](50) NULL,
	[cnpj] [nvarchar](50) NULL,
	[endereco] [nvarchar](150) NULL,
	[numero] [nvarchar](50) NULL,
	[bairro] [nvarchar](50) NULL,
	[cidade] [nvarchar](50) NULL,
	[uf] [char](2) NULL,
	[telefone1] [nvarchar](50) NULL,
	[telefone2] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[ativo] [bit] NULL,
 CONSTRAINT [PK_tbFornecedores] PRIMARY KEY CLUSTERED 
(
	[codFornecedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[tbFornecedores] ADD  CONSTRAINT [DF_tbFornecedores_ativo]  DEFAULT ((0)) FOR [ativo]
GO


