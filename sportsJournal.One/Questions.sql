CREATE TABLE [dbo].[Questions]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [user_id] INT NOT NULL, 
    [title] VARCHAR(100) NOT NULL, 
    [status] INT NOT NULL DEFAULT 1, 
    [created_at] DATE NULL, 
    [updated_at] DATE NULL, 
    CONSTRAINT [FK_Questions_Users] FOREIGN KEY ([user_id]) REFERENCES [Users]([id])
)
