# Análise de Vendas do Banco Chinook — SQL

Projeto de análise exploratória usando SQL puro sobre o banco de dados público **Chinook**, uma loja fictícia de venda de música digital. O objetivo foi praticar SQL básico/intermediário (agregações, JOINs, GROUP BY) respondendo perguntas de negócio encadeadas — cada resposta motivando a próxima pergunta.

## Ferramentas

- SQL (SQLite)
- SQLiteStudio
- [Chinook Database](https://github.com/GustavoRyouji/SQL-Projects/blob/main/Chinook%20Sales%20Analysis/chinook.db)

## Estrutura do repositório

```
├── database/
│   └── chinook.db
├── queries/
│   ├── 01_periodo_coberto.sql
│   ├── 02_receita_total.sql
│   ├── 03_pais_top_receita.sql
│   ├── 04_1_clientes_por_pais.sql
│   ├── 04_2_gasto_medio_por_pais.sql
│   ├── 05_1_genero_mais_vendido.sql
│   ├── 05_2_genero_maior_receita.sql
│   ├── 06_1_musicas_por_genero.sql
│   ├── 06_2_artistas_por_genero.sql
│   ├── 06_3_albuns_por_genero.sql
│   ├── 07_participacao_genero_receita_total.sql
│   ├── 08_1_receita_total_usa.sql
│   └── 08_2_participacao_genero_receita_usa.sql
├── images/
│   └── (prints dos resultados de cada consulta)
└── README.md
```

Cada arquivo `.sql` contém a consulta comentada com a pergunta que ela responde. O banco está incluído no repositório — basta abrir com SQLite/SQLiteStudio e rodar as queries na ordem.

## Objetivo

Analisar os dados do banco Chinook utilizando SQL para identificar padrões de vendas e gerar insights de negócio, cobrindo o período de **01/01/2009** a **22/01/2013**.

### Pergunta 1: Qual é o período coberto no Banco Chinook?

Consulta: ![`01_periodo_coberto.sql`](queries/01_periodo_coberto.sql)

Os dados abrangem aproximadamente 4 anos, de 01/01/2009 a 22/01/2013. Todas as análises seguintes consideram esse intervalo.

## Receita total e distribuição geográfica

### Pergunta 2: Qual foi a receita total gerada pelas vendas?

Consulta: ![`02_receita_total.sql`](queries/02_receita_total.sql)

A loja faturou **US$ 2.328,60** ao longo do período analisado. Esse valor é a base das próximas análises.

### Pergunta 3: Qual país contribuiu mais para essa receita?

Consulta: ![`03_pais_top_receita.sql`](queries/03_pais_top_receita.sql)

Os **Estados Unidos** lideram (US$ 523,06), seguidos por Canadá (US$ 303,96) e França (US$ 195,10). Isso levanta a pergunta: essa liderança vem de mais clientes ou de clientes que gastam mais?

### Pergunta 4.1: Qual país possui o maior número de clientes?

Consulta: ![`04_1_clientes_por_pais.sql`](queries/04_1_clientes_por_pais.sql)

Os EUA têm, de fato, o maior número de clientes cadastrados entre os países analisados.

### Pergunta 4.2: Qual país possui o maior gasto médio por cliente?

Consulta: ![`04_2_gasto_medio_por_pais.sql`](queries/04_2_gasto_medio_por_pais.sql)

Os EUA têm o maior gasto médio entre os três países líderes em receita, mas não lideram esse quesito no geral — o Chile tem a maior média por cliente, mesmo com poucos clientes. **Conclusão:** a liderança americana em receita vem do volume de clientes, não do ticket médio.

## Desempenho por gênero musical

### Pergunta 5.1: Qual é o gênero mais vendido?

Consulta: ![`05_1_genero_mais_vendido.sql`](queries/05_1_genero_mais_vendido.sql)

**Rock** lidera com 835 vendas, quase o dobro de Latin (386), o segundo colocado. Mas volume de vendas não é o mesmo que receita — próxima pergunta confirma se a relação se mantém.

### Pergunta 5.2: Qual gênero gerou mais receita para a loja?

Consulta: ![`05_2_genero_maior_receita.sql`](queries/05_2_genero_maior_receita.sql)

Rock também lidera em receita: US$ 826,65, seguido por Latin (US$ 382,14) e Metal (US$ 261,36). O gênero mais vendido é também o que mais fatura. Isso leva à pergunta: esse desempenho vem da preferência dos clientes, ou de Rock ter mais músicas disponíveis para vender?

### Pergunta 6.1: Qual gênero possui a maior quantidade de músicas?

Consulta: ![`06_1_musicas_por_genero.sql`](queries/06_1_musicas_por_genero.sql)

Rock tem um catálogo de 1.297 músicas, contra apenas 579 de Latin, o segundo colocado.

### Pergunta 6.2: Qual gênero possui a maior quantidade de artistas?

Consulta: ![`06_2_artistas_por_genero.sql`](queries/06_2_artistas_por_genero.sql)

Rock tem 51 artistas cadastrados, atrás apenas de Classical (66) — que não está entre os líderes de venda. Entre os gêneros comercialmente relevantes, Rock segue na frente também em variedade de artistas.

### Pergunta 6.3: Qual gênero possui a maior quantidade de álbuns?

Consulta: ![`06_3_albuns_por_genero.sql`](queries/06_3_albuns_por_genero.sql)

Rock também lidera em número de álbuns. Entre música, artista e álbum, o padrão se repete: a liderança de Rock nas vendas está ligada à sua ampla disponibilidade de catálogo, não a um fator isolado.

## Participação na receita total

### Pergunta 7: Qual é a participação de cada gênero na receita total da loja?

Consulta: ![`07_participacao_genero_receita_total.sql`](queries/07_participacao_genero_receita_total.sql)

Rock representa **35,50%** da receita total, seguido por Latin (16,41%) e Metal (11,22%).

> **Nota de limitação:** o valor da receita total (US$ 2.328,60) foi calculado na Pergunta 2 e inserido manualmente como constante nesta query, em vez de calculado dinamicamente com uma subquery. Ainda não estudei esse conceito — é o próximo passo da minha trilha de aprendizado.

Isso levanta a pergunta: essa mesma distribuição se mantém no principal mercado da loja, os Estados Unidos?

### Pergunta 8.1: Qual é a receita total gerada pelos Estados Unidos?

Consulta: ![`08_1_receita_total_usa.sql`](queries/08_1_receita_total_usa.sql)

Os EUA geraram US$ 523,06 em receita no período.

### Pergunta 8.2: Como a receita dos Estados Unidos está distribuída entre os gêneros musicais?

Consulta: ![`08_2_participacao_genero_receita_usa.sql`](queries/08_2_participacao_genero_receita_usa.sql)

Rock, Latin e Metal seguem na mesma ordem observada na loja como um todo. O mercado americano acompanha o padrão geral de consumo por gênero.

> Mesma limitação da Pergunta 7: o valor US$ 523,06 está fixo na query em vez de calculado por subquery.

## Conclusão

Os Estados Unidos são o principal mercado da loja, e isso se explica pela **quantidade de clientes cadastrados**, não pelo gasto médio individual. Entre os gêneros musicais, **Rock** lidera em vendas e receita (35,50% do faturamento total), sustentado por um catálogo maior de músicas e álbuns — o número de artistas isoladamente não explica essa liderança. Essa mesma distribuição de gêneros se repete no mercado americano, reforçando que o padrão de consumo local segue o padrão geral da loja.

As conclusões estão restritas ao conjunto de dados do Chinook, que é pequeno (US$ 2.328,60 em receita total, 4 anos de dados) — um dataset de demonstração, não um cenário de negócio real.

## Limitações e próximos passos

Este foi meu primeiro projeto de SQL, feito com conhecimento básico/intermediário. Duas limitações conscientes:

- **Sem subquery/CTE**: os percentuais de receita (Perguntas 7 e 8.2) usam valores de receita total fixados manualmente em vez de calculados dentro da própria query. Ainda não estudei subquery — próximo tópico da minha trilha.
- **Sem window functions**: rankings e percentuais acumulados poderiam usar `RANK()` ou `PERCENT_RANK()` em vez de `ORDER BY` + `LIMIT`.

Próximo projeto: Pandas (leitura de dados, filtro, `groupby`, `merge`, tratamento e agregação), seguido de um projeto combinando SQL + Pandas.

Próximo projeto: Pandas (leitura de dados, filtro, `groupby`, `merge`, tratamento e agregação), seguido de um projeto combinando SQL + Pandas.
