USE [projekt]
GO
/****** Object:  Table [dbo].[katalog]    Script Date: 19 sty 2020 00:10:15 ******/
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
/****** Object:  Table [dbo].[klienci]    Script Date: 19 sty 2020 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[klienci](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[imie_nazwisko] [varchar](max) NULL,
	[adres] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[magazyn]    Script Date: 19 sty 2020 00:10:16 ******/
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
/****** Object:  Table [dbo].[users]    Script Date: 19 sty 2020 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[login] [varchar](50) NULL,
	[haslo] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[id_klienta] [int] NULL,
	[admin] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[zamowienia]    Script Date: 19 sty 2020 00:10:16 ******/
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
