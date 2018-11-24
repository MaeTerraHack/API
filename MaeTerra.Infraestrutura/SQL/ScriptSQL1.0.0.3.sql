USE [UnileverDB]
GO

/****** Object:  Table [dbo].[tbMateriasPrimas]    Script Date: 24/11/2018 17:29:48 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tbMateriasPrimas](
	[codMateriaPrima] [int] IDENTITY(1,1) NOT NULL,
	[nome] [nvarchar](50) NULL,
	[grupo] [nvarchar](50) NULL,
	[classificacao] [nvarchar](50) NULL,
	[ultimoPreco] [decimal](18, 2) NULL,
 CONSTRAINT [PK_tbMateriasPrimas] PRIMARY KEY CLUSTERED 
(
	[codMateriaPrima] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


