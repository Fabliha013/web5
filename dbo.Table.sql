CREATE TABLE [dbo].[Table] (
    [Id]          INT            IDENTITY (1, 1) NOT NULL,
    [name]        NVARCHAR (50)  NOT NULL,
    [pw]          NVARCHAR (50)  NOT NULL,
    [email]       NVARCHAR (50)  NOT NULL,
    [userpicture] NVARCHAR(50) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

