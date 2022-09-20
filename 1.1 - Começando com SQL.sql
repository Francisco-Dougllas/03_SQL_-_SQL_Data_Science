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


-- EXERCICIO

/*1. Você é responsável por controlar os dados de clientes e de produtos da sua empresa.
O que você precisará fazer é confirmar se:
a. Existem 2.517 produtos cadastrados na base e, se não tiver, você deverá reportar ao seu
gestor para saber se existe alguma defasagem no controle dos produtos.


b. Até o mês passado, a empresa tinha um total de 19.500 clientes na base de controle.
Verifique se esse número aumentou ou reduziu.*/

--A
SELECT * 
FROM DimProduct

--B
SELECT *
FROM DimCustomer
-- Nossa Base de cliente possui 18.869 clientes, menos do que o mes anterior


/*2. Você trabalha no setor de marketing da empresa Contoso e acaba de ter uma ideia de oferecer
descontos especiais para os clientes no dia de seus aniversários. Para isso, você vai precisar
listar todos os clientes e as suas respectivas datas de nascimento, além de um contato.
a) Selecione as colunas: CustomerKey, FirstName, EmailAddress, BirthDate da tabela
dimCustomer.

b) Renomeie as colunas dessa tabela usando o alias (comando AS).*/

