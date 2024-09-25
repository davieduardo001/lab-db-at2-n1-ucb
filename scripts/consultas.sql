-- achando o pais com maior porcentagem de energia limpa ordenado do maior pro menor

SELECT p.nomepais, pe.ano, pe.percentpopenergialimpa
FROM percentpopenergialimpa pe
JOIN pais p ON pe.pais_codpais = p.codpais
WHERE pe.ano IN (2020, 2021)
ORDER BY pe.percentpopenergialimpa DESC;


-- vendo a geracao de energia de cada pais comparando nos anos de 2004 e 2005

SELECT p.nomepais, 
       gp1.ano AS ano1, 
       CONCAT(gp1.geracaoenergiapessoapais, ' kW/h') AS geracao_ano1, 
       gp2.ano AS ano2, 
       gp2.geracaoenergiapessoapais AS geracao_ano2
FROM geracaoenergiapessoapais gp1
JOIN geracaoenergiapessoapais gp2 ON gp1.pais_codpais = gp2.pais_codpais
JOIN pais p ON gp1.pais_codpais = p.codpais
WHERE gp1.ano = 2004 AND gp2.ano = 2005;

-- acha o pais que gerou menos energia nos anos 

SELECT p.nomepais, gp1.ano AS ano1, gp1.geracaoenergiapessoapais AS geracao_ano1, 
       gp2.ano AS ano2, gp2.geracaoenergiapessoapais AS geracao_ano2,
       LEAST(gp1.geracaoenergiapessoapais, gp2.geracaoenergiapessoapais) AS menor_geracao
FROM geracaoenergiapessoapais gp1
JOIN geracaoenergiapessoapais gp2 ON gp1.pais_codpais = gp2.pais_codpais
JOIN pais p ON gp1.pais_codpais = p.codpais
WHERE gp1.ano = 2004 AND gp2.ano = 2005
ORDER BY menor_geracao ASC
LIMIT 1;

-- achando a população sem acesso a energia no pais no ano de 2010

SELECT p.nomepais, ps.ano, ps.popsemenergia
FROM popsemacessoenergia ps
JOIN pais p ON ps.pais_codpais = p.codpais
WHERE ps.ano = 2010;

-- calculando a diferença da pop sem acesso a energia de cada ano que tem dado

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
