CREATE TABLE AverageDailyTraffic(
	RouteNum	varchar(50) NOT NULL,
	TaxCode	varchar(3) NOT NULL,
	NumCars	varchar(MAX),	
)
GO
ALTER TABLE AverageDailyTraffic
ADD CONSTRAINT fkTaxCodeADT FOREIGN KEY (TaxCode)
references Towns (TaxCode)
GO
ALTER TABLE AverageDailyTraffic
ADD CONSTRAINT fkRouteNumADT FOREIGN KEY (RouteNum)
references stateRds (RouteNum)
GO
ALTER TABLE AverageDailyTraffic
ADD CONSTRAINT pkADT PRIMARY KEY(RouteNum, TaxCode)