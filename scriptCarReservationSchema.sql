/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2014 (12.0.2000)
    Source Database Engine Edition : Microsoft SQL Server Enterprise Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2017
    Target Database Engine Edition : Microsoft SQL Server Standard Edition
    Target Database Engine Type : Standalone SQL Server
*/
USE [CarReservation]
GO
/****** Object:  Table [dbo].[HCR_C_SYSTEM_USERS]    Script Date: 3/15/2019 4:16:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HCR_C_SYSTEM_USERS](
	[USER_CODE] [varchar](100) NOT NULL,
	[FIRST_NAME] [varchar](150) NULL,
	[LAST_NAME] [varchar](150) NULL,
	[EMAIL] [varchar](100) NULL,
	[PROCESS_LEVEL] [int] NULL,
	[USER_ROLE] [varchar](50) NULL,
	[ACTIVE] [varchar](5) NULL,
	[CRET_DATE] [date] NULL,
	[CRET_BY] [varchar](100) NULL,
	[MNT_DATE] [date] NULL,
	[MNT_BY] [varchar](100) NULL,
 CONSTRAINT [PK_HCR_C_SYSTEM_USERS_1] PRIMARY KEY CLUSTERED 
(
	[USER_CODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HCR_L_APPROVALS]    Script Date: 3/15/2019 4:16:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HCR_L_APPROVALS](
	[APPROVAL_ID] [int] IDENTITY(1,1) NOT NULL,
	[APPROVAL_DATE] [date] NULL,
	[RESERV_ID] [int] NULL,
	[PROCESS_LEVEL] [int] NULL,
	[APPROVAL_STATUS] [varchar](5) NULL,
	[APPROVAL_REMARK] [varchar](255) NULL,
	[CRET_DATE] [date] NULL,
	[CRET_BY] [varchar](100) NULL,
	[MNT_DATE] [date] NULL,
	[MNT_BY] [varchar](100) NULL,
	[ASSIGNED_ASSET_ID] [int] NULL,
	[PARKING_LOCATION] [varchar](255) NULL,
	[PRE_ASSIGN] [varchar](5) NULL,
 CONSTRAINT [PK_HCR_L_APPROVALS] PRIMARY KEY CLUSTERED 
(
	[APPROVAL_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HCR_M_ASSET_STATUS]    Script Date: 3/15/2019 4:16:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HCR_M_ASSET_STATUS](
	[STATUS_ID] [varchar](5) NOT NULL,
	[STATUS_NAME] [varchar](255) NULL,
	[STATUS_DISPLAY_NAME] [varchar](255) NULL,
	[REMARK] [varchar](255) NULL,
	[SEQ] [int] NULL,
	[ACTIVE] [varchar](5) NULL,
	[CRET_DATE] [date] NULL,
	[CRET_BY] [varchar](100) NULL,
	[MNT_DATE] [date] NULL,
	[MNT_BY] [varchar](100) NULL,
 CONSTRAINT [PK_HCR_M_ASSET_STATUS_1] PRIMARY KEY CLUSTERED 
(
	[STATUS_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HCR_M_ASSETS]    Script Date: 3/15/2019 4:16:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HCR_M_ASSETS](
	[ASSET_ID] [int] IDENTITY(1,1) NOT NULL,
	[ASSET_NAME] [varchar](255) NULL,
	[ASSET_MODEL] [varchar](50) NULL,
	[ASSET_SUBMODEL] [varchar](255) NULL,
	[ASSET_REG_NO] [varchar](255) NULL,
	[ASSET_TYPE] [varchar](5) NULL,
	[STATUS] [varchar](5) NULL,
	[FRAME_NO] [varchar](50) NULL,
	[PLATE_NO] [varchar](50) NULL,
	[PLATE_PROVINCE] [varchar](50) NULL,
	[COLOR] [varchar](50) NULL,
	[REMARK] [varchar](255) NULL,
	[SOLD_OUT] [varchar](5) NULL,
	[SEQ] [int] NULL,
	[CRET_DATE] [date] NULL,
	[CRET_BY] [varchar](100) NULL,
	[MNT_DATE] [date] NULL,
	[MNT_BY] [varchar](100) NULL,
	[LAST_LOCATION] [varchar](255) NULL,
	[CUR_RESERV_USER] [varchar](100) NULL,
	[CUR_RESERV_WHERE_TOGO] [varchar](255) NULL,
	[CUR_RESERV_PURPOSE] [varchar](255) NULL,
	[CUR_RESERV_DATEFROM] [date] NULL,
	[CUR_RESERV_DATETO] [date] NULL,
	[BRAND_ID] [int] NULL,
	[RESERV_ID] [int] NULL,
 CONSTRAINT [PK_HCR_M_ASSETS] PRIMARY KEY CLUSTERED 
(
	[ASSET_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HCR_M_CARDTYPES]    Script Date: 3/15/2019 4:16:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HCR_M_CARDTYPES](
	[CARDTYPE_ID] [int] NOT NULL,
	[CARDTYPE_NAME] [varchar](255) NULL,
	[SEQ] [int] NULL,
	[ACTIVE] [varchar](5) NULL,
	[REMARK] [varchar](255) NULL,
	[CRET_DATE] [date] NULL,
	[CRET_BY] [varchar](100) NULL,
	[MNT_DATE] [date] NULL,
	[MNT_BY] [varchar](100) NULL,
 CONSTRAINT [PK_HCR_M_CARDTYPES] PRIMARY KEY CLUSTERED 
(
	[CARDTYPE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HCR_M_CARMODELS]    Script Date: 3/15/2019 4:16:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HCR_M_CARMODELS](
	[MODEL_ID] [int] NOT NULL,
	[MODEL_NAME] [varchar](100) NULL,
	[SEQ] [int] NULL,
	[ACTIVE] [varchar](5) NULL,
	[CRET_DATE] [date] NULL,
	[CRET_BY] [varchar](100) NULL,
	[MNT_DATE] [date] NULL,
	[MNT_BY] [varchar](100) NULL,
	[BRAND_ID] [int] NULL,
 CONSTRAINT [PK_HCR_M_CARMODELS] PRIMARY KEY CLUSTERED 
(
	[MODEL_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HCR_M_RESERV_STATUS]    Script Date: 3/15/2019 4:16:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HCR_M_RESERV_STATUS](
	[STATUS_ID] [varchar](5) NOT NULL,
	[STATUS_NAME] [varchar](255) NULL,
	[STATUS_DISPLAY_NAME] [varchar](255) NULL,
	[REMARK] [varchar](255) NULL,
	[SEQ] [int] NULL,
	[ACTIVE] [varchar](5) NULL,
	[CRET_DATE] [date] NULL,
	[CRET_BY] [varchar](100) NULL,
	[MNT_DATE] [date] NULL,
	[MNT_BY] [varchar](100) NULL,
	[PROCESS_LEVEL] [int] NULL,
 CONSTRAINT [PK_HCR_M_RESERV_STATUS] PRIMARY KEY CLUSTERED 
(
	[STATUS_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HCR_M_TRIP_TYPES]    Script Date: 3/15/2019 4:16:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HCR_M_TRIP_TYPES](
	[TRIPTYPE_ID] [varchar](5) NOT NULL,
	[TRIPTYPE_NAME] [varchar](255) NULL,
	[SEQ] [int] NULL,
	[ACTIVE] [varchar](5) NULL,
	[CRET_DATE] [date] NULL,
	[CRET_BY] [varchar](100) NULL,
	[MNT_DATE] [date] NULL,
	[MNT_BY] [varchar](100) NULL,
 CONSTRAINT [PK_HCR_M_TRIP_TYPES] PRIMARY KEY CLUSTERED 
(
	[TRIPTYPE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HCR_M_USERS]    Script Date: 3/15/2019 4:16:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HCR_M_USERS](
	[USER_CODE] [varchar](100) NOT NULL,
	[FIRST_NAME] [varchar](150) NULL,
	[LAST_NAME] [varchar](150) NULL,
	[EMAIL] [varchar](250) NULL,
	[SECTION] [varchar](100) NULL,
	[DEPARTMENT] [varchar](100) NULL,
	[CRET_DATE] [date] NULL,
	[CRET_BY] [varchar](100) NULL,
	[MNT_DATE] [date] NULL,
	[MNT_BY] [varchar](100) NULL,
	[ENABLED] [varchar](5) NULL,
	[APPROVABLE] [varchar](5) NULL,
	[DISPLAY_NAME] [varchar](300) NULL,
 CONSTRAINT [PK_HCR_M_USERS] PRIMARY KEY CLUSTERED 
(
	[USER_CODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HCR_T_RESERVATIONS]    Script Date: 3/15/2019 4:16:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HCR_T_RESERVATIONS](
	[RESERV_ID] [int] NOT NULL,
	[RESERV_DATE] [date] NULL,
	[RESERV_SECT] [varchar](100) NULL,
	[RESERV_CAR_TYPE] [varchar](5) NULL,
	[RESERV_TRIP_TYPE] [varchar](5) NULL,
	[RESERV_DATE_FROM] [date] NULL,
	[RESERV_DATE_TO] [date] NULL,
	[WHERE_TO_GO] [varchar](255) NULL,
	[PURPOSE] [varchar](255) NULL,
	[APPROVER] [varchar](255) NULL,
	[STATUS] [varchar](5) NULL,
	[LAST_APPROVER] [varchar](100) NULL,
	[CRET_DATE] [date] NULL,
	[CRET_BY] [varchar](100) NULL,
	[MNT_DATE] [date] NULL,
	[MNT_BY] [varchar](100) NULL,
	[CANCEL_REMARK] [varchar](255) NULL,
	[ASSIGNED_ASSET_ID] [int] NULL,
	[PARKING_LOCATION] [varchar](255) NULL,
	[PROCESS_LEVEL] [int] NULL,
	[RESERV_ASSETTYPE] [varchar](10) NULL,
	[PRE_ASSIGN] [varchar](5) NULL,
 CONSTRAINT [PK_HCR_T_RESERVATIONS] PRIMARY KEY CLUSTERED 
(
	[RESERV_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
