CREATE TABLE [dbo].[ArticlesNewsletter]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [article_id] INT NOT NULL, 
    [news_id] INT NOT NULL, 
    CONSTRAINT [FK_ArticlesNewsletter_ToArticles] FOREIGN KEY ([article_id]) REFERENCES [Articles]([id]), 
    CONSTRAINT [FK_ArticlesNewsletter_ToNewsletters] FOREIGN KEY ([news_id]) REFERENCES [Newsletter]([id])
)