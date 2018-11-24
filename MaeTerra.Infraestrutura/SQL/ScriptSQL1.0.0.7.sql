USE [UnileverDB]
GO

/****** Object:  Table [dbo].[tbPedidosItens]    Script Date: 24/11/2018 17:32:09 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tbPedidosItens](
	[codPedidoItem] [int] IDENTITY(1,1) NOT NULL,
	[codPedido] [int] NOT NULL,
	[codFornecedor] [int] NOT NULL,
	[codMateriaPrima] [int] NOT NULL,
	[quantidade] [decimal](18, 4) NULL,
	[valor] [decimal](18, 2) NULL,
	[dataEntrega] [datetime] NULL,
	[aprovado] [bit] NULL,
 CONSTRAINT [PK_tbPedidosItens] PRIMARY KEY CLUSTERED 
(
	[codPedidoItem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[tbPedidosItens] ADD  CONSTRAINT [DF_tbPedidosItens_aprovado]  DEFAULT ((0)) FOR [aprovado]
GO

ALTER TABLE [dbo].[tbPedidosItens]  WITH CHECK ADD  CONSTRAINT [FK_tbPedidosItens_tbFornecedores] FOREIGN KEY([codFornecedor])
REFERENCES [dbo].[tbFornecedores] ([codFornecedor])
GO

ALTER TABLE [dbo].[tbPedidosItens] CHECK CONSTRAINT [FK_tbPedidosItens_tbFornecedores]
GO

ALTER TABLE [dbo].[tbPedidosItens]  WITH CHECK ADD  CONSTRAINT [FK_tbPedidosItens_tbMateriasPrimas] FOREIGN KEY([codMateriaPrima])
REFERENCES [dbo].[tbMateriasPrimas] ([codMateriaPrima])
GO

ALTER TABLE [dbo].[tbPedidosItens] CHECK CONSTRAINT [FK_tbPedidosItens_tbMateriasPrimas]
GO

ALTER TABLE [dbo].[tbPedidosItens]  WITH CHECK ADD  CONSTRAINT [FK_tbPedidosItens_tbPedidos] FOREIGN KEY([codPedido])
REFERENCES [dbo].[tbPedidos] ([codPedido])
GO

ALTER TABLE [dbo].[tbPedidosItens] CHECK CONSTRAINT [FK_tbPedidosItens_tbPedidos]
GO


