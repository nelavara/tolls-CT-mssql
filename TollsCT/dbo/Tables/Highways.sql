CREATE TABLE Highways(
	stateRd	bit,
	interState bit,
	RouteNum varchar(50) NOT NULL,
)
GO
ALTER TABLE Highways
ADD CONSTRAINT pkRouteNum PRIMARY KEY (RouteNum)