USE [projekt]
GO

/****** Object:  Table [dbo].[zamowienia]    Script Date: 15 sty 2020 17:07:55 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[zamowienia](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_klienta] [int] NOT NULL,
	[id_magazyn] [int] NOT NULL,
	[ilosc] [int] NOT NULL,
	[data_zlozenia] [varchar](50) NULL,
	[data_zakonczenia] [varchar](50) NULL
) ON [PRIMARY]
GO

