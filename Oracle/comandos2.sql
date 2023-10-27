-- Criar tabela de marcas
CREATE TABLE marcas(
    codigo_marca NUMBER PRIMARY KEY,
    nome VARCHAR2(20)
);

-- Gerar um valor para a tabela marcas
CREATE SEQUENCE incrementar_codigo_marca;

-- Cadastrar uma marca
INSERT INTO marcas VALUES (incrementar_codigo_marca.NEXTVAL, 'Apple');

-- TRIGGER
CREATE OR REPLACE TRIGGER trigger_marcas
BEFORE INSERT ON marcas
FOR EACH ROW
BEGIN
    SELECT incrementar_codigo_marca.NEXTVAL
    INTO :new.codigo_marca
    FROM dual;
END;

-- Cadastrar uma nova marca utilizando trigger
INSERT INTO marcas (nome) VALUES ('Microsoft');

-- Selecionar todas as marcas
SELECT * FROM marcas;

-- PROCEDURE
-- Dados de entrada/saída (IN -> entrada), 
-- (OUT -> saída)
-- (INOUT entrada e saída)
CREATE OR REPLACE PROCEDURE cadastrar_marca(nome_marca IN VARCHAR2)
IS
BEGIN
	INSERT INTO marcas (nome) VALUES(nome_marca);
END;

-- Executar procedure
BEGIN
	cadastrar_marca('HP');
END;

-- Criar tabela de produtos
CREATE TABLE produtos(
    codigo_produto NUMBER PRIMARY KEY,
    nome VARCHAR2(30),
    valor NUMBER,
    codigo_marca NUMBER  
);

-- Chave estrangeira
ALTER TABLE produtos
ADD (CONSTRAINT codigo_marca_fk 
FOREIGN KEY (codigo_marca) REFERENCES marcas (codigo_marca));

-- Criar auto incremento na tabela de produtos
CREATE SEQUENCE incrementar_codigo_produto;

-- Inserir produtos
INSERT INTO produtos 
VALUES (incrementar_codigo_produto.NEXTVAL, 'Teclado', 180, 3);
INSERT INTO produtos 
VALUES (incrementar_codigo_produto.NEXTVAL, 'iPhone 15', 6400, 1);

-- Inner Join
SELECT
	produtos.nome  AS Produto,
	produtos.valor AS Preço,
	marcas.nome    AS Marca
FROM produtos
INNER JOIN marcas
ON produtos.codigo_marca = marcas.codigo_marca;

-- View
CREATE OR REPLACE VIEW selecionar_produtos_marcas AS
SELECT
	produtos.nome  AS Produto,
	produtos.valor AS Preço,
	marcas.nome    AS Marca
FROM produtos
INNER JOIN marcas
ON produtos.codigo_marca = marcas.codigo_marca;

-- Executar View
SELECT * FROM selecionar_produtos_marcas;
SELECT produto, marca FROM selecionar_produtos_marcas;

-- LEFT JOIN
SELECT
	marcas.nome,
    COUNT(produtos.codigo_marca)
FROM marcas
LEFT JOIN produtos
ON marcas.codigo_marca = produtos.codigo_marca
GROUP BY marcas.nome;


-- Função
CREATE OR REPLACE FUNCTION contar_produtos
RETURN NUMBER
IS
    contador NUMBER;
BEGIN
    SELECT COUNT(*) INTO contador FROM produtos;
	RETURN contador;
END;

-- Executar função
DECLARE
	quantidade NUMBER;
BEGIN
	quantidade := contar_produtos();
	DBMS_OUTPUT.PUT_LINE('Quantidade de produtos: ' || quantidade);
END;