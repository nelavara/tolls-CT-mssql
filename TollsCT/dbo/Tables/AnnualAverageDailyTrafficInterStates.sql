CREATE TABLE AnnualAverageDailyTrafficInterStates (
	RouteNum	varchar(50) NOT NULL,
	TaxCode		varchar(3) NOT NULL,
	NumCars		varchar(MAX),
)
GO
ALTER TABLE AnnualAverageDailyTrafficInterstates
ADD CONSTRAINT fkTaxCodeAADT FOREIGN KEY (TaxCode)
REFERENCES towns (TaxCode)
GO
ALTER TABLE AnnualAverageDailyTrafficInterstates
ADD CONSTRAINT fkRouteNumAADT FOREIGN KEY (RouteNum)
REFERENCES Interstates (RouteNum)
GO
ALTER TABLE AnnualAverageDailyTrafficInterStates
ADD CONSTRAINT	pkAADTS PRIMARY KEY (RouteNum, TaxCode)