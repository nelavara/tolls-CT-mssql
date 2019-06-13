CREATE TABLE Interstates(
	RouteNum varchar(50) NOT NULL,
	NumTowns	varchar(MAX),
	NumExitsinCT	varchar(MAX),
	LengthMiles	varchar(100),
)
GO
ALTER TABLE Interstates
ADD CONSTRAINT fkHighwayIS FOREIGN KEY (RouteNum)
references Highways (RouteNum)
GO
ALTER TABLE Interstates
ADD CONSTRAINT pkRouteNumIS PRIMARY KEY (RouteNum)