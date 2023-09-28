--CREATE PROCEDURE AllCategoriesOfSaleslead
--AS
--SELECT * FROM slcm_categories
--GO;

--DROP PROCEDURE SpecificCategories 
--GO  

CREATE PROCEDURE SpecificCategories @deptId integer, @createdAt nvarchar(30)
AS
SELECT * FROM slcm_categories
WHERE dept_id = @deptId AND created_at > @createdAt
GO
