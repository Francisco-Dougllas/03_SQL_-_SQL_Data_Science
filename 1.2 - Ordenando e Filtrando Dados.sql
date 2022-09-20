--ORDENANDO E FILTRANDO DADOS
--ORDER BY, WHERE, WHERE..IN, WERE..LIKE, WHERE OR/AND, WHERE..IS(NOT)NULL

--ORDER BY ASC, Ordene do Maior Para o o Menor
--ORDER BY DESC, Ordena do Menor Para o Maior
--Por Padrao o SQL ordena so Maior Para o Menor
SELECT 
	TOP(10) *
FROM 
	DimStore
ORDER BY
	EmployeeCount DESC

-- 1 - Seleciona as 10 primeiras linhas da tabela DimProduct e Ordene de acordco com a UnitCost
SELECT * FROM DimProduct

--Exemplo
SELECT
	ProductName,
	UnitCost
FROM 
	DimProduct
ORDER BY UnitCost ASC

-- Exemplo weight criterio de desempate
SELECT 
	TOP (10) Productname,
	Unitcost,
	weight
FROM
	DimProduct
ORDER BY Unitcost DESC, Weight DESC


--Visualizando as Linhas pela cor do produto
SELECT *
FROM DimProduct

--Exemplo
SELECT
	TOP(1)
	Unitprice
FROM
	DimProduct
ORDER BY UnitPrice DESC

--Produtos Maiores	que 1000
SELECT
	ProductName as 'produto',
	UnitPrice as 'Preco'
FROM
	DimProduct
WHERE
	UnitPrice >= 1000

--Exemplo
SELECT 
	DISTINCT BrandName
FROM 
	DimProduct

--Exemplo
SELECT * FROM DimProduct
WHERE BrandName = 'Fabrikam'

--Exemplo
SELECT * FROM DimProduct
WHERE ColorName = 'black'

--Quantos Clientes Nasceram apos o dia 31/12/1970
SELECT * FROM DimCustomer
WHERE BirthDate >= '1970-12-31'
ORDER BY BirthDate DESC