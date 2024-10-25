USE [master]
GO
/****** Object:  Database [Gamatron]    Script Date: 25/10/2024 10:52:19 ******/
CREATE DATABASE [Gamatron]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Gamatron', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER01\MSSQL\DATA\Gamatron.mdf' , SIZE = 24322048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Gamatron_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER01\MSSQL\DATA\Gamatron_log.ldf' , SIZE = 2236416KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Gamatron] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Gamatron].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Gamatron] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Gamatron] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Gamatron] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Gamatron] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Gamatron] SET ARITHABORT OFF 
GO
ALTER DATABASE [Gamatron] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Gamatron] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Gamatron] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Gamatron] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Gamatron] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Gamatron] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Gamatron] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Gamatron] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Gamatron] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Gamatron] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Gamatron] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Gamatron] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Gamatron] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Gamatron] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Gamatron] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Gamatron] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Gamatron] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Gamatron] SET RECOVERY FULL 
GO
ALTER DATABASE [Gamatron] SET  MULTI_USER 
GO
ALTER DATABASE [Gamatron] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Gamatron] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Gamatron] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Gamatron] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Gamatron] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Gamatron] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Gamatron', N'ON'
GO
ALTER DATABASE [Gamatron] SET QUERY_STORE = ON
GO
ALTER DATABASE [Gamatron] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Gamatron]
GO
/****** Object:  Table [dbo].[st_Flights2018]    Script Date: 25/10/2024 10:52:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[st_Flights2018](
	[FlightDate] [nvarchar](255) NULL,
	[Airline] [nvarchar](255) NULL,
	[Origin] [nvarchar](255) NULL,
	[Dest] [nvarchar](255) NULL,
	[Cancelled] [nvarchar](255) NULL,
	[Diverted] [nvarchar](255) NULL,
	[CRSDepTime] [nvarchar](255) NULL,
	[DepTime] [nvarchar](255) NULL,
	[DepDelayMinutes] [nvarchar](255) NULL,
	[DepDelay] [nvarchar](255) NULL,
	[ArrTime] [nvarchar](255) NULL,
	[ArrDelayMinutes] [nvarchar](255) NULL,
	[AirTime] [nvarchar](255) NULL,
	[CRSElapsedTime] [nvarchar](255) NULL,
	[ActualElapsedTime] [nvarchar](255) NULL,
	[Distance] [nvarchar](255) NULL,
	[Year] [nvarchar](255) NULL,
	[Quarter] [nvarchar](255) NULL,
	[Month] [nvarchar](255) NULL,
	[DayofMonth] [nvarchar](255) NULL,
	[DayOfWeek] [nvarchar](255) NULL,
	[Marketing_Airline_Network] [nvarchar](255) NULL,
	[Operated_or_Branded_Code_Share_Partners] [nvarchar](255) NULL,
	[DOT_ID_Marketing_Airline] [nvarchar](255) NULL,
	[IATA_Code_Marketing_Airline] [nvarchar](255) NULL,
	[Flight_Number_Marketing_Airline] [nvarchar](255) NULL,
	[Operating_Airline] [nvarchar](255) NULL,
	[DOT_ID_Operating_Airline] [nvarchar](255) NULL,
	[IATA_Code_Operating_Airline] [nvarchar](255) NULL,
	[Tail_Number] [nvarchar](255) NULL,
	[Flight_Number_Operating_Airline] [nvarchar](255) NULL,
	[OriginAirportID] [nvarchar](255) NULL,
	[OriginAirportSeqID] [nvarchar](255) NULL,
	[OriginCityMarketID] [nvarchar](255) NULL,
	[OriginCityName] [nvarchar](255) NULL,
	[OriginState] [nvarchar](255) NULL,
	[OriginStateFips] [nvarchar](255) NULL,
	[OriginStateName] [nvarchar](255) NULL,
	[OriginWac] [nvarchar](255) NULL,
	[DestAirportID] [nvarchar](255) NULL,
	[DestAirportSeqID] [nvarchar](255) NULL,
	[DestCityMarketID] [nvarchar](255) NULL,
	[DestCityName] [nvarchar](255) NULL,
	[DestState] [nvarchar](255) NULL,
	[DestStateFips] [nvarchar](255) NULL,
	[DestStateName] [nvarchar](255) NULL,
	[DestWac] [nvarchar](255) NULL,
	[DepDel15] [nvarchar](255) NULL,
	[DepartureDelayGroups] [nvarchar](255) NULL,
	[DepTimeBlk] [nvarchar](255) NULL,
	[TaxiOut] [nvarchar](255) NULL,
	[WheelsOff] [nvarchar](255) NULL,
	[WheelsOn] [nvarchar](255) NULL,
	[TaxiIn] [nvarchar](255) NULL,
	[CRSArrTime] [nvarchar](255) NULL,
	[ArrDelay] [nvarchar](255) NULL,
	[ArrDel15] [nvarchar](255) NULL,
	[ArrivalDelayGroups] [nvarchar](255) NULL,
	[ArrTimeBlk] [nvarchar](255) NULL,
	[DistanceGroup] [nvarchar](255) NULL,
	[DivAirportLandings] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[uvw_Flights2018]    Script Date: 25/10/2024 10:52:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--select top 100 * from dbo.st_Flights2018

CREATE view [dbo].[uvw_Flights2018] as 
	select
		convert(nvarchar, try_parse(FlightDate as date using 'es'), 112) as FlightDate,
		Airline,
		Origin,
		Dest,
		Cancelled,
		Diverted,
		try_convert(float, CRSDepTime) as CRSDepTime,
		try_convert(float, DepTime) as DepTime,
		try_convert(float, DepDelayMinutes) as DepDelayMinutes,
		try_convert(float, DepDelay) as DepDelay,
		try_convert(float, ArrTime) as ArrTime,
		try_convert(float, ArrDelayMinutes) as ArrDelayMinutes,
		try_convert(float, AirTime) as AirTime,
		try_convert(float, CRSElapsedTime) as CRSElapsedTime,
		try_convert(float, ActualElapsedTime) as ActualElapsedTime,
		try_convert(float, Distance) as Distance,
		try_convert(float, [Year]) as [Year],
		try_convert(float, [Quarter]) as [Quarter],
		try_convert(float, [Month]) as [Month],
		try_convert(float, [DayofMonth]) as [DayofMonth],
		try_convert(float, [DayOfWeek]) as [DayOfWeek],
		Marketing_Airline_Network,
		Operated_or_Branded_Code_Share_Partners,
		try_convert(float, DOT_ID_Marketing_Airline) as DOT_ID_Marketing_Airline,
		IATA_Code_Marketing_Airline,
		try_convert(float, Flight_Number_Marketing_Airline) as Flight_Number_Marketing_Airline,
		Operating_Airline,
		try_convert(float, DOT_ID_Operating_Airline) as DOT_ID_Operating_Airline,
		IATA_Code_Operating_Airline,
		Tail_Number,
		try_convert(float, Flight_Number_Operating_Airline) as Flight_Number_Operating_Airline,
		try_convert(float, OriginAirportID) as OriginAirportID,
		try_convert(float, OriginAirportSeqID) as OriginAirportSeqID,
		OriginCityMarketID,
		OriginCityName,
		OriginState,
		OriginStateFips,
		OriginStateName,
		OriginWac,
		try_convert(float, DestAirportID) as DestAirportID,
		try_convert(float, DestAirportSeqID) as DestAirportSeqID,
		try_convert(float, DestCityMarketID) as DestCityMarketID,
		DestCityName,
		DestState,
		DestStateFips,
		DestStateName,
		try_convert(float, DestWac) as DestWac,
		DepDel15,
		try_convert(float, DepartureDelayGroups) as DepartureDelayGroups,
		DepTimeBlk,
		try_convert(float, TaxiOut) as TaxiOut,
		WheelsOff,
		try_convert(float, WheelsOn) as WheelsOn,
		try_convert(float, TaxiIn) as TaxiIn,
		try_convert(float, CRSArrTime) as CRSArrTime,
		try_convert(float, ArrDelay) as ArrDelay,
		try_convert(float, ArrDel15) as ArrDel15,
		try_convert(float, ArrivalDelayGroups) as ArrivalDelayGroups,
		ArrTimeBlk,
		try_convert(float, DistanceGroup) as DistanceGroup,
		DivAirportLandings
	from dbo.st_Flights2018


GO
/****** Object:  Table [dbo].[st_Flights2019]    Script Date: 25/10/2024 10:52:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[st_Flights2019](
	[FlightDate] [nvarchar](255) NULL,
	[Airline] [nvarchar](255) NULL,
	[Origin] [nvarchar](255) NULL,
	[Dest] [nvarchar](255) NULL,
	[Cancelled] [nvarchar](255) NULL,
	[Diverted] [nvarchar](255) NULL,
	[CRSDepTime] [nvarchar](255) NULL,
	[DepTime] [nvarchar](255) NULL,
	[DepDelayMinutes] [nvarchar](255) NULL,
	[DepDelay] [nvarchar](255) NULL,
	[ArrTime] [nvarchar](255) NULL,
	[ArrDelayMinutes] [nvarchar](255) NULL,
	[AirTime] [nvarchar](255) NULL,
	[CRSElapsedTime] [nvarchar](255) NULL,
	[ActualElapsedTime] [nvarchar](255) NULL,
	[Distance] [nvarchar](255) NULL,
	[Year] [nvarchar](255) NULL,
	[Quarter] [nvarchar](255) NULL,
	[Month] [nvarchar](255) NULL,
	[DayofMonth] [nvarchar](255) NULL,
	[DayOfWeek] [nvarchar](255) NULL,
	[Marketing_Airline_Network] [nvarchar](255) NULL,
	[Operated_or_Branded_Code_Share_Partners] [nvarchar](255) NULL,
	[DOT_ID_Marketing_Airline] [nvarchar](255) NULL,
	[IATA_Code_Marketing_Airline] [nvarchar](255) NULL,
	[Flight_Number_Marketing_Airline] [nvarchar](255) NULL,
	[Operating_Airline] [nvarchar](255) NULL,
	[DOT_ID_Operating_Airline] [nvarchar](255) NULL,
	[IATA_Code_Operating_Airline] [nvarchar](255) NULL,
	[Tail_Number] [nvarchar](255) NULL,
	[Flight_Number_Operating_Airline] [nvarchar](255) NULL,
	[OriginAirportID] [nvarchar](255) NULL,
	[OriginAirportSeqID] [nvarchar](255) NULL,
	[OriginCityMarketID] [nvarchar](255) NULL,
	[OriginCityName] [nvarchar](255) NULL,
	[OriginState] [nvarchar](255) NULL,
	[OriginStateFips] [nvarchar](255) NULL,
	[OriginStateName] [nvarchar](255) NULL,
	[OriginWac] [nvarchar](255) NULL,
	[DestAirportID] [nvarchar](255) NULL,
	[DestAirportSeqID] [nvarchar](255) NULL,
	[DestCityMarketID] [nvarchar](255) NULL,
	[DestCityName] [nvarchar](255) NULL,
	[DestState] [nvarchar](255) NULL,
	[DestStateFips] [nvarchar](255) NULL,
	[DestStateName] [nvarchar](255) NULL,
	[DestWac] [nvarchar](255) NULL,
	[DepDel15] [nvarchar](255) NULL,
	[DepartureDelayGroups] [nvarchar](255) NULL,
	[DepTimeBlk] [nvarchar](255) NULL,
	[TaxiOut] [nvarchar](255) NULL,
	[WheelsOff] [nvarchar](255) NULL,
	[WheelsOn] [nvarchar](255) NULL,
	[TaxiIn] [nvarchar](255) NULL,
	[CRSArrTime] [nvarchar](255) NULL,
	[ArrDelay] [nvarchar](255) NULL,
	[ArrDel15] [nvarchar](255) NULL,
	[ArrivalDelayGroups] [nvarchar](255) NULL,
	[ArrTimeBlk] [nvarchar](255) NULL,
	[DistanceGroup] [nvarchar](255) NULL,
	[DivAirportLandings] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[uvw_Flights2019]    Script Date: 25/10/2024 10:52:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--select top 100 * from dbo.st_Flights2018

CREATE view [dbo].[uvw_Flights2019] as 
	select
		convert(nvarchar, try_parse(FlightDate as date using 'es'), 112) as FlightDate,
		Airline,
		Origin,
		Dest,
		Cancelled,
		Diverted,
		try_convert(float, CRSDepTime) as CRSDepTime,
		try_convert(float, DepTime) as DepTime,
		try_convert(float, DepDelayMinutes) as DepDelayMinutes,
		try_convert(float, DepDelay) as DepDelay,
		try_convert(float, ArrTime) as ArrTime,
		try_convert(float, ArrDelayMinutes) as ArrDelayMinutes,
		try_convert(float, AirTime) as AirTime,
		try_convert(float, CRSElapsedTime) as CRSElapsedTime,
		try_convert(float, ActualElapsedTime) as ActualElapsedTime,
		try_convert(float, Distance) as Distance,
		try_convert(float, [Year]) as [Year],
		try_convert(float, [Quarter]) as [Quarter],
		try_convert(float, [Month]) as [Month],
		try_convert(float, [DayofMonth]) as [DayofMonth],
		try_convert(float, [DayOfWeek]) as [DayOfWeek],
		Marketing_Airline_Network,
		Operated_or_Branded_Code_Share_Partners,
		try_convert(float, DOT_ID_Marketing_Airline) as DOT_ID_Marketing_Airline,
		IATA_Code_Marketing_Airline,
		try_convert(float, Flight_Number_Marketing_Airline) as Flight_Number_Marketing_Airline,
		Operating_Airline,
		try_convert(float, DOT_ID_Operating_Airline) as DOT_ID_Operating_Airline,
		IATA_Code_Operating_Airline,
		Tail_Number,
		try_convert(float, Flight_Number_Operating_Airline) as Flight_Number_Operating_Airline,
		try_convert(float, OriginAirportID) as OriginAirportID,
		try_convert(float, OriginAirportSeqID) as OriginAirportSeqID,
		OriginCityMarketID,
		OriginCityName,
		OriginState,
		OriginStateFips,
		OriginStateName,
		OriginWac,
		try_convert(float, DestAirportID) as DestAirportID,
		try_convert(float, DestAirportSeqID) as DestAirportSeqID,
		try_convert(float, DestCityMarketID) as DestCityMarketID,
		DestCityName,
		DestState,
		DestStateFips,
		DestStateName,
		try_convert(float, DestWac) as DestWac,
		DepDel15,
		try_convert(float, DepartureDelayGroups) as DepartureDelayGroups,
		DepTimeBlk,
		try_convert(float, TaxiOut) as TaxiOut,
		WheelsOff,
		try_convert(float, WheelsOn) as WheelsOn,
		try_convert(float, TaxiIn) as TaxiIn,
		try_convert(float, CRSArrTime) as CRSArrTime,
		try_convert(float, ArrDelay) as ArrDelay,
		try_convert(float, ArrDel15) as ArrDel15,
		try_convert(float, ArrivalDelayGroups) as ArrivalDelayGroups,
		ArrTimeBlk,
		try_convert(float, DistanceGroup) as DistanceGroup,
		DivAirportLandings
	from dbo.st_Flights2019


GO
/****** Object:  Table [dbo].[st_Flights2020]    Script Date: 25/10/2024 10:52:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[st_Flights2020](
	[FlightDate] [nvarchar](255) NULL,
	[Airline] [nvarchar](255) NULL,
	[Origin] [nvarchar](255) NULL,
	[Dest] [nvarchar](255) NULL,
	[Cancelled] [nvarchar](255) NULL,
	[Diverted] [nvarchar](255) NULL,
	[CRSDepTime] [nvarchar](255) NULL,
	[DepTime] [nvarchar](255) NULL,
	[DepDelayMinutes] [nvarchar](255) NULL,
	[DepDelay] [nvarchar](255) NULL,
	[ArrTime] [nvarchar](255) NULL,
	[ArrDelayMinutes] [nvarchar](255) NULL,
	[AirTime] [nvarchar](255) NULL,
	[CRSElapsedTime] [nvarchar](255) NULL,
	[ActualElapsedTime] [nvarchar](255) NULL,
	[Distance] [nvarchar](255) NULL,
	[Year] [nvarchar](255) NULL,
	[Quarter] [nvarchar](255) NULL,
	[Month] [nvarchar](255) NULL,
	[DayofMonth] [nvarchar](255) NULL,
	[DayOfWeek] [nvarchar](255) NULL,
	[Marketing_Airline_Network] [nvarchar](255) NULL,
	[Operated_or_Branded_Code_Share_Partners] [nvarchar](255) NULL,
	[DOT_ID_Marketing_Airline] [nvarchar](255) NULL,
	[IATA_Code_Marketing_Airline] [nvarchar](255) NULL,
	[Flight_Number_Marketing_Airline] [nvarchar](255) NULL,
	[Operating_Airline] [nvarchar](255) NULL,
	[DOT_ID_Operating_Airline] [nvarchar](255) NULL,
	[IATA_Code_Operating_Airline] [nvarchar](255) NULL,
	[Tail_Number] [nvarchar](255) NULL,
	[Flight_Number_Operating_Airline] [nvarchar](255) NULL,
	[OriginAirportID] [nvarchar](255) NULL,
	[OriginAirportSeqID] [nvarchar](255) NULL,
	[OriginCityMarketID] [nvarchar](255) NULL,
	[OriginCityName] [nvarchar](255) NULL,
	[OriginState] [nvarchar](255) NULL,
	[OriginStateFips] [nvarchar](255) NULL,
	[OriginStateName] [nvarchar](255) NULL,
	[OriginWac] [nvarchar](255) NULL,
	[DestAirportID] [nvarchar](255) NULL,
	[DestAirportSeqID] [nvarchar](255) NULL,
	[DestCityMarketID] [nvarchar](255) NULL,
	[DestCityName] [nvarchar](255) NULL,
	[DestState] [nvarchar](255) NULL,
	[DestStateFips] [nvarchar](255) NULL,
	[DestStateName] [nvarchar](255) NULL,
	[DestWac] [nvarchar](255) NULL,
	[DepDel15] [nvarchar](255) NULL,
	[DepartureDelayGroups] [nvarchar](255) NULL,
	[DepTimeBlk] [nvarchar](255) NULL,
	[TaxiOut] [nvarchar](255) NULL,
	[WheelsOff] [nvarchar](255) NULL,
	[WheelsOn] [nvarchar](255) NULL,
	[TaxiIn] [nvarchar](255) NULL,
	[CRSArrTime] [nvarchar](255) NULL,
	[ArrDelay] [nvarchar](255) NULL,
	[ArrDel15] [nvarchar](255) NULL,
	[ArrivalDelayGroups] [nvarchar](255) NULL,
	[ArrTimeBlk] [nvarchar](255) NULL,
	[DistanceGroup] [nvarchar](255) NULL,
	[DivAirportLandings] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[uvw_Flights2020]    Script Date: 25/10/2024 10:52:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--select top 100 * from dbo.st_Flights2018

CREATE view [dbo].[uvw_Flights2020] as 
	select
		convert(nvarchar, try_parse(FlightDate as date using 'es'), 112) as FlightDate,
		Airline,
		Origin,
		Dest,
		Cancelled,
		Diverted,
		try_convert(float, CRSDepTime) as CRSDepTime,
		try_convert(float, DepTime) as DepTime,
		try_convert(float, DepDelayMinutes) as DepDelayMinutes,
		try_convert(float, DepDelay) as DepDelay,
		try_convert(float, ArrTime) as ArrTime,
		try_convert(float, ArrDelayMinutes) as ArrDelayMinutes,
		try_convert(float, AirTime) as AirTime,
		try_convert(float, CRSElapsedTime) as CRSElapsedTime,
		try_convert(float, ActualElapsedTime) as ActualElapsedTime,
		try_convert(float, Distance) as Distance,
		try_convert(float, [Year]) as [Year],
		try_convert(float, [Quarter]) as [Quarter],
		try_convert(float, [Month]) as [Month],
		try_convert(float, [DayofMonth]) as [DayofMonth],
		try_convert(float, [DayOfWeek]) as [DayOfWeek],
		Marketing_Airline_Network,
		Operated_or_Branded_Code_Share_Partners,
		try_convert(float, DOT_ID_Marketing_Airline) as DOT_ID_Marketing_Airline,
		IATA_Code_Marketing_Airline,
		try_convert(float, Flight_Number_Marketing_Airline) as Flight_Number_Marketing_Airline,
		Operating_Airline,
		try_convert(float, DOT_ID_Operating_Airline) as DOT_ID_Operating_Airline,
		IATA_Code_Operating_Airline,
		Tail_Number,
		try_convert(float, Flight_Number_Operating_Airline) as Flight_Number_Operating_Airline,
		try_convert(float, OriginAirportID) as OriginAirportID,
		try_convert(float, OriginAirportSeqID) as OriginAirportSeqID,
		OriginCityMarketID,
		OriginCityName,
		OriginState,
		OriginStateFips,
		OriginStateName,
		OriginWac,
		try_convert(float, DestAirportID) as DestAirportID,
		try_convert(float, DestAirportSeqID) as DestAirportSeqID,
		try_convert(float, DestCityMarketID) as DestCityMarketID,
		DestCityName,
		DestState,
		DestStateFips,
		DestStateName,
		try_convert(float, DestWac) as DestWac,
		DepDel15,
		try_convert(float, DepartureDelayGroups) as DepartureDelayGroups,
		DepTimeBlk,
		try_convert(float, TaxiOut) as TaxiOut,
		WheelsOff,
		try_convert(float, WheelsOn) as WheelsOn,
		try_convert(float, TaxiIn) as TaxiIn,
		try_convert(float, CRSArrTime) as CRSArrTime,
		try_convert(float, ArrDelay) as ArrDelay,
		try_convert(float, ArrDel15) as ArrDel15,
		try_convert(float, ArrivalDelayGroups) as ArrivalDelayGroups,
		ArrTimeBlk,
		try_convert(float, DistanceGroup) as DistanceGroup,
		DivAirportLandings
	from dbo.st_Flights2020


GO
/****** Object:  Table [dbo].[st_Flights2021]    Script Date: 25/10/2024 10:52:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[st_Flights2021](
	[FlightDate] [nvarchar](255) NULL,
	[Airline] [nvarchar](255) NULL,
	[Origin] [nvarchar](255) NULL,
	[Dest] [nvarchar](255) NULL,
	[Cancelled] [nvarchar](255) NULL,
	[Diverted] [nvarchar](255) NULL,
	[CRSDepTime] [nvarchar](255) NULL,
	[DepTime] [nvarchar](255) NULL,
	[DepDelayMinutes] [nvarchar](255) NULL,
	[DepDelay] [nvarchar](255) NULL,
	[ArrTime] [nvarchar](255) NULL,
	[ArrDelayMinutes] [nvarchar](255) NULL,
	[AirTime] [nvarchar](255) NULL,
	[CRSElapsedTime] [nvarchar](255) NULL,
	[ActualElapsedTime] [nvarchar](255) NULL,
	[Distance] [nvarchar](255) NULL,
	[Year] [nvarchar](255) NULL,
	[Quarter] [nvarchar](255) NULL,
	[Month] [nvarchar](255) NULL,
	[DayofMonth] [nvarchar](255) NULL,
	[DayOfWeek] [nvarchar](255) NULL,
	[Marketing_Airline_Network] [nvarchar](255) NULL,
	[Operated_or_Branded_Code_Share_Partners] [nvarchar](255) NULL,
	[DOT_ID_Marketing_Airline] [nvarchar](255) NULL,
	[IATA_Code_Marketing_Airline] [nvarchar](255) NULL,
	[Flight_Number_Marketing_Airline] [nvarchar](255) NULL,
	[Operating_Airline] [nvarchar](255) NULL,
	[DOT_ID_Operating_Airline] [nvarchar](255) NULL,
	[IATA_Code_Operating_Airline] [nvarchar](255) NULL,
	[Tail_Number] [nvarchar](255) NULL,
	[Flight_Number_Operating_Airline] [nvarchar](255) NULL,
	[OriginAirportID] [nvarchar](255) NULL,
	[OriginAirportSeqID] [nvarchar](255) NULL,
	[OriginCityMarketID] [nvarchar](255) NULL,
	[OriginCityName] [nvarchar](255) NULL,
	[OriginState] [nvarchar](255) NULL,
	[OriginStateFips] [nvarchar](255) NULL,
	[OriginStateName] [nvarchar](255) NULL,
	[OriginWac] [nvarchar](255) NULL,
	[DestAirportID] [nvarchar](255) NULL,
	[DestAirportSeqID] [nvarchar](255) NULL,
	[DestCityMarketID] [nvarchar](255) NULL,
	[DestCityName] [nvarchar](255) NULL,
	[DestState] [nvarchar](255) NULL,
	[DestStateFips] [nvarchar](255) NULL,
	[DestStateName] [nvarchar](255) NULL,
	[DestWac] [nvarchar](255) NULL,
	[DepDel15] [nvarchar](255) NULL,
	[DepartureDelayGroups] [nvarchar](255) NULL,
	[DepTimeBlk] [nvarchar](255) NULL,
	[TaxiOut] [nvarchar](255) NULL,
	[WheelsOff] [nvarchar](255) NULL,
	[WheelsOn] [nvarchar](255) NULL,
	[TaxiIn] [nvarchar](255) NULL,
	[CRSArrTime] [nvarchar](255) NULL,
	[ArrDelay] [nvarchar](255) NULL,
	[ArrDel15] [nvarchar](255) NULL,
	[ArrivalDelayGroups] [nvarchar](255) NULL,
	[ArrTimeBlk] [nvarchar](255) NULL,
	[DistanceGroup] [nvarchar](255) NULL,
	[DivAirportLandings] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[uvw_Flights2021]    Script Date: 25/10/2024 10:52:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--select top 100 * from dbo.st_Flights2018

CREATE view [dbo].[uvw_Flights2021] as 
	select
		convert(nvarchar, try_parse(FlightDate as date using 'es'), 112) as FlightDate,
		Airline,
		Origin,
		Dest,
		Cancelled,
		Diverted,
		try_convert(float, CRSDepTime) as CRSDepTime,
		try_convert(float, DepTime) as DepTime,
		try_convert(float, DepDelayMinutes) as DepDelayMinutes,
		try_convert(float, DepDelay) as DepDelay,
		try_convert(float, ArrTime) as ArrTime,
		try_convert(float, ArrDelayMinutes) as ArrDelayMinutes,
		try_convert(float, AirTime) as AirTime,
		try_convert(float, CRSElapsedTime) as CRSElapsedTime,
		try_convert(float, ActualElapsedTime) as ActualElapsedTime,
		try_convert(float, Distance) as Distance,
		try_convert(float, [Year]) as [Year],
		try_convert(float, [Quarter]) as [Quarter],
		try_convert(float, [Month]) as [Month],
		try_convert(float, [DayofMonth]) as [DayofMonth],
		try_convert(float, [DayOfWeek]) as [DayOfWeek],
		Marketing_Airline_Network,
		Operated_or_Branded_Code_Share_Partners,
		try_convert(float, DOT_ID_Marketing_Airline) as DOT_ID_Marketing_Airline,
		IATA_Code_Marketing_Airline,
		try_convert(float, Flight_Number_Marketing_Airline) as Flight_Number_Marketing_Airline,
		Operating_Airline,
		try_convert(float, DOT_ID_Operating_Airline) as DOT_ID_Operating_Airline,
		IATA_Code_Operating_Airline,
		Tail_Number,
		try_convert(float, Flight_Number_Operating_Airline) as Flight_Number_Operating_Airline,
		try_convert(float, OriginAirportID) as OriginAirportID,
		try_convert(float, OriginAirportSeqID) as OriginAirportSeqID,
		OriginCityMarketID,
		OriginCityName,
		OriginState,
		OriginStateFips,
		OriginStateName,
		OriginWac,
		try_convert(float, DestAirportID) as DestAirportID,
		try_convert(float, DestAirportSeqID) as DestAirportSeqID,
		try_convert(float, DestCityMarketID) as DestCityMarketID,
		DestCityName,
		DestState,
		DestStateFips,
		DestStateName,
		try_convert(float, DestWac) as DestWac,
		DepDel15,
		try_convert(float, DepartureDelayGroups) as DepartureDelayGroups,
		DepTimeBlk,
		try_convert(float, TaxiOut) as TaxiOut,
		WheelsOff,
		try_convert(float, WheelsOn) as WheelsOn,
		try_convert(float, TaxiIn) as TaxiIn,
		try_convert(float, CRSArrTime) as CRSArrTime,
		try_convert(float, ArrDelay) as ArrDelay,
		try_convert(float, ArrDel15) as ArrDel15,
		try_convert(float, ArrivalDelayGroups) as ArrivalDelayGroups,
		ArrTimeBlk,
		try_convert(float, DistanceGroup) as DistanceGroup,
		DivAirportLandings
	from dbo.st_Flights2021


GO
/****** Object:  Table [dbo].[st_Flights2022]    Script Date: 25/10/2024 10:52:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[st_Flights2022](
	[FlightDate] [nvarchar](255) NULL,
	[Airline] [nvarchar](255) NULL,
	[Origin] [nvarchar](255) NULL,
	[Dest] [nvarchar](255) NULL,
	[Cancelled] [nvarchar](255) NULL,
	[Diverted] [nvarchar](255) NULL,
	[CRSDepTime] [nvarchar](255) NULL,
	[DepTime] [nvarchar](255) NULL,
	[DepDelayMinutes] [nvarchar](255) NULL,
	[DepDelay] [nvarchar](255) NULL,
	[ArrTime] [nvarchar](255) NULL,
	[ArrDelayMinutes] [nvarchar](255) NULL,
	[AirTime] [nvarchar](255) NULL,
	[CRSElapsedTime] [nvarchar](255) NULL,
	[ActualElapsedTime] [nvarchar](255) NULL,
	[Distance] [nvarchar](255) NULL,
	[Year] [nvarchar](255) NULL,
	[Quarter] [nvarchar](255) NULL,
	[Month] [nvarchar](255) NULL,
	[DayofMonth] [nvarchar](255) NULL,
	[DayOfWeek] [nvarchar](255) NULL,
	[Marketing_Airline_Network] [nvarchar](255) NULL,
	[Operated_or_Branded_Code_Share_Partners] [nvarchar](255) NULL,
	[DOT_ID_Marketing_Airline] [nvarchar](255) NULL,
	[IATA_Code_Marketing_Airline] [nvarchar](255) NULL,
	[Flight_Number_Marketing_Airline] [nvarchar](255) NULL,
	[Operating_Airline] [nvarchar](255) NULL,
	[DOT_ID_Operating_Airline] [nvarchar](255) NULL,
	[IATA_Code_Operating_Airline] [nvarchar](255) NULL,
	[Tail_Number] [nvarchar](255) NULL,
	[Flight_Number_Operating_Airline] [nvarchar](255) NULL,
	[OriginAirportID] [nvarchar](255) NULL,
	[OriginAirportSeqID] [nvarchar](255) NULL,
	[OriginCityMarketID] [nvarchar](255) NULL,
	[OriginCityName] [nvarchar](255) NULL,
	[OriginState] [nvarchar](255) NULL,
	[OriginStateFips] [nvarchar](255) NULL,
	[OriginStateName] [nvarchar](255) NULL,
	[OriginWac] [nvarchar](255) NULL,
	[DestAirportID] [nvarchar](255) NULL,
	[DestAirportSeqID] [nvarchar](255) NULL,
	[DestCityMarketID] [nvarchar](255) NULL,
	[DestCityName] [nvarchar](255) NULL,
	[DestState] [nvarchar](255) NULL,
	[DestStateFips] [nvarchar](255) NULL,
	[DestStateName] [nvarchar](255) NULL,
	[DestWac] [nvarchar](255) NULL,
	[DepDel15] [nvarchar](255) NULL,
	[DepartureDelayGroups] [nvarchar](255) NULL,
	[DepTimeBlk] [nvarchar](255) NULL,
	[TaxiOut] [nvarchar](255) NULL,
	[WheelsOff] [nvarchar](255) NULL,
	[WheelsOn] [nvarchar](255) NULL,
	[TaxiIn] [nvarchar](255) NULL,
	[CRSArrTime] [nvarchar](255) NULL,
	[ArrDelay] [nvarchar](255) NULL,
	[ArrDel15] [nvarchar](255) NULL,
	[ArrivalDelayGroups] [nvarchar](255) NULL,
	[ArrTimeBlk] [nvarchar](255) NULL,
	[DistanceGroup] [nvarchar](255) NULL,
	[DivAirportLandings] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[uvw_Flights2022]    Script Date: 25/10/2024 10:52:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--select top 100 * from dbo.st_Flights2018

CREATE view [dbo].[uvw_Flights2022] as 
	select
		convert(nvarchar, try_parse(FlightDate as date using 'es'), 112) as FlightDate,
		Airline,
		Origin,
		Dest,
		Cancelled,
		Diverted,
		try_convert(float, CRSDepTime) as CRSDepTime,
		try_convert(float, DepTime) as DepTime,
		try_convert(float, DepDelayMinutes) as DepDelayMinutes,
		try_convert(float, DepDelay) as DepDelay,
		try_convert(float, ArrTime) as ArrTime,
		try_convert(float, ArrDelayMinutes) as ArrDelayMinutes,
		try_convert(float, AirTime) as AirTime,
		try_convert(float, CRSElapsedTime) as CRSElapsedTime,
		try_convert(float, ActualElapsedTime) as ActualElapsedTime,
		try_convert(float, Distance) as Distance,
		try_convert(float, [Year]) as [Year],
		try_convert(float, [Quarter]) as [Quarter],
		try_convert(float, [Month]) as [Month],
		try_convert(float, [DayofMonth]) as [DayofMonth],
		try_convert(float, [DayOfWeek]) as [DayOfWeek],
		Marketing_Airline_Network,
		Operated_or_Branded_Code_Share_Partners,
		try_convert(float, DOT_ID_Marketing_Airline) as DOT_ID_Marketing_Airline,
		IATA_Code_Marketing_Airline,
		try_convert(float, Flight_Number_Marketing_Airline) as Flight_Number_Marketing_Airline,
		Operating_Airline,
		try_convert(float, DOT_ID_Operating_Airline) as DOT_ID_Operating_Airline,
		IATA_Code_Operating_Airline,
		Tail_Number,
		try_convert(float, Flight_Number_Operating_Airline) as Flight_Number_Operating_Airline,
		try_convert(float, OriginAirportID) as OriginAirportID,
		try_convert(float, OriginAirportSeqID) as OriginAirportSeqID,
		OriginCityMarketID,
		OriginCityName,
		OriginState,
		OriginStateFips,
		OriginStateName,
		OriginWac,
		try_convert(float, DestAirportID) as DestAirportID,
		try_convert(float, DestAirportSeqID) as DestAirportSeqID,
		try_convert(float, DestCityMarketID) as DestCityMarketID,
		DestCityName,
		DestState,
		DestStateFips,
		DestStateName,
		try_convert(float, DestWac) as DestWac,
		DepDel15,
		try_convert(float, DepartureDelayGroups) as DepartureDelayGroups,
		DepTimeBlk,
		try_convert(float, TaxiOut) as TaxiOut,
		WheelsOff,
		try_convert(float, WheelsOn) as WheelsOn,
		try_convert(float, TaxiIn) as TaxiIn,
		try_convert(float, CRSArrTime) as CRSArrTime,
		try_convert(float, ArrDelay) as ArrDelay,
		try_convert(float, ArrDel15) as ArrDel15,
		try_convert(float, ArrivalDelayGroups) as ArrivalDelayGroups,
		ArrTimeBlk,
		try_convert(float, DistanceGroup) as DistanceGroup,
		DivAirportLandings
	from dbo.st_Flights2022


GO
/****** Object:  Table [dbo].[st_Airlines]    Script Date: 25/10/2024 10:52:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[st_Airlines](
	[Code] [nvarchar](255) NULL,
	[Description] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[uvw_Airlines]    Script Date: 25/10/2024 10:52:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [dbo].[uvw_Airlines] as 
	select
		Code,
		[Description]
	from dbo.st_Airlines
GO
/****** Object:  Table [dbo].[Airlines]    Script Date: 25/10/2024 10:52:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Airlines](
	[Code] [nvarchar](255) NULL,
	[Description] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Flights2018]    Script Date: 25/10/2024 10:52:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Flights2018](
	[FlightDate] [nvarchar](255) NULL,
	[Airline] [nvarchar](255) NULL,
	[Origin] [nvarchar](255) NULL,
	[Dest] [nvarchar](255) NULL,
	[Cancelled] [nvarchar](255) NULL,
	[Diverted] [nvarchar](255) NULL,
	[CRSDepTime] [float] NULL,
	[DepTime] [float] NULL,
	[DepDelayMinutes] [float] NULL,
	[DepDelay] [float] NULL,
	[ArrTime] [float] NULL,
	[ArrDelayMinutes] [float] NULL,
	[AirTime] [float] NULL,
	[CRSElapsedTime] [float] NULL,
	[ActualElapsedTime] [float] NULL,
	[Distance] [float] NULL,
	[Year] [float] NULL,
	[Quarter] [float] NULL,
	[Month] [float] NULL,
	[DayofMonth] [float] NULL,
	[DayOfWeek] [float] NULL,
	[Marketing_Airline_Network] [nvarchar](255) NULL,
	[Operated_or_Branded_Code_Share_Partners] [nvarchar](255) NULL,
	[DOT_ID_Marketing_Airline] [float] NULL,
	[IATA_Code_Marketing_Airline] [nvarchar](255) NULL,
	[Flight_Number_Marketing_Airline] [float] NULL,
	[Operating_Airline] [nvarchar](255) NULL,
	[DOT_ID_Operating_Airline] [float] NULL,
	[IATA_Code_Operating_Airline] [nvarchar](255) NULL,
	[Tail_Number] [nvarchar](255) NULL,
	[Flight_Number_Operating_Airline] [float] NULL,
	[OriginAirportID] [float] NULL,
	[OriginAirportSeqID] [float] NULL,
	[OriginCityMarketID] [nvarchar](255) NULL,
	[OriginCityName] [nvarchar](255) NULL,
	[OriginState] [nvarchar](255) NULL,
	[OriginStateFips] [nvarchar](255) NULL,
	[OriginStateName] [nvarchar](255) NULL,
	[OriginWac] [nvarchar](255) NULL,
	[DestAirportID] [float] NULL,
	[DestAirportSeqID] [float] NULL,
	[DestCityMarketID] [float] NULL,
	[DestCityName] [nvarchar](255) NULL,
	[DestState] [nvarchar](255) NULL,
	[DestStateFips] [nvarchar](255) NULL,
	[DestStateName] [nvarchar](255) NULL,
	[DestWac] [float] NULL,
	[DepDel15] [nvarchar](255) NULL,
	[DepartureDelayGroups] [float] NULL,
	[DepTimeBlk] [nvarchar](255) NULL,
	[TaxiOut] [float] NULL,
	[WheelsOff] [nvarchar](255) NULL,
	[WheelsOn] [float] NULL,
	[TaxiIn] [float] NULL,
	[CRSArrTime] [float] NULL,
	[ArrDelay] [float] NULL,
	[ArrDel15] [float] NULL,
	[ArrivalDelayGroups] [float] NULL,
	[ArrTimeBlk] [nvarchar](255) NULL,
	[DistanceGroup] [float] NULL,
	[DivAirportLandings] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Flights2019]    Script Date: 25/10/2024 10:52:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Flights2019](
	[FlightDate] [nvarchar](255) NULL,
	[Airline] [nvarchar](255) NULL,
	[Origin] [nvarchar](255) NULL,
	[Dest] [nvarchar](255) NULL,
	[Cancelled] [nvarchar](255) NULL,
	[Diverted] [nvarchar](255) NULL,
	[CRSDepTime] [float] NULL,
	[DepTime] [float] NULL,
	[DepDelayMinutes] [float] NULL,
	[DepDelay] [float] NULL,
	[ArrTime] [float] NULL,
	[ArrDelayMinutes] [float] NULL,
	[AirTime] [float] NULL,
	[CRSElapsedTime] [float] NULL,
	[ActualElapsedTime] [float] NULL,
	[Distance] [float] NULL,
	[Year] [float] NULL,
	[Quarter] [float] NULL,
	[Month] [float] NULL,
	[DayofMonth] [float] NULL,
	[DayOfWeek] [float] NULL,
	[Marketing_Airline_Network] [nvarchar](255) NULL,
	[Operated_or_Branded_Code_Share_Partners] [nvarchar](255) NULL,
	[DOT_ID_Marketing_Airline] [float] NULL,
	[IATA_Code_Marketing_Airline] [nvarchar](255) NULL,
	[Flight_Number_Marketing_Airline] [float] NULL,
	[Operating_Airline] [nvarchar](255) NULL,
	[DOT_ID_Operating_Airline] [float] NULL,
	[IATA_Code_Operating_Airline] [nvarchar](255) NULL,
	[Tail_Number] [nvarchar](255) NULL,
	[Flight_Number_Operating_Airline] [float] NULL,
	[OriginAirportID] [float] NULL,
	[OriginAirportSeqID] [float] NULL,
	[OriginCityMarketID] [nvarchar](255) NULL,
	[OriginCityName] [nvarchar](255) NULL,
	[OriginState] [nvarchar](255) NULL,
	[OriginStateFips] [nvarchar](255) NULL,
	[OriginStateName] [nvarchar](255) NULL,
	[OriginWac] [nvarchar](255) NULL,
	[DestAirportID] [float] NULL,
	[DestAirportSeqID] [float] NULL,
	[DestCityMarketID] [float] NULL,
	[DestCityName] [nvarchar](255) NULL,
	[DestState] [nvarchar](255) NULL,
	[DestStateFips] [nvarchar](255) NULL,
	[DestStateName] [nvarchar](255) NULL,
	[DestWac] [float] NULL,
	[DepDel15] [nvarchar](255) NULL,
	[DepartureDelayGroups] [float] NULL,
	[DepTimeBlk] [nvarchar](255) NULL,
	[TaxiOut] [float] NULL,
	[WheelsOff] [nvarchar](255) NULL,
	[WheelsOn] [float] NULL,
	[TaxiIn] [float] NULL,
	[CRSArrTime] [float] NULL,
	[ArrDelay] [float] NULL,
	[ArrDel15] [float] NULL,
	[ArrivalDelayGroups] [float] NULL,
	[ArrTimeBlk] [nvarchar](255) NULL,
	[DistanceGroup] [float] NULL,
	[DivAirportLandings] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Flights2020]    Script Date: 25/10/2024 10:52:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Flights2020](
	[FlightDate] [nvarchar](255) NULL,
	[Airline] [nvarchar](255) NULL,
	[Origin] [nvarchar](255) NULL,
	[Dest] [nvarchar](255) NULL,
	[Cancelled] [nvarchar](255) NULL,
	[Diverted] [nvarchar](255) NULL,
	[CRSDepTime] [float] NULL,
	[DepTime] [float] NULL,
	[DepDelayMinutes] [float] NULL,
	[DepDelay] [float] NULL,
	[ArrTime] [float] NULL,
	[ArrDelayMinutes] [float] NULL,
	[AirTime] [float] NULL,
	[CRSElapsedTime] [float] NULL,
	[ActualElapsedTime] [float] NULL,
	[Distance] [float] NULL,
	[Year] [float] NULL,
	[Quarter] [float] NULL,
	[Month] [float] NULL,
	[DayofMonth] [float] NULL,
	[DayOfWeek] [float] NULL,
	[Marketing_Airline_Network] [nvarchar](255) NULL,
	[Operated_or_Branded_Code_Share_Partners] [nvarchar](255) NULL,
	[DOT_ID_Marketing_Airline] [float] NULL,
	[IATA_Code_Marketing_Airline] [nvarchar](255) NULL,
	[Flight_Number_Marketing_Airline] [float] NULL,
	[Operating_Airline] [nvarchar](255) NULL,
	[DOT_ID_Operating_Airline] [float] NULL,
	[IATA_Code_Operating_Airline] [nvarchar](255) NULL,
	[Tail_Number] [nvarchar](255) NULL,
	[Flight_Number_Operating_Airline] [float] NULL,
	[OriginAirportID] [float] NULL,
	[OriginAirportSeqID] [float] NULL,
	[OriginCityMarketID] [nvarchar](255) NULL,
	[OriginCityName] [nvarchar](255) NULL,
	[OriginState] [nvarchar](255) NULL,
	[OriginStateFips] [nvarchar](255) NULL,
	[OriginStateName] [nvarchar](255) NULL,
	[OriginWac] [nvarchar](255) NULL,
	[DestAirportID] [float] NULL,
	[DestAirportSeqID] [float] NULL,
	[DestCityMarketID] [float] NULL,
	[DestCityName] [nvarchar](255) NULL,
	[DestState] [nvarchar](255) NULL,
	[DestStateFips] [nvarchar](255) NULL,
	[DestStateName] [nvarchar](255) NULL,
	[DestWac] [float] NULL,
	[DepDel15] [nvarchar](255) NULL,
	[DepartureDelayGroups] [float] NULL,
	[DepTimeBlk] [nvarchar](255) NULL,
	[TaxiOut] [float] NULL,
	[WheelsOff] [nvarchar](255) NULL,
	[WheelsOn] [float] NULL,
	[TaxiIn] [float] NULL,
	[CRSArrTime] [float] NULL,
	[ArrDelay] [float] NULL,
	[ArrDel15] [float] NULL,
	[ArrivalDelayGroups] [float] NULL,
	[ArrTimeBlk] [nvarchar](255) NULL,
	[DistanceGroup] [float] NULL,
	[DivAirportLandings] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Flights2021]    Script Date: 25/10/2024 10:52:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Flights2021](
	[FlightDate] [nvarchar](255) NULL,
	[Airline] [nvarchar](255) NULL,
	[Origin] [nvarchar](255) NULL,
	[Dest] [nvarchar](255) NULL,
	[Cancelled] [nvarchar](255) NULL,
	[Diverted] [nvarchar](255) NULL,
	[CRSDepTime] [float] NULL,
	[DepTime] [float] NULL,
	[DepDelayMinutes] [float] NULL,
	[DepDelay] [float] NULL,
	[ArrTime] [float] NULL,
	[ArrDelayMinutes] [float] NULL,
	[AirTime] [float] NULL,
	[CRSElapsedTime] [float] NULL,
	[ActualElapsedTime] [float] NULL,
	[Distance] [float] NULL,
	[Year] [float] NULL,
	[Quarter] [float] NULL,
	[Month] [float] NULL,
	[DayofMonth] [float] NULL,
	[DayOfWeek] [float] NULL,
	[Marketing_Airline_Network] [nvarchar](255) NULL,
	[Operated_or_Branded_Code_Share_Partners] [nvarchar](255) NULL,
	[DOT_ID_Marketing_Airline] [float] NULL,
	[IATA_Code_Marketing_Airline] [nvarchar](255) NULL,
	[Flight_Number_Marketing_Airline] [float] NULL,
	[Operating_Airline] [nvarchar](255) NULL,
	[DOT_ID_Operating_Airline] [float] NULL,
	[IATA_Code_Operating_Airline] [nvarchar](255) NULL,
	[Tail_Number] [nvarchar](255) NULL,
	[Flight_Number_Operating_Airline] [float] NULL,
	[OriginAirportID] [float] NULL,
	[OriginAirportSeqID] [float] NULL,
	[OriginCityMarketID] [nvarchar](255) NULL,
	[OriginCityName] [nvarchar](255) NULL,
	[OriginState] [nvarchar](255) NULL,
	[OriginStateFips] [nvarchar](255) NULL,
	[OriginStateName] [nvarchar](255) NULL,
	[OriginWac] [nvarchar](255) NULL,
	[DestAirportID] [float] NULL,
	[DestAirportSeqID] [float] NULL,
	[DestCityMarketID] [float] NULL,
	[DestCityName] [nvarchar](255) NULL,
	[DestState] [nvarchar](255) NULL,
	[DestStateFips] [nvarchar](255) NULL,
	[DestStateName] [nvarchar](255) NULL,
	[DestWac] [float] NULL,
	[DepDel15] [nvarchar](255) NULL,
	[DepartureDelayGroups] [float] NULL,
	[DepTimeBlk] [nvarchar](255) NULL,
	[TaxiOut] [float] NULL,
	[WheelsOff] [nvarchar](255) NULL,
	[WheelsOn] [float] NULL,
	[TaxiIn] [float] NULL,
	[CRSArrTime] [float] NULL,
	[ArrDelay] [float] NULL,
	[ArrDel15] [float] NULL,
	[ArrivalDelayGroups] [float] NULL,
	[ArrTimeBlk] [nvarchar](255) NULL,
	[DistanceGroup] [float] NULL,
	[DivAirportLandings] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Flights2022]    Script Date: 25/10/2024 10:52:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Flights2022](
	[FlightDate] [nvarchar](255) NULL,
	[Airline] [nvarchar](255) NULL,
	[Origin] [nvarchar](255) NULL,
	[Dest] [nvarchar](255) NULL,
	[Cancelled] [nvarchar](255) NULL,
	[Diverted] [nvarchar](255) NULL,
	[CRSDepTime] [float] NULL,
	[DepTime] [float] NULL,
	[DepDelayMinutes] [float] NULL,
	[DepDelay] [float] NULL,
	[ArrTime] [float] NULL,
	[ArrDelayMinutes] [float] NULL,
	[AirTime] [float] NULL,
	[CRSElapsedTime] [float] NULL,
	[ActualElapsedTime] [float] NULL,
	[Distance] [float] NULL,
	[Year] [float] NULL,
	[Quarter] [float] NULL,
	[Month] [float] NULL,
	[DayofMonth] [float] NULL,
	[DayOfWeek] [float] NULL,
	[Marketing_Airline_Network] [nvarchar](255) NULL,
	[Operated_or_Branded_Code_Share_Partners] [nvarchar](255) NULL,
	[DOT_ID_Marketing_Airline] [float] NULL,
	[IATA_Code_Marketing_Airline] [nvarchar](255) NULL,
	[Flight_Number_Marketing_Airline] [float] NULL,
	[Operating_Airline] [nvarchar](255) NULL,
	[DOT_ID_Operating_Airline] [float] NULL,
	[IATA_Code_Operating_Airline] [nvarchar](255) NULL,
	[Tail_Number] [nvarchar](255) NULL,
	[Flight_Number_Operating_Airline] [float] NULL,
	[OriginAirportID] [float] NULL,
	[OriginAirportSeqID] [float] NULL,
	[OriginCityMarketID] [nvarchar](255) NULL,
	[OriginCityName] [nvarchar](255) NULL,
	[OriginState] [nvarchar](255) NULL,
	[OriginStateFips] [nvarchar](255) NULL,
	[OriginStateName] [nvarchar](255) NULL,
	[OriginWac] [nvarchar](255) NULL,
	[DestAirportID] [float] NULL,
	[DestAirportSeqID] [float] NULL,
	[DestCityMarketID] [float] NULL,
	[DestCityName] [nvarchar](255) NULL,
	[DestState] [nvarchar](255) NULL,
	[DestStateFips] [nvarchar](255) NULL,
	[DestStateName] [nvarchar](255) NULL,
	[DestWac] [float] NULL,
	[DepDel15] [nvarchar](255) NULL,
	[DepartureDelayGroups] [float] NULL,
	[DepTimeBlk] [nvarchar](255) NULL,
	[TaxiOut] [float] NULL,
	[WheelsOff] [nvarchar](255) NULL,
	[WheelsOn] [float] NULL,
	[TaxiIn] [float] NULL,
	[CRSArrTime] [float] NULL,
	[ArrDelay] [float] NULL,
	[ArrDel15] [float] NULL,
	[ArrivalDelayGroups] [float] NULL,
	[ArrTimeBlk] [nvarchar](255) NULL,
	[DistanceGroup] [float] NULL,
	[DivAirportLandings] [nvarchar](255) NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Gamatron] SET  READ_WRITE 
GO
