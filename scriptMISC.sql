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
SET IDENTITY_INSERT [dbo].[M_MISC] ON 

INSERT [dbo].[M_MISC] ([MiscID], [MiscType], [MiscCode], [MiscDescription], [MiscSortNo]) VALUES (1, N'SEDFlow', N'FMC', N'Full change', 1)
INSERT [dbo].[M_MISC] ([MiscID], [MiscType], [MiscCode], [MiscDescription], [MiscSortNo]) VALUES (2, N'SEDFlow', N'MMC', N'Minor change', 2)
INSERT [dbo].[M_MISC] ([MiscID], [MiscType], [MiscCode], [MiscDescription], [MiscSortNo]) VALUES (3, N'SEDFlow', N'YMC', N'Year change', 3)
INSERT [dbo].[M_MISC] ([MiscID], [MiscType], [MiscCode], [MiscDescription], [MiscSortNo]) VALUES (4, N'SEDFlow', N'NEW', N'New Model', 4)
INSERT [dbo].[M_MISC] ([MiscID], [MiscType], [MiscCode], [MiscDescription], [MiscSortNo]) VALUES (5, N'UploadStatus', N'C', N'Complete', 1)
INSERT [dbo].[M_MISC] ([MiscID], [MiscType], [MiscCode], [MiscDescription], [MiscSortNo]) VALUES (6, N'UploadStatus', N'W', N'Warning', 2)
INSERT [dbo].[M_MISC] ([MiscID], [MiscType], [MiscCode], [MiscDescription], [MiscSortNo]) VALUES (7, N'UploadStatus', N'E', N'Error', 3)
INSERT [dbo].[M_MISC] ([MiscID], [MiscType], [MiscCode], [MiscDescription], [MiscSortNo]) VALUES (8, N'PlantStatus', N'O', N'OPEN', 1)
INSERT [dbo].[M_MISC] ([MiscID], [MiscType], [MiscCode], [MiscDescription], [MiscSortNo]) VALUES (9, N'PlantStatus', N'C', N'CLOSE', 2)
INSERT [dbo].[M_MISC] ([MiscID], [MiscType], [MiscCode], [MiscDescription], [MiscSortNo]) VALUES (10, N'PlantStatus', N'R', N'REOPEN', 3)
INSERT [dbo].[M_MISC] ([MiscID], [MiscType], [MiscCode], [MiscDescription], [MiscSortNo]) VALUES (11, N'ActiveStatus', N'A', N'Active', 1)
INSERT [dbo].[M_MISC] ([MiscID], [MiscType], [MiscCode], [MiscDescription], [MiscSortNo]) VALUES (12, N'ActiveStatus', N'I', N'Inactive', 2)
INSERT [dbo].[M_MISC] ([MiscID], [MiscType], [MiscCode], [MiscDescription], [MiscSortNo]) VALUES (13, N'ExclusiveCommon', N'EX', N'Exclusive', 1)
INSERT [dbo].[M_MISC] ([MiscID], [MiscType], [MiscCode], [MiscDescription], [MiscSortNo]) VALUES (14, N'ExclusiveCommon', N'CH', N'Common(Honda)', 2)
INSERT [dbo].[M_MISC] ([MiscID], [MiscType], [MiscCode], [MiscDescription], [MiscSortNo]) VALUES (15, N'ExclusiveCommon', N'CO', N'Common(Other OEM)', 3)
INSERT [dbo].[M_MISC] ([MiscID], [MiscType], [MiscCode], [MiscDescription], [MiscSortNo]) VALUES (16, N'DemandStatus', N'ALL', N'All', 1)
INSERT [dbo].[M_MISC] ([MiscID], [MiscType], [MiscCode], [MiscDescription], [MiscSortNo]) VALUES (17, N'DemandStatus', N'STD', N'Demand within Std. Cap', 2)
INSERT [dbo].[M_MISC] ([MiscID], [MiscType], [MiscCode], [MiscDescription], [MiscSortNo]) VALUES (18, N'DemandStatus', N'BTW', N'Demand within Std. and Max. Cap', 3)
INSERT [dbo].[M_MISC] ([MiscID], [MiscType], [MiscCode], [MiscDescription], [MiscSortNo]) VALUES (19, N'DemandStatus', N'MAX', N'Demand within Max. Cap', 4)
INSERT [dbo].[M_MISC] ([MiscID], [MiscType], [MiscCode], [MiscDescription], [MiscSortNo]) VALUES (20, N'MTOCStatus', N'A', N'Active', 1)
INSERT [dbo].[M_MISC] ([MiscID], [MiscType], [MiscCode], [MiscDescription], [MiscSortNo]) VALUES (21, N'MTOCStatus', N'I', N'Inactive', 2)
INSERT [dbo].[M_MISC] ([MiscID], [MiscType], [MiscCode], [MiscDescription], [MiscSortNo]) VALUES (22, N'MTOCStatus', N'R', N'Reactive', 3)
INSERT [dbo].[M_MISC] ([MiscID], [MiscType], [MiscCode], [MiscDescription], [MiscSortNo]) VALUES (23, N'MTOCStatus', N'D', N'Discontinues', 4)
INSERT [dbo].[M_MISC] ([MiscID], [MiscType], [MiscCode], [MiscDescription], [MiscSortNo]) VALUES (24, N'MTOCStatus', N'DE', N'Delete', 5)
INSERT [dbo].[M_MISC] ([MiscID], [MiscType], [MiscCode], [MiscDescription], [MiscSortNo]) VALUES (25, N'MainPlantStatus', N'Y', N'Yes', 1)
INSERT [dbo].[M_MISC] ([MiscID], [MiscType], [MiscCode], [MiscDescription], [MiscSortNo]) VALUES (26, N'MainPlantStatus', N'N', N'No', 2)
INSERT [dbo].[M_MISC] ([MiscID], [MiscType], [MiscCode], [MiscDescription], [MiscSortNo]) VALUES (27, N'SupplyPlantStatus', N'Y', N'Yes', 1)
INSERT [dbo].[M_MISC] ([MiscID], [MiscType], [MiscCode], [MiscDescription], [MiscSortNo]) VALUES (28, N'SupplyPlantStatus', N'N', N'No', 2)
INSERT [dbo].[M_MISC] ([MiscID], [MiscType], [MiscCode], [MiscDescription], [MiscSortNo]) VALUES (29, N'RoleType', N'LO', N'LO', 1)
INSERT [dbo].[M_MISC] ([MiscID], [MiscType], [MiscCode], [MiscDescription], [MiscSortNo]) VALUES (30, N'RoleType', N'RO', N'RO', 2)
INSERT [dbo].[M_MISC] ([MiscID], [MiscType], [MiscCode], [MiscDescription], [MiscSortNo]) VALUES (31, N'ControlVersion', N'Y', N'Yes', 1)
INSERT [dbo].[M_MISC] ([MiscID], [MiscType], [MiscCode], [MiscDescription], [MiscSortNo]) VALUES (32, N'ControlVersion', N'N', N'No', 2)
INSERT [dbo].[M_MISC] ([MiscID], [MiscType], [MiscCode], [MiscDescription], [MiscSortNo]) VALUES (33, N'GPSPFileType', N'KD', N'KD+SP', 1)
INSERT [dbo].[M_MISC] ([MiscID], [MiscType], [MiscCode], [MiscDescription], [MiscSortNo]) VALUES (34, N'GPSPFileType', N'LP', N'LP', 2)
INSERT [dbo].[M_MISC] ([MiscID], [MiscType], [MiscCode], [MiscDescription], [MiscSortNo]) VALUES (35, N'MainProcessStatus', N'IP', N'In progress', 1)
INSERT [dbo].[M_MISC] ([MiscID], [MiscType], [MiscCode], [MiscDescription], [MiscSortNo]) VALUES (36, N'MainProcessStatus', N'FN', N'Finish', 2)
INSERT [dbo].[M_MISC] ([MiscID], [MiscType], [MiscCode], [MiscDescription], [MiscSortNo]) VALUES (37, N'MainProcessStatus', N'FE', N'Finish (Error)', 3)
INSERT [dbo].[M_MISC] ([MiscID], [MiscType], [MiscCode], [MiscDescription], [MiscSortNo]) VALUES (38, N'SubProcessStatus', N'U', N'Processing', 2)
INSERT [dbo].[M_MISC] ([MiscID], [MiscType], [MiscCode], [MiscDescription], [MiscSortNo]) VALUES (39, N'SubProcessStatus', N'C', N'Complete', 3)
INSERT [dbo].[M_MISC] ([MiscID], [MiscType], [MiscCode], [MiscDescription], [MiscSortNo]) VALUES (40, N'SubProcessStatus', N'I', N'Incomplete', 4)
INSERT [dbo].[M_MISC] ([MiscID], [MiscType], [MiscCode], [MiscDescription], [MiscSortNo]) VALUES (41, N'UploadStatus', N'P', N'Processing', 4)
INSERT [dbo].[M_MISC] ([MiscID], [MiscType], [MiscCode], [MiscDescription], [MiscSortNo]) VALUES (42, N'GPSPGroup', N'GOP(KD)', N'KD', 1)
INSERT [dbo].[M_MISC] ([MiscID], [MiscType], [MiscCode], [MiscDescription], [MiscSortNo]) VALUES (43, N'GPSPGroup', N'SP', N'SP', 2)
INSERT [dbo].[M_MISC] ([MiscID], [MiscType], [MiscCode], [MiscDescription], [MiscSortNo]) VALUES (44, N'GPSPGroup', N'GOP(LP)', N'LP', 3)
INSERT [dbo].[M_MISC] ([MiscID], [MiscType], [MiscCode], [MiscDescription], [MiscSortNo]) VALUES (45, N'SubProcessStatus', N'R', N'Ready', 1)
SET IDENTITY_INSERT [dbo].[M_MISC] OFF
