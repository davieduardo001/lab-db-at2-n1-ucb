<h1 align = "center">
  Consumo Global de Energia 
</h1>
 
### INTRODUÇÃO

Nas últimas décadas, o consumo global de energia tem experimentado uma transformação acelerada, impulsionada pela industrialização, urbanização e crescimento populacional. Essas mudanças trazem consigo desafios complexos, como a crise climática e a desigualdade no acesso à energia.
  
Este relatório analisa as tendências do consumo global de energia no período de 1990 até 2021, com foco nas disparidades entre países desenvolvidos e em desenvolvimento. Nosso objetivo é fornecer uma visão clara sobre o consumo de energia mundial e o seu impacto.  

Para esta análise, foi utilizado o Dataset [**"Trends of Global Energy Consumption"**](https://www.kaggle.com/code/abmsayem/trends-of-global-energy-consumption/input) na plataforma Kaggle.

### EXTRAÇÃO E IMPORTAÇÃO DOS DADOS

Este capítulo descreve o processo de importação, extração e inserção de dados do dataset "Trends of Global Energy Consumption" para banco de dados desenvolvido para este trabalho. O dataset original foi obtido da plataforma Kaggle e contém informações detalhadas sobre o consumo de energia global e o acesso a tecnologias limpas.

Para garantir que o banco de dados fosse alimentado com as informações mais relevantes, foi realizada uma filtragem dos dados. As colunas e registros selecionados foram aqueles que ofereciam insights sobre a geração de energia por continente, geração de energia per capita por país, percentual da população sem acesso à energia limpa, população rural sem acesso à energia por país e população total sem acesso à energia por país. Essas categorias foram escolhidas por sua relevância no entendimento das disparidades energéticas entre regiões.

O banco de dados foi estruturado seguindo um modelo relacional, onde as informações foram distribuídas em tabelas interconectadas. A principal tabela, Pais, contém os códigos e nomes dos países, servindo como chave de referência para todas as demais tabelas. Cada uma das categorias mencionadas anteriormente foi armazenada em tabelas separadas.

A tabela Pais funciona como a base de dados para todos os países mencionados nas demais tabelas. Cada tabela contém uma chave primária para identificação única dos registros e uma chave estrangeira que se relaciona com a tabela Pais, garantindo a integridade referencial do banco de dados.

Para iniciar a importação, o arquivo CSV foi formatado de modo a corresponder às estruturas das tabelas. Cada coluna no CSV foi associada às colunas corretas nas tabelas, respeitando as relações previamente estabelecidas entre elas. O processo de inserção dos dados incluiu o uso de comandos SQL como INSERT INTO, utilizado para inserir os dados diretamente do CSV para as tabelas correspondentes, facilitando a automação do processo e reduzindo o tempo necessário para a inserção manual.

A utilização de auto-incremento nas tabelas com identificadores únicos ajudou a organizar e garantir a consistência dos dados, permitindo que os dados fossem consistentes e organizados de maneira a permitir consultas eficientes e seguras. 

### MODELO CONCEITUAL

![Der trabalho](./Relatório/DER.jpg)

# Consultas SQL a Base de Dados 

### Consulta 1

```sql
SELECT p.nomepais, pe.ano, pe.percentpopenergialimpa
FROM percentpopenergialimpa pe
JOIN pais p ON pe.pais_codpais = p.codpais
WHERE pe.ano IN (2020, 2021)
ORDER BY pe.percentpopenergialimpa DESC;
```

- **Comentário**: 
    - Esta consulta retorna o nome do país, o ano e o percentual da população utilizando energia limpa (clean cooking fuels) nos anos de 2020 e 2021.
    - Utiliza um `JOIN` para buscar o nome dos países a partir de seus códigos na tabela `pais`.
    - O `WHERE` filtra os dados apenas para os anos de 2020 e 2021.
    - O `ORDER BY` ordena os resultados de forma decrescente (`DESC`), exibindo os países com maiores percentuais de uso de energia limpa primeiro.

---

### Consulta 2

```sql
SELECT p.nomepais, 
       gp1.ano AS ano1, 
       CONCAT(gp1.geracaoenergiapessoapais, ' kW/h') AS geracao_ano1, 
       gp2.ano AS ano2, 
       gp2.geracaoenergiapessoapais AS geracao_ano2
FROM geracaoenergiapessoapais gp1
JOIN geracaoenergiapessoapais gp2 ON gp1.pais_codpais = gp2.pais_codpais
JOIN pais p ON gp1.pais_codpais = p.codpais
WHERE gp1.ano = 2004 AND gp2.ano = 2005;
```

- **Comentário**:
    - Esta consulta faz uma comparação entre a geração de energia por pessoa para cada país nos anos de 2004 e 2005.
    - A função `CONCAT` adiciona a unidade ' kW/h' à geração de energia, para tornar a informação mais clara.
    - A consulta utiliza `JOIN` para garantir que os dados sejam comparados para o mesmo país em ambos os anos.
    - O resultado exibirá a geração de energia de cada país nos anos de 2004 e 2005.

---

### Consulta 3

```sql
SELECT p.nomepais, gp1.ano AS ano1, gp1.geracaoenergiapessoapais AS geracao_ano1, 
       gp2.ano AS ano2, gp2.geracaoenergiapessoapais AS geracao_ano2,
       LEAST(gp1.geracaoenergiapessoapais, gp2.geracaoenergiapessoapais) AS menor_geracao
FROM geracaoenergiapessoapais gp1
JOIN geracaoenergiapessoapais gp2 ON gp1.pais_codpais = gp2.pais_codpais
JOIN pais p ON gp1.pais_codpais = p.codpais
WHERE gp1.ano = 2004 AND gp2.ano = 2005
ORDER BY menor_geracao ASC
LIMIT 1;
```

- **Comentário**:
    - Esta consulta busca verificar qual país teve a menor geração de energia entre os anos de 2004 e 2005.
    - A função `LEAST()` retorna o menor valor de geração entre os dois anos para cada país.
    - O `ORDER BY` ordena os resultados do menor para o maior valor de geração, e o `LIMIT 1` garante que apenas o país com a menor geração seja retornado.

---

### Consulta 4

```sql
SELECT p.nomepais, ps.ano, ps.popsemenergia
FROM popsemacessoenergia ps
JOIN pais p ON ps.pais_codpais = p.codpais
WHERE ps.ano = 2010;
```

- **Comentário**:
    - Esta consulta retorna os países e a quantidade de população sem acesso à energia no ano de 2010.
    - Utiliza um `JOIN` para buscar o nome dos países e o `WHERE` filtra os dados para o ano específico de 2010.
    - O resultado mostrará a população sem acesso à energia para cada país naquele ano.

---

### Consulta 5

```sql
SELECT p.nomepais, 
       MIN(ps.ano) AS ano_inicial, 
       MAX(ps.ano) AS ano_final, 
       MIN(ps.popsemenergia) AS pop_sem_energia_inicial, 
       MAX(ps.popsemenergia) AS pop_sem_energia_final, 
       (MAX(ps.popsemenergia) - MIN(ps.popsemenergia)) AS diferenca_popsemenergia
FROM popsemacessoenergia ps
JOIN pais p ON ps.pais_codpais = p.codpais
GROUP BY p.nomepais
ORDER BY p.nomepais;
```

- **Comentário**:
    - Esta consulta calcula a diferença no número de pessoas sem acesso à energia entre os anos inicial e final para cada país.
    - Usa `MIN()` para encontrar o primeiro ano e `MAX()` para encontrar o ano mais recente.
    - A diferença no número de pessoas sem energia é calculada usando `(MAX() - MIN())`.
    - A consulta agrupa os resultados por país usando o `GROUP BY` e os ordena alfabeticamente com `ORDER BY`.

---

### Consulta 6

```sql
SELECT 
    g.ano,
    c.nomecontinente AS continente,
    SUM(g.geracaoenergiacontinente) AS total_geracao
FROM 
    geracaoenergiacontinente g
JOIN 
    continente c ON g.continente_codcontinente = c.codcontinente
GROUP BY 
    g.ano, c.nomecontinente
ORDER BY 
    g.ano, c.nomecontinente;
```

- **Comentário**:
    - Esta consulta calcula a geração total de energia por continente para cada ano.
    - Utiliza a função `SUM()` para somar a geração de energia de todos os países dentro de cada continente.
    - O `GROUP BY` agrupa os resultados por ano e continente, enquanto o `ORDER BY` ordena os resultados por ano e continente.