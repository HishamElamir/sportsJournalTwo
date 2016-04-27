CREATE TABLE [dbo].[Feedbacks]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [user_id] INT NOT NULL, 
    [article_id] INT NOT NULL, 
    [comment] VARCHAR(255) NOT NULL, 
    [created_at] DATE NULL, 
    [updated_at] DATE NULL, 
    CONSTRAINT [FK_Feedbacks_Users] FOREIGN KEY ([user_id]) REFERENCES [Users]([id]), 
    CONSTRAINT [FK_Feedbacks_Articles] FOREIGN KEY ([article_id]) REFERENCES [Articles]([id])
)
