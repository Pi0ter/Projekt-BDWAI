USE [projekt]
GO

/****** Object:  Table [dbo].[klienci]    Script Date: 15 sty 2020 17:09:06 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[klienci](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[imie_nazwisko] [varchar](max) NULL,
	[adres] [varchar](max) NULL,
	[admin] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

