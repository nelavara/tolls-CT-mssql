CREATE TABLE RoutesandTowns(
	RouteNum	varchar(50) NOT NULL,
	TaxCodeCT	varchar(3) NOT NULL,
)
GO
ALTER TABLE RoutesandTowns
ADD CONSTRAINT fkRouteNumCT FOREIGN KEY (RouteNum)
references Highways (RouteNum)
GO
ALTER TABLE RoutesandTowns
ADD CONSTRAINT fkRouteNumIS FOREIGN KEY (RouteNum)
references Highways (RouteNum)
GO
ALTER TABLE RoutesandTowns
ADD CONSTRAINT fkTaxCodeRT FOREIGN KEY (TaxCodeCT)
references towns (TaxCode)
GO
ALTER TABLE RoutesandTowns
ADD CONSTRAINT pkRoutesandTowns PRIMARY KEY(RouteNum, TaxCodeCT)