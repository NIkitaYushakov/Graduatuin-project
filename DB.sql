USE [master]
GO
/****** Object:  Database [Контингент]    Script Date: 06.06.2021 21:42:30 ******/
CREATE DATABASE [Контингент]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Контингент', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Контингент.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Контингент_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Контингент_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Контингент] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Контингент].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Контингент] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Контингент] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Контингент] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Контингент] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Контингент] SET ARITHABORT OFF 
GO
ALTER DATABASE [Контингент] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Контингент] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Контингент] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Контингент] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Контингент] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Контингент] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Контингент] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Контингент] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Контингент] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Контингент] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Контингент] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Контингент] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Контингент] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Контингент] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Контингент] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Контингент] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Контингент] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Контингент] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Контингент] SET  MULTI_USER 
GO
ALTER DATABASE [Контингент] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Контингент] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Контингент] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Контингент] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Контингент] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Контингент] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Контингент] SET QUERY_STORE = OFF
GO
USE [Контингент]
GO
/****** Object:  Table [dbo].[Движение контингента]    Script Date: 06.06.2021 21:42:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Движение контингента](
	[Код направления подготовки] [nchar](8) NOT NULL,
	[ID уровня образования] [int] NOT NULL,
	[ID формы обучения] [int] NOT NULL,
	[Дата записи] [date] NOT NULL,
	[Курс] [int] NOT NULL,
	[Зачислено за счет бюджетных ассигнований бюджета субъекта РФ] [int] NOT NULL,
	[Из них лица с ОВЗ, инвалиды, дети-инвалиды (зачислено бюджет)] [int] NOT NULL,
	[Из них на места в рамках квоты целевого приема (зачислено бюджет)] [int] NOT NULL,
	[Из них иностранные граждане (зачислено бюджет)] [int] NOT NULL,
	[Зачислено по договорам об оказании платных образовательных услуг] [int] NOT NULL,
	[Из них лица с ОВЗ, инвалиды, дети-инвалиды (зачислено платное)] [int] NOT NULL,
	[Из них на места в рамках квоты целевого приема (зачислено платное)] [int] NOT NULL,
	[Из них иностранные граждане (зачислено платное)] [int] NOT NULL,
	[Отчислено за счет бюджетных ассигнований бюджета субъекта РФ] [int] NOT NULL,
	[Из них лица с ОВЗ, инвалиды, дети-инвалиды (отчислено бюджет)] [int] NOT NULL,
	[Из них на места в рамках квоты целевого приема (отчислено бюджет)] [int] NOT NULL,
	[Из них иностранные граждане (отчислено бюджет)] [int] NOT NULL,
	[Отчислено по договорам об оказании платных образовательных услуг] [int] NOT NULL,
	[Из них лица с ОВЗ, инвалиды, дети-инвалиды (отчислено платное)] [int] NOT NULL,
	[Из них на места в рамках квоты целевого приема (отчислено платное)] [int] NOT NULL,
	[Из них иностранные граждане (отчислено платное)] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Направления]    Script Date: 06.06.2021 21:42:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Направления](
	[Код направления подготовки] [nchar](8) NOT NULL,
	[Название направления подготовки] [nvarchar](100) NOT NULL,
	[ID уровня образования] [int] NOT NULL,
 CONSTRAINT [PK_Направления] PRIMARY KEY CLUSTERED 
(
	[Код направления подготовки] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Уровни образования]    Script Date: 06.06.2021 21:42:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Уровни образования](
	[ID уровня образования] [int] IDENTITY(1,1) NOT NULL,
	[Название уровня образования] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Уровни образования] PRIMARY KEY CLUSTERED 
(
	[ID уровня образования] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Формы обучения]    Script Date: 06.06.2021 21:42:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Формы обучения](
	[ID формы обучения] [int] IDENTITY(1,1) NOT NULL,
	[Название формы обучения] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Формы обучения] PRIMARY KEY CLUSTERED 
(
	[ID формы обучения] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Движение контингента]  WITH CHECK ADD  CONSTRAINT [FK_Движение контингента_Направления] FOREIGN KEY([Код направления подготовки])
REFERENCES [dbo].[Направления] ([Код направления подготовки])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Движение контингента] CHECK CONSTRAINT [FK_Движение контингента_Направления]
GO
ALTER TABLE [dbo].[Движение контингента]  WITH CHECK ADD  CONSTRAINT [FK_Движение контингента_Уровни образования] FOREIGN KEY([ID уровня образования])
REFERENCES [dbo].[Уровни образования] ([ID уровня образования])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Движение контингента] CHECK CONSTRAINT [FK_Движение контингента_Уровни образования]
GO
ALTER TABLE [dbo].[Движение контингента]  WITH CHECK ADD  CONSTRAINT [FK_Движение контингента_Формы обучения] FOREIGN KEY([ID формы обучения])
REFERENCES [dbo].[Формы обучения] ([ID формы обучения])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Движение контингента] CHECK CONSTRAINT [FK_Движение контингента_Формы обучения]
GO
ALTER TABLE [dbo].[Направления]  WITH CHECK ADD  CONSTRAINT [FK_Направления_Уровни образования] FOREIGN KEY([ID уровня образования])
REFERENCES [dbo].[Уровни образования] ([ID уровня образования])
GO
ALTER TABLE [dbo].[Направления] CHECK CONSTRAINT [FK_Направления_Уровни образования]
GO
/****** Object:  StoredProcedure [dbo].[Добавление данных]    Script Date: 06.06.2021 21:42:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Добавление данных]
	@dir_id nchar(8),
	@dir_name nvarchar(100),
	@foe_name nvarchar(50),
	@loe_name nvarchar(50),
	@date date,
	@course int,
	@free_in int,
	@disabled_fi int,
	@target_fi int,
	@foreigners_fi int,
	@pay_in int,
	@disabled_pi int,
	@target_pi int,
	@foreigners_pi int,
	@free_out int,
	@disabled_fo int,
	@target_fo int,
	@foreigners_fo int,
	@pay_out int,
	@disabled_po int,
	@target_po int,
	@foreigners_po int
AS
	SET NOCOUNT ON
	DECLARE @foe_id int;
	DECLARE @loe_id int;
	SET @foe_id = (SELECT [ID формы обучения] FROM [Формы обучения] WHERE @foe_name = [Название формы обучения])
	IF EXISTS (SELECT [Код направления подготовки] FROM [Движение контингента] WHERE [Код направления подготовки] = @dir_id AND [Дата записи] = @date
	AND [Курс] = @course AND [ID формы обучения] = @foe_id)
	BEGIN
		UPDATE [Движение контингента]
		SET [Зачислено за счет бюджетных ассигнований бюджета субъекта РФ] = @free_in, [Из них лица с ОВЗ, инвалиды, дети-инвалиды (зачислено бюджет)] = @disabled_fi, [Из них на места в рамках квоты целевого приема (зачислено бюджет)] = @target_fi, 
		[Из них иностранные граждане (зачислено бюджет)] = @foreigners_fi, [Зачислено по договорам об оказании платных образовательных услуг] = @pay_in, [Из них лица с ОВЗ, инвалиды, дети-инвалиды (зачислено платное)] = @disabled_pi,
		[Из них на места в рамках квоты целевого приема (зачислено платное)] = @target_pi, [Из них иностранные граждане (зачислено платное)] = @foreigners_pi, [Отчислено за счет бюджетных ассигнований бюджета субъекта РФ] = @free_out,
		[Из них лица с ОВЗ, инвалиды, дети-инвалиды (отчислено бюджет)] = @disabled_fo, [Из них на места в рамках квоты целевого приема (отчислено бюджет)] = @target_fo, [Из них иностранные граждане (отчислено бюджет)] = @foreigners_fo,
		[Отчислено по договорам об оказании платных образовательных услуг] = @pay_out, [Из них лица с ОВЗ, инвалиды, дети-инвалиды (отчислено платное)] = @disabled_po, [Из них на места в рамках квоты целевого приема (отчислено платное)] = @target_po, [Из них иностранные граждане (отчислено платное)] = @foreigners_po
	END
	ELSE
	BEGIN
		IF EXISTS (SELECT [ID формы обучения] FROM [Формы обучения] WHERE @foe_name = [Название формы обучения])
			BEGIN
				SET @foe_id = (SELECT [ID формы обучения] FROM [Формы обучения] WHERE @foe_name = [Название формы обучения])
			END
		ELSE
			BEGIN
				INSERT INTO [Формы обучения] ([Название формы обучения])
				VALUES (@foe_name)
				SET @foe_id = (SELECT [ID формы обучения] FROM [Формы обучения] WHERE @foe_name = [Название формы обучения])
			END
		IF EXISTS (SELECT [ID уровня образования] FROM [Уровни образования] WHERE @loe_name = [Название уровня образования])
			BEGIN
				SET @loe_id = (SELECT [ID уровня образования] FROM [Уровни образования] WHERE @loe_name = [Название уровня образования])
			END
		ELSE
			BEGIN
				INSERT INTO [Уровни образования] ([Название уровня образования])
				VALUES (@loe_name)
				SET @loe_id = (SELECT [ID уровня образования] FROM [Уровни образования] WHERE @loe_name = [Название уровня образования])
			END
		IF EXIStS (SELECT [Код направления подготовки] FROM [Направления] WHERE [Код направления подготовки] = @dir_id)
			BEGIN
				INSERT INTO [Движение контингента] ([Код направления подготовки], [ID уровня образования], [ID формы обучения], [Дата записи], Курс, [Зачислено за счет бюджетных ассигнований бюджета субъекта РФ], [Из них лица с ОВЗ, инвалиды, дети-инвалиды (зачислено бюджет)], [Из них на места в рамках квоты целевого приема (зачислено бюджет)], [Из них иностранные граждане (зачислено бюджет)], [Зачислено по договорам об оказании платных образовательных услуг], [Из них лица с ОВЗ, инвалиды, дети-инвалиды (зачислено платное)], [Из них на места в рамках квоты целевого приема (зачислено платное)], [Из них иностранные граждане (зачислено платное)], [Отчислено за счет бюджетных ассигнований бюджета субъекта РФ], [Из них лица с ОВЗ, инвалиды, дети-инвалиды (отчислено бюджет)], [Из них на места в рамках квоты целевого приема (отчислено бюджет)], [Из них иностранные граждане (отчислено бюджет)], [Отчислено по договорам об оказании платных образовательных услуг], [Из них лица с ОВЗ, инвалиды, дети-инвалиды (отчислено платное)], [Из них на места в рамках квоты целевого приема (отчислено платное)], [Из них иностранные граждане (отчислено платное)])
				VALUES (@dir_id, @loe_id, @foe_id, @date, @course, @free_in, @disabled_fi, @target_fi, @foreigners_fi, @pay_in, @disabled_pi, @target_pi, @foreigners_pi, @free_out, @disabled_fo, @target_fo, @foreigners_fo, @pay_out, @disabled_po, @target_po, @foreigners_po)
			END
		ELSE
			BEGIN
				INSERT INTO [Направления] ([Код направления подготовки], [Название направления подготовки], [ID уровня образования])
				VALUES (@dir_id, @dir_name, @loe_id)
			END
		END
GO
/****** Object:  StoredProcedure [dbo].[Получение данных]    Script Date: 06.06.2021 21:42:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Получение данных]
	@loe_name nvarchar(50) = 'Все',
	@foe_name nvarchar(50) = 'Все',
	@dir_name nvarchar(100) = 'Все',
	@year nchar(4) = 'Все',
	@month nchar(2) = '00',
	@course int = 0
AS
	SET NOCOUNT ON
	DECLARE @sql_condition nvarchar(4000) = 'SELECT mk.[Код направления подготовки], dir.[Название направления подготовки], loe.[Название уровня образования], foe.[Название формы обучения], mk.[Дата записи], mk.Курс, 
(mk.[Зачислено за счет бюджетных ассигнований бюджета субъекта РФ] + mk.[Зачислено по договорам об оказании платных образовательных услуг]) as [Всего зачислено], 
(mk.[Из них лица с ОВЗ, инвалиды, дети-инвалиды (зачислено бюджет)] + mk.[Из них лица с ОВЗ, инвалиды, дети-инвалиды (зачислено платное)]) as [Из них лица с ОВЗ, инвалиды, дети-инвалиды (всего зачислено)],
(mk.[Из них на места в рамках квоты целевого приема (зачислено бюджет)] + mk.[Из них на места в рамках квоты целевого приема (зачислено платное)]) as [Из них на места в рамках квоты целевого приема (всего зачислено)],
(mk.[Из них иностранные граждане (зачислено бюджет)] + mk.[Из них иностранные граждане (зачислено платное)]) as [Из них иностранные граждане (всего зачислено)],
(mk.[Отчислено за счет бюджетных ассигнований бюджета субъекта РФ] + mk.[Отчислено по договорам об оказании платных образовательных услуг]) as [Всего отчислено],
(mk.[Из них лица с ОВЗ, инвалиды, дети-инвалиды (отчислено бюджет)] + mk.[Из них лица с ОВЗ, инвалиды, дети-инвалиды (отчислено платное)]) as [Из них лица с ОВЗ, инвалиды, дети-инвалиды (всего отчислено)],
(mk.[Из них на места в рамках квоты целевого приема (отчислено бюджет)] + mk.[Из них на места в рамках квоты целевого приема (отчислено платное)]) as [Из них на места в рамках квоты целевого приема (всего отчислено)],
(mk.[Из них иностранные граждане (отчислено бюджет)] + mk.[Из них иностранные граждане (отчислено платное)]) as [Из них иностранные граждане (всего отчислено)],
mk.[Зачислено за счет бюджетных ассигнований бюджета субъекта РФ], mk.[Из них лица с ОВЗ, инвалиды, дети-инвалиды (зачислено бюджет)], mk.[Из них на места в рамках квоты целевого приема (зачислено бюджет)],
mk.[Из них иностранные граждане (зачислено бюджет)], mk.[Зачислено по договорам об оказании платных образовательных услуг], mk.[Из них лица с ОВЗ, инвалиды, дети-инвалиды (зачислено платное)], 
mk.[Из них на места в рамках квоты целевого приема (зачислено платное)], mk.[Из них иностранные граждане (зачислено платное)], mk.[Отчислено за счет бюджетных ассигнований бюджета субъекта РФ],
mk.[Из них лица с ОВЗ, инвалиды, дети-инвалиды (отчислено бюджет)], mk.[Из них на места в рамках квоты целевого приема (отчислено бюджет)], mk.[Из них иностранные граждане (отчислено бюджет)],
mk.[Отчислено по договорам об оказании платных образовательных услуг], mk.[Из них лица с ОВЗ, инвалиды, дети-инвалиды (отчислено платное)], mk.[Из них на места в рамках квоты целевого приема (отчислено платное)],
mk.[Из них иностранные граждане (отчислено платное)]
	FROM [Движение контингента] as mk
	INNER JOIN [Направления] as dir ON (mk.[Код направления подготовки] = dir.[Код направления подготовки])
	INNER JOIN [Уровни образования] as loe ON (mk.[ID уровня образования] = loe.[ID уровня образования])
	INNER JOIN [Формы обучения] as foe on (mk.[ID формы обучения] = foe.[ID формы обучения]) WHERE'
	DECLARE @sql nvarchar(4000) = 'SELECT mk.[Код направления подготовки], dir.[Название направления подготовки], loe.[Название уровня образования], foe.[Название формы обучения], mk.[Дата записи], mk.Курс, 
(mk.[Зачислено за счет бюджетных ассигнований бюджета субъекта РФ] + mk.[Зачислено по договорам об оказании платных образовательных услуг]) as [Всего зачислено], 
(mk.[Из них лица с ОВЗ, инвалиды, дети-инвалиды (зачислено бюджет)] + mk.[Из них лица с ОВЗ, инвалиды, дети-инвалиды (зачислено платное)]) as [Из них лица с ОВЗ, инвалиды, дети-инвалиды (всего зачислено)],
(mk.[Из них на места в рамках квоты целевого приема (зачислено бюджет)] + mk.[Из них на места в рамках квоты целевого приема (зачислено платное)]) as [Из них на места в рамках квоты целевого приема (всего зачислено)],
(mk.[Из них иностранные граждане (зачислено бюджет)] + mk.[Из них иностранные граждане (зачислено платное)]) as [Из них иностранные граждане (всего зачислено)],
(mk.[Отчислено за счет бюджетных ассигнований бюджета субъекта РФ] + mk.[Отчислено по договорам об оказании платных образовательных услуг]) as [Всего отчислено],
(mk.[Из них лица с ОВЗ, инвалиды, дети-инвалиды (отчислено бюджет)] + mk.[Из них лица с ОВЗ, инвалиды, дети-инвалиды (отчислено платное)]) as [Из них лица с ОВЗ, инвалиды, дети-инвалиды (всего отчислено)],
(mk.[Из них на места в рамках квоты целевого приема (отчислено бюджет)] + mk.[Из них на места в рамках квоты целевого приема (отчислено платное)]) as [Из них на места в рамках квоты целевого приема (всего отчислено)],
(mk.[Из них иностранные граждане (отчислено бюджет)] + mk.[Из них иностранные граждане (отчислено платное)]) as [Из них иностранные граждане (всего отчислено)],
mk.[Зачислено за счет бюджетных ассигнований бюджета субъекта РФ], mk.[Из них лица с ОВЗ, инвалиды, дети-инвалиды (зачислено бюджет)], mk.[Из них на места в рамках квоты целевого приема (зачислено бюджет)],
mk.[Из них иностранные граждане (зачислено бюджет)], mk.[Зачислено по договорам об оказании платных образовательных услуг], mk.[Из них лица с ОВЗ, инвалиды, дети-инвалиды (зачислено платное)], 
mk.[Из них на места в рамках квоты целевого приема (зачислено платное)], mk.[Из них иностранные граждане (зачислено платное)], mk.[Отчислено за счет бюджетных ассигнований бюджета субъекта РФ],
mk.[Из них лица с ОВЗ, инвалиды, дети-инвалиды (отчислено бюджет)], mk.[Из них на места в рамках квоты целевого приема (отчислено бюджет)], mk.[Из них иностранные граждане (отчислено бюджет)],
mk.[Отчислено по договорам об оказании платных образовательных услуг], mk.[Из них лица с ОВЗ, инвалиды, дети-инвалиды (отчислено платное)], mk.[Из них на места в рамках квоты целевого приема (отчислено платное)],
mk.[Из них иностранные граждане (отчислено платное)]
	FROM [Движение контингента] as mk
	INNER JOIN [Направления] as dir ON (mk.[Код направления подготовки] = dir.[Код направления подготовки])
	INNER JOIN [Уровни образования] as loe ON (mk.[ID уровня образования] = loe.[ID уровня образования])
	INNER JOIN [Формы обучения] as foe on (mk.[ID формы обучения] = foe.[ID формы обучения])'
	DECLARE @loe_id int
	DECLARE @foe_id int
	DECLARE @dir_id nchar(8)

	IF @loe_name != 'Все'
		BEGIN
			SET @loe_id = (SELECT [ID уровня образования] FROM [Уровни образования] WHERE [Название уровня образования] = @loe_name)
			SET @sql_condition = @sql_condition + ' mk.[ID уровня образования] = ' + STR(@loe_id, 1)
		END

	IF @foe_name != 'Все'
		BEGIN
			SET @foe_id = (SELECT [ID формы обучения] FROM [Формы обучения] WHERE [Название формы обучения] = @foe_name)
			IF @sql_condition = (@sql + ' WHERE')
				SET @sql_condition = @sql_condition + ' mk.[ID формы обучения] = ' + STR(@foe_id, 1)
			ELSE
				SET @sql_condition = @sql_condition + ' AND mk.[ID формы обучения] = ' + STR(@foe_id, 1)
		END

	IF @dir_name != 'Все'
		BEGIN
			SET @dir_id = (SELECT [Код направления подготовки] FROM [Направления] WHERE [Название направления подготовки] = @dir_name)
			IF @sql_condition = (@sql + ' WHERE')
				SET @sql_condition = @sql_condition + ' mk.[Код направления подготовки] = ''' + @dir_id + ''''
			ELSE
				SET @sql_condition = @sql_condition + ' AND mk.[Код направления подготовки] = ''' + @dir_id + ''''
		END

	IF @year != 'Все' AND @month != '00'
		BEGIN
			IF @sql_condition = (@sql + ' WHERE')
				SET @sql_condition = @sql_condition + ' mk.[Дата записи] like ''' + @year + '-' + @month + '-%'''
			ELSE
				SET @sql_condition = @sql_condition + ' AND mk.[Дата записи] like ''' + @year + '-' + @month + '-%'''
		END
	ELSE
		IF @year != 'Все'
			IF @sql_condition = (@sql + ' WHERE')
				SET @sql_condition = @sql_condition + ' mk.[Дата записи] like ''' + @year + '-%-%'''
			ELSE
				SET @sql_condition = @sql_condition + ' AND mk.[Дата записи] like ''' + @year + '-%-%'''
		ELSE
		IF @month != '00'
			IF @sql_condition = (@sql + ' WHERE')
				SET @sql_condition = @sql_condition + ' mk.[Дата записи] like ''%-' + @month + '-%'''
			ELSE
				SET @sql_condition = @sql_condition + ' AND mk.[Дата записи] like ''%-' + @month + '-%'''

	IF @course != 0
		BEGIN
			IF @sql_condition = (@sql + ' WHERE')
				SET @sql_condition = @sql_condition + ' mk.[Курс] = ' + STR(@course, 1)
			ELSE
				SET @sql_condition = @sql_condition + ' AND mk.[Курс] = ' + STR(@course, 1)
		END

	IF @sql_condition = (@sql + ' WHERE')
			EXECUTE(@sql)
	ELSE
			EXECUTE(@sql_condition)
GO
/****** Object:  StoredProcedure [dbo].[Получение данных о целевиках]    Script Date: 06.06.2021 21:42:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[Получение данных о целевиках]
	@loe_name nvarchar(50) = 'Все',
	@foe_name nvarchar(50) = 'Все',
	@dir_name nvarchar(100) = 'Все',
	@year nchar(4) = 'Все',
	@month nchar(2) = '00',
	@course int = 0
AS
	SET NOCOUNT ON
	DECLARE @sql_condition nvarchar(4000) = 'SELECT dir.[Название направления подготовки], loe.[Название уровня образования], foe.[Название формы обучения], mk.[Дата записи], mk.Курс, 
(mk.[Из них на места в рамках квоты целевого приема (зачислено бюджет)] + mk.[Из них на места в рамках квоты целевого приема (зачислено платное)]) as [Из них на места в рамках квоты целевого приема (всего зачислено)],
(mk.[Из них на места в рамках квоты целевого приема (отчислено бюджет)] + mk.[Из них на места в рамках квоты целевого приема (отчислено платное)]) as [Из них на места в рамках квоты целевого приема (всего отчислено)],
mk.[Из них на места в рамках квоты целевого приема (зачислено бюджет)], mk.[Из них на места в рамках квоты целевого приема (зачислено платное)],
mk.[Из них на места в рамках квоты целевого приема (отчислено бюджет)], mk.[Из них на места в рамках квоты целевого приема (отчислено платное)]
	FROM [Движение контингента] as mk
	INNER JOIN [Направления] as dir ON (mk.[Код направления подготовки] = dir.[Код направления подготовки])
	INNER JOIN [Уровни образования] as loe ON (mk.[ID уровня образования] = loe.[ID уровня образования])
	INNER JOIN [Формы обучения] as foe on (mk.[ID формы обучения] = foe.[ID формы обучения]) WHERE'
	DECLARE @sql nvarchar(4000) = 'SELECT dir.[Название направления подготовки], loe.[Название уровня образования], foe.[Название формы обучения], mk.[Дата записи], mk.Курс, 
(mk.[Из них на места в рамках квоты целевого приема (зачислено бюджет)] + mk.[Из них на места в рамках квоты целевого приема (зачислено платное)]) as [Из них на места в рамках квоты целевого приема (всего зачислено)],
(mk.[Из них на места в рамках квоты целевого приема (отчислено бюджет)] + mk.[Из них на места в рамках квоты целевого приема (отчислено платное)]) as [Из них на места в рамках квоты целевого приема (всего отчислено)],
mk.[Из них на места в рамках квоты целевого приема (зачислено бюджет)], mk.[Из них на места в рамках квоты целевого приема (зачислено платное)],
mk.[Из них на места в рамках квоты целевого приема (отчислено бюджет)], mk.[Из них на места в рамках квоты целевого приема (отчислено платное)]
	FROM [Движение контингента] as mk
	INNER JOIN [Направления] as dir ON (mk.[Код направления подготовки] = dir.[Код направления подготовки])
	INNER JOIN [Уровни образования] as loe ON (mk.[ID уровня образования] = loe.[ID уровня образования])
	INNER JOIN [Формы обучения] as foe on (mk.[ID формы обучения] = foe.[ID формы обучения])'
	DECLARE @loe_id int
	DECLARE @foe_id int
	DECLARE @dir_id nchar(8)

	IF @loe_name != 'Все'
		BEGIN
			SET @loe_id = (SELECT [ID уровня образования] FROM [Уровни образования] WHERE [Название уровня образования] = @loe_name)
			SET @sql_condition = @sql_condition + ' mk.[ID уровня образования] = ' + STR(@loe_id, 1)
		END

	IF @foe_name != 'Все'
		BEGIN
			SET @foe_id = (SELECT [ID формы обучения] FROM [Формы обучения] WHERE [Название формы обучения] = @foe_name)
			IF @sql_condition = (@sql + ' WHERE')
				SET @sql_condition = @sql_condition + ' mk.[ID формы обучения] = ' + STR(@foe_id, 1)
			ELSE
				SET @sql_condition = @sql_condition + ' AND mk.[ID формы обучения] = ' + STR(@foe_id, 1)
		END

	IF @dir_name != 'Все'
		BEGIN
			SET @dir_id = (SELECT [Код направления подготовки] FROM [Направления] WHERE [Название направления подготовки] = @dir_name)
			IF @sql_condition = (@sql + ' WHERE')
				SET @sql_condition = @sql_condition + ' mk.[Код направления подготовки] = ''' + @dir_id + ''''
			ELSE
				SET @sql_condition = @sql_condition + ' AND mk.[Код направления подготовки] = ''' + @dir_id + ''''
		END

	IF @year != 'Все' AND @month != '00'
		BEGIN
			IF @sql_condition = (@sql + ' WHERE')
				SET @sql_condition = @sql_condition + ' mk.[Дата записи] like ''' + @year + '-' + @month + '-%'''
			ELSE
				SET @sql_condition = @sql_condition + ' AND mk.[Дата записи] like ''' + @year + '-' + @month + '-%'''
		END
	ELSE
		IF @year != 'Все'
			IF @sql_condition = (@sql + ' WHERE')
				SET @sql_condition = @sql_condition + ' mk.[Дата записи] like ''' + @year + '-%-%'''
			ELSE
				SET @sql_condition = @sql_condition + ' AND mk.[Дата записи] like ''' + @year + '-%-%'''
		ELSE
		IF @month != '00'
			IF @sql_condition = (@sql + ' WHERE')
				SET @sql_condition = @sql_condition + ' mk.[Дата записи] like ''%-' + @month + '-%'''
			ELSE
				SET @sql_condition = @sql_condition + ' AND mk.[Дата записи] like ''%-' + @month + '-%'''

	IF @course != 0
		BEGIN
			IF @sql_condition = (@sql + ' WHERE')
				SET @sql_condition = @sql_condition + ' mk.[Курс] = ' + STR(@course, 1)
			ELSE
				SET @sql_condition = @sql_condition + ' AND mk.[Курс] = ' + STR(@course, 1)
		END

	IF @sql_condition = (@sql + ' WHERE')
			EXECUTE(@sql)
	ELSE
			EXECUTE(@sql_condition)
GO
/****** Object:  StoredProcedure [dbo].[Получение данных об инвалидах]    Script Date: 06.06.2021 21:42:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[Получение данных об инвалидах]
	@loe_name nvarchar(50) = 'Все',
	@foe_name nvarchar(50) = 'Все',
	@dir_name nvarchar(100) = 'Все',
	@year nchar(4) = 'Все',
	@month nchar(2) = '00',
	@course int = 0
AS
	SET NOCOUNT ON
	DECLARE @sql_condition nvarchar(4000) = 'SELECT dir.[Название направления подготовки], loe.[Название уровня образования], foe.[Название формы обучения], mk.[Дата записи], mk.Курс, 
(mk.[Из них лица с ОВЗ, инвалиды, дети-инвалиды (зачислено бюджет)] + mk.[Из них лица с ОВЗ, инвалиды, дети-инвалиды (зачислено платное)]) as [Из них лица с ОВЗ, инвалиды, дети-инвалиды (всего зачислено)],
(mk.[Из них лица с ОВЗ, инвалиды, дети-инвалиды (отчислено бюджет)] + mk.[Из них лица с ОВЗ, инвалиды, дети-инвалиды (отчислено платное)]) as [Из них лица с ОВЗ, инвалиды, дети-инвалиды (всего отчислено)],
mk.[Из них лица с ОВЗ, инвалиды, дети-инвалиды (зачислено бюджет)], mk.[Из них лица с ОВЗ, инвалиды, дети-инвалиды (зачислено платное)], 
mk.[Из них лица с ОВЗ, инвалиды, дети-инвалиды (отчислено бюджет)], mk.[Из них лица с ОВЗ, инвалиды, дети-инвалиды (отчислено платное)]
	FROM [Движение контингента] as mk
	INNER JOIN [Направления] as dir ON (mk.[Код направления подготовки] = dir.[Код направления подготовки])
	INNER JOIN [Уровни образования] as loe ON (mk.[ID уровня образования] = loe.[ID уровня образования])
	INNER JOIN [Формы обучения] as foe on (mk.[ID формы обучения] = foe.[ID формы обучения]) WHERE'
	DECLARE @sql nvarchar(4000) = 'SELECT dir.[Название направления подготовки], loe.[Название уровня образования], foe.[Название формы обучения], mk.[Дата записи], mk.Курс, 
(mk.[Из них лица с ОВЗ, инвалиды, дети-инвалиды (зачислено бюджет)] + mk.[Из них лица с ОВЗ, инвалиды, дети-инвалиды (зачислено платное)]) as [Из них лица с ОВЗ, инвалиды, дети-инвалиды (всего зачислено)],
(mk.[Из них лица с ОВЗ, инвалиды, дети-инвалиды (отчислено бюджет)] + mk.[Из них лица с ОВЗ, инвалиды, дети-инвалиды (отчислено платное)]) as [Из них лица с ОВЗ, инвалиды, дети-инвалиды (всего отчислено)],
mk.[Из них лица с ОВЗ, инвалиды, дети-инвалиды (зачислено бюджет)], mk.[Из них лица с ОВЗ, инвалиды, дети-инвалиды (зачислено платное)], 
mk.[Из них лица с ОВЗ, инвалиды, дети-инвалиды (отчислено бюджет)], mk.[Из них лица с ОВЗ, инвалиды, дети-инвалиды (отчислено платное)]
	FROM [Движение контингента] as mk
	INNER JOIN [Направления] as dir ON (mk.[Код направления подготовки] = dir.[Код направления подготовки])
	INNER JOIN [Уровни образования] as loe ON (mk.[ID уровня образования] = loe.[ID уровня образования])
	INNER JOIN [Формы обучения] as foe on (mk.[ID формы обучения] = foe.[ID формы обучения])'
	DECLARE @loe_id int
	DECLARE @foe_id int
	DECLARE @dir_id nchar(8)

	IF @loe_name != 'Все'
		BEGIN
			SET @loe_id = (SELECT [ID уровня образования] FROM [Уровни образования] WHERE [Название уровня образования] = @loe_name)
			SET @sql_condition = @sql_condition + ' mk.[ID уровня образования] = ' + STR(@loe_id, 1)
		END

	IF @foe_name != 'Все'
		BEGIN
			SET @foe_id = (SELECT [ID формы обучения] FROM [Формы обучения] WHERE [Название формы обучения] = @foe_name)
			IF @sql_condition = (@sql + ' WHERE')
				SET @sql_condition = @sql_condition + ' mk.[ID формы обучения] = ' + STR(@foe_id, 1)
			ELSE
				SET @sql_condition = @sql_condition + ' AND mk.[ID формы обучения] = ' + STR(@foe_id, 1)
		END

	IF @dir_name != 'Все'
		BEGIN
			SET @dir_id = (SELECT [Код направления подготовки] FROM [Направления] WHERE [Название направления подготовки] = @dir_name)
			IF @sql_condition = (@sql + ' WHERE')
				SET @sql_condition = @sql_condition + ' mk.[Код направления подготовки] = ''' + @dir_id + ''''
			ELSE
				SET @sql_condition = @sql_condition + ' AND mk.[Код направления подготовки] = ''' + @dir_id + ''''
		END

	IF @year != 'Все' AND @month != '00'
		BEGIN
			IF @sql_condition = (@sql + ' WHERE')
				SET @sql_condition = @sql_condition + ' mk.[Дата записи] like ''' + @year + '-' + @month + '-%'''
			ELSE
				SET @sql_condition = @sql_condition + ' AND mk.[Дата записи] like ''' + @year + '-' + @month + '-%'''
		END
	ELSE
		IF @year != 'Все'
			IF @sql_condition = (@sql + ' WHERE')
				SET @sql_condition = @sql_condition + ' mk.[Дата записи] like ''' + @year + '-%-%'''
			ELSE
				SET @sql_condition = @sql_condition + ' AND mk.[Дата записи] like ''' + @year + '-%-%'''
		ELSE
		IF @month != '00'
			IF @sql_condition = (@sql + ' WHERE')
				SET @sql_condition = @sql_condition + ' mk.[Дата записи] like ''%-' + @month + '-%'''
			ELSE
				SET @sql_condition = @sql_condition + ' AND mk.[Дата записи] like ''%-' + @month + '-%'''

	IF @course != 0
		BEGIN
			IF @sql_condition = (@sql + ' WHERE')
				SET @sql_condition = @sql_condition + ' mk.[Курс] = ' + STR(@course, 1)
			ELSE
				SET @sql_condition = @sql_condition + ' AND mk.[Курс] = ' + STR(@course, 1)
		END

	IF @sql_condition = (@sql + ' WHERE')
			EXECUTE(@sql)
	ELSE
			EXECUTE(@sql_condition)
GO
/****** Object:  StoredProcedure [dbo].[Получение данных об иностранцах]    Script Date: 06.06.2021 21:42:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[Получение данных об иностранцах]
	@loe_name nvarchar(50) = 'Все',
	@foe_name nvarchar(50) = 'Все',
	@dir_name nvarchar(100) = 'Все',
	@year nchar(4) = 'Все',
	@month nchar(2) = '00',
	@course int = 0
AS
	SET NOCOUNT ON
	DECLARE @sql_condition nvarchar(4000) = 'SELECT dir.[Название направления подготовки], loe.[Название уровня образования], foe.[Название формы обучения], mk.[Дата записи], mk.Курс, 
(mk.[Из них иностранные граждане (зачислено бюджет)] + mk.[Из них иностранные граждане (зачислено платное)]) as [Из них иностранные граждане (всего зачислено)],
(mk.[Из них иностранные граждане (отчислено бюджет)] + mk.[Из них иностранные граждане (отчислено платное)]) as [Из них иностранные граждане (всего отчислено)],
mk.[Из них иностранные граждане (зачислено бюджет)], mk.[Из них иностранные граждане (зачислено платное)],
mk.[Из них иностранные граждане (отчислено бюджет)], mk.[Из них иностранные граждане (отчислено платное)]
	FROM [Движение контингента] as mk
	INNER JOIN [Направления] as dir ON (mk.[Код направления подготовки] = dir.[Код направления подготовки])
	INNER JOIN [Уровни образования] as loe ON (mk.[ID уровня образования] = loe.[ID уровня образования])
	INNER JOIN [Формы обучения] as foe on (mk.[ID формы обучения] = foe.[ID формы обучения]) WHERE'
	DECLARE @sql nvarchar(4000) = 'SELECT dir.[Название направления подготовки], loe.[Название уровня образования], foe.[Название формы обучения], mk.[Дата записи], mk.Курс, 
(mk.[Из них иностранные граждане (зачислено бюджет)] + mk.[Из них иностранные граждане (зачислено платное)]) as [Из них иностранные граждане (всего зачислено)],
(mk.[Из них иностранные граждане (отчислено бюджет)] + mk.[Из них иностранные граждане (отчислено платное)]) as [Из них иностранные граждане (всего отчислено)],
mk.[Из них иностранные граждане (зачислено бюджет)], mk.[Из них иностранные граждане (зачислено платное)],
mk.[Из них иностранные граждане (отчислено бюджет)], mk.[Из них иностранные граждане (отчислено платное)]
	FROM [Движение контингента] as mk
	INNER JOIN [Направления] as dir ON (mk.[Код направления подготовки] = dir.[Код направления подготовки])
	INNER JOIN [Уровни образования] as loe ON (mk.[ID уровня образования] = loe.[ID уровня образования])
	INNER JOIN [Формы обучения] as foe on (mk.[ID формы обучения] = foe.[ID формы обучения])'
	DECLARE @loe_id int
	DECLARE @foe_id int
	DECLARE @dir_id nchar(8)

	IF @loe_name != 'Все'
		BEGIN
			SET @loe_id = (SELECT [ID уровня образования] FROM [Уровни образования] WHERE [Название уровня образования] = @loe_name)
			SET @sql_condition = @sql_condition + ' mk.[ID уровня образования] = ' + STR(@loe_id, 1)
		END

	IF @foe_name != 'Все'
		BEGIN
			SET @foe_id = (SELECT [ID формы обучения] FROM [Формы обучения] WHERE [Название формы обучения] = @foe_name)
			IF @sql_condition = (@sql + ' WHERE')
				SET @sql_condition = @sql_condition + ' mk.[ID формы обучения] = ' + STR(@foe_id, 1)
			ELSE
				SET @sql_condition = @sql_condition + ' AND mk.[ID формы обучения] = ' + STR(@foe_id, 1)
		END

	IF @dir_name != 'Все'
		BEGIN
			SET @dir_id = (SELECT [Код направления подготовки] FROM [Направления] WHERE [Название направления подготовки] = @dir_name)
			IF @sql_condition = (@sql + ' WHERE')
				SET @sql_condition = @sql_condition + ' mk.[Код направления подготовки] = ''' + @dir_id + ''''
			ELSE
				SET @sql_condition = @sql_condition + ' AND mk.[Код направления подготовки] = ''' + @dir_id + ''''
		END

	IF @year != 'Все' AND @month != '00'
		BEGIN
			IF @sql_condition = (@sql + ' WHERE')
				SET @sql_condition = @sql_condition + ' mk.[Дата записи] like ''' + @year + '-' + @month + '-%'''
			ELSE
				SET @sql_condition = @sql_condition + ' AND mk.[Дата записи] like ''' + @year + '-' + @month + '-%'''
		END
	ELSE
		IF @year != 'Все'
			IF @sql_condition = (@sql + ' WHERE')
				SET @sql_condition = @sql_condition + ' mk.[Дата записи] like ''' + @year + '-%-%'''
			ELSE
				SET @sql_condition = @sql_condition + ' AND mk.[Дата записи] like ''' + @year + '-%-%'''
		ELSE
		IF @month != '00'
			IF @sql_condition = (@sql + ' WHERE')
				SET @sql_condition = @sql_condition + ' mk.[Дата записи] like ''%-' + @month + '-%'''
			ELSE
				SET @sql_condition = @sql_condition + ' AND mk.[Дата записи] like ''%-' + @month + '-%'''

	IF @course != 0
		BEGIN
			IF @sql_condition = (@sql + ' WHERE')
				SET @sql_condition = @sql_condition + ' mk.[Курс] = ' + STR(@course, 1)
			ELSE
				SET @sql_condition = @sql_condition + ' AND mk.[Курс] = ' + STR(@course, 1)
		END

	IF @sql_condition = (@sql + ' WHERE')
			EXECUTE(@sql)
	ELSE
			EXECUTE(@sql_condition)
GO
/****** Object:  StoredProcedure [dbo].[Получение лет]    Script Date: 06.06.2021 21:42:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Получение лет]
	@loe_name nvarchar(50)
AS
	SET NOCOUNT ON
	IF @loe_name = 'Все'
		BEGIN
			SELECT DISTINCT YEAR([Дата записи]) FROM [Движение контингента]
		END
	ELSE
		BEGIN
			SELECT DISTINCT YEAR(mk.[Дата записи]) as Год
			FROM [Движение контингента] as mk
			INNER JOIN [Уровни образования] as loe ON (loe.[ID уровня образования] = mk.[ID уровня образования] AND loe.[Название уровня образования] = @loe_name)
		END
GO
/****** Object:  StoredProcedure [dbo].[Получение месяцев]    Script Date: 06.06.2021 21:42:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[Получение месяцев]
	@loe_name nvarchar(50)
AS
	SET NOCOUNT ON
	IF @loe_name = 'Все'
		BEGIN
			SELECT DISTINCT MONTH([Дата записи]) FROM [Движение контингента]
		END
	ELSE
		BEGIN
			SELECT DISTINCT MONTH(mk.[Дата записи]) as Год
			FROM [Движение контингента] as mk
			INNER JOIN [Уровни образования] as loe ON (loe.[ID уровня образования] = mk.[ID уровня образования] AND loe.[Название уровня образования] = @loe_name)
		END
GO
/****** Object:  StoredProcedure [dbo].[Получение направлений]    Script Date: 06.06.2021 21:42:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Получение направлений]
	@loe_name nvarchar(50)
AS
	SET NOCOUNT ON
	IF @loe_name = 'Все'
		BEGIN
			SELECT [Название направления подготовки] FROM [Направления]
		END
	ELSE
		BEGIN
			SELECT dir.[Название направления подготовки]
			FROM [Направления] as dir
			INNER JOIN [Уровни образования] as loe ON (loe.[ID уровня образования] = dir.[ID уровня образования] AND loe.[Название уровня образования] = @loe_name)
		END
GO
USE [master]
GO
ALTER DATABASE [Контингент] SET  READ_WRITE 
GO
