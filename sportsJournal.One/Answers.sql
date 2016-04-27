CREATE TABLE [dbo].[Answers]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [user_id] INT NOT NULL, 
    [question_id] INT NOT NULL, 
    [title] VARCHAR(255) NULL, 
    [status] INT NOT NULL DEFAULT 1, 
    [created_at] DATE NULL, 
    [updated_at] DATE NULL, 
    CONSTRAINT [FK_Answers_Users] FOREIGN KEY ([user_id]) REFERENCES [Users]([id]), 
    CONSTRAINT [FK_Answers_Questions] FOREIGN KEY ([question_id]) REFERENCES [Questions]([id])
)
