USE [UnileverDB]
GO

/****** Object:  Table [dbo].[tbPedidos]    Script Date: 24/11/2018 17:31:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tbPedidos](
	[codPedido] [int] IDENTITY(1,1) NOT NULL,
	[codUsuario] [int] NOT NULL,
	[data] [datetime] NOT NULL,
 CONSTRAINT [PK_tbPedidos] PRIMARY KEY CLUSTERED 
(
	[codPedido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[tbPedidos] ADD  CONSTRAINT [DF_tbPedidos_data]  DEFAULT (getdate()) FOR [data]
GO

ALTER TABLE [dbo].[tbPedidos]  WITH CHECK ADD  CONSTRAINT [FK_tbPedidos_tbUsuarios] FOREIGN KEY([codUsuario])
REFERENCES [dbo].[tbUsuarios] ([codUsuario])
GO

ALTER TABLE [dbo].[tbPedidos] CHECK CONSTRAINT [FK_tbPedidos_tbUsuarios]
GO


