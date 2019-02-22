/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2016 (13.0.1742)
    Source Database Engine Edition : Microsoft SQL Server Enterprise Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2017
    Target Database Engine Edition : Microsoft SQL Server Standard Edition
    Target Database Engine Type : Standalone SQL Server
*/
USE [ASHAOP_DEV]
GO
/****** Object:  Table [dbo].[L_InputOutput]    Script Date: 2/22/2019 5:15:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[L_InputOutput](
	[InputOutputID] [int] IDENTITY(1,1) NOT NULL,
	[MenuID] [int] NULL,
	[PermissionID] [int] NULL,
	[Description] [nvarchar](max) NULL,
	[LogBy] [nvarchar](50) NULL,
	[LogDate] [datetime] NULL,
 CONSTRAINT [PK_L_InputOutput] PRIMARY KEY CLUSTERED 
(
	[InputOutputID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[L_SystemLog]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[L_SystemLog](
	[SystemLogID] [int] NOT NULL,
	[Code] [int] NULL,
	[Description] [nvarchar](max) NULL,
	[ModifyDate] [datetime] NULL,
 CONSTRAINT [PK_T_SystemLog] PRIMARY KEY CLUSTERED 
(
	[SystemLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[L_Transaction]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[L_Transaction](
	[TransactionID] [int] IDENTITY(1,1) NOT NULL,
	[MenuID] [int] NULL,
	[PermissionID] [int] NULL,
	[StatusID] [int] NULL,
	[ControlVersion] [bit] NULL,
	[LogBy] [varchar](50) NULL,
	[LogDate] [datetime] NULL,
 CONSTRAINT [PK_L_Transaction] PRIMARY KEY CLUSTERED 
(
	[TransactionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[L_User]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[L_User](
	[LogID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[ActionID] [int] NOT NULL,
	[Username] [nvarchar](20) NOT NULL,
	[DomainID_Old] [int] NULL,
	[DomainID_New] [int] NOT NULL,
	[Initial_Old] [nvarchar](20) NULL,
	[Initial_New] [nvarchar](20) NULL,
	[Firstname_Old] [nvarchar](50) NULL,
	[Firstname_New] [nvarchar](50) NOT NULL,
	[Lastname_Old] [nvarchar](50) NULL,
	[Lastname_New] [nvarchar](50) NOT NULL,
	[Company_Old] [nvarchar](255) NULL,
	[Company_New] [nvarchar](255) NOT NULL,
	[Department_Old] [nvarchar](255) NULL,
	[Department_New] [nvarchar](255) NOT NULL,
	[PlantLocation_Old] [nvarchar](255) NULL,
	[PlantLocation_New] [nvarchar](255) NOT NULL,
	[Email_Old] [nvarchar](50) NULL,
	[Email_New] [nvarchar](50) NOT NULL,
	[ContactNo_Old] [nvarchar](50) NULL,
	[ContactNo_New] [nvarchar](50) NULL,
	[CompanyID_Old] [int] NULL,
	[CompanyID_New] [int] NOT NULL,
	[UserRoleID_Old] [int] NULL,
	[UserRoleID_New] [int] NOT NULL,
	[LastLoginDate_Old] [datetime] NULL,
	[LastLoginDate_New] [datetime] NULL,
	[StatusID_Old] [int] NULL,
	[StatusID_New] [int] NOT NULL,
	[LogBy] [nvarchar](20) NOT NULL,
	[LogDate] [datetime] NOT NULL,
 CONSTRAINT [PK_L_User] PRIMARY KEY CLUSTERED 
(
	[LogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_AdditionalCondition]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_AdditionalCondition](
	[AddtionalConditionID] [int] IDENTITY(1,1) NOT NULL,
	[ConditionName] [nvarchar](50) NOT NULL,
	[ConditionString] [nvarchar](500) NOT NULL,
	[TrueCondition] [nvarchar](50) NULL,
	[FalseCondition] [nvarchar](50) NULL,
	[CreateBy] [nvarchar](50) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[UpdateBy] [nvarchar](50) NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_M_Additional] PRIMARY KEY CLUSTERED 
(
	[AddtionalConditionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_AdditionalConditionCriteria]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_AdditionalConditionCriteria](
	[AdditionalConditionCriteriaID] [int] IDENTITY(1,1) NOT NULL,
	[AdditionalConditionID] [int] NOT NULL,
	[Sequent] [int] NOT NULL,
	[AdditionalCriteriaNameID] [int] NOT NULL,
	[AdditionalOperatorID] [int] NOT NULL,
	[CriteriaValue] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK_M_AdditionalConditionCriteria] PRIMARY KEY CLUSTERED 
(
	[AdditionalConditionCriteriaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_AdditionalConditionHistory]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_AdditionalConditionHistory](
	[AdditionalConditionHistoryID] [int] IDENTITY(1,1) NOT NULL,
	[AdditionalConditionID] [int] NOT NULL,
	[LastestUpdateBy] [nvarchar](50) NOT NULL,
	[LastestUpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_M_AdditionalConditionHistory] PRIMARY KEY CLUSTERED 
(
	[AdditionalConditionHistoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_AdditionalCriteriaName]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_AdditionalCriteriaName](
	[AdditionalCriteriaNameID] [int] IDENTITY(1,1) NOT NULL,
	[CriteriaName] [nvarchar](100) NULL,
 CONSTRAINT [PK_M_AdditionalCriteriaName] PRIMARY KEY CLUSTERED 
(
	[AdditionalCriteriaNameID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_AdditionalOperator]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_AdditionalOperator](
	[AdditionalOperatorID] [int] IDENTITY(1,1) NOT NULL,
	[OperatorName] [nvarchar](50) NOT NULL,
	[OperatorSymbol] [nvarchar](5) NOT NULL,
 CONSTRAINT [PK_M_AdditionalOperator] PRIMARY KEY CLUSTERED 
(
	[AdditionalOperatorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_Archeive]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_Archeive](
	[ArchiveID] [int] NOT NULL,
 CONSTRAINT [PK_M_Archeive] PRIMARY KEY CLUSTERED 
(
	[ArchiveID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_CBULine]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_CBULine](
	[CBULineID] [int] IDENTITY(1,1) NOT NULL,
	[CompanyID] [int] NOT NULL,
	[LineNumber] [int] NOT NULL,
	[LineName] [nvarchar](50) NOT NULL,
	[CreatedBy] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](50) NOT NULL,
	[UpdatedDate] [datetime] NOT NULL,
	[StatusID] [int] NOT NULL,
 CONSTRAINT [PK_M_CbuLine] PRIMARY KEY CLUSTERED 
(
	[CBULineID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_Company]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_Company](
	[CompanyID] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [nvarchar](100) NOT NULL,
	[Plant] [nvarchar](20) NOT NULL,
	[MainPlantStatusID] [int] NOT NULL,
	[SupplyPlantStatusID] [int] NOT NULL,
	[RegionID] [int] NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NULL,
	[SortNo] [int] NOT NULL,
	[CreatedBy] [nvarchar](20) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](20) NOT NULL,
	[UpdatedDate] [datetime] NOT NULL,
	[StatusID] [int] NOT NULL,
 CONSTRAINT [PK_M_Company] PRIMARY KEY CLUSTERED 
(
	[CompanyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_Country]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_Country](
	[CountryID] [int] IDENTITY(1,1) NOT NULL,
	[CountryName] [nvarchar](50) NOT NULL,
	[CreatedBy] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](50) NOT NULL,
	[UpdatedDate] [datetime] NOT NULL,
	[StatusID] [int] NOT NULL,
 CONSTRAINT [PK_M_Country] PRIMARY KEY CLUSTERED 
(
	[CountryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_CountryListModelPlant]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_CountryListModelPlant](
	[CountryListModelPlantID] [int] IDENTITY(1,1) NOT NULL,
	[CountryListUploadHistoryID] [int] NULL,
	[YMID] [int] NOT NULL,
	[ModelID] [int] NOT NULL,
	[CompanyID] [int] NOT NULL,
	[Version] [nvarchar](3) NOT NULL,
	[UploadedDate] [datetime] NOT NULL,
	[UploadedBy] [nvarchar](50) NOT NULL,
	[UpdatedDate] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](50) NOT NULL,
	[MTOCStatusID] [int] NOT NULL,
 CONSTRAINT [PK_M_CountryListCompanyModel] PRIMARY KEY CLUSTERED 
(
	[CountryListModelPlantID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_CountryListModelType]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_CountryListModelType](
	[CountryListModelTypeID] [int] IDENTITY(1,1) NOT NULL,
	[CountryListModeltypeName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_M_CountryListGroup_1] PRIMARY KEY CLUSTERED 
(
	[CountryListModelTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_CountryListModelTypeOfCountry]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_CountryListModelTypeOfCountry](
	[CountryListModelTypeOfCountryID] [int] IDENTITY(1,1) NOT NULL,
	[CountryListModelTypeID] [int] NOT NULL,
	[CountryID] [int] NOT NULL,
	[CountryListModelPlantID] [int] NOT NULL,
 CONSTRAINT [PK_M_CountryListGroupOfCountry] PRIMARY KEY CLUSTERED 
(
	[CountryListModelTypeOfCountryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_CountryListTempCountry]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_CountryListTempCountry](
	[CountryListTempCountryID] [int] IDENTITY(1,1) NOT NULL,
	[CountryListTempRowID] [int] NOT NULL,
	[CountryListTempCountryName] [nvarchar](100) NOT NULL,
	[ColumnIndex] [int] NOT NULL,
 CONSTRAINT [PK_M_CountryListTempCountry] PRIMARY KEY CLUSTERED 
(
	[CountryListTempCountryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_CountryListTempList]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_CountryListTempList](
	[CountryListTempListID] [int] IDENTITY(1,1) NOT NULL,
	[CountryListTempRowID] [int] NOT NULL,
	[YM] [nvarchar](100) NOT NULL,
	[ModelName] [nvarchar](100) NOT NULL,
	[Door] [nvarchar](100) NOT NULL,
	[Plant] [nvarchar](100) NOT NULL,
	[Version] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_M_CountryListTempList] PRIMARY KEY CLUSTERED 
(
	[CountryListTempListID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_CountryListTempModelType]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_CountryListTempModelType](
	[CountryListTempModelTypeID] [int] IDENTITY(1,1) NOT NULL,
	[CountryListTempRowID] [int] NOT NULL,
	[CountryListTempModeltypeName] [nvarchar](100) NOT NULL,
	[ColumnIndex] [int] NOT NULL,
 CONSTRAINT [PK_M_CountryListTempModelType] PRIMARY KEY CLUSTERED 
(
	[CountryListTempModelTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_CountryListTempRow]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_CountryListTempRow](
	[CountryListTempRowID] [int] IDENTITY(1,1) NOT NULL,
	[CountryListUploadHistoryID] [int] NOT NULL,
	[RowNumber] [int] NOT NULL,
	[ErrorDescription] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_M_CountryListTempRow] PRIMARY KEY CLUSTERED 
(
	[CountryListTempRowID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_CountryListUploadHistory]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_CountryListUploadHistory](
	[CountryListUploadHistoryID] [int] IDENTITY(1,1) NOT NULL,
	[FileManagerOriginalID] [int] NOT NULL,
	[FileManagerID] [int] NOT NULL,
	[FileName] [nvarchar](200) NOT NULL,
	[FileNameSystem] [nvarchar](200) NULL,
	[CompanyID] [int] NOT NULL,
	[ModelID] [int] NOT NULL,
	[YMID] [int] NOT NULL,
	[Door] [nvarchar](50) NOT NULL,
	[Version] [nvarchar](50) NOT NULL,
	[UploadedVersion] [nvarchar](50) NOT NULL,
	[UploadedDate] [datetime] NOT NULL,
	[UploadedBy] [nvarchar](50) NOT NULL,
	[UploadedStatus] [int] NOT NULL,
	[Total] [int] NOT NULL,
	[Success] [int] NOT NULL,
	[Fail] [int] NOT NULL,
 CONSTRAINT [PK_M_CountryListUploadHistory] PRIMARY KEY CLUSTERED 
(
	[CountryListUploadHistoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_CountryMapping]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_CountryMapping](
	[CountryMappingID] [int] IDENTITY(1,1) NOT NULL,
	[SaleGroupName] [nvarchar](50) NOT NULL,
	[CreatedBy] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](50) NOT NULL,
	[UpdatedDate] [datetime] NOT NULL,
	[StatusID] [int] NOT NULL,
 CONSTRAINT [PK_M_CountryMapping] PRIMARY KEY CLUSTERED 
(
	[CountryMappingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_CountryMappingDetail]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_CountryMappingDetail](
	[CountryMappingDetailID] [int] IDENTITY(1,1) NOT NULL,
	[CountryMappingID] [int] NOT NULL,
	[CountryID] [int] NOT NULL,
	[CreatedBy] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](50) NOT NULL,
	[UpdatedDate] [datetime] NOT NULL,
	[StatusID] [int] NOT NULL,
 CONSTRAINT [PK_M_CountryMappingDetail] PRIMARY KEY CLUSTERED 
(
	[CountryMappingDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_DisplacementConfig]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_DisplacementConfig](
	[DisplacementConfigID] [int] IDENTITY(1,1) NOT NULL,
	[NetValue] [int] NOT NULL,
	[FromValue] [int] NOT NULL,
	[ToValue] [int] NOT NULL,
 CONSTRAINT [PK_M_DisplacementConfig] PRIMARY KEY CLUSTERED 
(
	[DisplacementConfigID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_Domain]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_Domain](
	[DomainID] [int] IDENTITY(1,1) NOT NULL,
	[DomainName] [nvarchar](50) NOT NULL,
	[SortSequence] [int] NOT NULL,
	[CreatedBy] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](50) NOT NULL,
	[UpdatedDate] [datetime] NOT NULL,
	[StatusID] [int] NOT NULL,
 CONSTRAINT [PK_M_Domain] PRIMARY KEY CLUSTERED 
(
	[DomainID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_Equipment]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_Equipment](
	[EquipmentID] [int] IDENTITY(1,1) NOT NULL,
	[EquipmentName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_M_Equipment] PRIMARY KEY CLUSTERED 
(
	[EquipmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_FileManager]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_FileManager](
	[FileManagerID] [int] IDENTITY(1,1) NOT NULL,
	[FileManagerCode] [nvarchar](50) NULL,
	[RootPath] [nvarchar](255) NOT NULL,
	[Description] [nvarchar](255) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_M_FileManager] PRIMARY KEY CLUSTERED 
(
	[FileManagerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_Ki]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_Ki](
	[Month] [int] NOT NULL,
	[Year] [int] NOT NULL,
	[Ki] [int] NOT NULL,
	[NextKi] [bit] NOT NULL,
 CONSTRAINT [PK_M_KI_1] PRIMARY KEY CLUSTERED 
(
	[Year] ASC,
	[Month] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_LineCapacityOT]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_LineCapacityOT](
	[LineCapacityOTID] [int] IDENTITY(1,1) NOT NULL,
	[Ki] [int] NOT NULL,
	[CBULineID] [int] NOT NULL,
	[CapHROT] [decimal](18, 2) NOT NULL,
	[NoOTHR] [decimal](18, 2) NOT NULL,
	[CapOT] [decimal](18, 2) NOT NULL,
	[CapHW] [decimal](18, 2) NOT NULL,
	[ConvertOTHW] [decimal](18, 2) NOT NULL,
	[CreatedBy] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](50) NOT NULL,
	[UpdatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_M_CapOt] PRIMARY KEY CLUSTERED 
(
	[LineCapacityOTID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_Menu]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_Menu](
	[MenuID] [int] NOT NULL,
	[ParentMenuID] [int] NULL,
	[OrderNo] [int] NULL,
	[MenuCode] [nvarchar](255) NULL,
	[MenuName] [nvarchar](255) NULL,
	[MenuLink] [nvarchar](255) NULL,
	[Description] [nvarchar](255) NULL,
	[IconName] [nvarchar](255) NULL,
	[RoleTypeID] [int] NULL,
 CONSTRAINT [PK_M_Menu_1] PRIMARY KEY CLUSTERED 
(
	[MenuID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_MISC]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_MISC](
	[MiscID] [int] IDENTITY(1,1) NOT NULL,
	[MiscType] [nvarchar](20) NOT NULL,
	[MiscCode] [nvarchar](10) NOT NULL,
	[MiscDescription] [nvarchar](100) NOT NULL,
	[MiscSortNo] [int] NOT NULL,
 CONSTRAINT [PK_M_MISC] PRIMARY KEY CLUSTERED 
(
	[MiscID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_Model]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_Model](
	[ModelID] [int] IDENTITY(1,1) NOT NULL,
	[ModelName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_M_Model] PRIMARY KEY CLUSTERED 
(
	[ModelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_ModelType]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_ModelType](
	[ModelTypeID] [int] IDENTITY(1,1) NOT NULL,
	[ModelTypeUploadID] [int] NULL,
	[CompanyID] [int] NOT NULL,
	[ModelID] [int] NOT NULL,
	[YMID] [int] NOT NULL,
	[Version] [nvarchar](3) NOT NULL,
	[MTOCStatusID] [int] NOT NULL,
	[UploadedBy] [nvarchar](50) NULL,
	[UploadedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](50) NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_M_ModelType] PRIMARY KEY CLUSTERED 
(
	[ModelTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_ModelTypeEngine]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_ModelTypeEngine](
	[ModelTypeEngineID] [int] IDENTITY(1,1) NOT NULL,
	[ModelTypeID] [int] NOT NULL,
	[ModelUsed] [nvarchar](100) NOT NULL,
	[ModelGPSP] [nvarchar](100) NOT NULL,
	[SS] [nvarchar](50) NOT NULL,
	[DISP] [int] NOT NULL,
	[COMCARB] [nvarchar](50) NOT NULL,
	[GRADE] [nvarchar](50) NOT NULL,
	[MIS] [nvarchar](50) NOT NULL,
	[ModelCode01] [nvarchar](50) NOT NULL,
	[ModelCode02] [nvarchar](50) NOT NULL,
	[ModelCode03] [nvarchar](50) NOT NULL,
	[ModelCode04] [nvarchar](50) NOT NULL,
	[ModelCode05] [nvarchar](50) NOT NULL,
	[ModelType] [nvarchar](50) NOT NULL,
	[ModelCode] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_M_ModelTypeEngine] PRIMARY KEY CLUSTERED 
(
	[ModelTypeEngineID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_ModelTypeEquipment]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_ModelTypeEquipment](
	[ModelTypeEquipmentID] [int] IDENTITY(1,1) NOT NULL,
	[ModelTypeEngineID] [int] NOT NULL,
	[EquipmentID] [int] NOT NULL,
	[EquipmentValue] [int] NOT NULL,
	[Sequence] [int] NOT NULL,
 CONSTRAINT [PK_M_ModelTypeEquipment] PRIMARY KEY CLUSTERED 
(
	[ModelTypeEquipmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_ModelTypeTempEngine]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_ModelTypeTempEngine](
	[ModelTypeTempDetailID] [int] IDENTITY(1,1) NOT NULL,
	[ModelTypeTempRowID] [int] NOT NULL,
	[SS] [nvarchar](100) NOT NULL,
	[DISP] [nvarchar](100) NOT NULL,
	[COMCARB] [nvarchar](100) NOT NULL,
	[Grade] [nvarchar](100) NOT NULL,
	[Mis] [nvarchar](100) NOT NULL,
	[ModelCode01] [nvarchar](100) NOT NULL,
	[ModelCode02] [nvarchar](100) NOT NULL,
	[ModelCode03] [nvarchar](100) NOT NULL,
	[ModelCode04] [nvarchar](100) NOT NULL,
	[ModelCode05] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_M_ModelTypeTempDetail] PRIMARY KEY CLUSTERED 
(
	[ModelTypeTempDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_ModelTypeTempEquipment]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_ModelTypeTempEquipment](
	[ModelTypeTempEquipmentID] [int] IDENTITY(1,1) NOT NULL,
	[ModelTypeTempRowID] [int] NOT NULL,
	[EquipmentName] [nvarchar](100) NOT NULL,
	[EquipmentValue] [nvarchar](100) NOT NULL,
	[Sequence] [int] NOT NULL,
 CONSTRAINT [PK_M_ModelTypeTempEquipment] PRIMARY KEY CLUSTERED 
(
	[ModelTypeTempEquipmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_ModelTypeTempRow]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_ModelTypeTempRow](
	[ModelTypeTempRowID] [int] IDENTITY(1,1) NOT NULL,
	[ModelTypeTempSheetID] [int] NOT NULL,
	[RowNo] [int] NOT NULL,
	[PNo] [nvarchar](100) NOT NULL,
	[VIN] [nvarchar](100) NULL,
	[ErrorMessage] [nvarchar](max) NULL,
 CONSTRAINT [PK_M_ModelTypeTempRow] PRIMARY KEY CLUSTERED 
(
	[ModelTypeTempRowID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_ModelTypeTempSheet]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_ModelTypeTempSheet](
	[ModelTypeTempSheetID] [int] IDENTITY(1,1) NOT NULL,
	[ModelTypeUploadID] [int] NOT NULL,
	[SheetNo] [int] NOT NULL,
	[YM] [nvarchar](100) NOT NULL,
	[Model] [nvarchar](100) NOT NULL,
	[Door] [nvarchar](100) NOT NULL,
	[Engine] [nvarchar](100) NOT NULL,
	[Plant] [nvarchar](100) NOT NULL,
	[Status] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_M_ModelTypeTemp] PRIMARY KEY CLUSTERED 
(
	[ModelTypeTempSheetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_ModelTypeTempType]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_ModelTypeTempType](
	[ModelTypeTempTypeID] [int] IDENTITY(1,1) NOT NULL,
	[ModelTypeTempRowID] [int] NOT NULL,
	[ModelType] [nvarchar](100) NOT NULL,
	[ModelCode] [nvarchar](100) NOT NULL,
	[Sequence] [int] NOT NULL,
 CONSTRAINT [PK_M_ModelTypeTempType] PRIMARY KEY CLUSTERED 
(
	[ModelTypeTempTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_ModelTypeUpload]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_ModelTypeUpload](
	[ModelTypeUploadID] [int] IDENTITY(1,1) NOT NULL,
	[CompanyID] [int] NULL,
	[ModelID] [int] NULL,
	[YMID] [int] NULL,
	[Version] [nvarchar](3) NULL,
	[Door] [nvarchar](50) NULL,
	[Engine] [nvarchar](50) NULL,
	[I_ModelTypePath] [int] NULL,
	[I_ModelTypeFileNameOriginal] [nvarchar](200) NULL,
	[I_ModelTypeFileNameSystem] [nvarchar](200) NULL,
	[I_ModelTypeResultPath] [int] NULL,
	[I_ModelTypeResultFile] [nvarchar](200) NULL,
	[O_ModelTypePath] [int] NULL,
	[O_ModelTypeFile] [nvarchar](200) NULL,
	[UploadStatusID] [int] NULL,
	[Result] [nvarchar](100) NULL,
	[UploadedBy] [nvarchar](50) NOT NULL,
	[UploadedDate] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](50) NOT NULL,
	[UpdatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_M_ModelTypeUpload] PRIMARY KEY CLUSTERED 
(
	[ModelTypeUploadID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_PartMaker]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_PartMaker](
	[PartMakerID] [int] IDENTITY(1,1) NOT NULL,
	[CompanyID] [int] NOT NULL,
	[PartNumber] [nvarchar](20) NOT NULL,
	[MakerCode] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_M_PartCapacity] PRIMARY KEY CLUSTERED 
(
	[PartMakerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_Permission]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_Permission](
	[PermissionID] [int] NOT NULL,
	[MenuID] [int] NOT NULL,
	[PermissionName] [nvarchar](255) NOT NULL,
	[ControlName] [nvarchar](255) NULL,
	[ActionName] [nvarchar](255) NULL,
 CONSTRAINT [PK_M_Permission] PRIMARY KEY CLUSTERED 
(
	[PermissionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_Region]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_Region](
	[RegionID] [int] IDENTITY(1,1) NOT NULL,
	[RegionName] [nvarchar](20) NOT NULL,
	[CreatedBy] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](50) NOT NULL,
	[UpdatedDate] [datetime] NOT NULL,
	[StatusID] [int] NOT NULL,
 CONSTRAINT [PK_M_Region] PRIMARY KEY CLUSTERED 
(
	[RegionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_Shipment]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_Shipment](
	[ShipmentID] [int] IDENTITY(1,1) NOT NULL,
	[ShipmentName] [nvarchar](50) NOT NULL,
	[CreatedBy] [nvarchar](20) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](20) NOT NULL,
	[UpdatedDate] [datetime] NOT NULL,
	[StatusID] [int] NOT NULL,
 CONSTRAINT [PK_M_Shipment] PRIMARY KEY CLUSTERED 
(
	[ShipmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_User]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_User](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](20) NOT NULL,
	[DomainID] [int] NOT NULL,
	[Initial] [nvarchar](20) NULL,
	[Firstname] [nvarchar](50) NULL,
	[Lastname] [nvarchar](50) NULL,
	[Company] [nvarchar](255) NULL,
	[Department] [nvarchar](255) NULL,
	[PlantLocation] [nvarchar](255) NULL,
	[Email] [nvarchar](50) NULL,
	[ContactNo] [nvarchar](50) NULL,
	[CompanyID] [int] NOT NULL,
	[UserRoleID] [int] NOT NULL,
	[CreatedBy] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](50) NOT NULL,
	[UpdatedDate] [datetime] NOT NULL,
	[LastLoginDate] [datetime] NULL,
	[StatusID] [int] NOT NULL,
 CONSTRAINT [PK_M_UserProfile] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_UserRole]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_UserRole](
	[UserRoleID] [int] IDENTITY(1,1) NOT NULL,
	[UserRoleName] [nvarchar](50) NOT NULL,
	[RoleTypeID] [int] NULL,
	[CreatedBy] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](50) NOT NULL,
	[UpdatedDate] [datetime] NOT NULL,
	[StatusID] [int] NOT NULL,
 CONSTRAINT [PK_M_UserRole] PRIMARY KEY CLUSTERED 
(
	[UserRoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_UserRolePermission]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_UserRolePermission](
	[UserRolePermissionID] [int] IDENTITY(1,1) NOT NULL,
	[UserRoleID] [int] NOT NULL,
	[PermissionID] [int] NOT NULL,
	[CreatedBy] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](50) NOT NULL,
	[UpdatedDate] [datetime] NOT NULL,
	[StatusID] [int] NOT NULL,
 CONSTRAINT [PK_M_UserRolePermission] PRIMARY KEY CLUSTERED 
(
	[UserRolePermissionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_YM]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_YM](
	[YMID] [int] IDENTITY(1,1) NOT NULL,
	[YMName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_M_YM] PRIMARY KEY CLUSTERED 
(
	[YMID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_LogisticLeadTime]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_LogisticLeadTime](
	[LogisticLeadTimeID] [int] IDENTITY(1,1) NOT NULL,
	[Month] [int] NOT NULL,
	[Year] [nchar](10) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[ActiveStatus_DayWise] [int] NULL,
	[ActiveStatus] [int] NOT NULL,
 CONSTRAINT [PK_T_LogisticLT] PRIMARY KEY CLUSTERED 
(
	[LogisticLeadTimeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_LogisticLeadTimeDay]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_LogisticLeadTimeDay](
	[LogisticLeadTimeDayID] [int] IDENTITY(1,1) NOT NULL,
	[LogisticLeadTimeDayUploadID] [int] NOT NULL,
	[O_LTPath] [int] NULL,
	[O_LTFileName] [nvarchar](200) NULL,
	[PlantStatus] [int] NOT NULL,
	[UploadedBy] [nvarchar](50) NOT NULL,
	[UploadedDate] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](50) NOT NULL,
	[UpdatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_T_LogisticLeadTimeDay] PRIMARY KEY CLUSTERED 
(
	[LogisticLeadTimeDayID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_LogisticLeadTimeDayDetail]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_LogisticLeadTimeDayDetail](
	[LogisticLeadTimeDayDetailID] [int] IDENTITY(1,1) NOT NULL,
	[LogisticLeadTimeDayKiID] [int] NOT NULL,
	[SupplyRegion] [nvarchar](50) NULL,
	[SupplyGenpo] [nvarchar](50) NULL,
	[ReceiveRegion] [nvarchar](50) NOT NULL,
	[ReceiveGenpo] [nvarchar](50) NOT NULL,
	[Transportation] [nvarchar](50) NOT NULL,
	[ReceiveMonth] [datetime] NOT NULL,
	[WorkingDays] [int] NOT NULL,
 CONSTRAINT [PK_T_LogisticLeadTimeDayDetail] PRIMARY KEY CLUSTERED 
(
	[LogisticLeadTimeDayDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_LogisticLeadTimeDayKi]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_LogisticLeadTimeDayKi](
	[LogisticLeadTimeDayKiID] [int] IDENTITY(1,1) NOT NULL,
	[LogisticLeadTimeDayID] [int] NOT NULL,
	[Ki] [int] NOT NULL,
 CONSTRAINT [PK_T_LogisticLeadTimeDayKi] PRIMARY KEY CLUSTERED 
(
	[LogisticLeadTimeDayKiID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_LogisticLeadTimeDayTempRow]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_LogisticLeadTimeDayTempRow](
	[LogisticLeadTimeDayTempRowID] [int] IDENTITY(1,1) NOT NULL,
	[LogisticLeadTimeDayTempSheetID] [int] NOT NULL,
	[RowNo] [int] NOT NULL,
	[SupplyRegion] [nvarchar](100) NOT NULL,
	[SupplyGenpo] [nvarchar](100) NOT NULL,
	[ReceiveRegion] [nvarchar](100) NOT NULL,
	[ReceiveGenpo] [nvarchar](100) NOT NULL,
	[Transportation] [nvarchar](100) NOT NULL,
	[ReceiveMonth] [nvarchar](100) NOT NULL,
	[WorkingDays] [nvarchar](100) NOT NULL,
	[ErrorMessage] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_T_LogisticLeadTimeDayTempRow] PRIMARY KEY CLUSTERED 
(
	[LogisticLeadTimeDayTempRowID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_LogisticLeadTimeDayTempSheet]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_LogisticLeadTimeDayTempSheet](
	[LogisticLeadTimeDayTempSheetID] [int] IDENTITY(1,1) NOT NULL,
	[LogisticLeadTimeDayUploadID] [int] NOT NULL,
	[SheetNo] [int] NOT NULL,
	[Month] [nvarchar](100) NOT NULL,
	[Year] [nvarchar](100) NOT NULL,
	[Ki] [nvarchar](100) NOT NULL,
	[CompanyName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_T_LogisticLeadTimeDayTempSheet] PRIMARY KEY CLUSTERED 
(
	[LogisticLeadTimeDayTempSheetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_LogisticLeadTimeDayUpload]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_LogisticLeadTimeDayUpload](
	[LogisticLeadTimeDayUploadID] [int] IDENTITY(1,1) NOT NULL,
	[LogisticLeadTimeID] [int] NOT NULL,
	[CompanyID] [int] NOT NULL,
	[KiString] [nvarchar](50) NOT NULL,
	[UploadVersion] [int] NOT NULL,
	[I_LTPath] [int] NULL,
	[I_LTFileNameOriginal] [nvarchar](200) NULL,
	[I_LTFileNameSystem] [nvarchar](200) NULL,
	[I_LTResultPath] [int] NULL,
	[I_LTResultFileName] [nvarchar](200) NULL,
	[UploadStatusID] [int] NOT NULL,
	[Result] [nvarchar](100) NULL,
	[UploadedBy] [nvarchar](50) NOT NULL,
	[UploadedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_T_LogisticLeadTimeDayUpload] PRIMARY KEY CLUSTERED 
(
	[LogisticLeadTimeDayUploadID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_LogisticLeadTimeDayWise]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_LogisticLeadTimeDayWise](
	[LogisticLeadTimeDayWiseID] [int] IDENTITY(1,1) NOT NULL,
	[LogisticLeadTimeDayWiseUploadID] [int] NOT NULL,
	[O_LTPath] [int] NULL,
	[O_LTFileName] [nvarchar](200) NULL,
	[PlantStatus] [int] NOT NULL,
	[AsOfDate_Month] [datetime] NOT NULL,
	[AsOfDate_Day] [datetime] NOT NULL,
	[UploadedBy] [nvarchar](50) NOT NULL,
	[UploadedDate] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](50) NOT NULL,
	[UpdatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_T_LogisticLeadTimeDayWise] PRIMARY KEY CLUSTERED 
(
	[LogisticLeadTimeDayWiseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_LogisticLeadTimeDayWiseDetail]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_LogisticLeadTimeDayWiseDetail](
	[LogisticLeadTimeDayWiseDetailID] [int] IDENTITY(1,1) NOT NULL,
	[LogisticLeadTimeDayWiseKiID] [int] NULL,
	[SupplyRegion] [nvarchar](50) NOT NULL,
	[SupplyGenpo] [nvarchar](50) NOT NULL,
	[ReceiveRegion] [nvarchar](50) NOT NULL,
	[ReceiveGenpo] [nvarchar](50) NOT NULL,
	[Transportation] [nvarchar](50) NOT NULL,
	[ReceiveMonth] [datetime] NOT NULL,
	[WorkingDays] [int] NOT NULL,
	[SupplyMonth01] [datetime] NOT NULL,
	[SupplyMonth02] [datetime] NULL,
	[SupplyMonth03] [datetime] NULL,
	[WorkingDay01] [int] NOT NULL,
	[WorkingDay02] [int] NULL,
	[WorkingDay03] [int] NULL,
 CONSTRAINT [PK_T_LogisticLeadTimeDayWiseDetail] PRIMARY KEY CLUSTERED 
(
	[LogisticLeadTimeDayWiseDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_LogisticLeadTimeDayWiseKi]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_LogisticLeadTimeDayWiseKi](
	[LogisticLeadTimeDayWiseKiID] [int] IDENTITY(1,1) NOT NULL,
	[LogisticLeadTimeDayWiseID] [int] NOT NULL,
	[Ki] [int] NOT NULL,
 CONSTRAINT [PK_T_LogisticLeadTimeDayWiseKi] PRIMARY KEY CLUSTERED 
(
	[LogisticLeadTimeDayWiseKiID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_LogisticLeadTimeDayWiseTempRow]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_LogisticLeadTimeDayWiseTempRow](
	[LogisticLeadTimeDayWiseTempRowID] [int] IDENTITY(1,1) NOT NULL,
	[LogisticLeadTimeDayWiseTempSheetID] [int] NOT NULL,
	[RowNo] [int] NULL,
	[SupplyRegion] [nvarchar](100) NOT NULL,
	[SupplyGenpo] [nvarchar](100) NOT NULL,
	[ReceiveRegion] [nvarchar](100) NOT NULL,
	[ReceiveGenpo] [nvarchar](100) NOT NULL,
	[Transportation] [nvarchar](100) NOT NULL,
	[ReceiveMonth] [nvarchar](100) NOT NULL,
	[WorkingDays] [nvarchar](100) NOT NULL,
	[SupplyMonth01] [nvarchar](100) NOT NULL,
	[SupplyMonth02] [nvarchar](100) NULL,
	[SupplyMonth03] [nvarchar](100) NULL,
	[WorkingDay01] [nvarchar](100) NOT NULL,
	[WorkingDay02] [nvarchar](100) NULL,
	[WorkingDay03] [nvarchar](100) NULL,
	[ErrorMessage] [nvarchar](max) NULL,
 CONSTRAINT [PK_T_LogisticLeadTimeDayWiseTempRow] PRIMARY KEY CLUSTERED 
(
	[LogisticLeadTimeDayWiseTempRowID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_LogisticLeadTimeDayWiseTempSheet]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_LogisticLeadTimeDayWiseTempSheet](
	[LogisticLeadTimeDayWiseTempSheetID] [int] IDENTITY(1,1) NOT NULL,
	[LogisticLeadTimeDayWiseUploadID] [int] NOT NULL,
	[SheetNo] [int] NULL,
	[Month] [nvarchar](100) NOT NULL,
	[Year] [nvarchar](100) NOT NULL,
	[Ki] [nvarchar](100) NOT NULL,
	[CompanyName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_T_LogisticLeadTimeDayWiseTempSheet] PRIMARY KEY CLUSTERED 
(
	[LogisticLeadTimeDayWiseTempSheetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_LogisticLeadTimeDayWiseUpload]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_LogisticLeadTimeDayWiseUpload](
	[LogisticLeadTimeDayWiseUploadID] [int] IDENTITY(1,1) NOT NULL,
	[LogisticLeadTimeID] [int] NOT NULL,
	[CompanyID] [int] NOT NULL,
	[KiString] [nvarchar](50) NOT NULL,
	[UploadVersion] [int] NOT NULL,
	[I_LTPath] [int] NULL,
	[I_LTFileNameOriginal] [nvarchar](200) NULL,
	[I_LTFileNameSystem] [nvarchar](200) NULL,
	[I_LTResultPath] [int] NULL,
	[I_LTResultFileName] [nvarchar](200) NULL,
	[UploadStatusID] [int] NOT NULL,
	[Result] [nvarchar](100) NULL,
	[UploadedBy] [nvarchar](50) NOT NULL,
	[UploadedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_T_LogisticLeadTimeDayWiseUpload] PRIMARY KEY CLUSTERED 
(
	[LogisticLeadTimeDayWiseUploadID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_LogisticLeadTimeMonth]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_LogisticLeadTimeMonth](
	[LogisticLeadTimeMonthID] [int] IDENTITY(1,1) NOT NULL,
	[LogisticLeadTimeMonthUploadID] [int] NOT NULL,
	[O_LTPath] [int] NULL,
	[O_LTFileName] [nvarchar](200) NULL,
	[PlantStatus] [int] NOT NULL,
	[UploadedBy] [nvarchar](50) NOT NULL,
	[UploadedDate] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](50) NOT NULL,
	[UpdatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_T_LogisticLeadTimeMonth] PRIMARY KEY CLUSTERED 
(
	[LogisticLeadTimeMonthID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_LogisticLeadTimeMonthDetail]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_LogisticLeadTimeMonthDetail](
	[LogisticLeadTimeMonthDetailID] [int] IDENTITY(1,1) NOT NULL,
	[LogisticLeadTimeMonthKi] [int] NOT NULL,
	[ImportRegion] [int] NULL,
	[ImportPlant] [nvarchar](100) NULL,
	[ShipAir] [nvarchar](100) NOT NULL,
	[OceanLT] [int] NOT NULL,
	[InlandLT] [int] NOT NULL,
 CONSTRAINT [PK_T_LogisticLeadTimeMonthDetail] PRIMARY KEY CLUSTERED 
(
	[LogisticLeadTimeMonthDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_LogisticLeadTimeMonthKi]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_LogisticLeadTimeMonthKi](
	[LogisticLeadTimeMonthKi] [int] IDENTITY(1,1) NOT NULL,
	[LogisticLeadTimeMonthID] [int] NOT NULL,
	[Ki] [int] NOT NULL,
 CONSTRAINT [PK_T_LogisticLeadTimeMonthKi] PRIMARY KEY CLUSTERED 
(
	[LogisticLeadTimeMonthKi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_LogisticLeadTimeMonthTempRow]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_LogisticLeadTimeMonthTempRow](
	[LogisticLeadTimeMonthTempRowID] [int] IDENTITY(1,1) NOT NULL,
	[LogisticLeadTimeMonthTempSheetID] [int] NOT NULL,
	[RowNo] [int] NOT NULL,
	[ExportRegion] [nvarchar](100) NOT NULL,
	[ExportPlant] [nvarchar](100) NOT NULL,
	[ImportRegion] [nvarchar](100) NOT NULL,
	[ImportPlant] [nvarchar](100) NOT NULL,
	[ShipAir] [nvarchar](100) NOT NULL,
	[OceanLT] [nvarchar](100) NOT NULL,
	[InlandLT] [nvarchar](100) NOT NULL,
	[TotalLT] [nvarchar](100) NOT NULL,
	[ErrorMessage] [nvarchar](max) NULL,
 CONSTRAINT [PK_T_LogisticLeadTimeMonthTempRow] PRIMARY KEY CLUSTERED 
(
	[LogisticLeadTimeMonthTempRowID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_LogisticLeadTimeMonthTempSheet]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_LogisticLeadTimeMonthTempSheet](
	[LogisticLeadTimeMonthTempSheetID] [int] IDENTITY(1,1) NOT NULL,
	[LogisticLeadTimeMonthUploadID] [int] NOT NULL,
	[SheetNo] [int] NOT NULL,
	[Month] [nvarchar](100) NOT NULL,
	[Year] [nvarchar](100) NOT NULL,
	[Ki] [nvarchar](100) NOT NULL,
	[CompanyName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_T_LogisticLeadTimeMonthTempSheet] PRIMARY KEY CLUSTERED 
(
	[LogisticLeadTimeMonthTempSheetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_LogisticLeadTimeMonthUpload]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_LogisticLeadTimeMonthUpload](
	[LogisticLeadTimeMonthUploadID] [int] IDENTITY(1,1) NOT NULL,
	[LogisticLeadTimeID] [int] NOT NULL,
	[CompanyID] [int] NOT NULL,
	[KiString] [nvarchar](50) NULL,
	[UploadVersion] [int] NOT NULL,
	[I_LTPath] [int] NULL,
	[I_LTFileNameOriginal] [nvarchar](200) NULL,
	[I_LTFileNameSystem] [nvarchar](200) NULL,
	[I_LTResultPath] [int] NULL,
	[I_LTResultFileName] [nvarchar](200) NULL,
	[UploadStatusID] [int] NOT NULL,
	[Result] [nvarchar](100) NULL,
	[UploadedBy] [nvarchar](50) NOT NULL,
	[UploadedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_T_LogisticLeadTimeMonthUpload] PRIMARY KEY CLUSTERED 
(
	[LogisticLeadTimeMonthUploadID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_Maker]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_Maker](
	[MakerCode] [nvarchar](10) NOT NULL,
	[SeihanMonth] [int] NOT NULL,
	[SeihanYear] [int] NOT NULL,
	[MakerName] [nvarchar](100) NOT NULL,
	[CreatedBy] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](50) NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_M_Maker] PRIMARY KEY CLUSTERED 
(
	[MakerCode] ASC,
	[SeihanMonth] ASC,
	[SeihanYear] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_Part]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_Part](
	[PartNumber] [nvarchar](20) NOT NULL,
	[SeihanMonth] [int] NOT NULL,
	[SeihanYear] [int] NOT NULL,
	[PartName] [nvarchar](30) NOT NULL,
	[CreatedBy] [nvarchar](20) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](20) NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_T_Part] PRIMARY KEY CLUSTERED 
(
	[PartNumber] ASC,
	[SeihanMonth] ASC,
	[SeihanYear] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_PartCapacityDetail]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_PartCapacityDetail](
	[PartCapacityDetailID] [int] IDENTITY(1,1) NOT NULL,
	[PartCapacityHeaderID] [int] NOT NULL,
	[PartMakerID] [int] NOT NULL,
	[ExclusiveCommon] [int] NULL,
	[LT] [float] NULL,
	[Ki] [int] NOT NULL,
	[CapMonth] [int] NOT NULL,
	[PlannedVol] [int] NULL,
	[StdCap] [int] NULL,
	[MaxCap] [int] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) NOT NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](50) NULL,
 CONSTRAINT [PK_CapacityCheckDetail] PRIMARY KEY CLUSTERED 
(
	[PartCapacityDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_PartCapacityErrorRow]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_PartCapacityErrorRow](
	[PartCapacityErrorRowID] [int] IDENTITY(1,1) NOT NULL,
	[PartCapacityUploadHistoryID] [int] NULL,
	[RowNumber] [int] NULL,
	[ErrorMessage] [nvarchar](max) NULL,
 CONSTRAINT [PK_T_PartCapacityErrorRow] PRIMARY KEY CLUSTERED 
(
	[PartCapacityErrorRowID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_PartCapacityHeader]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_PartCapacityHeader](
	[PartCapacityHeaderID] [int] IDENTITY(1,1) NOT NULL,
	[CompanyID] [int] NOT NULL,
	[SeihanMonth] [int] NOT NULL,
	[SeihanYear] [int] NOT NULL,
 CONSTRAINT [PK_CapacityCheckHeader] PRIMARY KEY CLUSTERED 
(
	[PartCapacityHeaderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_PartCapacityTemp]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_PartCapacityTemp](
	[PartCapacityTempID] [int] IDENTITY(1,1) NOT NULL,
	[PartCapacityUploadHistoryID] [int] NULL,
	[RowNumber] [int] NULL,
	[Plant] [nvarchar](50) NULL,
	[SeihanMonth] [nvarchar](50) NULL,
	[SeihanYear] [nvarchar](50) NULL,
	[PartNumber] [nvarchar](50) NULL,
	[MakerCode] [nvarchar](50) NULL,
	[ExclusiveCommon] [nvarchar](50) NULL,
	[LT] [nvarchar](50) NULL,
	[Ki] [nvarchar](50) NULL,
	[CapMonth] [nvarchar](50) NULL,
	[PlannedVol] [nvarchar](50) NULL,
	[StdCap] [nvarchar](50) NULL,
	[MaxCap] [nvarchar](50) NULL,
 CONSTRAINT [PK_T_PartCapacityTemp] PRIMARY KEY CLUSTERED 
(
	[PartCapacityTempID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_PartCapacityUploadHistory]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_PartCapacityUploadHistory](
	[PartCapacityUploadHistoryID] [int] IDENTITY(1,1) NOT NULL,
	[CompanyID] [int] NULL,
	[SeihanMonth] [int] NULL,
	[SeihanYear] [int] NULL,
	[FileManagerID] [int] NULL,
	[FileName] [nvarchar](200) NULL,
	[FileNameSystem] [nvarchar](200) NULL,
	[UploadedDate] [datetime] NOT NULL,
	[UploadedBy] [nvarchar](50) NOT NULL,
	[UploadStatus] [int] NULL,
	[TotalRecords] [int] NULL,
	[SuccessRecords] [int] NULL,
	[FailRecords] [int] NULL,
 CONSTRAINT [PK_T_CapacityCheckUploadHistory] PRIMARY KEY CLUSTERED 
(
	[PartCapacityUploadHistoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_PartDemand]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_PartDemand](
	[PartDemandID] [int] IDENTITY(1,1) NOT NULL,
	[UploadHeaderID] [int] NOT NULL,
	[UploadDetailID] [int] NOT NULL,
	[FileLineNo] [int] NOT NULL,
	[GroupType] [nvarchar](30) NOT NULL,
	[SupplyRegion] [nvarchar](15) NOT NULL,
	[SupplyPlant] [nvarchar](15) NOT NULL,
	[BasicPartNumber] [nvarchar](15) NOT NULL,
	[PartName] [nvarchar](30) NOT NULL,
	[MLCode] [nvarchar](10) NOT NULL,
	[MLName] [nvarchar](100) NOT NULL,
	[ReceivePlant] [nvarchar](15) NULL,
	[AFRegion] [nvarchar](15) NULL,
	[AFPlant] [nvarchar](15) NULL,
	[Model] [nvarchar](30) NULL,
	[SalesYM] [nvarchar](3) NULL,
	[EngType] [nvarchar](25) NULL,
	[Disp] [nvarchar](4) NULL,
	[Head] [nvarchar](25) NULL,
	[TMType] [nvarchar](20) NULL,
	[TMClass] [nvarchar](25) NULL,
	[Drive] [nvarchar](3) NULL,
	[MOTCap] [nvarchar](10) NULL,
	[KeyCode] [nvarchar](100) NULL,
	[BOMCodeM] [nvarchar](4) NULL,
	[BOMCodeT] [nvarchar](3) NULL,
	[ProductionDate] [nvarchar](6) NOT NULL,
	[ProductionQty] [int] NOT NULL,
	[OperationMonth] [nvarchar](6) NOT NULL,
	[Space1] [nvarchar](100) NULL,
	[Space2] [nvarchar](100) NULL,
	[Space3] [nvarchar](100) NULL,
 CONSTRAINT [PK_T_PartDemand1] PRIMARY KEY CLUSTERED 
(
	[PartDemandID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_PartDemandDetail]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_PartDemandDetail](
	[PartDemandDetailID] [int] IDENTITY(1,1) NOT NULL,
	[PartDemandHeaderID] [int] NULL,
	[PartMakerID] [int] NULL,
	[Ki] [int] NULL,
	[DemandMonth] [int] NULL,
	[Demand] [int] NULL,
 CONSTRAINT [PK_T_PartDemandDetail] PRIMARY KEY CLUSTERED 
(
	[PartDemandDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_PartDemandFileUploadDetail]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_PartDemandFileUploadDetail](
	[UploadDetailID] [int] IDENTITY(1,1) NOT NULL,
	[UploadHeaderID] [int] NOT NULL,
	[FileManagerID] [int] NULL,
	[FileNameOriginal] [nvarchar](100) NULL,
	[FileSize] [int] NULL,
	[TotalRecords] [int] NULL,
	[SuccessRecords] [int] NULL,
	[FailRecords] [int] NULL,
	[Progress] [decimal](18, 2) NULL,
	[ProcessStart] [datetime] NULL,
	[ProcessEnd] [datetime] NULL,
	[ProcessID] [nvarchar](20) NULL,
	[ProcessName] [nvarchar](30) NULL,
	[SubProcessStatusID] [int] NULL,
	[FileNameError] [nvarchar](100) NULL,
 CONSTRAINT [PK_T_PartDemand_FileUploadDetail] PRIMARY KEY CLUSTERED 
(
	[UploadDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_PartDemandFileUploadHeader]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_PartDemandFileUploadHeader](
	[UploadHeaderID] [int] IDENTITY(1,1) NOT NULL,
	[SeihanMonth] [int] NOT NULL,
	[SeihanYear] [int] NOT NULL,
	[Ki] [int] NOT NULL,
	[CompanyID] [int] NOT NULL,
	[FileType] [nvarchar](5) NOT NULL,
	[Version] [int] NOT NULL,
	[TotalRecords] [int] NULL,
	[SuccessRecords] [int] NULL,
	[FailRecords] [int] NULL,
	[MainProcessStatusID] [int] NULL,
	[UploadedDate] [datetime] NULL,
	[UploadedBy] [nvarchar](20) NULL,
	[SendMailDate] [datetime] NULL,
	[CancelDate] [datetime] NULL,
	[CancelBy] [nvarchar](20) NULL,
 CONSTRAINT [PK_T_PartDemand_FileUploadHeader] PRIMARY KEY CLUSTERED 
(
	[UploadHeaderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_PartDemandHeader]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_PartDemandHeader](
	[PartDemandHeaderID] [int] NOT NULL,
	[CompanyID] [int] NULL,
	[SeihanMonth] [int] NULL,
	[SeihanYear] [int] NULL,
 CONSTRAINT [PK_T_PartDemandHeader] PRIMARY KEY CLUSTERED 
(
	[PartDemandHeaderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_PartDemandTemp]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_PartDemandTemp](
	[PartDemandID] [int] IDENTITY(1,1) NOT NULL,
	[UploadHeaderID] [int] NOT NULL,
	[UploadDetailID] [int] NOT NULL,
	[FileLineNo] [int] NOT NULL,
	[GroupType] [nvarchar](30) NOT NULL,
	[SupplyRegion] [nvarchar](15) NOT NULL,
	[SupplyPlant] [nvarchar](15) NOT NULL,
	[BasicPartNumber] [nvarchar](15) NOT NULL,
	[PartName] [nvarchar](30) NOT NULL,
	[MLCode] [nvarchar](10) NOT NULL,
	[MLName] [nvarchar](100) NOT NULL,
	[ReceivePlant] [nvarchar](15) NULL,
	[AFRegion] [nvarchar](15) NULL,
	[AFPlant] [nvarchar](15) NULL,
	[Model] [nvarchar](30) NULL,
	[SalesYM] [nvarchar](3) NULL,
	[EngType] [nvarchar](25) NULL,
	[Disp] [nvarchar](4) NULL,
	[Head] [nvarchar](25) NULL,
	[TMType] [nvarchar](20) NULL,
	[TMClass] [nvarchar](25) NULL,
	[Drive] [nvarchar](3) NULL,
	[MOTCap] [nvarchar](10) NULL,
	[KeyCode] [nvarchar](100) NULL,
	[BOMCodeM] [nvarchar](4) NULL,
	[BOMCodeT] [nvarchar](3) NULL,
	[ProductionDate] [nvarchar](6) NOT NULL,
	[ProductionQty] [int] NOT NULL,
	[OperationMonth] [nvarchar](6) NOT NULL,
	[Space1] [nvarchar](100) NULL,
	[Space2] [nvarchar](100) NULL,
	[Space3] [nvarchar](100) NULL,
	[Error] [nvarchar](200) NULL,
 CONSTRAINT [PK_T_PartDemandTemp] PRIMARY KEY CLUSTERED 
(
	[PartDemandID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_PartDemandTempUploadError]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_PartDemandTempUploadError](
	[UploadDetailID] [int] NOT NULL,
	[FileLineNo] [int] NOT NULL,
	[ErrorMessage] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_T_PartDemandTempUploadError] PRIMARY KEY CLUSTERED 
(
	[UploadDetailID] ASC,
	[FileLineNo] ASC,
	[ErrorMessage] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_ProductionPlan]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_ProductionPlan](
	[ProductionPlanID] [int] NOT NULL,
	[SeihanMonth] [int] NULL,
	[SeihanYear] [int] NULL,
 CONSTRAINT [PK_T_ProductionPlan] PRIMARY KEY CLUSTERED 
(
	[ProductionPlanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_ProductionPlanAO]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_ProductionPlanAO](
	[ProductionPlanAOID] [int] NOT NULL,
	[ProductionPlanID] [int] NULL,
	[Version] [int] NULL,
	[DraftConsolidateBy] [nvarchar](50) NULL,
	[DraftConsolidateDate] [datetime] NULL,
	[FinalConsolidateBy] [nvarchar](50) NULL,
	[FinalConsolidateDate] [datetime] NULL,
	[O_ProductionPlantMTSubmitPath] [nvarchar](50) NULL,
	[O_ProductionPlantMTSubmitFile] [nvarchar](50) NULL,
	[O_ProductionPlantGraphPath] [nvarchar](50) NULL,
	[O_ProductionPlantGraphFile] [nvarchar](50) NULL,
 CONSTRAINT [PK_T_ProductionPlanATAI] PRIMARY KEY CLUSTERED 
(
	[ProductionPlanAOID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_ProductionPlanAOMT]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_ProductionPlanAOMT](
	[ProductionPlanAOMTID] [int] NOT NULL,
	[ProductionPlanAOID] [int] NULL,
	[ModelTypeID] [int] NULL,
 CONSTRAINT [PK_T_ProductionPlanAOMT] PRIMARY KEY CLUSTERED 
(
	[ProductionPlanAOMTID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_ProductionPlanAOMTDetail]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_ProductionPlanAOMTDetail](
	[ProductionPlanAOMTDetailID] [int] NOT NULL,
	[ProductionPlanAOID] [int] NULL,
	[PlantID] [int] NULL,
	[UploadVersion] [int] NULL,
	[AOVersion] [int] NULL,
	[PlantStatus] [int] NULL,
 CONSTRAINT [PK_T_ProductionPlanAOMTDetail] PRIMARY KEY CLUSTERED 
(
	[ProductionPlanAOMTDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_ProductionPlanAOOT]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_ProductionPlanAOOT](
	[ProductionPlanAOOTID] [int] NOT NULL,
	[ProductionPlanAOID] [int] NULL,
	[PlantOTID] [int] NULL,
 CONSTRAINT [PK_T_ProductionPlanAOOT] PRIMARY KEY CLUSTERED 
(
	[ProductionPlanAOOTID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_ProductionPlanAOSUBO]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_ProductionPlanAOSUBO](
	[ProductionPlanAOSUBOID] [int] NOT NULL,
	[ProductionPlanAOID] [int] NULL,
	[PlantID] [int] NULL,
	[UploadVersion] [int] NULL,
	[AOVersion] [int] NULL,
	[PlantStatus] [int] NULL,
 CONSTRAINT [PK_T_ProductionPlanAOSUBO] PRIMARY KEY CLUSTERED 
(
	[ProductionPlanAOSUBOID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_ProductionPlanCompare]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_ProductionPlanCompare](
	[ProductionPlanCompareID] [int] NOT NULL,
	[ProductionPlanAOID01] [int] NULL,
	[ProductionPlanAOID02] [int] NULL,
	[AdditionalCondition] [nvarchar](500) NULL,
	[DownloadedBy] [nvarchar](50) NULL,
	[DownloadedDate] [datetime] NULL,
 CONSTRAINT [PK_T_ProductionPlanCompare] PRIMARY KEY CLUSTERED 
(
	[ProductionPlanCompareID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_ProductionPlanDetail]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_ProductionPlanDetail](
	[ProductionPlantDetailID] [int] NOT NULL,
	[ProductionPlanUploadPlantID] [int] NULL,
 CONSTRAINT [PK_ProductionPlanDetail] PRIMARY KEY CLUSTERED 
(
	[ProductionPlantDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_ProductionPlanMT]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_ProductionPlanMT](
	[ProductionPlantMTID] [int] NOT NULL,
	[ProductionPlanUploadPlantID] [int] NULL,
 CONSTRAINT [PK_ProductionPlanMT] PRIMARY KEY CLUSTERED 
(
	[ProductionPlantMTID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_ProductionPlanMTTemp]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_ProductionPlanMTTemp](
	[ProdutionPlanMTTempID] [int] NOT NULL,
	[ProductionPlanUploadID] [int] NULL,
	[Plant] [nvarchar](50) NULL,
	[SeihanMonth] [nvarchar](50) NULL,
	[Ki] [int] NULL,
 CONSTRAINT [PK_T_ProductionPlanMTTemp] PRIMARY KEY CLUSTERED 
(
	[ProdutionPlanMTTempID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_ProductionPlanMTTempDetail]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_ProductionPlanMTTempDetail](
	[ProductionPlanMTTempDetailID] [int] NOT NULL,
	[ProductionPlanMTTempID] [int] NULL,
	[AFRegion] [nvarchar](50) NULL,
	[AFPlant] [nvarchar](50) NULL,
	[Model] [nvarchar](50) NULL,
	[MY] [nvarchar](50) NULL,
	[CountryCode] [nvarchar](50) NULL,
	[SaleCountry] [nvarchar](50) NULL,
	[EngineType] [nvarchar](50) NULL,
	[Displacement] [int] NULL,
	[Head] [nvarchar](50) NULL,
	[TMClass] [nvarchar](50) NULL,
	[Drive] [nvarchar](50) NULL,
	[MOTCAP] [nvarchar](50) NULL,
	[KeyCode] [nvarchar](50) NULL,
	[ModelCode] [nvarchar](50) NULL,
	[TypeCode] [nvarchar](50) NULL,
	[DummyKey] [nvarchar](50) NULL,
	[Remark] [nvarchar](50) NULL,
	[Temp01] [nvarchar](50) NULL,
	[HCode] [nvarchar](50) NULL,
	[Apr] [int] NULL,
	[May] [int] NULL,
	[Jun] [int] NULL,
	[Jul] [int] NULL,
	[Aug] [int] NULL,
	[Sep] [int] NULL,
	[Oct] [int] NULL,
	[Nov] [int] NULL,
	[Dec] [int] NULL,
	[Jan] [int] NULL,
	[Feb] [int] NULL,
	[Mar] [int] NULL,
	[FirstHalf] [int] NULL,
	[SecoundHalf] [int] NULL,
	[Total] [int] NULL,
 CONSTRAINT [PK_T_ProductionPlanMTTempDetail] PRIMARY KEY CLUSTERED 
(
	[ProductionPlanMTTempDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_ProductionPlanPlant]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_ProductionPlanPlant](
	[ProductionPlanPlantID] [int] NOT NULL,
	[ProductionPlanID] [int] NULL,
	[PlantID] [int] NULL,
	[UploadVersion] [int] NULL,
	[AOVersion] [int] NULL,
	[PlantStatus] [int] NULL,
 CONSTRAINT [PK_T_ProductionPlanPlant] PRIMARY KEY CLUSTERED 
(
	[ProductionPlanPlantID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_ProductionPlanReopen]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_ProductionPlanReopen](
	[ProductionPlanReopenID] [int] NOT NULL,
	[ProductionPlanID] [int] NULL,
	[PlantID] [int] NULL,
	[FileName] [nvarchar](50) NULL,
	[Version] [int] NULL,
	[RequestedBy] [nvarchar](50) NULL,
	[RequestedDate] [datetime] NULL,
	[ApprovedBy] [nvarchar](50) NULL,
	[ApprovedDate] [datetime] NULL,
 CONSTRAINT [PK_T_ProductionPlanReopen] PRIMARY KEY CLUSTERED 
(
	[ProductionPlanReopenID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_ProductionPlantAODownload]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_ProductionPlantAODownload](
	[ProductionPlanAODownloadID] [int] NOT NULL,
	[ProductionPlanAOID] [int] NULL,
	[DownloadedBy] [nvarchar](50) NULL,
	[DownloadedDate] [datetime] NULL,
 CONSTRAINT [PK_T_ProductionPlantAODownload] PRIMARY KEY CLUSTERED 
(
	[ProductionPlanAODownloadID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_ProductionPlantDetailTemp]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_ProductionPlantDetailTemp](
	[ProdutionPlanDetailTempID] [int] NOT NULL,
	[ProductionPlanUploadID] [int] NULL,
 CONSTRAINT [PK_T_ProductionPlantDetailTemp] PRIMARY KEY CLUSTERED 
(
	[ProdutionPlanDetailTempID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_ProductionPlantDownload]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_ProductionPlantDownload](
	[ProductionPlanDownloadID] [int] NOT NULL,
	[ProductionPlanUploadPlantID] [int] NULL,
	[DownloadedBy] [nvarchar](50) NULL,
	[DownloadedDate] [datetime] NULL,
 CONSTRAINT [PK_T_ProductionPlantDownload] PRIMARY KEY CLUSTERED 
(
	[ProductionPlanDownloadID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_ProductionPlanUpload]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_ProductionPlanUpload](
	[ProductionPlanUploadID] [int] NOT NULL,
	[ProductionPlantID] [int] NULL,
	[I_ProductionMTPath] [nvarchar](50) NULL,
	[I_ProductionMTFile] [nvarchar](50) NULL,
	[I_ProductionMTNextPath] [nvarchar](50) NULL,
	[I_ProductionMTNextFile] [nvarchar](50) NULL,
	[I_ProductionDetailPath] [nvarchar](50) NULL,
	[I_ProductionDetailFile] [nvarchar](50) NULL,
	[I_ProductionDetailNextPath] [nvarchar](50) NULL,
	[I_ProductionDetailNextFile] [nvarchar](50) NULL,
	[O_ProductionDetailFile] [nvarchar](50) NULL,
	[O_ProductionMTPath] [nvarchar](50) NULL,
	[O_ProductionDetailNextFile] [nvarchar](50) NULL,
	[O_ProductionMTNextPath] [nvarchar](50) NULL,
	[O_ProductionMTFile] [nvarchar](50) NULL,
	[O_ProductionDetailPath] [nvarchar](50) NULL,
	[O_ProductionMTNextFile] [nvarchar](50) NULL,
	[O_ProductionDetailNextPath] [nvarchar](50) NULL,
	[Result] [nvarchar](50) NULL,
	[StatusFlagID] [int] NULL,
	[UploadedBy] [nvarchar](50) NULL,
	[UploadedDate] [datetime] NULL,
 CONSTRAINT [PK_T_ProductionPlanUpload] PRIMARY KEY CLUSTERED 
(
	[ProductionPlanUploadID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_ProductionPlanUploadPlant]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_ProductionPlanUploadPlant](
	[ProductionPlanUploadPlantID] [int] NOT NULL,
	[ProductionPlanUploadID] [int] NULL,
	[PlantID] [int] NULL,
	[Version] [int] NULL,
 CONSTRAINT [PK_T_ProductionPlanUploadPlant] PRIMARY KEY CLUSTERED 
(
	[ProductionPlanUploadPlantID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_SUBO]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_SUBO](
	[SUBOID] [int] IDENTITY(1,1) NOT NULL,
	[UploadHeaderID] [int] NOT NULL,
	[UploadDetailID] [int] NOT NULL,
	[ModelID] [int] NOT NULL,
	[TypeID] [int] NOT NULL,
	[DestinationID] [int] NOT NULL,
	[YM] [int] NOT NULL,
	[SEDFlow] [nvarchar](30) NOT NULL,
	[StartUp] [date] NULL,
	[BuildOut] [date] NULL,
	[IsDiscon] [bit] NULL,
	[IsASHUpdate] [bit] NULL,
 CONSTRAINT [PK_T_SUBO] PRIMARY KEY CLUSTERED 
(
	[SUBOID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_SUBOControlVersionDetail]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_SUBOControlVersionDetail](
	[ControlVersionDetailID] [int] IDENTITY(1,1) NOT NULL,
	[ControlVersionHeaderID] [int] NOT NULL,
	[ConsolidateVersion] [int] NOT NULL,
	[AOUploadVersion] [int] NOT NULL,
	[ConsolidatedBy] [nvarchar](20) NULL,
	[ConsolidatedDate] [datetime] NULL,
	[CompletedBy] [nvarchar](20) NULL,
	[CompletedDate] [datetime] NULL,
	[ReopennedBy] [nvarchar](20) NULL,
	[ReopennedDate] [datetime] NULL,
	[ApprovedBy] [nvarchar](20) NULL,
	[ApprovedDate] [datetime] NULL,
	[IsFinal] [bit] NULL,
	[SendMailDate] [datetime] NULL,
 CONSTRAINT [PK_T_SUBOControlVersionDetail] PRIMARY KEY CLUSTERED 
(
	[ControlVersionDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_SUBOControlVersionHeader]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_SUBOControlVersionHeader](
	[ControlVersionHeaderID] [int] IDENTITY(1,1) NOT NULL,
	[SeihanMonth] [int] NOT NULL,
	[SeihanYear] [int] NOT NULL,
	[CompanyID] [int] NOT NULL,
	[PlantStatusID] [int] NOT NULL,
	[CreatedBy] [nvarchar](20) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](20) NOT NULL,
	[UpdatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_T_SUBOControlVersionHeader] PRIMARY KEY CLUSTERED 
(
	[ControlVersionHeaderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_SUBOFileUploadDetail]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_SUBOFileUploadDetail](
	[UploadHeaderID] [int] NOT NULL,
	[UploadDetailID] [int] IDENTITY(1,1) NOT NULL,
	[CompanyID] [int] NOT NULL,
	[AOUploadVersion] [int] NOT NULL,
 CONSTRAINT [PK_T_SUBOFileUploadDetail] PRIMARY KEY CLUSTERED 
(
	[UploadHeaderID] ASC,
	[UploadDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_SUBOFileUploadHeader]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_SUBOFileUploadHeader](
	[UploadHeaderID] [int] IDENTITY(1,1) NOT NULL,
	[SeihanMonth] [int] NOT NULL,
	[SeihanYear] [int] NOT NULL,
	[FileManagerID] [int] NOT NULL,
	[FileNameOriginal] [nvarchar](100) NULL,
	[FileNameSystem] [nvarchar](100) NULL,
	[UploadResult] [int] NOT NULL,
	[UploadedBy] [nvarchar](20) NOT NULL,
	[UploadedDate] [date] NOT NULL,
 CONSTRAINT [PK_T_SUBOFileUploadHeader] PRIMARY KEY CLUSTERED 
(
	[UploadHeaderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_SUBOTempUploadError]    Script Date: 2/22/2019 5:15:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_SUBOTempUploadError](
	[UploadHeaderID] [int] NOT NULL,
	[FileLineNo] [int] NOT NULL,
	[ErrorMessageID] [int] NOT NULL,
 CONSTRAINT [PK_T_SUBOTempUpload] PRIMARY KEY CLUSTERED 
(
	[UploadHeaderID] ASC,
	[FileLineNo] ASC,
	[ErrorMessageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[M_FileManager] ADD  CONSTRAINT [DF_M_FileManager_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[M_AdditionalConditionCriteria]  WITH CHECK ADD  CONSTRAINT [FK_M_AdditionalConditionCriteria_M_AdditionalCondition] FOREIGN KEY([AdditionalConditionID])
REFERENCES [dbo].[M_AdditionalCondition] ([AddtionalConditionID])
GO
ALTER TABLE [dbo].[M_AdditionalConditionCriteria] CHECK CONSTRAINT [FK_M_AdditionalConditionCriteria_M_AdditionalCondition]
GO
ALTER TABLE [dbo].[M_AdditionalConditionCriteria]  WITH CHECK ADD  CONSTRAINT [FK_M_AdditionalConditionCriteria_M_AdditionalCriteriaName] FOREIGN KEY([AdditionalCriteriaNameID])
REFERENCES [dbo].[M_AdditionalCriteriaName] ([AdditionalCriteriaNameID])
GO
ALTER TABLE [dbo].[M_AdditionalConditionCriteria] CHECK CONSTRAINT [FK_M_AdditionalConditionCriteria_M_AdditionalCriteriaName]
GO
ALTER TABLE [dbo].[M_AdditionalConditionCriteria]  WITH CHECK ADD  CONSTRAINT [FK_M_AdditionalConditionCriteria_M_AdditionalOperator] FOREIGN KEY([AdditionalOperatorID])
REFERENCES [dbo].[M_AdditionalOperator] ([AdditionalOperatorID])
GO
ALTER TABLE [dbo].[M_AdditionalConditionCriteria] CHECK CONSTRAINT [FK_M_AdditionalConditionCriteria_M_AdditionalOperator]
GO
ALTER TABLE [dbo].[M_AdditionalConditionHistory]  WITH CHECK ADD  CONSTRAINT [FK_M_AdditionalConditionHistory_M_AdditionalCondition] FOREIGN KEY([AdditionalConditionID])
REFERENCES [dbo].[M_AdditionalCondition] ([AddtionalConditionID])
GO
ALTER TABLE [dbo].[M_AdditionalConditionHistory] CHECK CONSTRAINT [FK_M_AdditionalConditionHistory_M_AdditionalCondition]
GO
ALTER TABLE [dbo].[M_CBULine]  WITH CHECK ADD  CONSTRAINT [FK_M_CbuLine_M_Company] FOREIGN KEY([CompanyID])
REFERENCES [dbo].[M_Company] ([CompanyID])
GO
ALTER TABLE [dbo].[M_CBULine] CHECK CONSTRAINT [FK_M_CbuLine_M_Company]
GO
ALTER TABLE [dbo].[M_Company]  WITH CHECK ADD  CONSTRAINT [FK_M_Company_M_Region] FOREIGN KEY([RegionID])
REFERENCES [dbo].[M_Region] ([RegionID])
GO
ALTER TABLE [dbo].[M_Company] CHECK CONSTRAINT [FK_M_Company_M_Region]
GO
ALTER TABLE [dbo].[M_CountryListModelPlant]  WITH CHECK ADD  CONSTRAINT [FK_M_CountryListModelPlant_M_Company] FOREIGN KEY([CompanyID])
REFERENCES [dbo].[M_Company] ([CompanyID])
GO
ALTER TABLE [dbo].[M_CountryListModelPlant] CHECK CONSTRAINT [FK_M_CountryListModelPlant_M_Company]
GO
ALTER TABLE [dbo].[M_CountryListModelPlant]  WITH CHECK ADD  CONSTRAINT [FK_M_CountryListModelPlant_M_CountryListUploadHistory] FOREIGN KEY([CountryListUploadHistoryID])
REFERENCES [dbo].[M_CountryListUploadHistory] ([CountryListUploadHistoryID])
GO
ALTER TABLE [dbo].[M_CountryListModelPlant] CHECK CONSTRAINT [FK_M_CountryListModelPlant_M_CountryListUploadHistory]
GO
ALTER TABLE [dbo].[M_CountryListModelPlant]  WITH CHECK ADD  CONSTRAINT [FK_M_CountryListModelPlant_M_Model] FOREIGN KEY([ModelID])
REFERENCES [dbo].[M_Model] ([ModelID])
GO
ALTER TABLE [dbo].[M_CountryListModelPlant] CHECK CONSTRAINT [FK_M_CountryListModelPlant_M_Model]
GO
ALTER TABLE [dbo].[M_CountryListModelPlant]  WITH CHECK ADD  CONSTRAINT [FK_M_CountryListModelPlant_M_YM] FOREIGN KEY([YMID])
REFERENCES [dbo].[M_YM] ([YMID])
GO
ALTER TABLE [dbo].[M_CountryListModelPlant] CHECK CONSTRAINT [FK_M_CountryListModelPlant_M_YM]
GO
ALTER TABLE [dbo].[M_CountryListModelTypeOfCountry]  WITH CHECK ADD  CONSTRAINT [FK_M_CountryListGroupOfCountry_M_Country] FOREIGN KEY([CountryID])
REFERENCES [dbo].[M_Country] ([CountryID])
GO
ALTER TABLE [dbo].[M_CountryListModelTypeOfCountry] CHECK CONSTRAINT [FK_M_CountryListGroupOfCountry_M_Country]
GO
ALTER TABLE [dbo].[M_CountryListModelTypeOfCountry]  WITH CHECK ADD  CONSTRAINT [FK_M_CountryListGroupOfCountry_M_CountryListGroup] FOREIGN KEY([CountryListModelTypeID])
REFERENCES [dbo].[M_CountryListModelType] ([CountryListModelTypeID])
GO
ALTER TABLE [dbo].[M_CountryListModelTypeOfCountry] CHECK CONSTRAINT [FK_M_CountryListGroupOfCountry_M_CountryListGroup]
GO
ALTER TABLE [dbo].[M_CountryListModelTypeOfCountry]  WITH CHECK ADD  CONSTRAINT [FK_M_CountryListModelTypeOfCountry_M_CountryListModelPlant] FOREIGN KEY([CountryListModelPlantID])
REFERENCES [dbo].[M_CountryListModelPlant] ([CountryListModelPlantID])
GO
ALTER TABLE [dbo].[M_CountryListModelTypeOfCountry] CHECK CONSTRAINT [FK_M_CountryListModelTypeOfCountry_M_CountryListModelPlant]
GO
ALTER TABLE [dbo].[M_CountryListTempCountry]  WITH CHECK ADD  CONSTRAINT [FK_M_CountryListTempCountry_M_CountryListTempRow] FOREIGN KEY([CountryListTempRowID])
REFERENCES [dbo].[M_CountryListTempRow] ([CountryListTempRowID])
GO
ALTER TABLE [dbo].[M_CountryListTempCountry] CHECK CONSTRAINT [FK_M_CountryListTempCountry_M_CountryListTempRow]
GO
ALTER TABLE [dbo].[M_CountryListTempList]  WITH CHECK ADD  CONSTRAINT [FK_M_CountryListTempList_M_CountryListTempRow] FOREIGN KEY([CountryListTempRowID])
REFERENCES [dbo].[M_CountryListTempRow] ([CountryListTempRowID])
GO
ALTER TABLE [dbo].[M_CountryListTempList] CHECK CONSTRAINT [FK_M_CountryListTempList_M_CountryListTempRow]
GO
ALTER TABLE [dbo].[M_CountryListTempModelType]  WITH CHECK ADD  CONSTRAINT [FK_M_CountryListTempModelType_M_CountryListTempRow] FOREIGN KEY([CountryListTempRowID])
REFERENCES [dbo].[M_CountryListTempRow] ([CountryListTempRowID])
GO
ALTER TABLE [dbo].[M_CountryListTempModelType] CHECK CONSTRAINT [FK_M_CountryListTempModelType_M_CountryListTempRow]
GO
ALTER TABLE [dbo].[M_CountryListTempRow]  WITH CHECK ADD  CONSTRAINT [FK_M_CountryListTempRow_M_CountryListUploadHistory] FOREIGN KEY([CountryListUploadHistoryID])
REFERENCES [dbo].[M_CountryListUploadHistory] ([CountryListUploadHistoryID])
GO
ALTER TABLE [dbo].[M_CountryListTempRow] CHECK CONSTRAINT [FK_M_CountryListTempRow_M_CountryListUploadHistory]
GO
ALTER TABLE [dbo].[M_CountryListUploadHistory]  WITH CHECK ADD  CONSTRAINT [FK_M_CountryListUploadHistory_M_Company] FOREIGN KEY([CompanyID])
REFERENCES [dbo].[M_Company] ([CompanyID])
GO
ALTER TABLE [dbo].[M_CountryListUploadHistory] CHECK CONSTRAINT [FK_M_CountryListUploadHistory_M_Company]
GO
ALTER TABLE [dbo].[M_CountryListUploadHistory]  WITH CHECK ADD  CONSTRAINT [FK_M_CountryListUploadHistory_M_FileManager] FOREIGN KEY([FileManagerID])
REFERENCES [dbo].[M_FileManager] ([FileManagerID])
GO
ALTER TABLE [dbo].[M_CountryListUploadHistory] CHECK CONSTRAINT [FK_M_CountryListUploadHistory_M_FileManager]
GO
ALTER TABLE [dbo].[M_CountryListUploadHistory]  WITH CHECK ADD  CONSTRAINT [FK_M_CountryListUploadHistory_M_FileManager1] FOREIGN KEY([FileManagerOriginalID])
REFERENCES [dbo].[M_FileManager] ([FileManagerID])
GO
ALTER TABLE [dbo].[M_CountryListUploadHistory] CHECK CONSTRAINT [FK_M_CountryListUploadHistory_M_FileManager1]
GO
ALTER TABLE [dbo].[M_CountryListUploadHistory]  WITH CHECK ADD  CONSTRAINT [FK_M_CountryListUploadHistory_M_Model] FOREIGN KEY([ModelID])
REFERENCES [dbo].[M_Model] ([ModelID])
GO
ALTER TABLE [dbo].[M_CountryListUploadHistory] CHECK CONSTRAINT [FK_M_CountryListUploadHistory_M_Model]
GO
ALTER TABLE [dbo].[M_CountryListUploadHistory]  WITH CHECK ADD  CONSTRAINT [FK_M_CountryListUploadHistory_M_YM] FOREIGN KEY([YMID])
REFERENCES [dbo].[M_YM] ([YMID])
GO
ALTER TABLE [dbo].[M_CountryListUploadHistory] CHECK CONSTRAINT [FK_M_CountryListUploadHistory_M_YM]
GO
ALTER TABLE [dbo].[M_CountryMappingDetail]  WITH CHECK ADD  CONSTRAINT [FK_M_CountryMappingDetail_M_Country] FOREIGN KEY([CountryID])
REFERENCES [dbo].[M_Country] ([CountryID])
GO
ALTER TABLE [dbo].[M_CountryMappingDetail] CHECK CONSTRAINT [FK_M_CountryMappingDetail_M_Country]
GO
ALTER TABLE [dbo].[M_CountryMappingDetail]  WITH CHECK ADD  CONSTRAINT [FK_M_CountryMappingDetail_M_CountryMapping] FOREIGN KEY([CountryMappingID])
REFERENCES [dbo].[M_CountryMapping] ([CountryMappingID])
GO
ALTER TABLE [dbo].[M_CountryMappingDetail] CHECK CONSTRAINT [FK_M_CountryMappingDetail_M_CountryMapping]
GO
ALTER TABLE [dbo].[M_LineCapacityOT]  WITH CHECK ADD  CONSTRAINT [FK_M_CapOT_M_CbuLine] FOREIGN KEY([CBULineID])
REFERENCES [dbo].[M_CBULine] ([CBULineID])
GO
ALTER TABLE [dbo].[M_LineCapacityOT] CHECK CONSTRAINT [FK_M_CapOT_M_CbuLine]
GO
ALTER TABLE [dbo].[M_ModelType]  WITH CHECK ADD  CONSTRAINT [FK_M_ModelType_M_Company] FOREIGN KEY([CompanyID])
REFERENCES [dbo].[M_Company] ([CompanyID])
GO
ALTER TABLE [dbo].[M_ModelType] CHECK CONSTRAINT [FK_M_ModelType_M_Company]
GO
ALTER TABLE [dbo].[M_ModelType]  WITH CHECK ADD  CONSTRAINT [FK_M_ModelType_M_Model] FOREIGN KEY([ModelID])
REFERENCES [dbo].[M_Model] ([ModelID])
GO
ALTER TABLE [dbo].[M_ModelType] CHECK CONSTRAINT [FK_M_ModelType_M_Model]
GO
ALTER TABLE [dbo].[M_ModelType]  WITH CHECK ADD  CONSTRAINT [FK_M_ModelType_M_ModelTypeUpload] FOREIGN KEY([ModelTypeUploadID])
REFERENCES [dbo].[M_ModelTypeUpload] ([ModelTypeUploadID])
GO
ALTER TABLE [dbo].[M_ModelType] CHECK CONSTRAINT [FK_M_ModelType_M_ModelTypeUpload]
GO
ALTER TABLE [dbo].[M_ModelType]  WITH CHECK ADD  CONSTRAINT [FK_M_ModelType_M_YM] FOREIGN KEY([YMID])
REFERENCES [dbo].[M_YM] ([YMID])
GO
ALTER TABLE [dbo].[M_ModelType] CHECK CONSTRAINT [FK_M_ModelType_M_YM]
GO
ALTER TABLE [dbo].[M_ModelTypeEngine]  WITH CHECK ADD  CONSTRAINT [FK_M_ModelTypeEngine_M_ModelType] FOREIGN KEY([ModelTypeID])
REFERENCES [dbo].[M_ModelType] ([ModelTypeID])
GO
ALTER TABLE [dbo].[M_ModelTypeEngine] CHECK CONSTRAINT [FK_M_ModelTypeEngine_M_ModelType]
GO
ALTER TABLE [dbo].[M_ModelTypeEquipment]  WITH CHECK ADD  CONSTRAINT [FK_M_ModelTypeEquipment_M_Equipment] FOREIGN KEY([EquipmentID])
REFERENCES [dbo].[M_Equipment] ([EquipmentID])
GO
ALTER TABLE [dbo].[M_ModelTypeEquipment] CHECK CONSTRAINT [FK_M_ModelTypeEquipment_M_Equipment]
GO
ALTER TABLE [dbo].[M_ModelTypeEquipment]  WITH CHECK ADD  CONSTRAINT [FK_M_ModelTypeEquipment_M_ModelTypeEngine1] FOREIGN KEY([ModelTypeEngineID])
REFERENCES [dbo].[M_ModelTypeEngine] ([ModelTypeEngineID])
GO
ALTER TABLE [dbo].[M_ModelTypeEquipment] CHECK CONSTRAINT [FK_M_ModelTypeEquipment_M_ModelTypeEngine1]
GO
ALTER TABLE [dbo].[M_ModelTypeTempEngine]  WITH CHECK ADD  CONSTRAINT [FK_M_ModelTypeTempEngine_M_ModelTypeTempRow] FOREIGN KEY([ModelTypeTempRowID])
REFERENCES [dbo].[M_ModelTypeTempRow] ([ModelTypeTempRowID])
GO
ALTER TABLE [dbo].[M_ModelTypeTempEngine] CHECK CONSTRAINT [FK_M_ModelTypeTempEngine_M_ModelTypeTempRow]
GO
ALTER TABLE [dbo].[M_ModelTypeTempEquipment]  WITH CHECK ADD  CONSTRAINT [FK_M_ModelTypeTempEquipment_M_ModelTypeTempRow] FOREIGN KEY([ModelTypeTempRowID])
REFERENCES [dbo].[M_ModelTypeTempRow] ([ModelTypeTempRowID])
GO
ALTER TABLE [dbo].[M_ModelTypeTempEquipment] CHECK CONSTRAINT [FK_M_ModelTypeTempEquipment_M_ModelTypeTempRow]
GO
ALTER TABLE [dbo].[M_ModelTypeTempRow]  WITH CHECK ADD  CONSTRAINT [FK_M_ModelTypeTempRow_M_ModelTypeTempSheet] FOREIGN KEY([ModelTypeTempSheetID])
REFERENCES [dbo].[M_ModelTypeTempSheet] ([ModelTypeTempSheetID])
GO
ALTER TABLE [dbo].[M_ModelTypeTempRow] CHECK CONSTRAINT [FK_M_ModelTypeTempRow_M_ModelTypeTempSheet]
GO
ALTER TABLE [dbo].[M_ModelTypeTempSheet]  WITH CHECK ADD  CONSTRAINT [FK_M_ModelTypeTemp_M_ModelTypeUpload] FOREIGN KEY([ModelTypeUploadID])
REFERENCES [dbo].[M_ModelTypeUpload] ([ModelTypeUploadID])
GO
ALTER TABLE [dbo].[M_ModelTypeTempSheet] CHECK CONSTRAINT [FK_M_ModelTypeTemp_M_ModelTypeUpload]
GO
ALTER TABLE [dbo].[M_ModelTypeTempType]  WITH CHECK ADD  CONSTRAINT [FK_M_ModelTypeTempType_M_ModelTypeTempRow] FOREIGN KEY([ModelTypeTempRowID])
REFERENCES [dbo].[M_ModelTypeTempRow] ([ModelTypeTempRowID])
GO
ALTER TABLE [dbo].[M_ModelTypeTempType] CHECK CONSTRAINT [FK_M_ModelTypeTempType_M_ModelTypeTempRow]
GO
ALTER TABLE [dbo].[M_ModelTypeUpload]  WITH CHECK ADD  CONSTRAINT [FK_M_ModelTypeUpload_M_Company] FOREIGN KEY([CompanyID])
REFERENCES [dbo].[M_Company] ([CompanyID])
GO
ALTER TABLE [dbo].[M_ModelTypeUpload] CHECK CONSTRAINT [FK_M_ModelTypeUpload_M_Company]
GO
ALTER TABLE [dbo].[M_ModelTypeUpload]  WITH CHECK ADD  CONSTRAINT [FK_M_ModelTypeUpload_M_FileManager] FOREIGN KEY([I_ModelTypePath])
REFERENCES [dbo].[M_FileManager] ([FileManagerID])
GO
ALTER TABLE [dbo].[M_ModelTypeUpload] CHECK CONSTRAINT [FK_M_ModelTypeUpload_M_FileManager]
GO
ALTER TABLE [dbo].[M_ModelTypeUpload]  WITH CHECK ADD  CONSTRAINT [FK_M_ModelTypeUpload_M_FileManager1] FOREIGN KEY([O_ModelTypePath])
REFERENCES [dbo].[M_FileManager] ([FileManagerID])
GO
ALTER TABLE [dbo].[M_ModelTypeUpload] CHECK CONSTRAINT [FK_M_ModelTypeUpload_M_FileManager1]
GO
ALTER TABLE [dbo].[M_ModelTypeUpload]  WITH CHECK ADD  CONSTRAINT [FK_M_ModelTypeUpload_M_FileManager2] FOREIGN KEY([I_ModelTypeResultPath])
REFERENCES [dbo].[M_FileManager] ([FileManagerID])
GO
ALTER TABLE [dbo].[M_ModelTypeUpload] CHECK CONSTRAINT [FK_M_ModelTypeUpload_M_FileManager2]
GO
ALTER TABLE [dbo].[M_ModelTypeUpload]  WITH CHECK ADD  CONSTRAINT [FK_M_ModelTypeUpload_M_Model] FOREIGN KEY([ModelID])
REFERENCES [dbo].[M_Model] ([ModelID])
GO
ALTER TABLE [dbo].[M_ModelTypeUpload] CHECK CONSTRAINT [FK_M_ModelTypeUpload_M_Model]
GO
ALTER TABLE [dbo].[M_ModelTypeUpload]  WITH CHECK ADD  CONSTRAINT [FK_M_ModelTypeUpload_M_YM] FOREIGN KEY([YMID])
REFERENCES [dbo].[M_YM] ([YMID])
GO
ALTER TABLE [dbo].[M_ModelTypeUpload] CHECK CONSTRAINT [FK_M_ModelTypeUpload_M_YM]
GO
ALTER TABLE [dbo].[M_PartMaker]  WITH CHECK ADD  CONSTRAINT [FK_M_PartMaker_M_Company] FOREIGN KEY([CompanyID])
REFERENCES [dbo].[M_Company] ([CompanyID])
GO
ALTER TABLE [dbo].[M_PartMaker] CHECK CONSTRAINT [FK_M_PartMaker_M_Company]
GO
ALTER TABLE [dbo].[M_Permission]  WITH CHECK ADD  CONSTRAINT [FK_M_Permission_M_Menu] FOREIGN KEY([MenuID])
REFERENCES [dbo].[M_Menu] ([MenuID])
GO
ALTER TABLE [dbo].[M_Permission] CHECK CONSTRAINT [FK_M_Permission_M_Menu]
GO
ALTER TABLE [dbo].[M_User]  WITH CHECK ADD  CONSTRAINT [FK_M_User_M_Company] FOREIGN KEY([CompanyID])
REFERENCES [dbo].[M_Company] ([CompanyID])
GO
ALTER TABLE [dbo].[M_User] CHECK CONSTRAINT [FK_M_User_M_Company]
GO
ALTER TABLE [dbo].[M_User]  WITH CHECK ADD  CONSTRAINT [FK_M_User_M_Domain] FOREIGN KEY([DomainID])
REFERENCES [dbo].[M_Domain] ([DomainID])
GO
ALTER TABLE [dbo].[M_User] CHECK CONSTRAINT [FK_M_User_M_Domain]
GO
ALTER TABLE [dbo].[M_User]  WITH CHECK ADD  CONSTRAINT [FK_M_User_M_UserRole] FOREIGN KEY([UserRoleID])
REFERENCES [dbo].[M_UserRole] ([UserRoleID])
GO
ALTER TABLE [dbo].[M_User] CHECK CONSTRAINT [FK_M_User_M_UserRole]
GO
ALTER TABLE [dbo].[M_UserRolePermission]  WITH CHECK ADD  CONSTRAINT [FK_M_UserRolePermission_M_UserRole] FOREIGN KEY([UserRoleID])
REFERENCES [dbo].[M_UserRole] ([UserRoleID])
GO
ALTER TABLE [dbo].[M_UserRolePermission] CHECK CONSTRAINT [FK_M_UserRolePermission_M_UserRole]
GO
ALTER TABLE [dbo].[T_LogisticLeadTimeDay]  WITH CHECK ADD  CONSTRAINT [FK_T_LogisticLeadTimeDay_T_LogisticLeadTimeDayUpload] FOREIGN KEY([LogisticLeadTimeDayUploadID])
REFERENCES [dbo].[T_LogisticLeadTimeDayUpload] ([LogisticLeadTimeDayUploadID])
GO
ALTER TABLE [dbo].[T_LogisticLeadTimeDay] CHECK CONSTRAINT [FK_T_LogisticLeadTimeDay_T_LogisticLeadTimeDayUpload]
GO
ALTER TABLE [dbo].[T_LogisticLeadTimeDayDetail]  WITH CHECK ADD  CONSTRAINT [FK_T_LogisticLeadTimeDayDetail_T_LogisticLeadTimeDayKi] FOREIGN KEY([LogisticLeadTimeDayKiID])
REFERENCES [dbo].[T_LogisticLeadTimeDayKi] ([LogisticLeadTimeDayKiID])
GO
ALTER TABLE [dbo].[T_LogisticLeadTimeDayDetail] CHECK CONSTRAINT [FK_T_LogisticLeadTimeDayDetail_T_LogisticLeadTimeDayKi]
GO
ALTER TABLE [dbo].[T_LogisticLeadTimeDayKi]  WITH CHECK ADD  CONSTRAINT [FK_T_LogisticLeadTimeDayKi_T_LogisticLeadTimeDay] FOREIGN KEY([LogisticLeadTimeDayID])
REFERENCES [dbo].[T_LogisticLeadTimeDay] ([LogisticLeadTimeDayID])
GO
ALTER TABLE [dbo].[T_LogisticLeadTimeDayKi] CHECK CONSTRAINT [FK_T_LogisticLeadTimeDayKi_T_LogisticLeadTimeDay]
GO
ALTER TABLE [dbo].[T_LogisticLeadTimeDayTempRow]  WITH CHECK ADD  CONSTRAINT [FK_T_LogisticLeadTimeDayTempRow_T_LogisticLeadTimeDayTempSheet] FOREIGN KEY([LogisticLeadTimeDayTempSheetID])
REFERENCES [dbo].[T_LogisticLeadTimeDayTempSheet] ([LogisticLeadTimeDayTempSheetID])
GO
ALTER TABLE [dbo].[T_LogisticLeadTimeDayTempRow] CHECK CONSTRAINT [FK_T_LogisticLeadTimeDayTempRow_T_LogisticLeadTimeDayTempSheet]
GO
ALTER TABLE [dbo].[T_LogisticLeadTimeDayTempSheet]  WITH CHECK ADD  CONSTRAINT [FK_T_LogisticLeadTimeDayTempSheet_T_LogisticLeadTimeDayUpload] FOREIGN KEY([LogisticLeadTimeDayUploadID])
REFERENCES [dbo].[T_LogisticLeadTimeDayUpload] ([LogisticLeadTimeDayUploadID])
GO
ALTER TABLE [dbo].[T_LogisticLeadTimeDayTempSheet] CHECK CONSTRAINT [FK_T_LogisticLeadTimeDayTempSheet_T_LogisticLeadTimeDayUpload]
GO
ALTER TABLE [dbo].[T_LogisticLeadTimeDayUpload]  WITH CHECK ADD  CONSTRAINT [FK_T_LogisticLeadTimeDayUpload_M_Company] FOREIGN KEY([CompanyID])
REFERENCES [dbo].[M_Company] ([CompanyID])
GO
ALTER TABLE [dbo].[T_LogisticLeadTimeDayUpload] CHECK CONSTRAINT [FK_T_LogisticLeadTimeDayUpload_M_Company]
GO
ALTER TABLE [dbo].[T_LogisticLeadTimeDayUpload]  WITH CHECK ADD  CONSTRAINT [FK_T_LogisticLeadTimeDayUpload_T_LogisticLeadTime] FOREIGN KEY([LogisticLeadTimeID])
REFERENCES [dbo].[T_LogisticLeadTime] ([LogisticLeadTimeID])
GO
ALTER TABLE [dbo].[T_LogisticLeadTimeDayUpload] CHECK CONSTRAINT [FK_T_LogisticLeadTimeDayUpload_T_LogisticLeadTime]
GO
ALTER TABLE [dbo].[T_LogisticLeadTimeDayWise]  WITH CHECK ADD  CONSTRAINT [FK_T_LogisticLeadTimeDayWise_T_LogisticLeadTimeDayWiseUpload] FOREIGN KEY([LogisticLeadTimeDayWiseUploadID])
REFERENCES [dbo].[T_LogisticLeadTimeDayWiseUpload] ([LogisticLeadTimeDayWiseUploadID])
GO
ALTER TABLE [dbo].[T_LogisticLeadTimeDayWise] CHECK CONSTRAINT [FK_T_LogisticLeadTimeDayWise_T_LogisticLeadTimeDayWiseUpload]
GO
ALTER TABLE [dbo].[T_LogisticLeadTimeDayWiseDetail]  WITH CHECK ADD  CONSTRAINT [FK_T_LogisticLeadTimeDayWiseDetail_T_LogisticLeadTimeDayWiseKi] FOREIGN KEY([LogisticLeadTimeDayWiseKiID])
REFERENCES [dbo].[T_LogisticLeadTimeDayWiseKi] ([LogisticLeadTimeDayWiseKiID])
GO
ALTER TABLE [dbo].[T_LogisticLeadTimeDayWiseDetail] CHECK CONSTRAINT [FK_T_LogisticLeadTimeDayWiseDetail_T_LogisticLeadTimeDayWiseKi]
GO
ALTER TABLE [dbo].[T_LogisticLeadTimeDayWiseKi]  WITH CHECK ADD  CONSTRAINT [FK_T_LogisticLeadTimeDayWiseKi_T_LogisticLeadTimeDayWise] FOREIGN KEY([LogisticLeadTimeDayWiseID])
REFERENCES [dbo].[T_LogisticLeadTimeDayWise] ([LogisticLeadTimeDayWiseID])
GO
ALTER TABLE [dbo].[T_LogisticLeadTimeDayWiseKi] CHECK CONSTRAINT [FK_T_LogisticLeadTimeDayWiseKi_T_LogisticLeadTimeDayWise]
GO
ALTER TABLE [dbo].[T_LogisticLeadTimeDayWiseTempRow]  WITH CHECK ADD  CONSTRAINT [FK_T_LogisticLeadTimeDayWiseTempRow_T_LogisticLeadTimeDayWiseTempSheet] FOREIGN KEY([LogisticLeadTimeDayWiseTempSheetID])
REFERENCES [dbo].[T_LogisticLeadTimeDayWiseTempSheet] ([LogisticLeadTimeDayWiseTempSheetID])
GO
ALTER TABLE [dbo].[T_LogisticLeadTimeDayWiseTempRow] CHECK CONSTRAINT [FK_T_LogisticLeadTimeDayWiseTempRow_T_LogisticLeadTimeDayWiseTempSheet]
GO
ALTER TABLE [dbo].[T_LogisticLeadTimeDayWiseTempSheet]  WITH CHECK ADD  CONSTRAINT [FK_T_LogisticLeadTimeDayWiseTempSheet_T_LogisticLeadTimeDayWiseUpload] FOREIGN KEY([LogisticLeadTimeDayWiseUploadID])
REFERENCES [dbo].[T_LogisticLeadTimeDayWiseUpload] ([LogisticLeadTimeDayWiseUploadID])
GO
ALTER TABLE [dbo].[T_LogisticLeadTimeDayWiseTempSheet] CHECK CONSTRAINT [FK_T_LogisticLeadTimeDayWiseTempSheet_T_LogisticLeadTimeDayWiseUpload]
GO
ALTER TABLE [dbo].[T_LogisticLeadTimeDayWiseUpload]  WITH CHECK ADD  CONSTRAINT [FK_T_LogisticLeadTimeDayWiseUpload_M_Company] FOREIGN KEY([CompanyID])
REFERENCES [dbo].[M_Company] ([CompanyID])
GO
ALTER TABLE [dbo].[T_LogisticLeadTimeDayWiseUpload] CHECK CONSTRAINT [FK_T_LogisticLeadTimeDayWiseUpload_M_Company]
GO
ALTER TABLE [dbo].[T_LogisticLeadTimeDayWiseUpload]  WITH CHECK ADD  CONSTRAINT [FK_T_LogisticLeadTimeDayWiseUpload_T_LogisticLeadTime] FOREIGN KEY([LogisticLeadTimeID])
REFERENCES [dbo].[T_LogisticLeadTime] ([LogisticLeadTimeID])
GO
ALTER TABLE [dbo].[T_LogisticLeadTimeDayWiseUpload] CHECK CONSTRAINT [FK_T_LogisticLeadTimeDayWiseUpload_T_LogisticLeadTime]
GO
ALTER TABLE [dbo].[T_LogisticLeadTimeMonth]  WITH CHECK ADD  CONSTRAINT [FK_T_LogisticLeadTimeMonth_T_LogisticLeadTimeMonthUpload] FOREIGN KEY([LogisticLeadTimeMonthUploadID])
REFERENCES [dbo].[T_LogisticLeadTimeMonthUpload] ([LogisticLeadTimeMonthUploadID])
GO
ALTER TABLE [dbo].[T_LogisticLeadTimeMonth] CHECK CONSTRAINT [FK_T_LogisticLeadTimeMonth_T_LogisticLeadTimeMonthUpload]
GO
ALTER TABLE [dbo].[T_LogisticLeadTimeMonthDetail]  WITH CHECK ADD  CONSTRAINT [FK_T_LogisticLeadTimeMonthDetail_T_LogisticLeadTimeMonthKi] FOREIGN KEY([LogisticLeadTimeMonthKi])
REFERENCES [dbo].[T_LogisticLeadTimeMonthKi] ([LogisticLeadTimeMonthKi])
GO
ALTER TABLE [dbo].[T_LogisticLeadTimeMonthDetail] CHECK CONSTRAINT [FK_T_LogisticLeadTimeMonthDetail_T_LogisticLeadTimeMonthKi]
GO
ALTER TABLE [dbo].[T_LogisticLeadTimeMonthKi]  WITH CHECK ADD  CONSTRAINT [FK_T_LogisticLeadTimeMonthKi_T_LogisticLeadTimeMonth] FOREIGN KEY([LogisticLeadTimeMonthID])
REFERENCES [dbo].[T_LogisticLeadTimeMonth] ([LogisticLeadTimeMonthID])
GO
ALTER TABLE [dbo].[T_LogisticLeadTimeMonthKi] CHECK CONSTRAINT [FK_T_LogisticLeadTimeMonthKi_T_LogisticLeadTimeMonth]
GO
ALTER TABLE [dbo].[T_LogisticLeadTimeMonthTempRow]  WITH CHECK ADD  CONSTRAINT [FK_T_LogisticLeadTimeMonthTempRow_T_LogisticLeadTimeMonthTempSheet] FOREIGN KEY([LogisticLeadTimeMonthTempSheetID])
REFERENCES [dbo].[T_LogisticLeadTimeMonthTempSheet] ([LogisticLeadTimeMonthTempSheetID])
GO
ALTER TABLE [dbo].[T_LogisticLeadTimeMonthTempRow] CHECK CONSTRAINT [FK_T_LogisticLeadTimeMonthTempRow_T_LogisticLeadTimeMonthTempSheet]
GO
ALTER TABLE [dbo].[T_LogisticLeadTimeMonthTempSheet]  WITH CHECK ADD  CONSTRAINT [FK_T_LogisticLeadTimeMonthTempSheet_T_LogisticLeadTimeMonthUpload] FOREIGN KEY([LogisticLeadTimeMonthUploadID])
REFERENCES [dbo].[T_LogisticLeadTimeMonthUpload] ([LogisticLeadTimeMonthUploadID])
GO
ALTER TABLE [dbo].[T_LogisticLeadTimeMonthTempSheet] CHECK CONSTRAINT [FK_T_LogisticLeadTimeMonthTempSheet_T_LogisticLeadTimeMonthUpload]
GO
ALTER TABLE [dbo].[T_LogisticLeadTimeMonthUpload]  WITH CHECK ADD  CONSTRAINT [FK_T_LogisticLeadTimeMonthUpload_M_Company] FOREIGN KEY([CompanyID])
REFERENCES [dbo].[M_Company] ([CompanyID])
GO
ALTER TABLE [dbo].[T_LogisticLeadTimeMonthUpload] CHECK CONSTRAINT [FK_T_LogisticLeadTimeMonthUpload_M_Company]
GO
ALTER TABLE [dbo].[T_LogisticLeadTimeMonthUpload]  WITH CHECK ADD  CONSTRAINT [FK_T_LogisticLeadTimeMonthUpload_M_FileManager] FOREIGN KEY([I_LTPath])
REFERENCES [dbo].[M_FileManager] ([FileManagerID])
GO
ALTER TABLE [dbo].[T_LogisticLeadTimeMonthUpload] CHECK CONSTRAINT [FK_T_LogisticLeadTimeMonthUpload_M_FileManager]
GO
ALTER TABLE [dbo].[T_LogisticLeadTimeMonthUpload]  WITH CHECK ADD  CONSTRAINT [FK_T_LogisticLeadTimeMonthUpload_M_FileManager1] FOREIGN KEY([I_LTResultPath])
REFERENCES [dbo].[M_FileManager] ([FileManagerID])
GO
ALTER TABLE [dbo].[T_LogisticLeadTimeMonthUpload] CHECK CONSTRAINT [FK_T_LogisticLeadTimeMonthUpload_M_FileManager1]
GO
ALTER TABLE [dbo].[T_LogisticLeadTimeMonthUpload]  WITH CHECK ADD  CONSTRAINT [FK_T_LogisticLeadTimeMonthUpload_T_LogisticLeadTime] FOREIGN KEY([LogisticLeadTimeID])
REFERENCES [dbo].[T_LogisticLeadTime] ([LogisticLeadTimeID])
GO
ALTER TABLE [dbo].[T_LogisticLeadTimeMonthUpload] CHECK CONSTRAINT [FK_T_LogisticLeadTimeMonthUpload_T_LogisticLeadTime]
GO
ALTER TABLE [dbo].[T_PartCapacityDetail]  WITH CHECK ADD  CONSTRAINT [FK_T_CapacityCheckDetail_T_CapacityCheckHeader] FOREIGN KEY([PartCapacityHeaderID])
REFERENCES [dbo].[T_PartCapacityHeader] ([PartCapacityHeaderID])
GO
ALTER TABLE [dbo].[T_PartCapacityDetail] CHECK CONSTRAINT [FK_T_CapacityCheckDetail_T_CapacityCheckHeader]
GO
ALTER TABLE [dbo].[T_PartCapacityDetail]  WITH CHECK ADD  CONSTRAINT [FK_T_PartCapacityDetail_M_PartMaker] FOREIGN KEY([PartMakerID])
REFERENCES [dbo].[M_PartMaker] ([PartMakerID])
GO
ALTER TABLE [dbo].[T_PartCapacityDetail] CHECK CONSTRAINT [FK_T_PartCapacityDetail_M_PartMaker]
GO
ALTER TABLE [dbo].[T_PartCapacityErrorRow]  WITH CHECK ADD  CONSTRAINT [FK_T_PartCapacityErrorRow_T_PartCapacityUploadHistory] FOREIGN KEY([PartCapacityUploadHistoryID])
REFERENCES [dbo].[T_PartCapacityUploadHistory] ([PartCapacityUploadHistoryID])
GO
ALTER TABLE [dbo].[T_PartCapacityErrorRow] CHECK CONSTRAINT [FK_T_PartCapacityErrorRow_T_PartCapacityUploadHistory]
GO
ALTER TABLE [dbo].[T_PartCapacityHeader]  WITH CHECK ADD  CONSTRAINT [FK_CapacityCheckHeader_M_Company] FOREIGN KEY([CompanyID])
REFERENCES [dbo].[M_Company] ([CompanyID])
GO
ALTER TABLE [dbo].[T_PartCapacityHeader] CHECK CONSTRAINT [FK_CapacityCheckHeader_M_Company]
GO
ALTER TABLE [dbo].[T_PartCapacityTemp]  WITH CHECK ADD  CONSTRAINT [FK_T_PartCapacityTemp_T_PartCapacityUploadHistory] FOREIGN KEY([PartCapacityUploadHistoryID])
REFERENCES [dbo].[T_PartCapacityUploadHistory] ([PartCapacityUploadHistoryID])
GO
ALTER TABLE [dbo].[T_PartCapacityTemp] CHECK CONSTRAINT [FK_T_PartCapacityTemp_T_PartCapacityUploadHistory]
GO
ALTER TABLE [dbo].[T_PartCapacityUploadHistory]  WITH CHECK ADD  CONSTRAINT [FK_T_CapacityCheckUploadHistory_M_Company] FOREIGN KEY([CompanyID])
REFERENCES [dbo].[M_Company] ([CompanyID])
GO
ALTER TABLE [dbo].[T_PartCapacityUploadHistory] CHECK CONSTRAINT [FK_T_CapacityCheckUploadHistory_M_Company]
GO
ALTER TABLE [dbo].[T_PartCapacityUploadHistory]  WITH CHECK ADD  CONSTRAINT [FK_T_CapacityCheckUploadHistory_M_FileManager] FOREIGN KEY([FileManagerID])
REFERENCES [dbo].[M_FileManager] ([FileManagerID])
GO
ALTER TABLE [dbo].[T_PartCapacityUploadHistory] CHECK CONSTRAINT [FK_T_CapacityCheckUploadHistory_M_FileManager]
GO
ALTER TABLE [dbo].[T_PartDemand]  WITH CHECK ADD  CONSTRAINT [FK_T_PartDemand_T_PartDemandFileUploadDetail] FOREIGN KEY([UploadDetailID])
REFERENCES [dbo].[T_PartDemandFileUploadDetail] ([UploadDetailID])
GO
ALTER TABLE [dbo].[T_PartDemand] CHECK CONSTRAINT [FK_T_PartDemand_T_PartDemandFileUploadDetail]
GO
ALTER TABLE [dbo].[T_PartDemand]  WITH CHECK ADD  CONSTRAINT [FK_T_PartDemand_T_PartDemandFileUploadHeader] FOREIGN KEY([UploadHeaderID])
REFERENCES [dbo].[T_PartDemandFileUploadHeader] ([UploadHeaderID])
GO
ALTER TABLE [dbo].[T_PartDemand] CHECK CONSTRAINT [FK_T_PartDemand_T_PartDemandFileUploadHeader]
GO
ALTER TABLE [dbo].[T_PartDemandDetail]  WITH CHECK ADD  CONSTRAINT [FK_PartDemandDetail_M_PartMaker1] FOREIGN KEY([PartMakerID])
REFERENCES [dbo].[M_PartMaker] ([PartMakerID])
GO
ALTER TABLE [dbo].[T_PartDemandDetail] CHECK CONSTRAINT [FK_PartDemandDetail_M_PartMaker1]
GO
ALTER TABLE [dbo].[T_PartDemandDetail]  WITH CHECK ADD  CONSTRAINT [FK_PartDemandDetail_PartDemandHeader] FOREIGN KEY([PartDemandHeaderID])
REFERENCES [dbo].[T_PartDemandHeader] ([PartDemandHeaderID])
GO
ALTER TABLE [dbo].[T_PartDemandDetail] CHECK CONSTRAINT [FK_PartDemandDetail_PartDemandHeader]
GO
ALTER TABLE [dbo].[T_PartDemandFileUploadDetail]  WITH CHECK ADD  CONSTRAINT [FK_T_PartDemandFileUploadDetail_M_FileManager] FOREIGN KEY([FileManagerID])
REFERENCES [dbo].[M_FileManager] ([FileManagerID])
GO
ALTER TABLE [dbo].[T_PartDemandFileUploadDetail] CHECK CONSTRAINT [FK_T_PartDemandFileUploadDetail_M_FileManager]
GO
ALTER TABLE [dbo].[T_PartDemandFileUploadDetail]  WITH CHECK ADD  CONSTRAINT [FK_T_PartDemandFileUploadDetail_T_PartDemandFileUploadHeader] FOREIGN KEY([UploadHeaderID])
REFERENCES [dbo].[T_PartDemandFileUploadHeader] ([UploadHeaderID])
GO
ALTER TABLE [dbo].[T_PartDemandFileUploadDetail] CHECK CONSTRAINT [FK_T_PartDemandFileUploadDetail_T_PartDemandFileUploadHeader]
GO
ALTER TABLE [dbo].[T_PartDemandFileUploadHeader]  WITH CHECK ADD  CONSTRAINT [FK_T_PartDemandFileUploadHeader_M_Company] FOREIGN KEY([CompanyID])
REFERENCES [dbo].[M_Company] ([CompanyID])
GO
ALTER TABLE [dbo].[T_PartDemandFileUploadHeader] CHECK CONSTRAINT [FK_T_PartDemandFileUploadHeader_M_Company]
GO
ALTER TABLE [dbo].[T_PartDemandTempUploadError]  WITH CHECK ADD  CONSTRAINT [FK_T_PartDemandTempUploadError_T_PartDemandFileUploadDetail] FOREIGN KEY([UploadDetailID])
REFERENCES [dbo].[T_PartDemandFileUploadDetail] ([UploadDetailID])
GO
ALTER TABLE [dbo].[T_PartDemandTempUploadError] CHECK CONSTRAINT [FK_T_PartDemandTempUploadError_T_PartDemandFileUploadDetail]
GO
ALTER TABLE [dbo].[T_ProductionPlanAO]  WITH CHECK ADD  CONSTRAINT [FK_T_ProductionPlanAO_T_ProductionPlan] FOREIGN KEY([ProductionPlanID])
REFERENCES [dbo].[T_ProductionPlan] ([ProductionPlanID])
GO
ALTER TABLE [dbo].[T_ProductionPlanAO] CHECK CONSTRAINT [FK_T_ProductionPlanAO_T_ProductionPlan]
GO
ALTER TABLE [dbo].[T_ProductionPlanAOMT]  WITH CHECK ADD  CONSTRAINT [FK_T_ProductionPlanAOMT_T_ProductionPlanAO] FOREIGN KEY([ProductionPlanAOID])
REFERENCES [dbo].[T_ProductionPlanAO] ([ProductionPlanAOID])
GO
ALTER TABLE [dbo].[T_ProductionPlanAOMT] CHECK CONSTRAINT [FK_T_ProductionPlanAOMT_T_ProductionPlanAO]
GO
ALTER TABLE [dbo].[T_ProductionPlanAOMTDetail]  WITH CHECK ADD  CONSTRAINT [FK_T_ProductionPlanAOMTDetail_T_ProductionPlanAO] FOREIGN KEY([ProductionPlanAOID])
REFERENCES [dbo].[T_ProductionPlanAO] ([ProductionPlanAOID])
GO
ALTER TABLE [dbo].[T_ProductionPlanAOMTDetail] CHECK CONSTRAINT [FK_T_ProductionPlanAOMTDetail_T_ProductionPlanAO]
GO
ALTER TABLE [dbo].[T_ProductionPlanAOOT]  WITH CHECK ADD  CONSTRAINT [FK_T_ProductionPlanAOOT_T_ProductionPlanAO] FOREIGN KEY([ProductionPlanAOID])
REFERENCES [dbo].[T_ProductionPlanAO] ([ProductionPlanAOID])
GO
ALTER TABLE [dbo].[T_ProductionPlanAOOT] CHECK CONSTRAINT [FK_T_ProductionPlanAOOT_T_ProductionPlanAO]
GO
ALTER TABLE [dbo].[T_ProductionPlanAOSUBO]  WITH CHECK ADD  CONSTRAINT [FK_T_ProductionPlanAOSUBO_T_ProductionPlanAO] FOREIGN KEY([ProductionPlanAOID])
REFERENCES [dbo].[T_ProductionPlanAO] ([ProductionPlanAOID])
GO
ALTER TABLE [dbo].[T_ProductionPlanAOSUBO] CHECK CONSTRAINT [FK_T_ProductionPlanAOSUBO_T_ProductionPlanAO]
GO
ALTER TABLE [dbo].[T_ProductionPlanCompare]  WITH CHECK ADD  CONSTRAINT [FK_T_ProductionPlanCompare_T_ProductionPlanAO] FOREIGN KEY([ProductionPlanAOID01])
REFERENCES [dbo].[T_ProductionPlanAO] ([ProductionPlanAOID])
GO
ALTER TABLE [dbo].[T_ProductionPlanCompare] CHECK CONSTRAINT [FK_T_ProductionPlanCompare_T_ProductionPlanAO]
GO
ALTER TABLE [dbo].[T_ProductionPlanCompare]  WITH CHECK ADD  CONSTRAINT [FK_T_ProductionPlanCompare_T_ProductionPlanAO1] FOREIGN KEY([ProductionPlanAOID02])
REFERENCES [dbo].[T_ProductionPlanAO] ([ProductionPlanAOID])
GO
ALTER TABLE [dbo].[T_ProductionPlanCompare] CHECK CONSTRAINT [FK_T_ProductionPlanCompare_T_ProductionPlanAO1]
GO
ALTER TABLE [dbo].[T_ProductionPlanDetail]  WITH CHECK ADD  CONSTRAINT [FK_T_ProductionPlanDetail_T_ProductionPlanUploadPlant] FOREIGN KEY([ProductionPlanUploadPlantID])
REFERENCES [dbo].[T_ProductionPlanUploadPlant] ([ProductionPlanUploadPlantID])
GO
ALTER TABLE [dbo].[T_ProductionPlanDetail] CHECK CONSTRAINT [FK_T_ProductionPlanDetail_T_ProductionPlanUploadPlant]
GO
ALTER TABLE [dbo].[T_ProductionPlanMT]  WITH CHECK ADD  CONSTRAINT [FK_T_ProductionPlanMT_T_ProductionPlanUploadPlant] FOREIGN KEY([ProductionPlanUploadPlantID])
REFERENCES [dbo].[T_ProductionPlanUploadPlant] ([ProductionPlanUploadPlantID])
GO
ALTER TABLE [dbo].[T_ProductionPlanMT] CHECK CONSTRAINT [FK_T_ProductionPlanMT_T_ProductionPlanUploadPlant]
GO
ALTER TABLE [dbo].[T_ProductionPlanMTTemp]  WITH CHECK ADD  CONSTRAINT [FK_T_ProductionPlanMTTemp_T_ProductionPlanUpload] FOREIGN KEY([ProductionPlanUploadID])
REFERENCES [dbo].[T_ProductionPlanUpload] ([ProductionPlanUploadID])
GO
ALTER TABLE [dbo].[T_ProductionPlanMTTemp] CHECK CONSTRAINT [FK_T_ProductionPlanMTTemp_T_ProductionPlanUpload]
GO
ALTER TABLE [dbo].[T_ProductionPlanMTTempDetail]  WITH CHECK ADD  CONSTRAINT [FK_T_ProductionPlanMTTempDetail_T_ProductionPlanMTTemp] FOREIGN KEY([ProductionPlanMTTempID])
REFERENCES [dbo].[T_ProductionPlanMTTemp] ([ProdutionPlanMTTempID])
GO
ALTER TABLE [dbo].[T_ProductionPlanMTTempDetail] CHECK CONSTRAINT [FK_T_ProductionPlanMTTempDetail_T_ProductionPlanMTTemp]
GO
ALTER TABLE [dbo].[T_ProductionPlanPlant]  WITH CHECK ADD  CONSTRAINT [FK_T_ProductionPlanPlant_T_ProductionPlan] FOREIGN KEY([ProductionPlanID])
REFERENCES [dbo].[T_ProductionPlan] ([ProductionPlanID])
GO
ALTER TABLE [dbo].[T_ProductionPlanPlant] CHECK CONSTRAINT [FK_T_ProductionPlanPlant_T_ProductionPlan]
GO
ALTER TABLE [dbo].[T_ProductionPlanReopen]  WITH CHECK ADD  CONSTRAINT [FK_T_ProductionPlanReopen_T_ProductionPlan] FOREIGN KEY([ProductionPlanID])
REFERENCES [dbo].[T_ProductionPlan] ([ProductionPlanID])
GO
ALTER TABLE [dbo].[T_ProductionPlanReopen] CHECK CONSTRAINT [FK_T_ProductionPlanReopen_T_ProductionPlan]
GO
ALTER TABLE [dbo].[T_ProductionPlantAODownload]  WITH CHECK ADD  CONSTRAINT [FK_T_ProductionPlantAODownload_T_ProductionPlanAO] FOREIGN KEY([ProductionPlanAOID])
REFERENCES [dbo].[T_ProductionPlanAO] ([ProductionPlanAOID])
GO
ALTER TABLE [dbo].[T_ProductionPlantAODownload] CHECK CONSTRAINT [FK_T_ProductionPlantAODownload_T_ProductionPlanAO]
GO
ALTER TABLE [dbo].[T_ProductionPlantDetailTemp]  WITH CHECK ADD  CONSTRAINT [FK_T_ProductionPlantDetailTemp_T_ProductionPlanUpload] FOREIGN KEY([ProductionPlanUploadID])
REFERENCES [dbo].[T_ProductionPlanUpload] ([ProductionPlanUploadID])
GO
ALTER TABLE [dbo].[T_ProductionPlantDetailTemp] CHECK CONSTRAINT [FK_T_ProductionPlantDetailTemp_T_ProductionPlanUpload]
GO
ALTER TABLE [dbo].[T_ProductionPlantDownload]  WITH CHECK ADD  CONSTRAINT [FK_T_ProductionPlantDownload_T_ProductionPlanUploadPlant] FOREIGN KEY([ProductionPlanUploadPlantID])
REFERENCES [dbo].[T_ProductionPlanUploadPlant] ([ProductionPlanUploadPlantID])
GO
ALTER TABLE [dbo].[T_ProductionPlantDownload] CHECK CONSTRAINT [FK_T_ProductionPlantDownload_T_ProductionPlanUploadPlant]
GO
ALTER TABLE [dbo].[T_ProductionPlanUpload]  WITH CHECK ADD  CONSTRAINT [FK_T_ProductionPlanUpload_T_ProductionPlan] FOREIGN KEY([ProductionPlantID])
REFERENCES [dbo].[T_ProductionPlan] ([ProductionPlanID])
GO
ALTER TABLE [dbo].[T_ProductionPlanUpload] CHECK CONSTRAINT [FK_T_ProductionPlanUpload_T_ProductionPlan]
GO
ALTER TABLE [dbo].[T_ProductionPlanUploadPlant]  WITH CHECK ADD  CONSTRAINT [FK_T_ProductionPlanUploadPlant_T_ProductionPlanUpload] FOREIGN KEY([ProductionPlanUploadID])
REFERENCES [dbo].[T_ProductionPlanUpload] ([ProductionPlanUploadID])
GO
ALTER TABLE [dbo].[T_ProductionPlanUploadPlant] CHECK CONSTRAINT [FK_T_ProductionPlanUploadPlant_T_ProductionPlanUpload]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CAP/1 HR OT' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'M_LineCapacityOT', @level2type=N'COLUMN',@level2name=N'CapHROT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'No. of OT HR' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'M_LineCapacityOT', @level2type=N'COLUMN',@level2name=N'NoOTHR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Cap OT' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'M_LineCapacityOT', @level2type=N'COLUMN',@level2name=N'CapOT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Cap HW' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'M_LineCapacityOT', @level2type=N'COLUMN',@level2name=N'CapHW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Convert OT to HW' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'M_LineCapacityOT', @level2type=N'COLUMN',@level2name=N'ConvertOTHW'
GO
