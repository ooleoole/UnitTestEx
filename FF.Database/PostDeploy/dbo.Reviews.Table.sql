PRINT 'Merging DATA in table [dbo].[Reviews] ...';
SET IDENTITY_INSERT [dbo].[Reviews] ON 

MERGE [dbo].[Reviews] AS T
USING
(
	SELECT * 
	FROM (
	VALUES 
(1, 3, 1, 1, CAST(N'2016-06-24 20:40:47.657' AS DateTime), 2, N'Tasted woody', NULL, CAST(N'2016-06-24 20:40:47.657' AS DateTime), 0, 1, 3, CAST(N'2016-06-24 20:40:47.657' AS DateTime), 3, CAST(N'2016-06-24 20:40:47.657' AS DateTime), 1, 1)
,(2, 4, 2, 2, CAST(N'2016-06-24 20:48:16.620' AS DateTime), 5, N'Perfect', NULL, CAST(N'2016-06-24 20:48:16.620' AS DateTime), 0, 1, 4, CAST(N'2016-06-24 20:48:16.620' AS DateTime), 4, CAST(N'2016-06-24 20:48:16.620' AS DateTime), 1, 1)
,(3, 5, 3, 4, CAST(N'2016-06-24 20:49:02.653' AS DateTime), 3, NULL, NULL, CAST(N'2016-06-24 20:49:02.653' AS DateTime), 0.054, 5, 5, CAST(N'2016-06-24 20:49:02.653' AS DateTime), 5, CAST(N'2016-06-24 20:49:02.653' AS DateTime), 1, 1)
,(4, 4, 2, 6, CAST(N'2016-06-24 20:49:35.420' AS DateTime), 1, N'Rotten', NULL, CAST(N'2016-06-24 20:49:35.420' AS DateTime), -0.015, -4, 4, CAST(N'2016-06-24 20:49:35.420' AS DateTime), 4, CAST(N'2016-06-24 20:49:35.420' AS DateTime), 1, 1)) AS vtable 
	([ReviewId], [UserId], [LocationId], [FruitId], [AquiredWhen], [UserRating], [Comment], [Image], [RecordedWhen], [FreshnessScore], [VoteTally], [AddedBy], [AddedWhen], [UpdatedBy], [UpdatedWhen], [IsApproved], [IsActive])
) AS S
ON T.[ReviewId] = S.[ReviewId]
WHEN NOT MATCHED THEN INSERT
	([ReviewId], [UserId], [LocationId], [FruitId], [AquiredWhen], [UserRating], [Comment], [Image], [RecordedWhen], [FreshnessScore], [VoteTally], [AddedBy], [AddedWhen], [UpdatedBy], [UpdatedWhen], [IsApproved], [IsActive])
	VALUES
	(S.[ReviewId], S.[UserId], S.[LocationId], S.[FruitId], S.[AquiredWhen], S.[UserRating], S.[Comment], S.[Image], S.[RecordedWhen], S.[FreshnessScore], S.[VoteTally], S.[AddedBy], S.[AddedWhen], S.[UpdatedBy], S.[UpdatedWhen], S.[IsApproved], S.[IsActive])
WHEN MATCHED THEN UPDATE SET
	 T.[UserId]			   = S.[UserId]				,
	 T.[LocationId]		   = S.[LocationId]			,
	 T.[FruitId]		   = S.[FruitId]			,
	 T.[AquiredWhen]	   = S.[AquiredWhen]		,
	 T.[UserRating]		   = S.[UserRating]			,
	 T.[Comment]		   = S.[Comment]			,
	 T.[Image]			   = S.[Image]				,
	 T.[RecordedWhen]	   = S.[RecordedWhen]		,
	 T.[FreshnessScore]	   = S.[FreshnessScore]		,
	 T.[VoteTally] 		   = S.[VoteTally] 			,
	 T.[AddedBy] 	       = S.[AddedBy] 	        ,
	 T.[AddedWhen] 	       = S.[AddedWhen] 	        ,
	 T.[UpdatedBy]	       = S.[UpdatedBy]	        ,
	 T.[UpdatedWhen]       = S.[UpdatedWhen]        ,
	 T.[IsApproved]	       = S.[IsApproved]	        ,
	 T.[IsActive]	       = S.[IsActive]
	 ;

DELETE FROM [dbo].[Reviews]
WHERE [ReviewId] > 4;


SET IDENTITY_INSERT [dbo].[Reviews] OFF

