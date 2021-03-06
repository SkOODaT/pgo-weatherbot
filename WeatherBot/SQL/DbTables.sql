USE [WeatherBot]
GO
/****** Object:  Table [dbo].[ConfigSettings]    Script Date: 2019-02-01 10:49:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConfigSettings](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[DataType] [nvarchar](50) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_ConfigSettings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PgoWeathers]    Script Date: 2019-02-01 10:49:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PgoWeathers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](50) NULL,
	[FileName] [nvarchar](50) NULL,
	[IsDay] [bit] NULL,
	[IsNight] [bit] NULL,
	[Friendly] [nvarchar](50) NULL,
 CONSTRAINT [PK_PgoWeathers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PokemonTypes]    Script Date: 2019-02-01 10:49:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PokemonTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Color] [nvarchar](50) NULL,
 CONSTRAINT [PK_PokemonTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PokeUsers]    Script Date: 2019-02-01 10:49:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PokeUsers](
	[Id] [nvarchar](150) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[TrainerName] [nvarchar](50) NULL,
	[TrainerLevel] [int] NULL,
	[DiscordName] [nvarchar](50) NULL,
	[DiscordTag] [nvarchar](50) NULL,
	[Role] [nvarchar](10) NULL,
	[LastLogin] [datetime] NULL,
	[ResetToken] [uniqueidentifier] NULL,
	[PwdHash] [nvarchar](max) NULL,
 CONSTRAINT [PK_PokeUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WeatherEntry]    Script Date: 2019-02-01 10:49:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WeatherEntry](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[Date] [date] NULL,
	[Hour] [int] NULL,
 CONSTRAINT [PK_WeatherEntry] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WeatherTranslations]    Script Date: 2019-02-01 10:49:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WeatherTranslations](
	[Id] [int] NOT NULL,
	[IconText] [nvarchar](50) NULL,
	[CanWindy] [bit] NULL,
	[IsDay] [bit] NULL,
	[IsNight] [bit] NULL,
	[PgoIconId] [int] NULL,
	[WindOverrideVal] [float] NULL,
 CONSTRAINT [PK_WeatherTranslations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WeatherTypes]    Script Date: 2019-02-01 10:49:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WeatherTypes](
	[TypeId] [int] NOT NULL,
	[WeatherId] [int] NOT NULL,
 CONSTRAINT [PK_WeatherTypes] PRIMARY KEY CLUSTERED 
(
	[TypeId] ASC,
	[WeatherId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WeatherValues]    Script Date: 2019-02-01 10:49:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WeatherValues](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[DateTime] [datetime] NOT NULL,
	[WeatherIcon] [int] NULL,
	[IconPhrase] [nvarchar](50) NULL,
	[IsDaylight] [bit] NULL,
	[TempValue] [float] NULL,
	[TempUnit] [nchar](1) NULL,
	[WindSpeed] [float] NULL,
	[WindUnit] [nvarchar](50) NULL,
	[GustSpeed] [float] NULL,
	[GustUnit] [nvarchar](50) NULL,
	[PrecipitationProbability] [float] NULL,
	[RainProbability] [float] NULL,
	[SnowProbability] [float] NULL,
	[IceProbability] [float] NULL,
	[CloudCover] [float] NULL,
	[RainAmt] [float] NULL,
	[RainUnit] [nvarchar](50) NULL,
	[SnowAmt] [float] NULL,
	[SnowUnit] [nvarchar](50) NULL,
	[IceAmt] [float] NULL,
	[IceUnit] [nvarchar](50) NULL,
	[IsCorrect] [bit] NULL,
	[EntryId] [bigint] NULL,
	[ActualIcon] [nvarchar](20) NULL,
	[CalculatedIcon] [nvarchar](20) NULL,
	[IsBaseHour] [bit] NULL,
	[PgoIconId] [int] NULL,
	[DateAdded] [datetime] NULL,
	[ActualIconid] [int] NULL,
 CONSTRAINT [PK_WeatherValues] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WeatherTranslations]  WITH CHECK ADD  CONSTRAINT [FK_WeatherTranslations_Weathers] FOREIGN KEY([PgoIconId])
REFERENCES [dbo].[PgoWeathers] ([Id])
GO
ALTER TABLE [dbo].[WeatherTranslations] CHECK CONSTRAINT [FK_WeatherTranslations_Weathers]
GO
ALTER TABLE [dbo].[WeatherTypes]  WITH CHECK ADD  CONSTRAINT [FK_WeatherTypes_PgoWeathers] FOREIGN KEY([WeatherId])
REFERENCES [dbo].[PgoWeathers] ([Id])
GO
ALTER TABLE [dbo].[WeatherTypes] CHECK CONSTRAINT [FK_WeatherTypes_PgoWeathers]
GO
ALTER TABLE [dbo].[WeatherTypes]  WITH CHECK ADD  CONSTRAINT [FK_WeatherTypes_PokemonTypes] FOREIGN KEY([TypeId])
REFERENCES [dbo].[PokemonTypes] ([Id])
GO
ALTER TABLE [dbo].[WeatherTypes] CHECK CONSTRAINT [FK_WeatherTypes_PokemonTypes]
GO
ALTER TABLE [dbo].[WeatherValues]  WITH CHECK ADD  CONSTRAINT [FK_WeatherValues_PgoWeathers] FOREIGN KEY([PgoIconId])
REFERENCES [dbo].[PgoWeathers] ([Id])
GO
ALTER TABLE [dbo].[WeatherValues] CHECK CONSTRAINT [FK_WeatherValues_PgoWeathers]
GO
ALTER TABLE [dbo].[WeatherValues]  WITH CHECK ADD  CONSTRAINT [FK_WeatherValues_WeatherEntry] FOREIGN KEY([EntryId])
REFERENCES [dbo].[WeatherEntry] ([Id])
GO
ALTER TABLE [dbo].[WeatherValues] CHECK CONSTRAINT [FK_WeatherValues_WeatherEntry]
GO
