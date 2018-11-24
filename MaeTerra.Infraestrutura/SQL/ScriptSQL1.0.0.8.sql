USE [UnileverDB]
GO

/****** Object:  Table [dbo].[tbPedidosMateriasPrimas]    Script Date: 24/11/2018 17:32:20 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tbPedidosMateriasPrimas](
	[codPedidoMateriaPrima] [int] IDENTITY(1,1) NOT NULL,
	[codPedido] [int] NOT NULL,
	[codMateriaPrima] [int] NULL,
	[precoMaximo] [decimal](18, 2) NULL,
	[dataLimite] [datetime] NULL,
 CONSTRAINT [PK_tbPedidosMateriasPrimas] PRIMARY KEY CLUSTERED 
(
	[codPedidoMateriaPrima] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[tbPedidosMateriasPrimas]  WITH CHECK ADD  CONSTRAINT [FK_tbPedidosMateriasPrimas_tbMateriasPrimas] FOREIGN KEY([codMateriaPrima])
REFERENCES [dbo].[tbMateriasPrimas] ([codMateriaPrima])
GO

ALTER TABLE [dbo].[tbPedidosMateriasPrimas] CHECK CONSTRAINT [FK_tbPedidosMateriasPrimas_tbMateriasPrimas]
GO

ALTER TABLE [dbo].[tbPedidosMateriasPrimas]  WITH CHECK ADD  CONSTRAINT [FK_tbPedidosMateriasPrimas_tbPedidos] FOREIGN KEY([codPedido])
REFERENCES [dbo].[tbPedidos] ([codPedido])
GO

ALTER TABLE [dbo].[tbPedidosMateriasPrimas] CHECK CONSTRAINT [FK_tbPedidosMateriasPrimas_tbPedidos]
GO


