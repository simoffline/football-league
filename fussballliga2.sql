USE [master]
GO

/****** Object:  Database [db_fussballliga]    Script Date: 19.12.2018 09:19:30 ******/
CREATE DATABASE [db_fussballliga]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'db_fussballliga', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\db_fussballliga.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'db_fussballliga_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\db_fussballliga_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO

ALTER DATABASE [db_fussballliga] SET COMPATIBILITY_LEVEL = 140
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [db_fussballliga].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [db_fussballliga] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [db_fussballliga] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [db_fussballliga] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [db_fussballliga] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [db_fussballliga] SET ARITHABORT OFF 
GO

ALTER DATABASE [db_fussballliga] SET AUTO_CLOSE ON 
GO

ALTER DATABASE [db_fussballliga] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [db_fussballliga] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [db_fussballliga] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [db_fussballliga] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [db_fussballliga] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [db_fussballliga] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [db_fussballliga] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [db_fussballliga] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [db_fussballliga] SET  ENABLE_BROKER 
GO

ALTER DATABASE [db_fussballliga] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [db_fussballliga] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [db_fussballliga] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [db_fussballliga] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [db_fussballliga] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [db_fussballliga] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [db_fussballliga] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [db_fussballliga] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [db_fussballliga] SET  MULTI_USER 
GO

ALTER DATABASE [db_fussballliga] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [db_fussballliga] SET DB_CHAINING OFF 
GO

ALTER DATABASE [db_fussballliga] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [db_fussballliga] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [db_fussballliga] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [db_fussballliga] SET QUERY_STORE = OFF
GO

USE [db_fussballliga]
GO

ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO

ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO

ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO

ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO

ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO

ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO

ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO

ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO

ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO

ALTER DATABASE [db_fussballliga] SET  READ_WRITE 
GO
