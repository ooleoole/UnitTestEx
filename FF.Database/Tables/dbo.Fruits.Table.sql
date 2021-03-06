CREATE TABLE [dbo].[Fruits](
	[FruitId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[Summary] [nvarchar](500) NULL,
	[Description] [nvarchar](max) NULL,
	[WikiLink] [varchar](200) NULL,
	[StockImage] [varbinary](max) NULL,
	[AddedBy] [int] NOT NULL,
	[AddedWhen] [datetime] NOT NULL CONSTRAINT [DF_Fruits_AddedWhen_1]  DEFAULT (getutcdate()),
	[UpdatedBy] [int] NOT NULL,
	[UpdatedWhen] [datetime] NOT NULL CONSTRAINT [DF_Fruits_UpdatedWhen_1]  DEFAULT (getutcdate()),
	[IsApproved] [bit] NOT NULL CONSTRAINT [DF_Fruits_IsApproved_1]  DEFAULT ((1)),
	[IsActive] [bit] NOT NULL CONSTRAINT [DF_Fruits_IsActive]  DEFAULT ((1)),
	CONSTRAINT [PK_Fruits] PRIMARY KEY CLUSTERED ([FruitId] ASC)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

