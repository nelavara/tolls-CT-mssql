CREATE TABLE Towns(
	TaxCode	varchar(3) NOT NULL,
	TownName	varchar(MAX),
	[Population] varchar(MAX),
)
GO
ALTER TABLE Towns
ADD CONSTRAINT pkTaxCode PRIMARY KEY (TaxCode)