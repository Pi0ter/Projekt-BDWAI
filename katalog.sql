USE [projekt]
GO

/****** Object:  Table [dbo].[katalog]    Script Date: 15 sty 2020 17:06:55 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[katalog](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nazwa] [varchar](50) NULL,
	[producent] [varchar](50) NULL,
	[pochodzenie] [varchar](50) NULL,
	[cenaKatalogowa] [varchar](50) NULL
) ON [PRIMARY]
GO

