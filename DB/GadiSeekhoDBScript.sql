USE [master]
GO
/****** Object:  Database [GadiSeekho]    Script Date: 08-12-2018 11:48:19 PM ******/
CREATE DATABASE [GadiSeekho]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'GadiSeekho', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\GadiSeekho.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'GadiSeekho_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\GadiSeekho_log.ldf' , SIZE = 1072KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [GadiSeekho] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [GadiSeekho].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [GadiSeekho] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [GadiSeekho] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [GadiSeekho] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [GadiSeekho] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [GadiSeekho] SET ARITHABORT OFF 
GO
ALTER DATABASE [GadiSeekho] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [GadiSeekho] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [GadiSeekho] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [GadiSeekho] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [GadiSeekho] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [GadiSeekho] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [GadiSeekho] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [GadiSeekho] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [GadiSeekho] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [GadiSeekho] SET  ENABLE_BROKER 
GO
ALTER DATABASE [GadiSeekho] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [GadiSeekho] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [GadiSeekho] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [GadiSeekho] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [GadiSeekho] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [GadiSeekho] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [GadiSeekho] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [GadiSeekho] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [GadiSeekho] SET  MULTI_USER 
GO
ALTER DATABASE [GadiSeekho] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [GadiSeekho] SET DB_CHAINING OFF 
GO
ALTER DATABASE [GadiSeekho] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [GadiSeekho] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [GadiSeekho] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'GadiSeekho', N'ON'
GO
USE [GadiSeekho]
GO
/****** Object:  Table [dbo].[Alert]    Script Date: 08-12-2018 11:48:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Alert](
	[AlertId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](1000) NULL,
 CONSTRAINT [PK_Alert] PRIMARY KEY CLUSTERED 
(
	[AlertId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetPermissions]    Script Date: 08-12-2018 11:48:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetPermissions](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Description] [nvarchar](140) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRolePermissions]    Script Date: 08-12-2018 11:48:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRolePermissions](
	[RoleId] [nvarchar](128) NOT NULL,
	[PermissionId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_AspNetRolePermissions] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC,
	[PermissionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 08-12-2018 11:48:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
	[Discriminator] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 08-12-2018 11:48:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 08-12-2018 11:48:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserMobileOtp]    Script Date: 08-12-2018 11:48:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserMobileOtp](
	[AspNetUserMobileOtpId] [int] IDENTITY(1,1) NOT NULL,
	[MobileNumber] [decimal](18, 0) NOT NULL,
	[UserId] [nvarchar](256) NULL,
	[OTP] [int] NOT NULL,
	[OTPCreatedDateTime] [datetime] NOT NULL,
	[OTPRequestedCount] [int] NULL,
	[OTPReasonId] [int] NOT NULL,
	[OTPValidDateTime] [datetime] NOT NULL,
	[IPAddress] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_AspNetUserMobileOtp] PRIMARY KEY CLUSTERED 
(
	[AspNetUserMobileOtpId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserPermissions]    Script Date: 08-12-2018 11:48:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserPermissions](
	[UserId] [nvarchar](128) NOT NULL,
	[PermissionId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_AspNetUserPermissions] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[PermissionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 08-12-2018 11:48:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 08-12-2018 11:48:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[PersonnelId] [int] NULL,
	[Name] [varchar](100) NULL,
	[DrivingSchoolId] [int] NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AspNetUsersAlertSchedule]    Script Date: 08-12-2018 11:48:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsersAlertSchedule](
	[AspnetUsersAlertScheduleId] [int] IDENTITY(1,1) NOT NULL,
	[AspNetUsersId] [nvarchar](128) NOT NULL,
	[AlertId] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsersAlertSchedule] PRIMARY KEY CLUSTERED 
(
	[AspnetUsersAlertScheduleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Car]    Script Date: 08-12-2018 11:48:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Car](
	[CarId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](500) NOT NULL,
	[CityMileage] [varchar](100) NULL,
	[ARAIMileage] [varchar](100) NULL,
	[FuelType] [varchar](100) NOT NULL,
	[Engine] [int] NOT NULL,
	[MaxPower] [varchar](100) NULL,
	[MaxTorque] [varchar](100) NULL,
	[Seating] [int] NULL,
	[EngineDescription] [varchar](500) NOT NULL,
	[TransmissionType] [varchar](100) NULL,
	[CargoVolume] [varchar](100) NULL,
 CONSTRAINT [PK_Car] PRIMARY KEY CLUSTERED 
(
	[CarId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CarType]    Script Date: 08-12-2018 11:48:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CarType](
	[CarTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](500) NOT NULL,
 CONSTRAINT [PK_CarType] PRIMARY KEY CLUSTERED 
(
	[CarTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DocumentCategory]    Script Date: 08-12-2018 11:48:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocumentCategory](
	[DocumentCategoryId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[FileNameRegex] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_DocumentCategory] PRIMARY KEY CLUSTERED 
(
	[DocumentCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DocumentDetail]    Script Date: 08-12-2018 11:48:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DocumentDetail](
	[DocumentDetailId] [int] IDENTITY(1,1) NOT NULL,
	[DocumentGUID] [uniqueidentifier] NOT NULL,
	[PersonnelId] [nvarchar](128) NULL,
	[FileName] [varchar](500) NULL,
	[ProductId] [int] NOT NULL,
	[CategoryId] [int] NOT NULL,
	[UpdatedDateUTC] [datetime] NULL,
	[CreatedDateUTC] [datetime] NOT NULL CONSTRAINT [DF_DocumentDetail_CreatedDateUTC]  DEFAULT (getutcdate()),
	[Description] [nvarchar](255) NULL,
	[DownloadedDateUtc] [datetime] NULL,
	[ApprovedDateUtc] [datetime] NULL,
	[EmailSentDateUtc] [datetime] NULL,
	[RequireApproval] [bit] NULL,
	[UncPath] [nvarchar](max) NULL,
	[RelativePath] [nvarchar](max) NULL,
	[UpdatedBy] [nvarchar](128) NULL,
	[CreatedBy] [nvarchar](128) NULL,
	[ClientFileName] [nvarchar](255) NULL,
	[DocumentBatchId] [int] NULL,
 CONSTRAINT [PK_DocumentDetail] PRIMARY KEY CLUSTERED 
(
	[DocumentDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Driver]    Script Date: 08-12-2018 11:48:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Driver](
	[DriverId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](500) NOT NULL,
	[DrivingLicenceNumber] [varchar](500) NOT NULL,
	[IssuedDate] [date] NOT NULL,
	[ValidTill] [date] NOT NULL,
	[DateOfBirth] [date] NOT NULL,
	[Mobile] [bigint] NOT NULL,
	[Address1] [varchar](500) NOT NULL,
	[Address2] [varchar](500) NOT NULL,
	[Address3] [varchar](500) NULL,
	[Address4] [varchar](500) NULL,
	[Pincode] [int] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [date] NOT NULL,
	[DrivingSchoolId] [int] NOT NULL,
 CONSTRAINT [PK_Driver] PRIMARY KEY CLUSTERED 
(
	[DriverId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DriverCar]    Script Date: 08-12-2018 11:48:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DriverCar](
	[DriverCarId] [int] IDENTITY(1,1) NOT NULL,
	[DriverId] [int] NOT NULL,
	[DrivingSchoolCarId] [int] NOT NULL,
 CONSTRAINT [PK_DriverCar] PRIMARY KEY CLUSTERED 
(
	[DriverCarId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DriverFeedback]    Script Date: 08-12-2018 11:48:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DriverFeedback](
	[DriverFeedBackId] [int] IDENTITY(1,1) NOT NULL,
	[DriverId] [int] NOT NULL,
	[HasYourDrivingInstructorEverBeenLateForALesson] [varchar](100) NULL,
	[HasYourDrivingInstructorEverMadeYouFeelUncomfortable] [varchar](100) NULL,
	[WouldYouRecommendThisDrivingSchoolToFriends] [varchar](100) NULL,
	[DoYouThinkThisSyllabusWillMakeYouASaferDriver] [varchar](100) NULL,
	[Comment] [varchar](max) NULL,
	[Rating] [int] NOT NULL,
	[CreatedDate] [date] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[DrivingSchoolId] [int] NOT NULL,
 CONSTRAINT [PK_DriverFeedback] PRIMARY KEY CLUSTERED 
(
	[DriverFeedBackId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DrivingSchool]    Script Date: 08-12-2018 11:48:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DrivingSchool](
	[DrivingSchoolId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](500) NOT NULL,
	[Address1] [varchar](500) NOT NULL,
	[Address2] [varchar](500) NULL,
	[Address3] [varchar](500) NULL,
	[Address4] [varchar](500) NULL,
	[Pincode] [int] NOT NULL,
	[Mobile] [bigint] NOT NULL,
	[Telephone] [varchar](100) NULL,
	[EmailId] [varchar](100) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[Latitude] [float] NULL,
	[Longitude] [float] NULL,
	[MinimumFeeWithLicense] [decimal](18, 0) NULL,
	[MinimumFeeWithOutLicense] [decimal](18, 0) NULL,
	[PersonnelId] [int] NOT NULL,
	[IsTwoWheelerLicense] [bit] NOT NULL,
	[IsFourWheelerLicense] [bit] NOT NULL,
 CONSTRAINT [PK_DrivingSchool] PRIMARY KEY CLUSTERED 
(
	[DrivingSchoolId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DrivingSchoolCar]    Script Date: 08-12-2018 11:48:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DrivingSchoolCar](
	[DrivingSchoolCarId] [int] IDENTITY(1,1) NOT NULL,
	[DrivingSchoolId] [int] NOT NULL,
	[Name] [varchar](500) NOT NULL,
	[CarTypeId] [int] NOT NULL,
	[CityMileage] [varchar](100) NULL,
	[ARAIMileage] [varchar](100) NULL,
	[FuelType] [varchar](100) NOT NULL,
	[Engine] [int] NOT NULL,
	[MaxPower] [varchar](100) NULL,
	[MaxTorque] [varchar](100) NULL,
	[Seating] [int] NULL,
	[EngineDescription] [varchar](500) NOT NULL,
	[TransmissionType] [varchar](100) NULL,
	[CargoVolume] [varchar](100) NULL,
	[WheelType] [varchar](50) NULL,
 CONSTRAINT [PK_DrivingSchoolCar] PRIMARY KEY CLUSTERED 
(
	[DrivingSchoolCarId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DrivingSchoolCarFee]    Script Date: 08-12-2018 11:48:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DrivingSchoolCarFee](
	[DrivingSchoolCarFeeId] [int] IDENTITY(1,1) NOT NULL,
	[DrivingSchoolCarId] [int] NOT NULL,
	[WithLicenseFee] [decimal](18, 0) NOT NULL,
	[WithoutLicenseFee] [decimal](18, 0) NOT NULL,
	[DiscountAmount] [decimal](18, 0) NULL,
 CONSTRAINT [PK_DrivingSchoolCarFee] PRIMARY KEY CLUSTERED 
(
	[DrivingSchoolCarFeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DrivingSchoolPackage]    Script Date: 08-12-2018 11:48:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DrivingSchoolPackage](
	[DrivingSchoolPackageId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](200) NOT NULL,
	[DrivingSchoolCarId] [int] NOT NULL,
	[NumberOfDays] [int] NOT NULL,
	[Fee] [decimal](18, 0) NOT NULL,
	[Downpayment] [decimal](18, 0) NOT NULL,
	[LumpsumAmount] [decimal](18, 0) NOT NULL,
	[NumberOfInstallment] [int] NOT NULL,
	[DrivingSchoolId] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Package] PRIMARY KEY CLUSTERED 
(
	[DrivingSchoolPackageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DrivingSchoolRatingAndReview]    Script Date: 08-12-2018 11:48:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DrivingSchoolRatingAndReview](
	[DrivingSchoolRatingAndReviewId] [int] IDENTITY(1,1) NOT NULL,
	[DrivingSchoolId] [int] NOT NULL,
	[Rating] [decimal](18, 0) NOT NULL,
	[Review] [varchar](max) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
 CONSTRAINT [PK_DrivingSchoolRatingAndReview] PRIMARY KEY CLUSTERED 
(
	[DrivingSchoolRatingAndReviewId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DrivingSchoolWorkingDay]    Script Date: 08-12-2018 11:48:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DrivingSchoolWorkingDay](
	[DrivingSchoolWorkingDayId] [int] IDENTITY(1,1) NOT NULL,
	[Day] [varchar](50) NOT NULL,
	[DrivingSchoolId] [int] NOT NULL,
 CONSTRAINT [PK_DrivingSchoolWorkingDay] PRIMARY KEY CLUSTERED 
(
	[DrivingSchoolWorkingDayId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FormEight]    Script Date: 08-12-2018 11:48:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FormEight](
	[FormEightId] [int] IDENTITY(1,1) NOT NULL,
	[DrivingSchoolId] [int] NOT NULL,
	[StudentId] [int] NOT NULL,
	[TestedAndPassedOn] [date] NULL,
	[MDLNo] [varchar](100) NULL,
	[MDLFor] [varchar](100) NULL,
	[ValidUpto] [varchar](100) NULL,
	[Age] [varchar](50) NULL,
	[RecommendedMDLNo] [varchar](100) NULL,
	[ToEndrossmentFor] [varchar](100) NULL,
	[PaidFee] [decimal](18, 0) NULL,
	[CreatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_FormEight] PRIMARY KEY CLUSTERED 
(
	[FormEightId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FormFive]    Script Date: 08-12-2018 11:48:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FormFive](
	[FormFiveId] [int] IDENTITY(1,1) NOT NULL,
	[DrivingSchoolId] [int] NOT NULL,
	[StudentId] [int] NOT NULL,
	[EnrollmentDate] [datetime] NOT NULL,
	[EnrollmentNumber] [int] NOT NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_FormFive] PRIMARY KEY CLUSTERED 
(
	[FormFiveId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FormFour]    Script Date: 08-12-2018 11:48:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FormFour](
	[FormFourId] [int] IDENTITY(1,1) NOT NULL,
	[DrivingSchoolId] [int] NOT NULL,
	[StudentId] [int] NOT NULL,
	[IsLMVNT] [bit] NOT NULL,
	[IsMCWG] [bit] NOT NULL,
	[IsMCWOG] [bit] NOT NULL,
	[IsLMVTR] [bit] NOT NULL,
	[IsARTR] [bit] NOT NULL,
	[IsARNT] [bit] NOT NULL,
	[DurationOfStayAtPresentAddress] [varchar](100) NULL,
	[MigratedToIndia] [varchar](100) NULL,
	[CreatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_FormFour] PRIMARY KEY CLUSTERED 
(
	[FormFourId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FormFourteen]    Script Date: 08-12-2018 11:48:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FormFourteen](
	[FormFourteenId] [int] IDENTITY(1,1) NOT NULL,
	[DrivingSchoolId] [int] NOT NULL,
	[StudentId] [int] NOT NULL,
	[EnrollmentNumber] [int] NOT NULL,
	[ClassOfVehical] [int] NOT NULL,
	[EnrollmentDate] [datetime] NULL,
	[LLRNumber] [varchar](100) NULL,
	[EnquiryDate] [date] NULL,
	[PassingDate] [date] NULL,
	[DrivingLicenseNumber] [varchar](100) NULL,
	[IssueDate] [date] NULL,
	[RNumber] [varchar](100) NULL,
	[InwardNumber] [varchar](100) NULL,
	[CreatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_FormFourteen] PRIMARY KEY CLUSTERED 
(
	[FormFourteenId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FormOneA]    Script Date: 08-12-2018 11:48:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FormOneA](
	[FormOneAId] [int] IDENTITY(1,1) NOT NULL,
	[StudentId] [int] NOT NULL,
	[DrivingSchoolId] [int] NOT NULL,
	[IdentificationMarks1] [varchar](500) NULL,
	[IdentificationMarks2] [varchar](500) NULL,
	[CreatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_FormOneA] PRIMARY KEY CLUSTERED 
(
	[FormOneAId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Personnel]    Script Date: 08-12-2018 11:48:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Personnel](
	[PersonnelId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NULL,
	[Forenames] [nvarchar](100) NULL,
	[Surname] [nvarchar](50) NULL,
	[DOB] [datetime2](7) NULL,
	[CountryId] [int] NULL,
	[Address1] [nvarchar](100) NULL,
	[Address2] [nvarchar](100) NULL,
	[Address3] [nvarchar](100) NULL,
	[Address4] [nvarchar](100) NULL,
	[Postcode] [nvarchar](12) NULL,
	[Telephone] [varchar](15) NULL,
	[Mobile] [varchar](15) NULL,
	[PANNumber] [varchar](10) NULL,
	[BankTelephone] [varchar](15) NULL,
	[Email] [varchar](256) NULL,
	[UserId] [nvarchar](128) NULL,
	[IsDrivingSchool] [bit] NOT NULL,
 CONSTRAINT [PK_Personnel] PRIMARY KEY CLUSTERED 
(
	[PersonnelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PersonnelDocument]    Script Date: 08-12-2018 11:48:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PersonnelDocument](
	[PersonnelDocumentId] [int] IDENTITY(1,1) NOT NULL,
	[PersonnelId] [int] NOT NULL,
	[DocumentDetailId] [int] NOT NULL,
 CONSTRAINT [PK_PersonnelDocument] PRIMARY KEY CLUSTERED 
(
	[PersonnelDocumentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 08-12-2018 11:48:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[UncPath] [nvarchar](255) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Question]    Script Date: 08-12-2018 11:48:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Question](
	[QuestionId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Question] PRIMARY KEY CLUSTERED 
(
	[QuestionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Student]    Script Date: 08-12-2018 11:48:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Student](
	[StudentId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NOT NULL,
	[SonWifeDaughterOf] [nvarchar](500) NOT NULL,
	[PresentAddress] [nvarchar](500) NULL,
	[PermanantAddress] [nvarchar](500) NULL,
	[OfficialAddress] [nvarchar](500) NULL,
	[DateOfBirth] [datetime2](7) NULL,
	[PlaceOfBirth] [nvarchar](200) NULL,
	[Education] [nvarchar](100) NULL,
	[BloodGroup] [nvarchar](50) NULL,
	[RHFactor] [nvarchar](50) NULL,
	[Mobile] [bigint] NULL,
	[ResidentialPhone] [bigint] NULL,
	[OfficialPhone] [bigint] NULL,
	[Email] [varchar](256) NULL,
	[Nationality] [varchar](50) NULL,
	[DrivingSchoolId] [int] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_[Student] PRIMARY KEY CLUSTERED 
(
	[StudentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StudentDrivingDetail]    Script Date: 08-12-2018 11:48:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentDrivingDetail](
	[StudentDrivingDetailId] [int] IDENTITY(1,1) NOT NULL,
	[StudentId] [int] NOT NULL,
	[DrivingSchoolId] [int] NOT NULL,
	[DrivingSchoolCarId] [int] NOT NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NOT NULL,
	[StartTime] [int] NOT NULL,
	[EndTime] [int] NOT NULL,
	[IsSunday] [bit] NOT NULL,
	[IsMonday] [bit] NOT NULL,
	[IsTuesday] [bit] NOT NULL,
	[IsWednesday] [bit] NOT NULL,
	[IsThursday] [bit] NOT NULL,
	[IsFriday] [bit] NOT NULL,
	[IsSaturday] [bit] NOT NULL,
 CONSTRAINT [PK_StudentDrivingDetail] PRIMARY KEY CLUSTERED 
(
	[StudentDrivingDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StudentFee]    Script Date: 08-12-2018 11:48:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StudentFee](
	[StudentFeeId] [int] IDENTITY(1,1) NOT NULL,
	[StudentId] [int] NOT NULL,
	[DrivingSchoolPackageId] [int] NOT NULL,
	[TotalFees] [decimal](18, 0) NOT NULL,
	[DiscountFees] [decimal](18, 0) NOT NULL,
	[PaidAmount] [decimal](18, 0) NOT NULL,
	[PaymentDate] [datetime] NOT NULL,
	[BalanceFees] [decimal](18, 0) NOT NULL,
	[ReceiptNumber] [varchar](100) NULL,
	[DrivingSchoolId] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_StudentFee] PRIMARY KEY CLUSTERED 
(
	[StudentFeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StudentQuestionResponse]    Script Date: 08-12-2018 11:48:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StudentQuestionResponse](
	[StudentQuestionResponseId] [int] IDENTITY(1,1) NOT NULL,
	[DrivingSchoolId] [int] NOT NULL,
	[StudentId] [int] NOT NULL,
	[QuestionId] [int] NOT NULL,
	[StudentResponse] [varchar](500) NOT NULL,
	[CreatedDate] [nchar](10) NOT NULL,
 CONSTRAINT [PK_StudentQuestionResponse] PRIMARY KEY CLUSTERED 
(
	[StudentQuestionResponseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Template]    Script Date: 08-12-2018 11:48:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Template](
	[TemplateId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[FileName] [nvarchar](50) NOT NULL,
	[Type] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_dbo.Template] PRIMARY KEY CLUSTERED 
(
	[TemplateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[CarGrid]    Script Date: 08-12-2018 11:48:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE view [dbo].[CarGrid]
as
select
C.CarId,
C.Name,
C.CityMileage,
C.ARAIMileage,
C.FuelType,
C.Engine,
C.MaxPower,
C.MaxTorque,
C.Seating,
C.EngineDescription,
C.TransmissionType,
C.CargoVolume,
isnull(C.Name,'')+isnull(C.FuelType,'')+CONVERT(varchar, C.Engine )  as SearchField
from Car C


GO
/****** Object:  View [dbo].[DriverFeedbackGrid]    Script Date: 08-12-2018 11:48:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE View [dbo].[DriverFeedbackGrid]
as
select
DriverFeedBackId,
DF.DriverId,
DriverName=D.Name,
HasYourDrivingInstructorEverBeenLateForALesson,
HasYourDrivingInstructorEverMadeYouFeelUncomfortable,
WouldYouRecommendThisDrivingSchoolToFriends,
DoYouThinkThisSyllabusWillMakeYouASaferDriver,
Comment,
Rating,
DF.CreatedDate,
DF.CreatedBy,
DF.DrivingSchoolId,
DrivingSchoolName=DS.Name
from DriverFeedback DF
inner join Driver D on DF.DriverId=D.DriverId
inner join DrivingSchool DS on DF.DrivingSchoolId=DS.DrivingSchoolId


GO
/****** Object:  View [dbo].[DriverGrid]    Script Date: 08-12-2018 11:48:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE view [dbo].[DriverGrid]
as
select
D.DriverId,
D.Name,
D.DrivingLicenceNumber,
D.IssuedDate,
D.ValidTill,
D.DateOfBirth,
D.Mobile,
D.Address1,
D.Address2,
D.Address3,
D.Address4,
D.Pincode,
D.CreatedBy,
D.CreatedDate,
D.DrivingSchoolId,
DrivingSchoolName=DS.Name,
isnull(D.Name,'')+isnull(D.DrivingLicenceNumber,'')+CONVERT(varchar, D.Pincode )+CONVERT(varchar, D.Mobile )+isnull(D.Address1,'') as SearchField
from Driver D
inner join DrivingSchool DS on D.DrivingSchoolId=DS.DrivingSchoolId

GO
/****** Object:  View [dbo].[DrivingSchoolCarGrid]    Script Date: 08-12-2018 11:48:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE view [dbo].[DrivingSchoolCarGrid]
as
select
DSC.DrivingSchoolId,
DrivingSchoolName=DS.Name,
DSC.DrivingSchoolCarId,
DrivingSchoolCarName=DSC.Name,
DSC.CarTypeId,
CarTypeName=CT.Name,
DSC.CityMileage,
DSC.ARAIMileage,
DSC.FuelType,
DSC.Engine,
DSC.MaxPower,
DSC.MaxTorque,
DSC.Seating,
DSC.EngineDescription,
DSC.TransmissionType,
DSC.CargoVolume,
DSC.WheelType,
DSCF.DrivingSchoolCarFeeId,
DSCF.WithLicenseFee,
DSCF.WithoutLicenseFee,
DSCF.DiscountAmount,
isnull(DSC.Name,'')+CONVERT(varchar, DSCF.WithLicenseFee )+CONVERT(varchar, DSCF.WithoutLicenseFee ) as SearchField
from DrivingSchoolCar DSC
inner join DrivingSchool DS on DSC.DrivingSchoolId=DS.DrivingSchoolId
inner join DrivingSchoolCarFee DSCF on DSC.DrivingSchoolCarId=DSCF.DrivingSchoolCarId
inner join CarType CT on DSC.CarTypeId=CT.CarTypeId





GO
/****** Object:  View [dbo].[DrivingSchoolFilterGrid]    Script Date: 08-12-2018 11:48:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE View [dbo].[DrivingSchoolFilterGrid]
as
select
DS.DrivingSchoolId,
DS.Name,
DS.Address1,
DS.Address2,
DS.Address3,
DS.Address4,
DS.Pincode,
DS.Mobile,
DS.Telephone,
DS.EmailId,
DS.CreatedDate,
DS.Latitude,
DS.Longitude,
DS.MinimumFeeWithLicense,
DS.MinimumFeeWithOutLicense,
DS.PersonnelId,
ISNULL(stuff((select', ' + [Day] from DrivingSchoolWorkingDay DSWD left join DrivingSchool DSS on DSWD.DrivingSchoolId=DSS.DrivingSchoolId where DSWD.DrivingSchoolId=DS.DrivingSchoolId FOR XML PATH('')), 1, 1, ''), '') AS WorkinDays,
ISNULL(stuff((select', ' + WheelType from DrivingSchoolCar DSC left join DrivingSchool DSS on DSC.DrivingSchoolId=DSS.DrivingSchoolId where DSC.DrivingSchoolId=DS.DrivingSchoolId FOR XML PATH('')), 1, 1, ''), '') AS WheelTypes,
License='Required, Not Required',
ISNULL(stuff((select', ' + CT.Name from DrivingSchoolCar DSC left join DrivingSchool DSS on DSC.DrivingSchoolId=DSS.DrivingSchoolId left join CarType CT on DSC.CarTypeId=CT.CarTypeId where DSC.DrivingSchoolId=DS.DrivingSchoolId FOR XML PATH('')), 1, 1, ''), '') AS CarType,
ISNULL(stuff((select', ' + DSC.Name from DrivingSchoolCar DSC left join DrivingSchool DSS on DSC.DrivingSchoolId=DSS.DrivingSchoolId where DSC.DrivingSchoolId=DS.DrivingSchoolId FOR XML PATH('')), 1, 1, ''), '') AS CarName,
RelativePath=case when DD.RelativePath is null then '' else DD.RelativePath end,
ISNULL(stuff((select', ' + [Day] from DrivingSchoolWorkingDay DSWD left join DrivingSchool DSS on DSWD.DrivingSchoolId=DSS.DrivingSchoolId where DSWD.DrivingSchoolId=DS.DrivingSchoolId FOR XML PATH('')), 1, 1, ''), '')+
ISNULL(stuff((select', ' + WheelType from DrivingSchoolCar DSC left join DrivingSchool DSS on DSC.DrivingSchoolId=DSS.DrivingSchoolId where DSC.DrivingSchoolId=DS.DrivingSchoolId FOR XML PATH('')), 1, 1, ''), '')+
'Required, Not Required'+ 
ISNULL(stuff((select', ' + CT.Name from DrivingSchoolCar DSC left join DrivingSchool DSS on DSC.DrivingSchoolId=DSS.DrivingSchoolId left join CarType CT on DSC.CarTypeId=CT.CarTypeId where DSC.DrivingSchoolId=DS.DrivingSchoolId FOR XML PATH('')), 1, 1, ''), '')+
ISNULL(stuff((select', ' + DSC.Name from DrivingSchoolCar DSC left join DrivingSchool DSS on DSC.DrivingSchoolId=DSS.DrivingSchoolId where DSC.DrivingSchoolId=DS.DrivingSchoolId FOR XML PATH('')), 1, 1, ''), '')
 as SearchField
from DrivingSchool DS
left join DocumentDetail DD on DS.PersonnelId=DD.PersonnelId

GO
/****** Object:  View [dbo].[DrivingSchoolGrid]    Script Date: 08-12-2018 11:48:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO








CREATE view [dbo].[DrivingSchoolGrid]
as
select
DS.DrivingSchoolId,
DS.Name,
DS.Address1,
DS.Address2,
DS.Address3,
DS.Address4,
DS.Pincode,
DS.Mobile,
DS.Telephone,
DS.EmailId,
DS.CreatedDate,
DS.Latitude,
DS.Longitude,
DS.MinimumFeeWithLicense,
DS.MinimumFeeWithOutLicense,
NumberOfCars=(select count(DrivingSchoolId) from DrivingSchoolCar D where D.DrivingSchoolId=DS.DrivingSchoolId),
DS.PersonnelId,
RelativePath=(select RelativePath from DocumentDetail where PersonnelId=DS.PersonnelId and CategoryId=1),
isnull(DS.Name,'')+isnull(DS.Address1,'')+CONVERT(varchar, DS.Pincode )+CONVERT(varchar, DS.Mobile )+
ISNULL(CONVERT(varchar,DS.CreatedDate, 101), '') + ISNULL(CONVERT(varchar,DS.CreatedDate, 103), '') 
	  + ISNULL(CONVERT(varchar,DS.CreatedDate, 105), '') + ISNULL(CONVERT(varchar,DS.CreatedDate, 126), '') as SearchField
from DrivingSchool DS
--left join DocumentDetail DD on DS.PersonnelId=DD.PersonnelId
--LEFT Join DocumentCategory DC on DC.DocumentCategoryId =1



GO
/****** Object:  View [dbo].[FormFourGrid]    Script Date: 08-12-2018 11:48:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE view [dbo].[FormFourGrid]
as
select
FF.FormFourId,
FF.DrivingSchoolId,
FF.StudentId,
FF.IsLMVNT,
FF.IsMCWG,
FF.IsMCWOG,
FF.IsLMVTR,
FF.IsARTR,
FF.IsARNT,
FF.DurationOfStayAtPresentAddress,
FF.MigratedToIndia,
FF.CreatedDate,
StudentName=S.Name,
s.SonWifeDaughterOf,
s.PermanantAddress,
s.PresentAddress,
s.OfficialAddress,
s.DateOfBirth,
s.BloodGroup,
s.RHFactor,
s.PlaceOfBirth,
s.Education,
s.Nationality,
DrivingSchoolName=DS.Name,
DrivingSchoolAddress1=DS.Address1,
DrivingSchoolAddress2=DS.Address2,
DrivingSchoolAddress3=DS.Address3,
DrivingSchoolAddress4=DS.Address4,
DrivingSchoolPincode=DS.Pincode,
DrivingSchoolMobile=DS.Mobile,
DrivingSchoolTelephone=DS.Telephone,
DrivingSchoolEmail=DS.EmailId,
RelativePath=(select RelativePath from DocumentDetail where PersonnelId=S.StudentId and CategoryId=2)
from FormFour FF
left join Student S on FF.StudentId=S.StudentId
left join DrivingSchool DS on FF.DrivingSchoolId=DS.DrivingSchoolId
--left join DocumentDetail DD on S.StudentId=DD.PersonnelId
--LEFT Join DocumentCategory DC on DC.DocumentCategoryId =2


GO
/****** Object:  View [dbo].[StudentGrid]    Script Date: 08-12-2018 11:48:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE view [dbo].[StudentGrid]
as
select
StudentId,
S.Name,
SonWifeDaughterOf,
PresentAddress,
PermanantAddress,
OfficialAddress,
DateOfBirth,
PlaceOfBirth,
Education,
BloodGroup,
RHFactor,
S.Mobile,
ResidentialPhone,
OfficialPhone,
Email,
Nationality,
S.DrivingSchoolId,
S.CreatedDate,
DrivingSchoolName=DS.Name,
isnull(S.Name,'')+isnull(S.PresentAddress,'')+isnull(S.Email,'')+
ISNULL(CONVERT(varchar,S.CreatedDate, 101), '') + ISNULL(CONVERT(varchar,S.CreatedDate, 103), '') 
	  + ISNULL(CONVERT(varchar,S.CreatedDate, 105), '') + ISNULL(CONVERT(varchar,S.CreatedDate, 126), '') as SearchField
from Student S
inner join DrivingSchool DS on S.DrivingSchoolId=DS.DrivingSchoolId





GO
/****** Object:  View [dbo].[StudentQuestionGrid]    Script Date: 08-12-2018 11:48:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [dbo].[StudentQuestionGrid]
as
select
SQR.StudentQuestionResponseId,
SQR.DrivingSchoolId,
S.StudentId,
SQR.QuestionId,
QuestionName=Q.Name,
SQR.StudentResponse,
SQR.CreatedDate
from Student S
left join StudentQuestionResponse SQR on S.StudentId=SQR.StudentId
left join Question Q on SQR.QuestionId=Q.QuestionId

GO
INSERT [dbo].[AspNetPermissions] ([Id], [Name], [Description]) VALUES (N'1', N'SuperUser', N'SuperUser')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [Discriminator]) VALUES (N'1', N'SuperUser', N'ApplicationRole')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [Discriminator]) VALUES (N'2', N'Admin', N'ApplicationRole')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [Discriminator]) VALUES (N'3', N'Personnel', N'ApplicationRole')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [Discriminator]) VALUES (N'4', N'User', N'ApplicationRole')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [Discriminator]) VALUES (N'5', N'DrivingSchool', N'ApplicationRole')
SET IDENTITY_INSERT [dbo].[AspNetUserMobileOtp] ON 

INSERT [dbo].[AspNetUserMobileOtp] ([AspNetUserMobileOtpId], [MobileNumber], [UserId], [OTP], [OTPCreatedDateTime], [OTPRequestedCount], [OTPReasonId], [OTPValidDateTime], [IPAddress]) VALUES (1, CAST(9773606038 AS Decimal(18, 0)), NULL, 214860, CAST(N'2018-10-10 08:10:41.847' AS DateTime), NULL, 1, CAST(N'2018-10-10 08:40:41.850' AS DateTime), N'::1')
INSERT [dbo].[AspNetUserMobileOtp] ([AspNetUserMobileOtpId], [MobileNumber], [UserId], [OTP], [OTPCreatedDateTime], [OTPRequestedCount], [OTPReasonId], [OTPValidDateTime], [IPAddress]) VALUES (2, CAST(9322992324 AS Decimal(18, 0)), NULL, 759318, CAST(N'2018-10-10 08:40:12.317' AS DateTime), NULL, 1, CAST(N'2018-10-10 09:10:12.317' AS DateTime), N'::1')
INSERT [dbo].[AspNetUserMobileOtp] ([AspNetUserMobileOtpId], [MobileNumber], [UserId], [OTP], [OTPCreatedDateTime], [OTPRequestedCount], [OTPReasonId], [OTPValidDateTime], [IPAddress]) VALUES (11, CAST(9870754355 AS Decimal(18, 0)), NULL, 204769, CAST(N'2018-10-22 12:18:51.550' AS DateTime), NULL, 1, CAST(N'2018-10-22 12:48:51.550' AS DateTime), N'::1')
INSERT [dbo].[AspNetUserMobileOtp] ([AspNetUserMobileOtpId], [MobileNumber], [UserId], [OTP], [OTPCreatedDateTime], [OTPRequestedCount], [OTPReasonId], [OTPValidDateTime], [IPAddress]) VALUES (15, CAST(9969501888 AS Decimal(18, 0)), NULL, 608247, CAST(N'2018-11-03 11:28:57.147' AS DateTime), NULL, 1, CAST(N'2018-11-03 11:58:57.147' AS DateTime), N'::1')
INSERT [dbo].[AspNetUserMobileOtp] ([AspNetUserMobileOtpId], [MobileNumber], [UserId], [OTP], [OTPCreatedDateTime], [OTPRequestedCount], [OTPReasonId], [OTPValidDateTime], [IPAddress]) VALUES (18, CAST(9969501833 AS Decimal(18, 0)), NULL, 482037, CAST(N'2018-11-03 11:47:43.813' AS DateTime), NULL, 1, CAST(N'2018-11-03 12:17:43.813' AS DateTime), N'::1')
INSERT [dbo].[AspNetUserMobileOtp] ([AspNetUserMobileOtpId], [MobileNumber], [UserId], [OTP], [OTPCreatedDateTime], [OTPRequestedCount], [OTPReasonId], [OTPValidDateTime], [IPAddress]) VALUES (19, CAST(9322370470 AS Decimal(18, 0)), NULL, 259718, CAST(N'2018-11-30 06:58:37.997' AS DateTime), NULL, 1, CAST(N'2018-11-30 07:28:37.997' AS DateTime), N'::1')
INSERT [dbo].[AspNetUserMobileOtp] ([AspNetUserMobileOtpId], [MobileNumber], [UserId], [OTP], [OTPCreatedDateTime], [OTPRequestedCount], [OTPReasonId], [OTPValidDateTime], [IPAddress]) VALUES (20, CAST(9322095795 AS Decimal(18, 0)), NULL, 815379, CAST(N'2018-11-30 07:13:19.327' AS DateTime), NULL, 1, CAST(N'2018-11-30 07:43:19.327' AS DateTime), N'::1')
INSERT [dbo].[AspNetUserMobileOtp] ([AspNetUserMobileOtpId], [MobileNumber], [UserId], [OTP], [OTPCreatedDateTime], [OTPRequestedCount], [OTPReasonId], [OTPValidDateTime], [IPAddress]) VALUES (21, CAST(1234567890 AS Decimal(18, 0)), NULL, 658204, CAST(N'2018-11-30 07:15:59.747' AS DateTime), NULL, 1, CAST(N'2018-11-30 07:45:59.747' AS DateTime), N'::1')
INSERT [dbo].[AspNetUserMobileOtp] ([AspNetUserMobileOtpId], [MobileNumber], [UserId], [OTP], [OTPCreatedDateTime], [OTPRequestedCount], [OTPReasonId], [OTPValidDateTime], [IPAddress]) VALUES (22, CAST(9876543210 AS Decimal(18, 0)), NULL, 259714, CAST(N'2018-11-30 07:19:47.640' AS DateTime), NULL, 1, CAST(N'2018-11-30 07:49:47.640' AS DateTime), N'::1')
INSERT [dbo].[AspNetUserMobileOtp] ([AspNetUserMobileOtpId], [MobileNumber], [UserId], [OTP], [OTPCreatedDateTime], [OTPRequestedCount], [OTPReasonId], [OTPValidDateTime], [IPAddress]) VALUES (23, CAST(8745698521 AS Decimal(18, 0)), NULL, 681032, CAST(N'2018-11-30 07:31:15.310' AS DateTime), NULL, 1, CAST(N'2018-11-30 08:01:15.310' AS DateTime), N'::1')
SET IDENTITY_INSERT [dbo].[AspNetUserMobileOtp] OFF
INSERT [dbo].[AspNetUserPermissions] ([UserId], [PermissionId]) VALUES (N'c9c1c6b3-61b0-44bb-834f-ff73be73ff60', N'1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'5b54c47f-15d7-49ac-bf63-1afc57c8558a', N'5')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'772c5bc5-56da-420e-8a96-002318990e04', N'5')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'9acaf606-6005-4764-bdfa-03143dcbdfec', N'5')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'b3736c98-a252-4224-b6af-3ea3da65a2f3', N'3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c9c1c6b3-61b0-44bb-834f-ff73be73ff60', N'1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'cabb4496-64b8-4814-b4df-904c97745f30', N'5')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'cffecf16-50c7-43c9-91cd-b1ccb0b65f57', N'5')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'd20e69b8-c53a-4775-87a8-8d882b26db4f', N'5')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e8207aac-84e6-41d0-ac4a-e6f8c045130a', N'5')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [PersonnelId], [Name], [DrivingSchoolId]) VALUES (N'5b54c47f-15d7-49ac-bf63-1afc57c8558a', N'test@gmail.com', 0, N'AEJSx/0QL67kqOGDHvAUpPyZ1wprBWUgAYYY5Z1H5ljVTRKk0hVeGIb1ECb7wbFZlQ==', N'c2797da0-37e7-4e0d-97fd-1e54cbd7fd59', NULL, 0, 0, NULL, 1, 0, N'9876543210', NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [PersonnelId], [Name], [DrivingSchoolId]) VALUES (N'772c5bc5-56da-420e-8a96-002318990e04', N'sudha@gmail.com', 0, N'AGnw4zc4MrOMrsrPOIYo+Zqf2olOnKOtHwDfDRmw7DKOlYcDtbB4ts8ja1WW+57PXw==', N'41cea838-2375-4346-a669-07021b512f70', NULL, 0, 0, NULL, 1, 0, N'9322095795', 0, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [PersonnelId], [Name], [DrivingSchoolId]) VALUES (N'9acaf606-6005-4764-bdfa-03143dcbdfec', NULL, 0, N'AIsIUdu9XoWN5EJNjQdHa8X98D8TwpiYzLMeFVXGNE2s5vPsXxy8aZ3vo7ruOGVG0A==', N'c8d3de60-d745-4eaa-9ef0-fa44811ecbf7', NULL, 0, 0, NULL, 1, 0, N'9773606038', 1, NULL, 5)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [PersonnelId], [Name], [DrivingSchoolId]) VALUES (N'b3736c98-a252-4224-b6af-3ea3da65a2f3', NULL, 0, N'AL7adtJT2pnWIC+UrakSzu+BTBQ8KyaptMhJS8hCtkm43CMmm5C9CCGlGjLdcw/y3w==', N'cba99fa8-854d-473a-bcbc-541c0ca26cca', NULL, 0, 0, NULL, 1, 0, N'9322992324', 0, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [PersonnelId], [Name], [DrivingSchoolId]) VALUES (N'c9c1c6b3-61b0-44bb-834f-ff73be73ff60', N'superadmin@gadiseekho.com', 1, N'AKE8YmPQDYyVK65rkJk73JJp1Zy6fzDtABvuxihKa1Ksej+08LEGjiIS/iDKS/N3Tg==', N'e905150b-246a-478c-9d09-74e19072d875', NULL, 0, 0, NULL, 0, 0, N'superadmin@gadiseekho.com', NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [PersonnelId], [Name], [DrivingSchoolId]) VALUES (N'cabb4496-64b8-4814-b4df-904c97745f30', N'omdattachs@gmail.co.in', 0, N'AO4HSAI87DsuY/8YUxysHGiC6S/jL4d9BeuKxB46xwTv9qHfBEutg8ThWjlRDosXTg==', N'54e49461-cd82-4721-9da9-8095a9dcf8e9', NULL, 0, 0, NULL, 1, 0, N'9969501888', 0, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [PersonnelId], [Name], [DrivingSchoolId]) VALUES (N'cffecf16-50c7-43c9-91cd-b1ccb0b65f57', N'abcdef@gmail.com', 0, N'AH4+/H29TzTcJIIHaYhDB2Sm4Dk0qAPm8QUo3QmJoNEzz9iAbAeER12K5Yo9mgnUrg==', N'f9d1f24b-1140-48ee-a33a-5a5c92489223', NULL, 0, 0, NULL, 1, 0, N'8745698521', 9, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [PersonnelId], [Name], [DrivingSchoolId]) VALUES (N'd20e69b8-c53a-4775-87a8-8d882b26db4f', N'nanasahebraut58@gmail.com', 0, N'ACMxw5kkoKxdHy4I7UHz5TZgWsH/7gb2HhR8Oo5OqauqLqmBD5LscN2aPwuKXeKJQg==', N'fb160b9b-ad16-4642-bb59-ecfc32aa777d', NULL, 0, 0, NULL, 1, 0, N'9322370470', 0, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [PersonnelId], [Name], [DrivingSchoolId]) VALUES (N'e8207aac-84e6-41d0-ac4a-e6f8c045130a', N'abc@gmail.com', 0, N'ANtzmaW/MvfOu2+EBXU7SKciGcoBqiTS80uPD7I17nfNnQVBVR+qoYx/UN9Bgda2Qw==', N'0f14394a-48b6-4c7e-9406-8ad36b4a82a1', NULL, 0, 0, NULL, 1, 0, N'1234567890', 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Car] ON 

INSERT [dbo].[Car] ([CarId], [Name], [CityMileage], [ARAIMileage], [FuelType], [Engine], [MaxPower], [MaxTorque], [Seating], [EngineDescription], [TransmissionType], [CargoVolume]) VALUES (1, N'Ertiga', N'20', N'20', N'Diesel', 1, N'1', N'1', 8, N'test', N'Manual', N'50')
INSERT [dbo].[Car] ([CarId], [Name], [CityMileage], [ARAIMileage], [FuelType], [Engine], [MaxPower], [MaxTorque], [Seating], [EngineDescription], [TransmissionType], [CargoVolume]) VALUES (2, N'Innova Crista', N'17', N'17', N'Petrol', 1, N'1', N'1', 7, N'test2', N'Automatic', N'70')
INSERT [dbo].[Car] ([CarId], [Name], [CityMileage], [ARAIMileage], [FuelType], [Engine], [MaxPower], [MaxTorque], [Seating], [EngineDescription], [TransmissionType], [CargoVolume]) VALUES (1002, N'Indica', N'15', N'15', N'Diesel', 1, N'1', N'1', 5, N'test3', N'Manual', N'40')
INSERT [dbo].[Car] ([CarId], [Name], [CityMileage], [ARAIMileage], [FuelType], [Engine], [MaxPower], [MaxTorque], [Seating], [EngineDescription], [TransmissionType], [CargoVolume]) VALUES (1003, N'Santro', N'25', N'25', N'Petrol', 1, N'1', N'1', 5, N'test4', N'manual', N'40')
INSERT [dbo].[Car] ([CarId], [Name], [CityMileage], [ARAIMileage], [FuelType], [Engine], [MaxPower], [MaxTorque], [Seating], [EngineDescription], [TransmissionType], [CargoVolume]) VALUES (1004, N'Qualis', N'16', N'16', N'Petrol', 1, N'1', N'1', 5, N'test5', N'Manual', N'10')
SET IDENTITY_INSERT [dbo].[Car] OFF
SET IDENTITY_INSERT [dbo].[CarType] ON 

INSERT [dbo].[CarType] ([CarTypeId], [Name]) VALUES (1, N'Normal')
INSERT [dbo].[CarType] ([CarTypeId], [Name]) VALUES (2, N'SUV')
INSERT [dbo].[CarType] ([CarTypeId], [Name]) VALUES (3, N'MUV')
INSERT [dbo].[CarType] ([CarTypeId], [Name]) VALUES (4, N'XUV')
SET IDENTITY_INSERT [dbo].[CarType] OFF
SET IDENTITY_INSERT [dbo].[DocumentCategory] ON 

INSERT [dbo].[DocumentCategory] ([DocumentCategoryId], [Name], [FileNameRegex]) VALUES (1, N'DrivingSchoolProfile', N'-')
INSERT [dbo].[DocumentCategory] ([DocumentCategoryId], [Name], [FileNameRegex]) VALUES (2, N'DrivingStudentProfile', N'-')
INSERT [dbo].[DocumentCategory] ([DocumentCategoryId], [Name], [FileNameRegex]) VALUES (3, N'DriverProfile', N'-')
INSERT [dbo].[DocumentCategory] ([DocumentCategoryId], [Name], [FileNameRegex]) VALUES (4, N'CarProfile', N'-')
SET IDENTITY_INSERT [dbo].[DocumentCategory] OFF
SET IDENTITY_INSERT [dbo].[DocumentDetail] ON 

INSERT [dbo].[DocumentDetail] ([DocumentDetailId], [DocumentGUID], [PersonnelId], [FileName], [ProductId], [CategoryId], [UpdatedDateUTC], [CreatedDateUTC], [Description], [DownloadedDateUtc], [ApprovedDateUtc], [EmailSentDateUtc], [RequireApproval], [UncPath], [RelativePath], [UpdatedBy], [CreatedBy], [ClientFileName], [DocumentBatchId]) VALUES (9, N'9df85c98-04e7-42f9-b1cd-71cdf00ac249', N'1', N'blob.png', 1, 1, NULL, CAST(N'2018-10-22 15:46:17.033' AS DateTime), N'Vijay Raut Profile Image', NULL, NULL, NULL, NULL, N'D:\Vijay\VijayWorkArea\GadiWorkArea\GaadiSeekho\Source\Gadi', N'\Vijay_Raut_1\DrivingSchoolProfile\DrivingSchoolProfile_9df85c98-04e7-42f9-b1cd-71cdf00ac249_blob.png', NULL, N'', NULL, NULL)
INSERT [dbo].[DocumentDetail] ([DocumentDetailId], [DocumentGUID], [PersonnelId], [FileName], [ProductId], [CategoryId], [UpdatedDateUTC], [CreatedDateUTC], [Description], [DownloadedDateUtc], [ApprovedDateUtc], [EmailSentDateUtc], [RequireApproval], [UncPath], [RelativePath], [UpdatedBy], [CreatedBy], [ClientFileName], [DocumentBatchId]) VALUES (1014, N'23c32e13-b87a-4f06-8805-2d1c333e244c', N'2', N'blob.png', 1, 4, NULL, CAST(N'2018-10-30 08:13:47.087' AS DateTime), N'Santro Profile Image', NULL, NULL, NULL, NULL, N'D:\Vijay\VijayWorkArea\GadiWorkArea\GaadiSeekho\Source\Gadi', N'\Santro_2\CarProfile\CarProfile_23c32e13-b87a-4f06-8805-2d1c333e244c_blob.png', NULL, N'', NULL, NULL)
INSERT [dbo].[DocumentDetail] ([DocumentDetailId], [DocumentGUID], [PersonnelId], [FileName], [ProductId], [CategoryId], [UpdatedDateUTC], [CreatedDateUTC], [Description], [DownloadedDateUtc], [ApprovedDateUtc], [EmailSentDateUtc], [RequireApproval], [UncPath], [RelativePath], [UpdatedBy], [CreatedBy], [ClientFileName], [DocumentBatchId]) VALUES (1015, N'22057688-8ee5-4eae-9935-c836de5b4b80', N'4', N'blob.png', 1, 2, NULL, CAST(N'2018-10-30 08:45:06.257' AS DateTime), N'Sanjay Prajapati Profile Image', NULL, NULL, NULL, NULL, N'D:\Vijay\VijayWorkArea\GadiWorkArea\GaadiSeekho\Source\Gadi', N'\Sanjay_Prajapati_4\DrivingStudentProfile\DrivingStudentProfile_22057688-8ee5-4eae-9935-c836de5b4b80_blob.png', NULL, N'9773606038', NULL, NULL)
INSERT [dbo].[DocumentDetail] ([DocumentDetailId], [DocumentGUID], [PersonnelId], [FileName], [ProductId], [CategoryId], [UpdatedDateUTC], [CreatedDateUTC], [Description], [DownloadedDateUtc], [ApprovedDateUtc], [EmailSentDateUtc], [RequireApproval], [UncPath], [RelativePath], [UpdatedBy], [CreatedBy], [ClientFileName], [DocumentBatchId]) VALUES (1016, N'87e08aac-d0dd-4481-9d49-13a670e39db3', N'2', N'blob.png', 1, 3, NULL, CAST(N'2018-10-30 14:18:17.787' AS DateTime), N'Driver 1 Profile Image', NULL, NULL, NULL, NULL, N'D:\Vijay\VijayWorkArea\GadiWorkArea\GaadiSeekho\Source\Gadi', N'\Driver_1_2\DriverProfile\DriverProfile_87e08aac-d0dd-4481-9d49-13a670e39db3_blob.png', NULL, N'', NULL, NULL)
INSERT [dbo].[DocumentDetail] ([DocumentDetailId], [DocumentGUID], [PersonnelId], [FileName], [ProductId], [CategoryId], [UpdatedDateUTC], [CreatedDateUTC], [Description], [DownloadedDateUtc], [ApprovedDateUtc], [EmailSentDateUtc], [RequireApproval], [UncPath], [RelativePath], [UpdatedBy], [CreatedBy], [ClientFileName], [DocumentBatchId]) VALUES (1017, N'209538b2-35aa-437f-a6f3-9a347ed94b7e', N'3', N'blob.png', 1, 2, NULL, CAST(N'2018-10-31 07:15:38.267' AS DateTime), N'Shraddha Paradkar Profile Image', NULL, NULL, NULL, NULL, N'D:\Vijay\VijayWorkArea\GadiWorkArea\GaadiSeekho\Source\Gadi', N'\Shraddha_Paradkar_3\DrivingStudentProfile\DrivingStudentProfile_209538b2-35aa-437f-a6f3-9a347ed94b7e_blob.png', NULL, N'9773606038', NULL, NULL)
SET IDENTITY_INSERT [dbo].[DocumentDetail] OFF
SET IDENTITY_INSERT [dbo].[Driver] ON 

INSERT [dbo].[Driver] ([DriverId], [Name], [DrivingLicenceNumber], [IssuedDate], [ValidTill], [DateOfBirth], [Mobile], [Address1], [Address2], [Address3], [Address4], [Pincode], [CreatedBy], [CreatedDate], [DrivingSchoolId]) VALUES (2, N'Driver 1', N'654321', CAST(N'2000-10-05' AS Date), CAST(N'2022-10-04' AS Date), CAST(N'1993-01-27' AS Date), 1234567890, N'Kalyan', N'test', NULL, NULL, 400017, 1, CAST(N'0001-01-01' AS Date), 5)
INSERT [dbo].[Driver] ([DriverId], [Name], [DrivingLicenceNumber], [IssuedDate], [ValidTill], [DateOfBirth], [Mobile], [Address1], [Address2], [Address3], [Address4], [Pincode], [CreatedBy], [CreatedDate], [DrivingSchoolId]) VALUES (4, N'Ramesh', N'123456', CAST(N'1999-08-15' AS Date), CAST(N'2020-08-14' AS Date), CAST(N'1988-01-06' AS Date), 987456321, N'Kalyan', N'west', NULL, NULL, 421304, 2, CAST(N'0001-01-01' AS Date), 5)
INSERT [dbo].[Driver] ([DriverId], [Name], [DrivingLicenceNumber], [IssuedDate], [ValidTill], [DateOfBirth], [Mobile], [Address1], [Address2], [Address3], [Address4], [Pincode], [CreatedBy], [CreatedDate], [DrivingSchoolId]) VALUES (5, N'Create Driver', N'123456', CAST(N'0001-01-01' AS Date), CAST(N'0001-01-01' AS Date), CAST(N'0001-01-01' AS Date), 1234568901, N'Khambdev Nagar, 90 feet road, Dharavi', N'KHA', NULL, NULL, 400017, 0, CAST(N'0001-01-01' AS Date), 6)
SET IDENTITY_INSERT [dbo].[Driver] OFF
SET IDENTITY_INSERT [dbo].[DriverCar] ON 

INSERT [dbo].[DriverCar] ([DriverCarId], [DriverId], [DrivingSchoolCarId]) VALUES (2, 2, 2)
SET IDENTITY_INSERT [dbo].[DriverCar] OFF
SET IDENTITY_INSERT [dbo].[DriverFeedback] ON 

INSERT [dbo].[DriverFeedback] ([DriverFeedBackId], [DriverId], [HasYourDrivingInstructorEverBeenLateForALesson], [HasYourDrivingInstructorEverMadeYouFeelUncomfortable], [WouldYouRecommendThisDrivingSchoolToFriends], [DoYouThinkThisSyllabusWillMakeYouASaferDriver], [Comment], [Rating], [CreatedDate], [CreatedBy], [DrivingSchoolId]) VALUES (1, 2, N'Yes', N'yes', N'yes', N'yes', N'yes', 7, CAST(N'2018-10-06' AS Date), 1, 5)
INSERT [dbo].[DriverFeedback] ([DriverFeedBackId], [DriverId], [HasYourDrivingInstructorEverBeenLateForALesson], [HasYourDrivingInstructorEverMadeYouFeelUncomfortable], [WouldYouRecommendThisDrivingSchoolToFriends], [DoYouThinkThisSyllabusWillMakeYouASaferDriver], [Comment], [Rating], [CreatedDate], [CreatedBy], [DrivingSchoolId]) VALUES (2, 2, N'No', N'No', N'No', N'No', N'No', 2, CAST(N'2018-10-08' AS Date), 2, 6)
SET IDENTITY_INSERT [dbo].[DriverFeedback] OFF
SET IDENTITY_INSERT [dbo].[DrivingSchool] ON 

INSERT [dbo].[DrivingSchool] ([DrivingSchoolId], [Name], [Address1], [Address2], [Address3], [Address4], [Pincode], [Mobile], [Telephone], [EmailId], [CreatedDate], [Latitude], [Longitude], [MinimumFeeWithLicense], [MinimumFeeWithOutLicense], [PersonnelId], [IsTwoWheelerLicense], [IsFourWheelerLicense]) VALUES (5, N'Goodluck', N'Kalyan', NULL, NULL, NULL, 421306, 8097537537, NULL, N'sanjayp@gmail.com', CAST(N'2018-10-06 00:00:00.0000000' AS DateTime2), 1, 2, CAST(3000 AS Decimal(18, 0)), CAST(2000 AS Decimal(18, 0)), 1, 1, 1)
INSERT [dbo].[DrivingSchool] ([DrivingSchoolId], [Name], [Address1], [Address2], [Address3], [Address4], [Pincode], [Mobile], [Telephone], [EmailId], [CreatedDate], [Latitude], [Longitude], [MinimumFeeWithLicense], [MinimumFeeWithOutLicense], [PersonnelId], [IsTwoWheelerLicense], [IsFourWheelerLicense]) VALUES (6, N'Sundaram', N'Sion', NULL, NULL, NULL, 400022, 1234567890, NULL, N'sundaram@gmail.com', CAST(N'2018-10-06 00:00:00.0000000' AS DateTime2), 1, 2, CAST(2800 AS Decimal(18, 0)), CAST(1900 AS Decimal(18, 0)), 0, 0, 1)
INSERT [dbo].[DrivingSchool] ([DrivingSchoolId], [Name], [Address1], [Address2], [Address3], [Address4], [Pincode], [Mobile], [Telephone], [EmailId], [CreatedDate], [Latitude], [Longitude], [MinimumFeeWithLicense], [MinimumFeeWithOutLicense], [PersonnelId], [IsTwoWheelerLicense], [IsFourWheelerLicense]) VALUES (7, N'Milan Driving School', N'Kalyan', NULL, NULL, NULL, 421306, 9874598745, NULL, N'milan@gmail.com', CAST(N'2018-10-11 00:00:00.0000000' AS DateTime2), 1, 2, CAST(2900 AS Decimal(18, 0)), CAST(2100 AS Decimal(18, 0)), 0, 1, 0)
INSERT [dbo].[DrivingSchool] ([DrivingSchoolId], [Name], [Address1], [Address2], [Address3], [Address4], [Pincode], [Mobile], [Telephone], [EmailId], [CreatedDate], [Latitude], [Longitude], [MinimumFeeWithLicense], [MinimumFeeWithOutLicense], [PersonnelId], [IsTwoWheelerLicense], [IsFourWheelerLicense]) VALUES (8, N'Create Driving School', N'Dombivali', NULL, NULL, NULL, 400610, 70454681254, NULL, N'mail@gmail.com', CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), NULL, NULL, CAST(1800 AS Decimal(18, 0)), CAST(1200 AS Decimal(18, 0)), 0, 1, 1)
INSERT [dbo].[DrivingSchool] ([DrivingSchoolId], [Name], [Address1], [Address2], [Address3], [Address4], [Pincode], [Mobile], [Telephone], [EmailId], [CreatedDate], [Latitude], [Longitude], [MinimumFeeWithLicense], [MinimumFeeWithOutLicense], [PersonnelId], [IsTwoWheelerLicense], [IsFourWheelerLicense]) VALUES (9, N'Reshma Driving School', N'Khambdev Nagar, 90 feet road, Dharavi', NULL, NULL, NULL, 400017, 9969501888, NULL, N'omdattachs@gmail.co.in', CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), NULL, NULL, CAST(2000 AS Decimal(18, 0)), CAST(1000 AS Decimal(18, 0)), 0, 1, 1)
INSERT [dbo].[DrivingSchool] ([DrivingSchoolId], [Name], [Address1], [Address2], [Address3], [Address4], [Pincode], [Mobile], [Telephone], [EmailId], [CreatedDate], [Latitude], [Longitude], [MinimumFeeWithLicense], [MinimumFeeWithOutLicense], [PersonnelId], [IsTwoWheelerLicense], [IsFourWheelerLicense]) VALUES (10, N'N Driving School', N'Sion', NULL, NULL, NULL, 400022, 9322370470, N'123456', N'nanasahebraut58@gmail.com', CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), NULL, NULL, CAST(2000 AS Decimal(18, 0)), CAST(1800 AS Decimal(18, 0)), 0, 0, 0)
INSERT [dbo].[DrivingSchool] ([DrivingSchoolId], [Name], [Address1], [Address2], [Address3], [Address4], [Pincode], [Mobile], [Telephone], [EmailId], [CreatedDate], [Latitude], [Longitude], [MinimumFeeWithLicense], [MinimumFeeWithOutLicense], [PersonnelId], [IsTwoWheelerLicense], [IsFourWheelerLicense]) VALUES (11, N'abc', N'a', NULL, NULL, NULL, 123456, 1234567890, N'123', N'abc@gmail.com', CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), NULL, NULL, CAST(100 AS Decimal(18, 0)), CAST(100 AS Decimal(18, 0)), 0, 0, 0)
INSERT [dbo].[DrivingSchool] ([DrivingSchoolId], [Name], [Address1], [Address2], [Address3], [Address4], [Pincode], [Mobile], [Telephone], [EmailId], [CreatedDate], [Latitude], [Longitude], [MinimumFeeWithLicense], [MinimumFeeWithOutLicense], [PersonnelId], [IsTwoWheelerLicense], [IsFourWheelerLicense]) VALUES (12, N'v d s', N'a', NULL, NULL, NULL, 1, 8745698521, N'1', N'abcdef@gmail.com', CAST(N'0001-01-01 00:00:00.0000000' AS DateTime2), NULL, NULL, CAST(1 AS Decimal(18, 0)), CAST(1 AS Decimal(18, 0)), 9, 0, 0)
SET IDENTITY_INSERT [dbo].[DrivingSchool] OFF
SET IDENTITY_INSERT [dbo].[DrivingSchoolCar] ON 

INSERT [dbo].[DrivingSchoolCar] ([DrivingSchoolCarId], [DrivingSchoolId], [Name], [CarTypeId], [CityMileage], [ARAIMileage], [FuelType], [Engine], [MaxPower], [MaxTorque], [Seating], [EngineDescription], [TransmissionType], [CargoVolume], [WheelType]) VALUES (2, 5, N'Santro', 1, N'20', N'20', N'Petrol', 1, N'1', N'1', 5, N'1', N'Manual', N'100', N'Four Wheeler')
INSERT [dbo].[DrivingSchoolCar] ([DrivingSchoolCarId], [DrivingSchoolId], [Name], [CarTypeId], [CityMileage], [ARAIMileage], [FuelType], [Engine], [MaxPower], [MaxTorque], [Seating], [EngineDescription], [TransmissionType], [CargoVolume], [WheelType]) VALUES (3, 5, N'Qualis', 2, N'11', N'11', N'Diesel', 1, N'1', N'1', 9, N'1', N'Manual', N'20', N'Four Wheeler')
SET IDENTITY_INSERT [dbo].[DrivingSchoolCar] OFF
SET IDENTITY_INSERT [dbo].[DrivingSchoolCarFee] ON 

INSERT [dbo].[DrivingSchoolCarFee] ([DrivingSchoolCarFeeId], [DrivingSchoolCarId], [WithLicenseFee], [WithoutLicenseFee], [DiscountAmount]) VALUES (1007, 2, CAST(3000 AS Decimal(18, 0)), CAST(2000 AS Decimal(18, 0)), CAST(100 AS Decimal(18, 0)))
INSERT [dbo].[DrivingSchoolCarFee] ([DrivingSchoolCarFeeId], [DrivingSchoolCarId], [WithLicenseFee], [WithoutLicenseFee], [DiscountAmount]) VALUES (1009, 3, CAST(4000 AS Decimal(18, 0)), CAST(3300 AS Decimal(18, 0)), CAST(100 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[DrivingSchoolCarFee] OFF
SET IDENTITY_INSERT [dbo].[DrivingSchoolPackage] ON 

INSERT [dbo].[DrivingSchoolPackage] ([DrivingSchoolPackageId], [Name], [DrivingSchoolCarId], [NumberOfDays], [Fee], [Downpayment], [LumpsumAmount], [NumberOfInstallment], [DrivingSchoolId], [CreatedDate]) VALUES (1, N'Package 1', 3, 30, CAST(5000 AS Decimal(18, 0)), CAST(1000 AS Decimal(18, 0)), CAST(4500 AS Decimal(18, 0)), 4, 5, CAST(N'2018-11-26 00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[DrivingSchoolPackage] OFF
SET IDENTITY_INSERT [dbo].[DrivingSchoolRatingAndReview] ON 

INSERT [dbo].[DrivingSchoolRatingAndReview] ([DrivingSchoolRatingAndReviewId], [DrivingSchoolId], [Rating], [Review], [CreatedDate], [CreatedBy]) VALUES (1, 5, CAST(4 AS Decimal(18, 0)), N'Nice Driving School', CAST(N'2018-10-15 00:00:00.000' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[DrivingSchoolRatingAndReview] OFF
SET IDENTITY_INSERT [dbo].[DrivingSchoolWorkingDay] ON 

INSERT [dbo].[DrivingSchoolWorkingDay] ([DrivingSchoolWorkingDayId], [Day], [DrivingSchoolId]) VALUES (1, N'Monday', 5)
INSERT [dbo].[DrivingSchoolWorkingDay] ([DrivingSchoolWorkingDayId], [Day], [DrivingSchoolId]) VALUES (2, N'Tuesday', 5)
INSERT [dbo].[DrivingSchoolWorkingDay] ([DrivingSchoolWorkingDayId], [Day], [DrivingSchoolId]) VALUES (3, N'Wednesday', 5)
SET IDENTITY_INSERT [dbo].[DrivingSchoolWorkingDay] OFF
SET IDENTITY_INSERT [dbo].[FormEight] ON 

INSERT [dbo].[FormEight] ([FormEightId], [DrivingSchoolId], [StudentId], [TestedAndPassedOn], [MDLNo], [MDLFor], [ValidUpto], [Age], [RecommendedMDLNo], [ToEndrossmentFor], [PaidFee], [CreatedDate]) VALUES (1, 5, 1, CAST(N'2018-11-26' AS Date), N'123', N'123', N'123', N'19', N'123', N'123', CAST(1800 AS Decimal(18, 0)), CAST(N'2018-11-26 05:17:08.183' AS DateTime))
SET IDENTITY_INSERT [dbo].[FormEight] OFF
SET IDENTITY_INSERT [dbo].[FormFive] ON 

INSERT [dbo].[FormFive] ([FormFiveId], [DrivingSchoolId], [StudentId], [EnrollmentDate], [EnrollmentNumber], [StartDate], [EndDate], [CreatedDate]) VALUES (16, 5, 1, CAST(N'2000-01-02 00:00:00.000' AS DateTime), 100, CAST(N'2000-01-02' AS Date), CAST(N'2000-02-29' AS Date), CAST(N'2018-11-24 00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[FormFive] OFF
SET IDENTITY_INSERT [dbo].[FormFour] ON 

INSERT [dbo].[FormFour] ([FormFourId], [DrivingSchoolId], [StudentId], [IsLMVNT], [IsMCWG], [IsMCWOG], [IsLMVTR], [IsARTR], [IsARNT], [DurationOfStayAtPresentAddress], [MigratedToIndia], [CreatedDate]) VALUES (4, 5, 1, 1, 1, 0, 0, 0, 0, N'testing', N'test', CAST(N'2018-11-26 09:53:35.963' AS DateTime))
SET IDENTITY_INSERT [dbo].[FormFour] OFF
SET IDENTITY_INSERT [dbo].[FormFourteen] ON 

INSERT [dbo].[FormFourteen] ([FormFourteenId], [DrivingSchoolId], [StudentId], [EnrollmentNumber], [ClassOfVehical], [EnrollmentDate], [LLRNumber], [EnquiryDate], [PassingDate], [DrivingLicenseNumber], [IssueDate], [RNumber], [InwardNumber], [CreatedDate]) VALUES (3, 5, 1, 100, 1, CAST(N'2001-11-01 00:00:00.000' AS DateTime), N'123', CAST(N'2018-11-26' AS Date), CAST(N'2018-11-26' AS Date), N'123456', CAST(N'2018-11-26' AS Date), N'123', N'1', CAST(N'2018-11-26 09:42:21.657' AS DateTime))
SET IDENTITY_INSERT [dbo].[FormFourteen] OFF
SET IDENTITY_INSERT [dbo].[Personnel] ON 

INSERT [dbo].[Personnel] ([PersonnelId], [Title], [Forenames], [Surname], [DOB], [CountryId], [Address1], [Address2], [Address3], [Address4], [Postcode], [Telephone], [Mobile], [PANNumber], [BankTelephone], [Email], [UserId], [IsDrivingSchool]) VALUES (1, N'Mr.', N'Vijay', N'Raut', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'9773606038', NULL, NULL, NULL, N'9acaf606-6005-4764-bdfa-03143dcbdfec', 1)
INSERT [dbo].[Personnel] ([PersonnelId], [Title], [Forenames], [Surname], [DOB], [CountryId], [Address1], [Address2], [Address3], [Address4], [Postcode], [Telephone], [Mobile], [PANNumber], [BankTelephone], [Email], [UserId], [IsDrivingSchool]) VALUES (2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'9322992324', NULL, NULL, NULL, N'b3736c98-a252-4224-b6af-3ea3da65a2f3', 0)
INSERT [dbo].[Personnel] ([PersonnelId], [Title], [Forenames], [Surname], [DOB], [CountryId], [Address1], [Address2], [Address3], [Address4], [Postcode], [Telephone], [Mobile], [PANNumber], [BankTelephone], [Email], [UserId], [IsDrivingSchool]) VALUES (3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'400017', NULL, N'9969501888', NULL, NULL, N'omdattachs@gmail.co.in', N'cabb4496-64b8-4814-b4df-904c97745f30', 1)
INSERT [dbo].[Personnel] ([PersonnelId], [Title], [Forenames], [Surname], [DOB], [CountryId], [Address1], [Address2], [Address3], [Address4], [Postcode], [Telephone], [Mobile], [PANNumber], [BankTelephone], [Email], [UserId], [IsDrivingSchool]) VALUES (4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'400022', NULL, N'9322370470', NULL, NULL, N'nanasahebraut58@gmail.com', N'd20e69b8-c53a-4775-87a8-8d882b26db4f', 1)
INSERT [dbo].[Personnel] ([PersonnelId], [Title], [Forenames], [Surname], [DOB], [CountryId], [Address1], [Address2], [Address3], [Address4], [Postcode], [Telephone], [Mobile], [PANNumber], [BankTelephone], [Email], [UserId], [IsDrivingSchool]) VALUES (5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'400017', NULL, N'9322095795', NULL, NULL, N'sudha@gmail.com', N'772c5bc5-56da-420e-8a96-002318990e04', 1)
INSERT [dbo].[Personnel] ([PersonnelId], [Title], [Forenames], [Surname], [DOB], [CountryId], [Address1], [Address2], [Address3], [Address4], [Postcode], [Telephone], [Mobile], [PANNumber], [BankTelephone], [Email], [UserId], [IsDrivingSchool]) VALUES (6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'123456', NULL, N'1234567890', NULL, NULL, N'abc@gmail.com', N'e8207aac-84e6-41d0-ac4a-e6f8c045130a', 1)
INSERT [dbo].[Personnel] ([PersonnelId], [Title], [Forenames], [Surname], [DOB], [CountryId], [Address1], [Address2], [Address3], [Address4], [Postcode], [Telephone], [Mobile], [PANNumber], [BankTelephone], [Email], [UserId], [IsDrivingSchool]) VALUES (7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'400022', NULL, N'9876543210', NULL, NULL, N'test@gmail.com', N'5b54c47f-15d7-49ac-bf63-1afc57c8558a', 1)
INSERT [dbo].[Personnel] ([PersonnelId], [Title], [Forenames], [Surname], [DOB], [CountryId], [Address1], [Address2], [Address3], [Address4], [Postcode], [Telephone], [Mobile], [PANNumber], [BankTelephone], [Email], [UserId], [IsDrivingSchool]) VALUES (8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', NULL, N'8745698521', NULL, NULL, N'abcdef@gmail.com', N'cffecf16-50c7-43c9-91cd-b1ccb0b65f57', 1)
INSERT [dbo].[Personnel] ([PersonnelId], [Title], [Forenames], [Surname], [DOB], [CountryId], [Address1], [Address2], [Address3], [Address4], [Postcode], [Telephone], [Mobile], [PANNumber], [BankTelephone], [Email], [UserId], [IsDrivingSchool]) VALUES (9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', NULL, N'8745698521', NULL, NULL, N'abcdef@gmail.com', N'cffecf16-50c7-43c9-91cd-b1ccb0b65f57', 1)
SET IDENTITY_INSERT [dbo].[Personnel] OFF
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ProductId], [Name], [UncPath]) VALUES (1, N'Gadi', N'D:\Vijay\VijayWorkArea\GadiWorkArea\GaadiSeekho\Source\Gadi')
SET IDENTITY_INSERT [dbo].[Product] OFF
SET IDENTITY_INSERT [dbo].[Question] ON 

INSERT [dbo].[Question] ([QuestionId], [Name]) VALUES (1, N'Q1')
INSERT [dbo].[Question] ([QuestionId], [Name]) VALUES (2, N'Q2')
INSERT [dbo].[Question] ([QuestionId], [Name]) VALUES (3, N'Q3')
INSERT [dbo].[Question] ([QuestionId], [Name]) VALUES (4, N'Q4')
INSERT [dbo].[Question] ([QuestionId], [Name]) VALUES (5, N'Q5')
SET IDENTITY_INSERT [dbo].[Question] OFF
SET IDENTITY_INSERT [dbo].[Student] ON 

INSERT [dbo].[Student] ([StudentId], [Name], [SonWifeDaughterOf], [PresentAddress], [PermanantAddress], [OfficialAddress], [DateOfBirth], [PlaceOfBirth], [Education], [BloodGroup], [RHFactor], [Mobile], [ResidentialPhone], [OfficialPhone], [Email], [Nationality], [DrivingSchoolId], [CreatedDate]) VALUES (1, N'Vijay Raut', N'Nanasaheb Vitthal Raut', N'710,7TH FLOOR,OM DATTA CHS, Khambdev Nagar, Dharavi, Mumbai - 400017', N'710,7TH FLOOR,OM DATTA CHS, Khambdev Nagar, Dharavi, Mumbai - 400017', NULL, CAST(N'1993-01-27 00:00:00.0000000' AS DateTime2), N'Phaltan', N'BCA Pursuing', N'B +ve', NULL, 9773606038, NULL, NULL, N'vijayraut33@gmail.com', N'Indian', 5, CAST(N'2018-11-24 00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Student] ([StudentId], [Name], [SonWifeDaughterOf], [PresentAddress], [PermanantAddress], [OfficialAddress], [DateOfBirth], [PlaceOfBirth], [Education], [BloodGroup], [RHFactor], [Mobile], [ResidentialPhone], [OfficialPhone], [Email], [Nationality], [DrivingSchoolId], [CreatedDate]) VALUES (2, N'Shraddha Paradkar', N'Vijay Paradkar', N'Koperkhairane', N'koparkhairane', NULL, CAST(N'1993-11-24 00:00:00.0000000' AS DateTime2), N'Navi Mumbai', N'BCA Pursuing', N'B +ve', NULL, 9870754355, NULL, NULL, N'paradkarsh24@gmail.com', N'Indian', 5, CAST(N'2018-11-26 00:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Student] OFF
SET IDENTITY_INSERT [dbo].[StudentFee] ON 

INSERT [dbo].[StudentFee] ([StudentFeeId], [StudentId], [DrivingSchoolPackageId], [TotalFees], [DiscountFees], [PaidAmount], [PaymentDate], [BalanceFees], [ReceiptNumber], [DrivingSchoolId], [CreatedDate]) VALUES (1, 1, 1, CAST(5000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(3000 AS Decimal(18, 0)), CAST(N'2018-11-26 00:00:00.000' AS DateTime), CAST(2000 AS Decimal(18, 0)), N'G101', 5, CAST(N'2018-11-26 00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[StudentFee] OFF
SET IDENTITY_INSERT [dbo].[Template] ON 

INSERT [dbo].[Template] ([TemplateId], [Name], [FileName], [Type]) VALUES (1, N'FormFour', N'FormFour.html', N'html')
SET IDENTITY_INSERT [dbo].[Template] OFF
ALTER TABLE [dbo].[AspNetRolePermissions]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRolePermission_AspNetPermissions] FOREIGN KEY([PermissionId])
REFERENCES [dbo].[AspNetPermissions] ([Id])
GO
ALTER TABLE [dbo].[AspNetRolePermissions] CHECK CONSTRAINT [FK_AspNetRolePermission_AspNetPermissions]
GO
ALTER TABLE [dbo].[AspNetRolePermissions]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRolePermission_AspNetRoles] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
GO
ALTER TABLE [dbo].[AspNetRolePermissions] CHECK CONSTRAINT [FK_AspNetRolePermission_AspNetRoles]
GO
ALTER TABLE [dbo].[AspNetUserPermissions]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserPermissions_AspNetPermissions] FOREIGN KEY([PermissionId])
REFERENCES [dbo].[AspNetPermissions] ([Id])
GO
ALTER TABLE [dbo].[AspNetUserPermissions] CHECK CONSTRAINT [FK_AspNetUserPermissions_AspNetPermissions]
GO
ALTER TABLE [dbo].[AspNetUserPermissions]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserPermissions_AspNetUsers] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[AspNetUserPermissions] CHECK CONSTRAINT [FK_AspNetUserPermissions_AspNetUsers]
GO
ALTER TABLE [dbo].[AspNetUsersAlertSchedule]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUsersAlertSchedule_Alert1] FOREIGN KEY([AlertId])
REFERENCES [dbo].[Alert] ([AlertId])
GO
ALTER TABLE [dbo].[AspNetUsersAlertSchedule] CHECK CONSTRAINT [FK_AspNetUsersAlertSchedule_Alert1]
GO
ALTER TABLE [dbo].[DocumentDetail]  WITH CHECK ADD  CONSTRAINT [FK_DocumentDetail_DocumentCategory] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[DocumentCategory] ([DocumentCategoryId])
GO
ALTER TABLE [dbo].[DocumentDetail] CHECK CONSTRAINT [FK_DocumentDetail_DocumentCategory]
GO
ALTER TABLE [dbo].[DocumentDetail]  WITH CHECK ADD  CONSTRAINT [FK_DocumentDetail_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([ProductId])
GO
ALTER TABLE [dbo].[DocumentDetail] CHECK CONSTRAINT [FK_DocumentDetail_Product]
GO
ALTER TABLE [dbo].[Driver]  WITH CHECK ADD  CONSTRAINT [FK_Driver_DrivingSchool] FOREIGN KEY([DrivingSchoolId])
REFERENCES [dbo].[DrivingSchool] ([DrivingSchoolId])
GO
ALTER TABLE [dbo].[Driver] CHECK CONSTRAINT [FK_Driver_DrivingSchool]
GO
ALTER TABLE [dbo].[DriverCar]  WITH CHECK ADD  CONSTRAINT [FK_DriverCar_Driver] FOREIGN KEY([DriverId])
REFERENCES [dbo].[Driver] ([DriverId])
GO
ALTER TABLE [dbo].[DriverCar] CHECK CONSTRAINT [FK_DriverCar_Driver]
GO
ALTER TABLE [dbo].[DriverCar]  WITH CHECK ADD  CONSTRAINT [FK_DriverCar_DrivingSchoolCar] FOREIGN KEY([DrivingSchoolCarId])
REFERENCES [dbo].[DrivingSchoolCar] ([DrivingSchoolCarId])
GO
ALTER TABLE [dbo].[DriverCar] CHECK CONSTRAINT [FK_DriverCar_DrivingSchoolCar]
GO
ALTER TABLE [dbo].[DriverFeedback]  WITH CHECK ADD  CONSTRAINT [FK_DriverFeedback_Driver] FOREIGN KEY([DriverId])
REFERENCES [dbo].[Driver] ([DriverId])
GO
ALTER TABLE [dbo].[DriverFeedback] CHECK CONSTRAINT [FK_DriverFeedback_Driver]
GO
ALTER TABLE [dbo].[DriverFeedback]  WITH CHECK ADD  CONSTRAINT [FK_DriverFeedback_DriverFeedback] FOREIGN KEY([DriverFeedBackId])
REFERENCES [dbo].[DriverFeedback] ([DriverFeedBackId])
GO
ALTER TABLE [dbo].[DriverFeedback] CHECK CONSTRAINT [FK_DriverFeedback_DriverFeedback]
GO
ALTER TABLE [dbo].[DriverFeedback]  WITH CHECK ADD  CONSTRAINT [FK_DriverFeedback_DrivingSchool] FOREIGN KEY([DrivingSchoolId])
REFERENCES [dbo].[DrivingSchool] ([DrivingSchoolId])
GO
ALTER TABLE [dbo].[DriverFeedback] CHECK CONSTRAINT [FK_DriverFeedback_DrivingSchool]
GO
ALTER TABLE [dbo].[DrivingSchoolCar]  WITH CHECK ADD  CONSTRAINT [FK_DrivingSchoolCar_CarType] FOREIGN KEY([CarTypeId])
REFERENCES [dbo].[CarType] ([CarTypeId])
GO
ALTER TABLE [dbo].[DrivingSchoolCar] CHECK CONSTRAINT [FK_DrivingSchoolCar_CarType]
GO
ALTER TABLE [dbo].[DrivingSchoolCar]  WITH CHECK ADD  CONSTRAINT [FK_DrivingSchoolCar_DrivingSchool] FOREIGN KEY([DrivingSchoolId])
REFERENCES [dbo].[DrivingSchool] ([DrivingSchoolId])
GO
ALTER TABLE [dbo].[DrivingSchoolCar] CHECK CONSTRAINT [FK_DrivingSchoolCar_DrivingSchool]
GO
ALTER TABLE [dbo].[DrivingSchoolCarFee]  WITH CHECK ADD  CONSTRAINT [FK_DrivingSchoolCarFee_DrivingSchoolCar] FOREIGN KEY([DrivingSchoolCarId])
REFERENCES [dbo].[DrivingSchoolCar] ([DrivingSchoolCarId])
GO
ALTER TABLE [dbo].[DrivingSchoolCarFee] CHECK CONSTRAINT [FK_DrivingSchoolCarFee_DrivingSchoolCar]
GO
ALTER TABLE [dbo].[DrivingSchoolPackage]  WITH CHECK ADD  CONSTRAINT [FK_DrivingSchoolPackage_DrivingSchool] FOREIGN KEY([DrivingSchoolId])
REFERENCES [dbo].[DrivingSchool] ([DrivingSchoolId])
GO
ALTER TABLE [dbo].[DrivingSchoolPackage] CHECK CONSTRAINT [FK_DrivingSchoolPackage_DrivingSchool]
GO
ALTER TABLE [dbo].[DrivingSchoolPackage]  WITH CHECK ADD  CONSTRAINT [FK_DrivingSchoolPackage_DrivingSchoolCar] FOREIGN KEY([DrivingSchoolCarId])
REFERENCES [dbo].[DrivingSchoolCar] ([DrivingSchoolCarId])
GO
ALTER TABLE [dbo].[DrivingSchoolPackage] CHECK CONSTRAINT [FK_DrivingSchoolPackage_DrivingSchoolCar]
GO
ALTER TABLE [dbo].[DrivingSchoolRatingAndReview]  WITH CHECK ADD  CONSTRAINT [FK_DrivingSchoolRatingAndReview_DrivingSchool] FOREIGN KEY([DrivingSchoolId])
REFERENCES [dbo].[DrivingSchool] ([DrivingSchoolId])
GO
ALTER TABLE [dbo].[DrivingSchoolRatingAndReview] CHECK CONSTRAINT [FK_DrivingSchoolRatingAndReview_DrivingSchool]
GO
ALTER TABLE [dbo].[DrivingSchoolWorkingDay]  WITH CHECK ADD  CONSTRAINT [FK_DrivingSchoolWorkingDay_DrivingSchool] FOREIGN KEY([DrivingSchoolId])
REFERENCES [dbo].[DrivingSchool] ([DrivingSchoolId])
GO
ALTER TABLE [dbo].[DrivingSchoolWorkingDay] CHECK CONSTRAINT [FK_DrivingSchoolWorkingDay_DrivingSchool]
GO
ALTER TABLE [dbo].[FormEight]  WITH CHECK ADD  CONSTRAINT [FK_FormEight_DrivingSchool] FOREIGN KEY([DrivingSchoolId])
REFERENCES [dbo].[DrivingSchool] ([DrivingSchoolId])
GO
ALTER TABLE [dbo].[FormEight] CHECK CONSTRAINT [FK_FormEight_DrivingSchool]
GO
ALTER TABLE [dbo].[FormEight]  WITH CHECK ADD  CONSTRAINT [FK_FormEight_Student] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Student] ([StudentId])
GO
ALTER TABLE [dbo].[FormEight] CHECK CONSTRAINT [FK_FormEight_Student]
GO
ALTER TABLE [dbo].[FormFive]  WITH CHECK ADD  CONSTRAINT [FK_FormFive_DrivingSchool] FOREIGN KEY([DrivingSchoolId])
REFERENCES [dbo].[DrivingSchool] ([DrivingSchoolId])
GO
ALTER TABLE [dbo].[FormFive] CHECK CONSTRAINT [FK_FormFive_DrivingSchool]
GO
ALTER TABLE [dbo].[FormFive]  WITH CHECK ADD  CONSTRAINT [FK_FormFive_Student] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Student] ([StudentId])
GO
ALTER TABLE [dbo].[FormFive] CHECK CONSTRAINT [FK_FormFive_Student]
GO
ALTER TABLE [dbo].[FormFour]  WITH CHECK ADD  CONSTRAINT [FK_FormFour_DrivingSchool] FOREIGN KEY([DrivingSchoolId])
REFERENCES [dbo].[DrivingSchool] ([DrivingSchoolId])
GO
ALTER TABLE [dbo].[FormFour] CHECK CONSTRAINT [FK_FormFour_DrivingSchool]
GO
ALTER TABLE [dbo].[FormFour]  WITH CHECK ADD  CONSTRAINT [FK_FormFour_Student] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Student] ([StudentId])
GO
ALTER TABLE [dbo].[FormFour] CHECK CONSTRAINT [FK_FormFour_Student]
GO
ALTER TABLE [dbo].[FormFourteen]  WITH CHECK ADD  CONSTRAINT [FK_FormFourteen_DrivingSchool] FOREIGN KEY([DrivingSchoolId])
REFERENCES [dbo].[DrivingSchool] ([DrivingSchoolId])
GO
ALTER TABLE [dbo].[FormFourteen] CHECK CONSTRAINT [FK_FormFourteen_DrivingSchool]
GO
ALTER TABLE [dbo].[FormFourteen]  WITH CHECK ADD  CONSTRAINT [FK_FormFourteen_Student] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Student] ([StudentId])
GO
ALTER TABLE [dbo].[FormFourteen] CHECK CONSTRAINT [FK_FormFourteen_Student]
GO
ALTER TABLE [dbo].[FormOneA]  WITH CHECK ADD  CONSTRAINT [FK_FormOneA_DrivingSchool] FOREIGN KEY([DrivingSchoolId])
REFERENCES [dbo].[DrivingSchool] ([DrivingSchoolId])
GO
ALTER TABLE [dbo].[FormOneA] CHECK CONSTRAINT [FK_FormOneA_DrivingSchool]
GO
ALTER TABLE [dbo].[FormOneA]  WITH CHECK ADD  CONSTRAINT [FK_FormOneA_Student] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Student] ([StudentId])
GO
ALTER TABLE [dbo].[FormOneA] CHECK CONSTRAINT [FK_FormOneA_Student]
GO
ALTER TABLE [dbo].[PersonnelDocument]  WITH CHECK ADD  CONSTRAINT [FK_PersonnelDocument_Personnel] FOREIGN KEY([PersonnelId])
REFERENCES [dbo].[Personnel] ([PersonnelId])
GO
ALTER TABLE [dbo].[PersonnelDocument] CHECK CONSTRAINT [FK_PersonnelDocument_Personnel]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_DrivingSchool] FOREIGN KEY([DrivingSchoolId])
REFERENCES [dbo].[DrivingSchool] ([DrivingSchoolId])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_DrivingSchool]
GO
ALTER TABLE [dbo].[StudentDrivingDetail]  WITH CHECK ADD  CONSTRAINT [FK_StudentDrivingDetail_DrivingSchool] FOREIGN KEY([DrivingSchoolId])
REFERENCES [dbo].[DrivingSchool] ([DrivingSchoolId])
GO
ALTER TABLE [dbo].[StudentDrivingDetail] CHECK CONSTRAINT [FK_StudentDrivingDetail_DrivingSchool]
GO
ALTER TABLE [dbo].[StudentDrivingDetail]  WITH CHECK ADD  CONSTRAINT [FK_StudentDrivingDetail_DrivingSchoolCar] FOREIGN KEY([DrivingSchoolCarId])
REFERENCES [dbo].[DrivingSchoolCar] ([DrivingSchoolCarId])
GO
ALTER TABLE [dbo].[StudentDrivingDetail] CHECK CONSTRAINT [FK_StudentDrivingDetail_DrivingSchoolCar]
GO
ALTER TABLE [dbo].[StudentDrivingDetail]  WITH CHECK ADD  CONSTRAINT [FK_StudentDrivingDetail_Student] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Student] ([StudentId])
GO
ALTER TABLE [dbo].[StudentDrivingDetail] CHECK CONSTRAINT [FK_StudentDrivingDetail_Student]
GO
ALTER TABLE [dbo].[StudentFee]  WITH CHECK ADD  CONSTRAINT [FK_StudentFee_DrivingSchool] FOREIGN KEY([DrivingSchoolId])
REFERENCES [dbo].[DrivingSchool] ([DrivingSchoolId])
GO
ALTER TABLE [dbo].[StudentFee] CHECK CONSTRAINT [FK_StudentFee_DrivingSchool]
GO
ALTER TABLE [dbo].[StudentFee]  WITH CHECK ADD  CONSTRAINT [FK_StudentFee_DrivingSchoolPackage] FOREIGN KEY([DrivingSchoolPackageId])
REFERENCES [dbo].[DrivingSchoolPackage] ([DrivingSchoolPackageId])
GO
ALTER TABLE [dbo].[StudentFee] CHECK CONSTRAINT [FK_StudentFee_DrivingSchoolPackage]
GO
ALTER TABLE [dbo].[StudentFee]  WITH CHECK ADD  CONSTRAINT [FK_StudentFee_Student] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Student] ([StudentId])
GO
ALTER TABLE [dbo].[StudentFee] CHECK CONSTRAINT [FK_StudentFee_Student]
GO
ALTER TABLE [dbo].[StudentQuestionResponse]  WITH CHECK ADD  CONSTRAINT [FK_StudentQuestionResponse_DrivingSchool] FOREIGN KEY([DrivingSchoolId])
REFERENCES [dbo].[DrivingSchool] ([DrivingSchoolId])
GO
ALTER TABLE [dbo].[StudentQuestionResponse] CHECK CONSTRAINT [FK_StudentQuestionResponse_DrivingSchool]
GO
ALTER TABLE [dbo].[StudentQuestionResponse]  WITH CHECK ADD  CONSTRAINT [FK_StudentQuestionResponse_Question] FOREIGN KEY([QuestionId])
REFERENCES [dbo].[Question] ([QuestionId])
GO
ALTER TABLE [dbo].[StudentQuestionResponse] CHECK CONSTRAINT [FK_StudentQuestionResponse_Question]
GO
ALTER TABLE [dbo].[StudentQuestionResponse]  WITH CHECK ADD  CONSTRAINT [FK_StudentQuestionResponse_Student] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Student] ([StudentId])
GO
ALTER TABLE [dbo].[StudentQuestionResponse] CHECK CONSTRAINT [FK_StudentQuestionResponse_Student]
GO
USE [master]
GO
ALTER DATABASE [GadiSeekho] SET  READ_WRITE 
GO
