CREATE TABLE [dbo].[Categories]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [user_id] INT NOT NULL, 
    [name] VARCHAR(50) NOT NULL, 
    [description] TEXT NULL, 
    [status] INT NOT NULL DEFAULT 1, 
    [created_at] DATE NULL, 
    [updated_at] DATE NULL, 
    CONSTRAINT [FK_Categories_Users] FOREIGN KEY ([user_id]) REFERENCES [Users]([id])
)
