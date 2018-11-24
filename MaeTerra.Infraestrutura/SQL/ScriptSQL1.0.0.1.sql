USE [UnileverDB]
GO

/****** Object:  Table [dbo].[tbAvisos]    Script Date: 24/11/2018 17:28:25 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tbAvisos](
	[codAviso] [int] IDENTITY(1,1) NOT NULL,
	[titulo] [nvarchar](50) NULL,
	[mensagem] [nvarchar](max) NULL,
	[ativo] [bit] NULL,
 CONSTRAINT [PK_tbAvisos] PRIMARY KEY CLUSTERED 
(
	[codAviso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]