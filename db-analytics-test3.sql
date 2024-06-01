Use db-analytics-test3;

/****** Object:  Table [cta].[tblStudyClaimCode]    Script Date: 09-05-2024 12:19:37 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER OFF
GO


CREATE EXTERNAL TABLE cta.tblStudyClaimCode
(
    StudyClaimCodeID INT,
    ClaimCodeID INT,
    StudyID INT,
    CreatedBy NVARCHAR(100),
    CreatedDateUtc DATETIME,
    ModifiedBy NVARCHAR(100),
    ModifiedDateUtc DATETIME,
    IsDeleted BIT
)
WITH 
(
    DATA_SOURCE = [DbCtaDataSource], -- Replace [DbCtaDataSource] with your actual external data source
    SCHEMA_NAME = N'dbo',
    OBJECT_NAME = N'tblStudyClaimCode'
);


/****** Object:  Table [cta].[tblClaimCode]    Script Date: 09-05-2024 12:19:37 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER OFF
GO
CREATE EXTERNAL TABLE cta.tblClaimCode
(
    ClaimCodeID INT,
    ClaimCodeTypeID INT,
    Code NVARCHAR(255),
    CreatedBy NVARCHAR(100),
    CreatedDateUtc DATETIME,
    ModifiedBy NVARCHAR(100),
    ModifiedDateUtc DATETIME,
    IsDeleted BIT
)

WITH 
(
    DATA_SOURCE = [DbCtaDataSource], -- Replace [DbCtaDataSource] with your actual external data source
    SCHEMA_NAME = N'dbo',
    OBJECT_NAME = N'tblClaimCode'
);



/****** Object:  Table [cta].[lk_ClaimCodeType]    Script Date: 09-05-2024 12:19:37 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER OFF
GO
CREATE EXTERNAL TABLE cta.lk_ClaimCodeType
(
    ClaimCodeTypeID INT,
    ClaimCodeType NVARCHAR(255),
    SortOrder INT,
    IsActive BIT
)
WITH 
(
    DATA_SOURCE = [DbCtaDataSource], -- Replace [DbCtaDataSource] with your actual external data source
    SCHEMA_NAME = N'dbo',
    OBJECT_NAME = N'lk_ClaimCodeType'
);


