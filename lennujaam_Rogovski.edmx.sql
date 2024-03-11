
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 03/11/2024 14:09:22
-- Generated from EDMX file: C:\Users\opilane\source\repos\Rogovski tarpv22\LennujaamRogovski\lennujaam_Rogovski.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [kutsekool];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'lendSet'
CREATE TABLE [dbo].[lendSet] (
    [lendId] int IDENTITY(1,1) NOT NULL,
    [lennunumber] nvarchar(max)  NOT NULL,
    [reisijatearv] nvarchar(max)  NOT NULL,
    [valjumisaeg] nvarchar(max)  NOT NULL,
    [valjumiskoht] nvarchar(max)  NOT NULL,
    [sihtkoht] nvarchar(max)  NOT NULL,
    [lennuk_Id] int  NOT NULL
);
GO

-- Creating table 'lennukSet'
CREATE TABLE [dbo].[lennukSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [kohtadearv] nvarchar(max)  NOT NULL,
    [mudel] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [lendId] in table 'lendSet'
ALTER TABLE [dbo].[lendSet]
ADD CONSTRAINT [PK_lendSet]
    PRIMARY KEY CLUSTERED ([lendId] ASC);
GO

-- Creating primary key on [Id] in table 'lennukSet'
ALTER TABLE [dbo].[lennukSet]
ADD CONSTRAINT [PK_lennukSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [lennuk_Id] in table 'lendSet'
ALTER TABLE [dbo].[lendSet]
ADD CONSTRAINT [FK_lennuklend]
    FOREIGN KEY ([lennuk_Id])
    REFERENCES [dbo].[lennukSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_lennuklend'
CREATE INDEX [IX_FK_lennuklend]
ON [dbo].[lendSet]
    ([lennuk_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------