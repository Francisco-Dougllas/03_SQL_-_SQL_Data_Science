-- BANCO DE DADOS CONTOSO
-- Se possivel sempre comente o necessario
-- Este codigo seleciona as colunas de ID do produto e nome do produto
SELECT *
FROM
	DimStore


--Comentando um codigo de consulta completo utilizo o /* e */
/*SELECT
--storekey, -- Comentario
storename,
storephone
FROM
dimStore*/


-- Comando SELECT... FROM: Retorna todas as linhas da tabela,
-- independente das colunas selecionadas
SELECT
	firstname,
	LastName,
	EmailAddress
FROM
	DimEmployee


-- Comando SELECT TOP(N) e TOP(N) PERCENT:
-- Retorna as N primeiras Linhas
-- 1. Crie um codigo que retorne as 10 primeiras linhas da tabela de produtos
SELECT 
	TOP(10) *
FROM 
	DimProduct


-- 2. Retorne as 10% primeiras linhas da tabela de clientes
SELECT 
	TOP (10) PERCENT *
FROM 
	DimCustomer


-- Selecionando as TOP 1000 Linhas
SELECT 
	TOP (1000) *
FROM 
	FactSales


-- Comando SELECT DISTINCT: Retorna os valores distintos da tabela
-- Retorne todas as linhas da tabela DimProduct
SELECT *
FROM 
	DimProduct


-- Retorne os valores Distintos da coluns ColorName da Tabela DimProduct
SELECT 
	DISTINCT Colorname
FROM 
	Dimproduct


-- Retorne todas as linhas da tabela DimEmployer
SELECT *
FROM DimEmployee


-- Retorne os valores distintos da coluna DepartmentName da Tabela DimEmployer
SELECT
	DISTINCT departmentname
FROM
	DimEmployee


-- Comando AS: Renomeando Colunas (aliasing)
-- Seleciona as 3 colunas da tabela dimproduct: ProductName, BrandName e ColorName
SELECT
	ProductName as 'Nome do Produto',
	BrandName as 'Marca do Produto',
	ColorName as 'Cor do Produto'
FROM
	DimProduct
