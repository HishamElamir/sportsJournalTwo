CREATE TABLE [dbo].[Rates]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [user_id] INT NOT NULL, 
    [article_id] INT NOT NULL, 
    [rate] INT NOT NULL, 
    [created_at] DATE NULL, 
    [updated_at] DATE NULL, 
    CONSTRAINT [FK_Rates_Users] FOREIGN KEY ([user_id]) REFERENCES [Users]([id]), 
    CONSTRAINT [FK_Rates_Articles] FOREIGN KEY ([article_id]) REFERENCES [Articles]([id])
)
