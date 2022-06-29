CREATE VIEW [dbo].[EmployeeMasterView]
AS
SELECT C.FirstName, C.LastName, D.[Name] AS [Department Name], CASE WHEN IsActive = 1 THEN 'Yes' ELSE 'No' END AS Active
FROM [RocketCorp].[Contacts] C INNER JOIN 
[RocketCorp].[Departments] D ON
C.DepartmentId = D.Id

