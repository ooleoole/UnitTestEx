PRINT 'Merging DATA in table [dbo].[Fruits] ...';
SET IDENTITY_INSERT [dbo].[Fruits] ON
MERGE [dbo].[Fruits] AS T
USING
(
	SELECT * 
	FROM (
	VALUES 
(1, N'Apple', NULL, NULL, N'https://en.wikipedia.org/wiki/Apple', NULL, 1, CAST(N'2016-06-22 15:42:24.617' AS DateTime), 1, CAST(N'2016-06-22 15:42:24.617' AS DateTime), 1, 1)
,(2, N'Apricot', NULL, NULL, N'https://en.wikipedia.org/wiki/Apricot', NULL, 1, CAST(N'2016-06-22 15:42:30.203' AS DateTime), 1, CAST(N'2016-06-22 15:42:30.203' AS DateTime), 1, 1)
,(3, N'Avocado', NULL, NULL, N'https://en.wikipedia.org/wiki/Avocado', NULL, 1, CAST(N'2016-06-22 15:42:30.223' AS DateTime), 1, CAST(N'2016-06-22 15:42:30.223' AS DateTime), 1, 1)
,(4, N'Banana', NULL, NULL, N'https://en.wikipedia.org/wiki/Banana', NULL, 1, CAST(N'2016-06-22 15:42:30.243' AS DateTime), 1, CAST(N'2016-06-22 15:42:30.243' AS DateTime), 1, 1)
,(5, N'Bilberry', NULL, NULL, N'https://en.wikipedia.org/wiki/Bilberry', NULL, 1, CAST(N'2016-06-22 15:42:30.250' AS DateTime), 1, CAST(N'2016-06-22 15:42:30.250' AS DateTime), 1, 1)
,(6, N'Blackberry', NULL, NULL, N'https://en.wikipedia.org/wiki/Blackberry', NULL, 1, CAST(N'2016-06-22 15:42:30.250' AS DateTime), 1, CAST(N'2016-06-22 15:42:30.250' AS DateTime), 1, 1)
,(7, N'Blackcurrant', NULL, NULL, N'https://en.wikipedia.org/wiki/Blackcurrant', NULL, 1, CAST(N'2016-06-22 15:42:30.250' AS DateTime), 1, CAST(N'2016-06-22 15:42:30.250' AS DateTime), 1, 1)
,(8, N'Blueberry', NULL, NULL, N'https://en.wikipedia.org/wiki/Blueberry', NULL, 1, CAST(N'2016-06-22 15:42:30.253' AS DateTime), 1, CAST(N'2016-06-22 15:42:30.253' AS DateTime), 1, 1)
,(9, N'Boysenberry', NULL, NULL, N'https://en.wikipedia.org/wiki/Boysenberry', NULL, 1, CAST(N'2016-06-22 15:42:30.253' AS DateTime), 1, CAST(N'2016-06-22 15:42:30.253' AS DateTime), 1, 1)
,(10, N'Currant', NULL, NULL, N'https://en.wikipedia.org/wiki/Currant', NULL, 1, CAST(N'2016-06-22 15:42:30.253' AS DateTime), 1, CAST(N'2016-06-22 15:42:30.253' AS DateTime), 1, 1)
,(11, N'Cherry', NULL, NULL, N'https://en.wikipedia.org/wiki/Cherry', NULL, 1, CAST(N'2016-06-22 15:42:30.253' AS DateTime), 1, CAST(N'2016-06-22 15:42:30.253' AS DateTime), 1, 1)
,(12, N'Cherimoya', NULL, NULL, N'https://en.wikipedia.org/wiki/Cherimoya', NULL, 1, CAST(N'2016-06-22 15:42:30.253' AS DateTime), 1, CAST(N'2016-06-22 15:42:30.253' AS DateTime), 1, 1)
,(13, N'Cloudberry', NULL, NULL, N'https://en.wikipedia.org/wiki/Cloudberry', NULL, 1, CAST(N'2016-06-22 15:42:30.253' AS DateTime), 1, CAST(N'2016-06-22 15:42:30.253' AS DateTime), 1, 1)
,(14, N'Coconut', NULL, NULL, N'https://en.wikipedia.org/wiki/Coconut', NULL, 1, CAST(N'2016-06-22 15:42:30.253' AS DateTime), 1, CAST(N'2016-06-22 15:42:30.253' AS DateTime), 1, 1)
,(15, N'Cranberry', NULL, NULL, N'https://en.wikipedia.org/wiki/Cranberry', NULL, 1, CAST(N'2016-06-22 15:42:30.253' AS DateTime), 1, CAST(N'2016-06-22 15:42:30.253' AS DateTime), 1, 1)
,(16, N'Damson', NULL, NULL, N'https://en.wikipedia.org/wiki/Damson', NULL, 1, CAST(N'2016-06-22 15:42:30.253' AS DateTime), 1, CAST(N'2016-06-22 15:42:30.253' AS DateTime), 1, 1)
,(17, N'Date', NULL, NULL, N'https://en.wikipedia.org/wiki/Date', NULL, 1, CAST(N'2016-06-22 15:42:30.253' AS DateTime), 1, CAST(N'2016-06-22 15:42:30.253' AS DateTime), 1, 1)
,(18, N'Dragonfruit', NULL, NULL, N'https://en.wikipedia.org/wiki/Dragonfruit', NULL, 1, CAST(N'2016-06-22 15:42:30.253' AS DateTime), 1, CAST(N'2016-06-22 15:42:30.253' AS DateTime), 1, 1)
,(19, N'Durian', NULL, NULL, N'https://en.wikipedia.org/wiki/Durian', NULL, 1, CAST(N'2016-06-22 15:42:30.253' AS DateTime), 1, CAST(N'2016-06-22 15:42:30.253' AS DateTime), 1, 1)
,(20, N'Elderberry', NULL, NULL, N'https://en.wikipedia.org/wiki/Elderberry', NULL, 1, CAST(N'2016-06-22 15:42:30.253' AS DateTime), 1, CAST(N'2016-06-22 15:42:30.253' AS DateTime), 1, 1)
,(21, N'Feijoa', NULL, NULL, N'https://en.wikipedia.org/wiki/Feijoa', NULL, 1, CAST(N'2016-06-22 15:42:30.253' AS DateTime), 1, CAST(N'2016-06-22 15:42:30.253' AS DateTime), 1, 1)
,(22, N'Fig', NULL, NULL, N'https://en.wikipedia.org/wiki/Fig', NULL, 1, CAST(N'2016-06-22 15:42:30.253' AS DateTime), 1, CAST(N'2016-06-22 15:42:30.253' AS DateTime), 1, 1)
,(23, N'Goji berry', NULL, NULL, N'https://en.wikipedia.org/wiki/Goji_berry', NULL, 1, CAST(N'2016-06-22 15:42:30.253' AS DateTime), 1, CAST(N'2016-06-22 15:42:30.253' AS DateTime), 1, 1)
,(24, N'Gooseberry', NULL, NULL, N'https://en.wikipedia.org/wiki/Gooseberry', NULL, 1, CAST(N'2016-06-22 15:42:30.253' AS DateTime), 1, CAST(N'2016-06-22 15:42:30.253' AS DateTime), 1, 1)
,(25, N'Grape', NULL, NULL, N'https://en.wikipedia.org/wiki/Grape', NULL, 1, CAST(N'2016-06-22 15:42:30.253' AS DateTime), 1, CAST(N'2016-06-22 15:42:30.253' AS DateTime), 1, 1)
,(26, N'Grapefruit', NULL, NULL, N'https://en.wikipedia.org/wiki/Grapefruit', NULL, 1, CAST(N'2016-06-22 15:42:30.257' AS DateTime), 1, CAST(N'2016-06-22 15:42:30.257' AS DateTime), 1, 1)
,(27, N'Guava', NULL, NULL, N'https://en.wikipedia.org/wiki/Guava', NULL, 1, CAST(N'2016-06-22 15:42:30.257' AS DateTime), 1, CAST(N'2016-06-22 15:42:30.257' AS DateTime), 1, 1)
,(28, N'Huckleberry', NULL, NULL, N'https://en.wikipedia.org/wiki/Huckleberry', NULL, 1, CAST(N'2016-06-22 15:42:30.257' AS DateTime), 1, CAST(N'2016-06-22 15:42:30.257' AS DateTime), 1, 1)
,(29, N'Jabuticaba', NULL, NULL, N'https://en.wikipedia.org/wiki/Jabuticaba', NULL, 1, CAST(N'2016-06-22 15:42:30.257' AS DateTime), 1, CAST(N'2016-06-22 15:42:30.257' AS DateTime), 1, 1)
,(30, N'Jackfruit', NULL, NULL, N'https://en.wikipedia.org/wiki/Jackfruit', NULL, 1, CAST(N'2016-06-22 15:42:30.257' AS DateTime), 1, CAST(N'2016-06-22 15:42:30.257' AS DateTime), 1, 1)
,(31, N'Jambul', NULL, NULL, N'https://en.wikipedia.org/wiki/Jambul', NULL, 1, CAST(N'2016-06-22 15:42:30.257' AS DateTime), 1, CAST(N'2016-06-22 15:42:30.257' AS DateTime), 1, 1)
,(32, N'Jujube', NULL, NULL, N'https://en.wikipedia.org/wiki/Jujube', NULL, 1, CAST(N'2016-06-22 15:42:30.257' AS DateTime), 1, CAST(N'2016-06-22 15:42:30.257' AS DateTime), 1, 1)
,(33, N'Juniper berry', NULL, NULL, N'https://en.wikipedia.org/wiki/Juniper berry', NULL, 1, CAST(N'2016-06-22 15:42:30.257' AS DateTime), 1, CAST(N'2016-06-22 15:42:30.257' AS DateTime), 1, 1)
,(34, N'Kiwifruit', NULL, NULL, N'https://en.wikipedia.org/wiki/Kiwifruit', NULL, 1, CAST(N'2016-06-22 15:42:30.257' AS DateTime), 1, CAST(N'2016-06-22 15:42:30.257' AS DateTime), 1, 1)
,(35, N'Kumquat', NULL, NULL, N'https://en.wikipedia.org/wiki/Kumquat', NULL, 1, CAST(N'2016-06-22 15:42:30.257' AS DateTime), 1, CAST(N'2016-06-22 15:42:30.257' AS DateTime), 1, 1)
,(36, N'Lemon', NULL, NULL, N'https://en.wikipedia.org/wiki/Lemon', NULL, 1, CAST(N'2016-06-22 15:42:30.257' AS DateTime), 1, CAST(N'2016-06-22 15:42:30.257' AS DateTime), 1, 1)
,(37, N'Lime', NULL, NULL, N'https://en.wikipedia.org/wiki/Lime', NULL, 1, CAST(N'2016-06-22 15:42:30.257' AS DateTime), 1, CAST(N'2016-06-22 15:42:30.257' AS DateTime), 1, 1)
,(38, N'Loquat', NULL, NULL, N'https://en.wikipedia.org/wiki/Loquat', NULL, 1, CAST(N'2016-06-22 15:42:30.257' AS DateTime), 1, CAST(N'2016-06-22 15:42:30.257' AS DateTime), 1, 1)
,(39, N'Longan', NULL, NULL, N'https://en.wikipedia.org/wiki/Longan', NULL, 1, CAST(N'2016-06-22 15:42:30.257' AS DateTime), 1, CAST(N'2016-06-22 15:42:30.257' AS DateTime), 1, 1)
,(40, N'Lychee', NULL, NULL, N'https://en.wikipedia.org/wiki/Lychee', NULL, 1, CAST(N'2016-06-22 15:42:30.257' AS DateTime), 1, CAST(N'2016-06-22 15:42:30.257' AS DateTime), 1, 1)
,(41, N'Mango', NULL, NULL, N'https://en.wikipedia.org/wiki/Mango', NULL, 1, CAST(N'2016-06-22 15:42:30.257' AS DateTime), 1, CAST(N'2016-06-22 15:42:30.257' AS DateTime), 1, 1)
,(42, N'Marionberry', NULL, NULL, N'https://en.wikipedia.org/wiki/Marionberry', NULL, 1, CAST(N'2016-06-22 15:42:30.257' AS DateTime), 1, CAST(N'2016-06-22 15:42:30.257' AS DateTime), 1, 1)
,(43, N'Melon', NULL, NULL, N'https://en.wikipedia.org/wiki/Melon', NULL, 1, CAST(N'2016-06-22 15:42:30.257' AS DateTime), 1, CAST(N'2016-06-22 15:42:30.257' AS DateTime), 1, 1)
,(44, N'Miracle fruit', NULL, NULL, N'https://en.wikipedia.org/wiki/Miracle fruit', NULL, 1, CAST(N'2016-06-22 15:42:30.257' AS DateTime), 1, CAST(N'2016-06-22 15:42:30.257' AS DateTime), 1, 1)
,(45, N'Mulberry', NULL, NULL, N'https://en.wikipedia.org/wiki/Mulberry', NULL, 1, CAST(N'2016-06-22 15:42:30.257' AS DateTime), 1, CAST(N'2016-06-22 15:42:30.257' AS DateTime), 1, 1)
,(46, N'Nectarine', NULL, NULL, N'https://en.wikipedia.org/wiki/Nectarine', NULL, 1, CAST(N'2016-06-22 15:42:30.257' AS DateTime), 1, CAST(N'2016-06-22 15:42:30.257' AS DateTime), 1, 1)
,(47, N'Nance', NULL, NULL, N'https://en.wikipedia.org/wiki/Nance', NULL, 1, CAST(N'2016-06-22 15:42:30.257' AS DateTime), 1, CAST(N'2016-06-22 15:42:30.257' AS DateTime), 1, 1)
,(48, N'Olive', NULL, NULL, N'https://en.wikipedia.org/wiki/Olive', NULL, 1, CAST(N'2016-06-22 15:42:30.260' AS DateTime), 1, CAST(N'2016-06-22 15:42:30.260' AS DateTime), 1, 1)
,(49, N'Orange', NULL, NULL, N'https://en.wikipedia.org/wiki/Orange', NULL, 1, CAST(N'2016-06-22 15:42:30.260' AS DateTime), 1, CAST(N'2016-06-22 15:42:30.260' AS DateTime), 1, 1)
,(50, N'Papaya', NULL, NULL, N'https://en.wikipedia.org/wiki/Papaya', NULL, 1, CAST(N'2016-06-22 15:42:30.260' AS DateTime), 1, CAST(N'2016-06-22 15:42:30.260' AS DateTime), 1, 1)
,(51, N'Passionfruit', NULL, NULL, N'https://en.wikipedia.org/wiki/Passionfruit', NULL, 1, CAST(N'2016-06-22 15:42:30.260' AS DateTime), 1, CAST(N'2016-06-22 15:42:30.260' AS DateTime), 1, 1)
,(52, N'Peach', NULL, NULL, N'https://en.wikipedia.org/wiki/Peach', NULL, 1, CAST(N'2016-06-22 15:42:30.260' AS DateTime), 1, CAST(N'2016-06-22 15:42:30.260' AS DateTime), 1, 1)
,(53, N'Pear', NULL, NULL, N'https://en.wikipedia.org/wiki/Pear', NULL, 1, CAST(N'2016-06-22 15:42:30.260' AS DateTime), 1, CAST(N'2016-06-22 15:42:30.260' AS DateTime), 1, 1)
,(54, N'Persimmon', NULL, NULL, N'https://en.wikipedia.org/wiki/Persimmon', NULL, 1, CAST(N'2016-06-22 15:42:30.260' AS DateTime), 1, CAST(N'2016-06-22 15:42:30.260' AS DateTime), 1, 1)
,(55, N'Physalis', NULL, NULL, N'https://en.wikipedia.org/wiki/Physalis', NULL, 1, CAST(N'2016-06-22 15:42:30.260' AS DateTime), 1, CAST(N'2016-06-22 15:42:30.260' AS DateTime), 1, 1)
,(56, N'Plantain', NULL, NULL, N'https://en.wikipedia.org/wiki/Plantain', NULL, 1, CAST(N'2016-06-22 15:42:30.263' AS DateTime), 1, CAST(N'2016-06-22 15:42:30.263' AS DateTime), 1, 1)
,(57, N'Plum', NULL, NULL, N'https://en.wikipedia.org/wiki/Plum', NULL, 1, CAST(N'2016-06-22 15:42:30.263' AS DateTime), 1, CAST(N'2016-06-22 15:42:30.263' AS DateTime), 1, 1)
,(58, N'Pineapple', NULL, NULL, N'https://en.wikipedia.org/wiki/Pineapple', NULL, 1, CAST(N'2016-06-22 15:42:30.263' AS DateTime), 1, CAST(N'2016-06-22 15:42:30.263' AS DateTime), 1, 1)
,(59, N'Pomegranate', NULL, NULL, N'https://en.wikipedia.org/wiki/Pomegranate', NULL, 1, CAST(N'2016-06-22 15:42:30.263' AS DateTime), 1, CAST(N'2016-06-22 15:42:30.263' AS DateTime), 1, 1)
,(60, N'Pomelo', NULL, NULL, N'https://en.wikipedia.org/wiki/Pomelo', NULL, 1, CAST(N'2016-06-22 15:42:30.263' AS DateTime), 1, CAST(N'2016-06-22 15:42:30.263' AS DateTime), 1, 1)
,(61, N'Purple mangosteen', NULL, NULL, N'https://en.wikipedia.org/wiki/Purple mangosteen', NULL, 1, CAST(N'2016-06-22 15:42:30.263' AS DateTime), 1, CAST(N'2016-06-22 15:42:30.263' AS DateTime), 1, 1)
,(62, N'Quince', NULL, NULL, N'https://en.wikipedia.org/wiki/Quince', NULL, 1, CAST(N'2016-06-22 15:42:30.263' AS DateTime), 1, CAST(N'2016-06-22 15:42:30.263' AS DateTime), 1, 1)
,(63, N'Raspberry', NULL, NULL, N'https://en.wikipedia.org/wiki/Raspberry', NULL, 1, CAST(N'2016-06-22 15:42:30.263' AS DateTime), 1, CAST(N'2016-06-22 15:42:30.263' AS DateTime), 1, 1)
,(64, N'Rambutan', NULL, NULL, N'https://en.wikipedia.org/wiki/Rambutan', NULL, 1, CAST(N'2016-06-22 15:42:30.263' AS DateTime), 1, CAST(N'2016-06-22 15:42:30.263' AS DateTime), 1, 1)
,(65, N'Redcurrant', NULL, NULL, N'https://en.wikipedia.org/wiki/Redcurrant', NULL, 1, CAST(N'2016-06-22 15:42:30.263' AS DateTime), 1, CAST(N'2016-06-22 15:42:30.263' AS DateTime), 1, 1)
,(66, N'Salal', NULL, NULL, N'https://en.wikipedia.org/wiki/Salal', NULL, 1, CAST(N'2016-06-22 15:42:30.263' AS DateTime), 1, CAST(N'2016-06-22 15:42:30.263' AS DateTime), 1, 1)
,(67, N'Salak', NULL, NULL, N'https://en.wikipedia.org/wiki/Salak', NULL, 1, CAST(N'2016-06-22 15:42:30.263' AS DateTime), 1, CAST(N'2016-06-22 15:42:30.263' AS DateTime), 1, 1)
,(68, N'Satsuma', NULL, NULL, N'https://en.wikipedia.org/wiki/Satsuma', NULL, 1, CAST(N'2016-06-22 15:42:30.267' AS DateTime), 1, CAST(N'2016-06-22 15:42:30.267' AS DateTime), 1, 1)
,(69, N'Star fruit', NULL, NULL, N'https://en.wikipedia.org/wiki/Star_fruit', NULL, 1, CAST(N'2016-06-22 15:42:30.267' AS DateTime), 1, CAST(N'2016-06-22 15:42:30.267' AS DateTime), 1, 1)
,(70, N'Strawberry', NULL, NULL, N'https://en.wikipedia.org/wiki/Strawberry', NULL, 1, CAST(N'2016-06-22 15:42:30.267' AS DateTime), 1, CAST(N'2016-06-22 15:42:30.267' AS DateTime), 1, 1)
,(71, N'Tamarillo', NULL, NULL, N'https://en.wikipedia.org/wiki/Tamarillo', NULL, 1, CAST(N'2016-06-22 15:42:30.267' AS DateTime), 1, CAST(N'2016-06-22 15:42:30.267' AS DateTime), 1, 1)
,(72, N'Tamarind', NULL, NULL, N'https://en.wikipedia.org/wiki/Tamarind', NULL, 1, CAST(N'2016-06-22 15:42:30.267' AS DateTime), 1, CAST(N'2016-06-22 15:42:30.267' AS DateTime), 1, 1)
,(73, N'Tomato', NULL, NULL, N'https://en.wikipedia.org/wiki/Tomato', NULL, 1, CAST(N'2016-06-22 15:42:30.267' AS DateTime), 1, CAST(N'2016-06-22 15:42:30.267' AS DateTime), 1, 1)
,(74, N'Ugli fruit', NULL, NULL, N'https://en.wikipedia.org/wiki/Ugli_fruit', NULL, 1, CAST(N'2016-06-22 15:42:30.267' AS DateTime), 1, CAST(N'2016-06-22 15:42:30.267' AS DateTime), 1, 1)
,(76, N'Watermellon', NULL, NULL, N'https://en.wikipedia.org/wiki/Watermellon', NULL, 1, CAST(N'2016-06-23 12:37:21.043' AS DateTime), 1, CAST(N'2016-06-23 12:37:21.043' AS DateTime), 1, 1)) AS vtable 
	([FruitId], [Name], [Summary], [Description], [WikiLink], [StockImage], [AddedBy], [AddedWhen], [UpdatedBy], [UpdatedWhen], [IsApproved], [IsActive])
) AS S
ON T.[FruitId] = S.[FruitId]
WHEN NOT MATCHED THEN INSERT
	([FruitId], [Name], [Summary], [Description], [WikiLink], [StockImage], [AddedBy], [AddedWhen], [UpdatedBy], [UpdatedWhen], [IsApproved], [IsActive])
	VALUES
	(S.[FruitId], S.[Name], S.[Summary], S.[Description], S.[WikiLink], S.[StockImage], S.[AddedBy], S.[AddedWhen], S.[UpdatedBy], S.[UpdatedWhen], S.[IsApproved], S.[IsActive])
WHEN MATCHED THEN UPDATE SET
	 T.[Name]          = S.[Name]          ,
	 T.[Summary]	   = S.[Summary]	   ,
	 T.[Description]   = S.[Description]   ,
	 T.[WikiLink]	   = S.[WikiLink]	   ,
	 T.[StockImage]	   = S.[StockImage]	   ,
	 T.[AddedBy] 	   = S.[AddedBy] 	   ,
	 T.[AddedWhen] 	   = S.[AddedWhen] 	   ,
	 T.[UpdatedBy]	   = S.[UpdatedBy]	   ,
	 T.[UpdatedWhen]   = S.[UpdatedWhen]   ,
	 T.[IsApproved]	   = S.[IsApproved]	   ,
	 T.[IsActive]	   = S.[IsActive]
	 ;

DELETE FROM [dbo].[Fruits]
WHERE [FruitId] > 76

SET IDENTITY_INSERT [dbo].[Fruits] OFF
