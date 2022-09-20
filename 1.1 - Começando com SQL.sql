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

/*1. Voc� � respons�vel por controlar os dados de clientes e de produtos da sua empresa.
O que voc� precisar� fazer � confirmar se:
a. Existem 2.517 produtos cadastrados na base e, se n�o tiver, voc� dever� reportar ao seu
gestor para saber se existe alguma defasagem no controle dos produtos.


b. At� o m�s passado, a empresa tinha um total de 19.500 clientes na base de controle.
Verifique se esse n�mero aumentou ou reduziu.*/

--A
SELECT * 
FROM DimProduct

--B
SELECT *
FROM DimCustomer
-- Nossa Base de cliente possui 18.869 clientes, menos do que o mes anterior


/*2. Voc� trabalha no setor de marketing da empresa Contoso e acaba de ter uma ideia de oferecer
descontos especiais para os clientes no dia de seus anivers�rios. Para isso, voc� vai precisar
listar todos os clientes e as suas respectivas datas de nascimento, al�m de um contato.
a) Selecione as colunas: CustomerKey, FirstName, EmailAddress, BirthDate da tabela
dimCustomer.

b) Renomeie as colunas dessa tabela usando o alias (comando AS).*/

SELECT TOP(10) * FROM DimCustomer

SELECT 
	Customerkey  as 'Id do Cliente',
	FirstName    as 'Nome',
	EmailAddress as 'E-mail',
	BirthDate    as 'Data de Nascimento'
FROM 
	DimCustomer


/*3. A Contoso est� comemorando anivers�rio de inaugura��o de 10 anos e pretende fazer uma a��o de premia��o para os clientes. A empresa quer presentear os primeiros clientes desde a inaugura��o. Voc� foi alocado para levar adiante essa a��o. Para isso, voc� ter� que fazer o seguinte:

a) A Contoso decidiu presentear os primeiros 100 clientes da hist�ria com um vale compras de R$ 10.000. Utilize um comando em SQL para retornar uma tabela com os primeiros 100 primeiros clientes da tabela dimCustomer (selecione todas as colunas).

b) A Contoso decidiu presentear os primeiros 20% de clientes da hist�ria com um vale compras de R$ 2.000. Utilize um comando em SQL para retornar 10% das linhas da sua tabela dimCustomer (selecione todas as colunas).

c) Adapte o c�digo do item a) para retornar apenas as 100 primeiras linhas, mas apenas as colunas FirstName, EmailAddress, BirthDate.

d) Renomeie as colunas anteriores para nomes em portugu�s.*/

-- A
SELECT 
	TOP(100) *
FROM
	DimCustomer

--B
SELECT 
	TOP(20) PERCENT *
FROM 
	DimCustomer

-- C e D
SELECT 
	TOP(100) 
	FirstName as 'Nome',
	EmailAddress as 'E-mail',
	BirthDate as 'Data de Nascimento'
FROM 
	DimCustomer


/*4. A empresa Contoso precisa fazer contato com os fornecedores de produtos para repor o estoque. Voc� � da �rea de compras e precisa descobrir quem s�o esses fornecedores. Utilize um comando em SQL para retornar apenas os nomes dos fornecedores na tabela dimProduct e renomeie essa nova coluna da tabela*/

SELECT * FROM dimproduct

SELECT 
	DISTINCT 
	Manufacturer AS 'Produto'
FROM 
	DimProduct

/*5. O seu trabalho de investiga��o n�o para. Voc� precisa descobrir se existe algum produto registrado na base de produtos que ainda n�o tenha sido vendido. Tente chegar nessa informa��o.
Obs: caso tenha algum produto que ainda n�o tenha sido vendido, voc� n�o precisa descobrir qual �, � suficiente saber se teve ou n�o algum produto que ainda n�o foi vendido*/

SELECT * FROM DimProduct

SELECT * FROM FactSales

SELECT DISTINCT productkey from FactSales