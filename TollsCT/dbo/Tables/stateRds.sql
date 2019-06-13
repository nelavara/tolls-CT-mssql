CREATE TABLE stateRds(
	RouteNum varchar(50) NOT NULL,
	NumTowns	varchar(MAX),
	LengthMiles	varchar(100),
)
GO
ALTER TABLE StateRds
ADD CONSTRAINT fkHighwayCT FOREIGN KEY (RouteNum)
references Highways (RouteNum)
GO
ALTER TABLE stateRds
ADD CONSTRAINT pkRouteNumCT PRIMARY KEY (RouteNum)