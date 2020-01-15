USE [projekt]
GO

/****** Object:  Table [dbo].[magazyn]    Script Date: 15 sty 2020 17:07:20 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[magazyn](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_kat] [int] NOT NULL,
	[ilosc] [int] NOT NULL
) ON [PRIMARY]
GO

