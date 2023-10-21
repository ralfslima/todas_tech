/*
    TIPOS DE DADOS:
    * Varchar   -> Versão 1 do Oracle para armazenar textos;
    * Varchar2  -> Versão 2 do Oracle para armazenar textos;
    * Text      -> Falta de performance
    * NUMBER    -> Valores inteiros ou reais
    * DATE      -> Datas

    CHAVE PRIMÁRIA:
    Garante a integridade da informação, não havendo duplicatas;
    Utilização para criação de chaves estrangeiras;

    OPERADORES RELACIONAIS:
    >  - Maior
    >= - Maior ou igual
    <  - Menor
    <= - Menor ou igual
    =  - Igual
    <> - Diferente

    OPERADORES LÓGICOS:
    AND - E
    OR  - OU
    NOT - NÃO
*/

1º Criar tabela:
CREATE TABLE produtoz(
    nome VARCHAR2(20)
);
-----------------------
CREATE TABLE produtos(
    codigo NUMBER PRIMARY KEY,
    nome VARCHAR2(30),
    valor NUMBER
);

2º Estrutura da tabela
DESCRIBE produtoz;

3º Renomear tabela
RENAME produtoz TO produtos;

4º Adicionar coluna na tabela
ALTER TABLE produtos ADD valor NUMBER;

5º Remover coluna na tabela
ALTER TABLE produtos DROP COLUMN valor;

6º Excluir tabela
DROP TABLE produtos;

7º Criar sequência
CREATE SEQUENCE gerar_codigo;

8º Inserir registro
INSERT INTO produtos VALUES (gerar_codigo.NEXTVAL, 'Mouse HP', 80);
INSERT INTO produtos VALUES (gerar_codigo.NEXTVAL, 'iPhone 15', 6000);
INSERT INTO produtos VALUES (gerar_codigo.NEXTVAL, 'Monitor LG - 32', 3200);
INSERT INTO produtos VALUES (gerar_codigo.NEXTVAL, 'Telado Multilaser', 140);
INSERT INTO produtos VALUES (gerar_codigo.NEXTVAL, 'Notebook Delll Inspiron 1456', 4560);
INSERT INTO produtos (codigo, nome) VALUES (gerar_codigo.NEXTVAL, 'Macbook Air');

9º Selecionar registros
SELECT * FROM produtos;
SELECT valor, nome FROM produtos;

10º Comandos de agregação
Contar registros: SELECT COUNT(codigo) FROM produtos;
Maior valor: SELECT MAX(valor) FROM produtos;
Menor valor: SELECT MIN(valor) FROM produtos;
Média de valores: SELECT AVG(valor) FROM produtos;
Soma dos valores: SELECT SUM(valor) FROM produtos;

11º Comando WHERE
SELECT * FROM produtos WHERE valor >= 1000;
SELECT COUNT(codigo) FROM produtos WHERE valor >= 1000;

12º Ordenação
SELECT * FROM produtos ORDER BY valor; /*A-Z ou menor para o maior*/
SELECT * FROM produtos ORDER BY valor ASC; /*A-Z ou menor para o maior*/
SELECT * FROM produtos ORDER BY valor DESC; /*Z-A ou maior para o menor*/

13º Comando LIKE
SELECT * FROM produtos WHERE nome LIKE '%D'; /*Finalizar com a letra D*/
SELECT * FROM produtos WHERE nome LIKE 'D%'; /*Iniciar com a letra D*/
SELECT * FROM produtos WHERE nome LIKE '%D%';/*Contêm a letra D*/

14º Between
SELECT * FROM produtos WHERE valor BETWEEN 1000 AND 3000;

15º CASE WHEN
SELECT 
    valor, 
    CASE WHEN valor >= 1000 THEN 'Produto caro!'
    ELSE 'Produto barato!'
    END
    AS Situacao
FROM produtos;

16º Subquery
SELECT nome, valor FROM produtos WHERE valor >= (SELECT AVG(valor) FROM produtos);

17º UPDATE
UPDATE produtos SET segmento = 'Informática';
UPDATE produtos SET segmento = 'Telefonia' WHERE codigo = 2;

18º GROUP BY
SELECT segmento, COUNT(codigo) FROM produtos GROUP BY segmento;

19º DELETE
DELETE FROM produtos;
DELETE FROM produtos WHERE codigo = 1;
DELETE FROM produtos WHERE segmento = 'Informática';

20º IS NULL e IS NOT NULL
SELECT * FROM produtos WHERE segmento IS NULL;
SELECT * FROM produtos WHERE segmento IS NOT NULL;