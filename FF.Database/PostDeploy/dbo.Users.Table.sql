PRINT 'Merging DATA in table [dbo].[Users] ...';
SET IDENTITY_INSERT [dbo].[Users] ON

MERGE [dbo].[Users] AS T
USING
(
	SELECT * 
	FROM (
	VALUES 
(1, 1, N'System', N'System', NULL, NULL, 1, CAST(N'2016-06-22 15:41:09.603' AS DateTime), 1, CAST(N'2016-06-22 15:41:09.603' AS DateTime), 1, 1)
,(2, 2, N'Rusty', N'Rusty', N'68502', NULL, 1, CAST(N'2016-06-22 15:41:30.137' AS DateTime), 2, CAST(N'2016-06-22 15:41:30.137' AS DateTime), 1, 1)
,(3, 3, N'Linda', N'Linda', N'68507', NULL, 1, CAST(N'2016-06-23 13:01:09.667' AS DateTime), 2, CAST(N'2016-06-23 13:01:09.667' AS DateTime), 1, 1)
,(4, 4, N'Jeff', N'Jeff', N'68510', NULL, 1, CAST(N'2016-06-23 13:01:58.173' AS DateTime), 2, CAST(N'2016-06-23 13:01:58.173' AS DateTime), 1, 1)
,(5, 5, N'Mindy', N'Mindy', N'68508', NULL, 1, CAST(N'2016-06-23 13:02:22.603' AS DateTime), 2, CAST(N'2016-06-23 13:02:22.603' AS DateTime), 1, 1)
,(6, 6, N'Pete', N'Pete', N'68502', NULL, 1, CAST(N'2016-06-23 13:02:53.353' AS DateTime), 2, CAST(N'2016-06-23 13:02:53.353' AS DateTime), 1, 1)
,(7, 7, N'Sharon', N'Sharon', N'68512', NULL, 1, CAST(N'2016-06-23 13:03:38.407' AS DateTime), 2, CAST(N'2016-06-23 13:03:38.407' AS DateTime), 0, 1)) AS vtable 
	([UserId], [UserLevelId], [Username], [DisplayName], [HomeZipCode], [HomeCoordinates], [AddedBy], [AddedWhen], [UpdatedBy], [UpdatedWhen], [IsApproved], [IsActive])
) AS S
ON T.[UserId] = S.[UserId]
WHEN NOT MATCHED THEN INSERT
	([UserId], [UserLevelId], [Username], [DisplayName], [HomeZipCode], [HomeCoordinates], [AddedBy], [AddedWhen], [UpdatedBy], [UpdatedWhen], [IsApproved], [IsActive])
	VALUES
	(S.[UserId], S.[UserLevelId], S.[Username], S.[DisplayName], S.[HomeZipCode], S.[HomeCoordinates], S.[AddedBy], S.[AddedWhen], S.[UpdatedBy], S.[UpdatedWhen], S.[IsApproved], S.[IsActive])
WHEN MATCHED THEN UPDATE SET
	 T.[UserLevelId] 	   = S.[UserLevelId] 		,
	 T.[Username]		   = S.[Username]			,
	 T.[DisplayName]	   = S.[DisplayName]		,
	 T.[HomeZipCode]	   = S.[HomeZipCode]		,
	 T.[HomeCoordinates]   = S.[HomeCoordinates]	,
	 T.[AddedBy] 	       = S.[AddedBy] 	        ,
	 T.[AddedWhen] 	       = S.[AddedWhen] 	        ,
	 T.[UpdatedBy]	       = S.[UpdatedBy]	        ,
	 T.[UpdatedWhen]       = S.[UpdatedWhen]        ,
	 T.[IsApproved]	       = S.[IsApproved]	        ,
	 T.[IsActive]	       = S.[IsActive]
	 ;

DELETE FROM [dbo].[Users]
WHERE [UserId] > 7

SET IDENTITY_INSERT [dbo].[Users] OFF

