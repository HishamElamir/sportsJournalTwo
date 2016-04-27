CREATE TABLE [dbo].[Articles]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [user_id] INT NOT NULL, 
    [category_id] INT NOT NULL, 
    [title] VARCHAR(50) NULL, 
    [slug] VARCHAR(50) NULL, 
    [body] TEXT NOT NULL, 
    [img_url] VARCHAR(255) NULL, 
    [status] INT NOT NULL DEFAULT 1, 
    [created_at] DATE NULL, 
    [updated_at] DATE NULL, 
    CONSTRAINT [FK_Articles_Users] FOREIGN KEY ([user_id]) REFERENCES [Users]([id]), 
    CONSTRAINT [FK_Articles_Categories] FOREIGN KEY ([category_id]) REFERENCES [Categories]([id])
)
