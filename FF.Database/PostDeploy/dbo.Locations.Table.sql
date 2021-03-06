PRINT 'Merging DATA in table [dbo].[Locations] ...';
SET IDENTITY_INSERT [dbo].[Locations] ON
MERGE [dbo].[Locations] AS T
USING
(
	SELECT * 
	FROM (
	VALUES 
 (1, N'ChIJiV97JxiWlocRWLwvkcDwZHw', N'Super Saver', 0xE6100000010C4227840EBA6844403337DF88EE2958C0, N'Super Saver 56th & Hwy 2', 1, NULL, 1, CAST(N'2016-06-23 12:46:22.167' AS DateTime), 1, CAST(N'2016-06-23 12:46:22.167' AS DateTime), 1, 1)
,(2, N'ChIJMya5ZceVlocR7j6awgpuImw', N'Super Saver', 0xE6100000010CD2C43BC0935E44402D7B12D89C2B58C0, N'Super Saver 27th & Pine Lake Rd', 1, NULL, 1, CAST(N'2016-06-23 12:48:47.703' AS DateTime), 1, CAST(N'2016-06-23 12:48:47.703' AS DateTime), 1, 1)
,(3, N'ChIJlSW3DdWVlocR3iKwXj_PM08', N'Super Target', 0xE6100000010C0E12A27C416144402157EA59102958C0, N'Super Target, 56th & Old Cheney', 1, NULL, 1, CAST(N'2016-06-23 12:50:10.300' AS DateTime), 1, CAST(N'2016-06-23 12:50:10.300' AS DateTime), 1, 1)
,(4, N'ChIJb8avHeKVlocRBp0YMbUIG78', N'Hy Vee', 0xE6100000010CF9872D3D9A6244404E7ADFF8DA2758C0, N'Hy Vee, 70th & Pioneers Blvd', 1, NULL, 1, CAST(N'2016-06-23 12:51:23.573' AS DateTime), 1, CAST(N'2016-06-23 12:51:23.573' AS DateTime), 1, 1)) AS vtable 
	([LocationId], [PlaceId], [Name], [Coordinates], [Description], [IsPermanent], [AkaLocationId], [AddedBy], [AddedWhen], [UpdatedBy], [UpdatedWhen], [IsApproved], [IsActive])
) AS S
ON T.[LocationId] = S.[LocationId]
WHEN NOT MATCHED THEN INSERT
	([LocationId], [PlaceId], [Name], [Coordinates], [Description], [IsPermanent], [AkaLocationId], [AddedBy], [AddedWhen], [UpdatedBy], [UpdatedWhen], [IsApproved], [IsActive])
	VALUES
	(S.[LocationId], [PlaceId], S.[Name], S.[Coordinates], S.[Description], S.[IsPermanent], S.[AkaLocationId], S.[AddedBy], S.[AddedWhen], S.[UpdatedBy], S.[UpdatedWhen], S.[IsApproved], S.[IsActive])
WHEN MATCHED THEN UPDATE SET
	 T.[Name]			   = S.[Name]				,
	 T.[PlaceId]           = S.[PlaceId]            ,
	 T.[Coordinates]	   = S.[Coordinates]		,
	 T.[Description]	   = S.[Description]		,
	 T.[IsPermanent]	   = S.[IsPermanent]		,
	 T.[AkaLocationId]	   = S.[AkaLocationId]		,
	 T.[AddedBy] 	       = S.[AddedBy] 	        ,
	 T.[AddedWhen] 	       = S.[AddedWhen] 	        ,
	 T.[UpdatedBy]	       = S.[UpdatedBy]	        ,
	 T.[UpdatedWhen]       = S.[UpdatedWhen]        ,
	 T.[IsApproved]	       = S.[IsApproved]	        ,
	 T.[IsActive]	       = S.[IsActive]
	 ;

DELETE FROM [dbo].[Locations]
WHERE [LocationId] > 4;

SET IDENTITY_INSERT [dbo].[Locations] OFF