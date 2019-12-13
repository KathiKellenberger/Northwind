CREATE TABLE [dbo].[Territories]
(
[TerritoryID] [nvarchar] (20) COLLATE Latin1_General_CI_AS NOT NULL,
[TerritoryDescription] [nchar] (50) COLLATE Latin1_General_CI_AS NOT NULL,
[RegionID] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Territories] ADD CONSTRAINT [PK_Territories] PRIMARY KEY NONCLUSTERED  ([TerritoryID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Territories] ADD CONSTRAINT [FK_Territories_Region] FOREIGN KEY ([RegionID]) REFERENCES [dbo].[Region] ([RegionID])
GO
