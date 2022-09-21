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

--EXEMPLO
SELECT * FROM DimProduct

SELECT * FROM Dimproduct
WHERE ColorName = 'black'

--Exemplo Selecione a Marca Fabrikam onde a cor seja Black
SELECT * FROM DimProduct
WHERE BrandName = 'Fabrikam' AND ColorName = 'Black'

--Exemplo Filtrando com mais de uma condiçao
--Selecione onde a Marca for Contoso ou a cor igual a Branca
SELECT * FROM DimProduct
WHERE BrandName = 'Contoso' OR ColorName = 'White'

--Selecione onde a marca for contoso ou fabrikam
SELECT * FROm DimProduct
WHERE BrandName = 'Contoso' OR BrandName = 'Fabrikam' OR BrandName = 'Litware'

--Selecionae todas as tabelas da coluna DimEmployee onde nao tenha Marketing
SELECT * FROM DimEmployee
WHERE NOT DepartmentName = 'Marketing'

--EXERCICIOS de Fixacão: AND, OR e NOT
--1 Selecione todas as linhas da tabela DimEmployee de funcionarios do sexo 
--feminino e do departamento de Finanças
SELECT *
FROM DimEmployee
WHERE Gender = 'F' AND DepartmentName = 'Finance'

--2 Seleciona todas as linhas da tabela dimproduct de produtos da marca
--contoso e da cor vermelha que tenha um Unitprice maior ou igua a 100
SELECT * FROM DimProduct
WHERE BrandName = 'Contoso' AND ColorName = 'red' AND UnitPrice >= 100

--3 Seleciona todas as linhas da tabela dimproduct com produtos da marca
--Litware ou da marca Fabrikam ou da cor preta
SELECT * FROM DimProduct
WHERE BrandName = 'Litware' 
	OR BrandName = 'Fabrican' 
	OR ColorName = 'Black'

--4 Seleciona todas as linhas da tabela DimSalesTerritory onde o continente 
--e a Europa mas o pais Não e igual a Italia
SELECT * FROM DimSalesTerritory
WHERE 
	SalesTerritoryGroup = 'Europe' AND
	SalesTerritoryCountry = 'Italy'
	
--OBS: Cuidados ao Utilizar o AND em Conjunto com o OR
--Exemplo: Selecione todas as linhas da tabela DimProduct onde a cor do Produto
--pode ser igual a Preto ou Vermelho, mas a marca deve ser obrigatoriamente igual a fabrikam
SELECT * FROM DimProduct
WHERE 
	(ColorName = 'black' OR ColorName = 'Red')
		AND BrandName = 'Fabrikam'

--EXEMPLOS COM A TABELA DIMPRODUCT
SELECT * FROM DimProduct
WHERE 
	ColorName IN ('Silver','Blue','White','Red','Black')


SELECT * FROM DimEmployee
WHERE DepartmentName IN ('Production', 'Marketing', 'Engeneering')

--UTILIZACAO DOM COMANDO LIKE
SELECT * FROM DimProduct
WHERE ProductName LIKE '%MP3 Player%'

SELECT * FROM DimProduct
WHERE ProductDescription LIKE 'Type%'

--COMANDO BETWEEN
SELECT * FROM DimProduct
WHERE UnitPrice NOT BETWEEN 50 AND 100

SELECT * FROM DimEmployee
WHERE HireDate BETWEEN '2000-01-01' AND '2000-12-31'

SELECT * FROM DimCustomer
WHERE CompanyName IS NOT NULL

SELECT * FROM DimCustomer
WHERE CompanyName IS NULL




--EXERCICIO-1
SELECT 
	TOP(100) *
FROM 
	FactSales
ORDER BY SalesQuantity DESC

--EXERCICIO-2
SELECT 
	TOP (10) *
FROM DimProduct
ORDER BY UnitPrice DESC