CREATE TABLE [dbo].[RejectedArticles]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [user_id] INT NOT NULL, 
    [article_id] INT NOT NULL, 
    [notes] TEXT NOT NULL, 
    CONSTRAINT [FK_RejectedArticles_ToUser] FOREIGN KEY ([user_id]) REFERENCES [Users]([id]), 
    CONSTRAINT [FK_RejectedArticles_ToArticle] FOREIGN KEY ([article_id]) REFERENCES [Articles]([id])
)
GO
CREATE INDEX [user_id] ON [dbo].[RejectedArticles] ([user_id])
GO
CREATE INDEX [article_id] ON [dbo].[RejectedArticles] ([article_id])