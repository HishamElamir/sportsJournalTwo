CREATE TABLE [dbo].[Favorites]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [user_id] INT NOT NULL, 
    [article_id] INT NOT NULL, 
    CONSTRAINT [FK_Favorites_Users] FOREIGN KEY ([user_id]) REFERENCES [Users]([id]), 
    CONSTRAINT [FK_Favorites_Articles] FOREIGN KEY ([article_id]) REFERENCES [Articles]([id])
)
