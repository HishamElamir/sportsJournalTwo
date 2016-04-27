CREATE TABLE [dbo].[Users]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [username] VARCHAR(50) NOT NULL, 
    [password] VARCHAR(50) NOT NULL, 
    [email] VARCHAR(100) NOT NULL, 
    [img_url] VARCHAR(255) NULL, 
    [role_id] INT NOT NULL, 
    [status] INT NOT NULL DEFAULT 1, 
    [created_at] DATE NULL, 
    [updated_at] DATE NULL, 
    CONSTRAINT [FK_Users_Roles] FOREIGN KEY ([role_id]) REFERENCES [Roles]([id])
)
