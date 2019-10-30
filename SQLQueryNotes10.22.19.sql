declare @maxNumber int
select t.Name
	count(*) as NumberSold
	into #temp
-- creates a table on the fly called # temp and name and number sold
From Invoice i
	join