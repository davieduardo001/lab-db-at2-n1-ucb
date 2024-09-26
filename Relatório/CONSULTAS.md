# Consultas

## Consulta 1
Achando o pais com maior porcentagem de energia limpa ordenado do maior pro menor
> dado mais recente para esse dataset

```sql
SELECT p.nomepais, pe.ano, MAX(pe.percentpopenergialimpa) AS percentpopenergialimpa
FROM percentpopenergialimpa pe
JOIN pais p ON pe.pais_codpais = p.codpais
WHERE pe.ano IN (2005)
GROUP BY p.nomepais, pe.ano
ORDER BY percentpopenergialimpa DESC;
```

## Consulta 2
Vendo a geracao de energia de cada pais comparando nos anos de 2004 e 2005 (ok)

```sql
SELECT p.nomepais, 
       CONCAT(gp1.geracaoenergiapessoapais, ' kW/h') AS '2004 - pré crise', 
       CONCAT(gp2.geracaoenergiapessoapais, ' kW/h') AS '2008 - pos crise'
FROM geracaoenergiapessoapais gp1
JOIN geracaoenergiapessoapais gp2 ON gp1.pais_codpais = gp2.pais_codpais
JOIN pais p ON gp1.pais_codpais = p.codpais
WHERE gp1.ano = 2004 AND gp2.ano = 2008;
```

## Consulta 3
Acha o pais que gerou menos energia nos anos 

```sql
SELECT p.nomepais, gp1.geracaoenergiapessoapais AS 'geracao_2004', 
       gp2.geracaoenergiapessoapais AS 'geracao_2005',
       LEAST(gp1.geracaoenergiapessoapais, gp2.geracaoenergiapessoapais) AS menor_geracao
FROM geracaoenergiapessoapais gp1
JOIN geracaoenergiapessoapais gp2 ON gp1.pais_codpais = gp2.pais_codpais
JOIN pais p ON gp1.pais_codpais = p.codpais
WHERE gp1.ano = 2004 AND gp2.ano = 2005
ORDER BY menor_geracao ASC
LIMIT 1;
```

## Consulta 4
Achando a população sem acesso a energia no pais no ano de 2010

```sql
SELECT p.nomepais, ps.ano, ps.popsemenergia
FROM popsemacessoenergia ps
JOIN pais p ON ps.pais_codpais = p.codpais
WHERE ps.ano = 2005;
```

## Consulta 5
Calculando a diferença da pop sem acesso a energia de cada ano que tem dado

```sql
SELECT p.nomepais, 
       MIN(ps.popsemenergia) AS 'pop_sem_energia_2004',
       MAX(ps.popsemenergia) AS 'pop_sem_energia_2005',
       (MAX(ps.popsemenergia) - MIN(ps.popsemenergia)) AS diferenca_popsemenergia
FROM popsemacessoenergia ps
JOIN pais p ON ps.pais_codpais = p.codpais
GROUP BY p.nomepais
ORDER BY p.nomepais;                           
```

## Consulta 6
Geracao total de energia por ano e por continente 

```sql
SELECT 
    g.ano,
    c.nomecontinente AS continente,
    CONCAT(SUM(g.geracaoenergiacontinente), 'kw/h') AS total_geracao_energia
FROM 
    geracaoenergiacontinente g
JOIN 
    continente c ON g.continente_codcontinente = c.codcontinente
GROUP BY 
    g.ano, c.nomecontinente
ORDER BY 
c.nomecontinente ASC;
```