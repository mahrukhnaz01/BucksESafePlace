/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/
MERGE INTO Centre AS Target
USING (VALUES
		(1, 'Mcdonalds', '54 Model Ln.', 'HP10 2DU', '012348623417'),
		(2, 'High Wycombe Bus Station', '56 Model Ln.', 'HP10 2GY', '012348765341'),
		(3, 'High Wycombe Library', ' 58 Model Ln.', 'HP10 2IV', '0123412698752')
)
AS SOURCE (CentreID, ShopName, ShopAddress, Postcode, TelNumber)
ON Target.CentreID = Source.CentreID
WHEN NOT MATCHED BY TARGET THEN
INSERT (ShopName, ShopAddress, Postcode, TelNumber)
VALUES (ShopName, ShopAddress, Postcode, TelNumber);

MERGE INTO Incident AS Target
USING (VALUES
		(1, 'Lost', 'High Wycombe', '2016-05-15', 'No way home'),
		(2, 'Injured', 'High Wycombe', '2013-02-22', 'Broken leg'),
		(3, 'Feeling sick', 'High Wycombe', '2017-11-02', 'Not able to walk home')
)
AS SOURCE (IncidentID, IncidentTitle, IncidentLocation, IncidentDate, IncidentDescription)
ON TARGET.IncidentID = Source.IncidentID
WHEN NOT MATCHED BY TARGET THEN
INSERT (IncidentTitle, IncidentLocation, IncidentDate, IncidentDescription)
VALUES (IncidentTitle, IncidentLocation, IncidentDate, IncidentDescription);