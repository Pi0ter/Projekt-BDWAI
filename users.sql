USE [projekt]
GO

/****** Object:  Table [dbo].[users]    Script Date: 15 sty 2020 17:07:32 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[login] [varchar](50) NULL,
	[haslo] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[id_klienta] [int] NOT NULL
) ON [PRIMARY]
GO

