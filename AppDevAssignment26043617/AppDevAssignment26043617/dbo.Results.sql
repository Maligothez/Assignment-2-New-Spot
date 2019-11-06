CREATE TABLE [dbo].[Results] (
    [ResultsID]        INT     IDENTITY (1, 1) NOT NULL,
    [UnitId]           INT     NOT NULL,
    [StudentID]        INT     NOT NULL,
    [StudentPhoto]     TINYINT NOT NULL,
    [Semester]         INT     NOT NULL,
    [Year]             INT     NOT NULL,
    [Assessment1Score] INT     NOT NULL,
    [Assessment2Score] INT     NOT NULL,
    [Exam]             INT     NOT NULL,
    CONSTRAINT [PK_dbo.Results] PRIMARY KEY CLUSTERED ([ResultsID]),
    CONSTRAINT [FK_dbo.Results_dbo.Units_UnitId] FOREIGN KEY ([UnitId]) REFERENCES [dbo].[Units] ([UnitId]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_UnitId]
    ON [dbo].[Results]([UnitId] ASC);

