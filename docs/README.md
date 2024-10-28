# **Análise Exploratória com o Dataset Iris**

## **Tópicos Especiais em Computação I**

Este repositório contém um exemplo prático de **análise exploratória de dados** utilizando a linguagem R e o clássico dataset **Iris**. As atividades incluem operações básicas como manipulação de dados, estatísticas descritivas e visualização gráfica. Este projeto é parte dos estudos para a disciplina de **Tópicos Especiais em Computação I**, com foco em técnicas para **Descoberta de Conhecimento em Bases de Dados (KDD)**.

---

## **Conteúdos Abordados**

1. **Manipulação Básica de Dados**
   - Carregamento e modificação do dataset `iris`.
   - Remoção e seleção de atributos específicos.

2. **Estatísticas Descritivas**
   - Cálculo de média, desvio-padrão e resumo estatístico.

3. **Criação de Novas Colunas**
   - Exemplo prático de criação de uma nova métrica (razão entre comprimento e largura das pétalas).

4. **Visualização Gráfica**
   - Gráfico de dispersão para explorar a relação entre comprimento e largura das sépalas.

5. **Exportação de Dados**
   - Geração de subconjuntos e exportação para arquivos CSV.

---

## **Estrutura do Repositório**

- `scripts/`: Contém o código em R para a análise.
  - `iris_analysis.R`: Script com todas as operações descritas neste README.

- `data/`: Conjuntos de dados utilizados e gerados durante o projeto.
  - `sepal_subset.csv`: Subconjunto contendo apenas atributos de sépalas.
  - `petal_subset.csv`: Subconjunto contendo apenas atributos de pétalas.

---

## **Exemplo de Código em R**

```r
# Carregando a base de dados Iris
data(iris)
head(iris)

# Remoção de colunas
iris$Sepal.Length = NULL
iris$Sepal.Width = NULL
str(iris)

# Criando subconjuntos de sépalas e pétalas
sepal <- subset(iris, select = c(Sepal.Length, Sepal.Width, Species))
petal <- subset(iris, select = c(Petal.Length, Petal.Width, Species))

# Estatísticas básicas
mean(iris$Petal.Length)  # Média
sd(iris$Petal.Width)  # Desvio-padrão

# Adicionando nova coluna
iris$Petal.Ratio <- iris$Petal.Length / iris$Petal.Width

# Gráfico de dispersão
plot(iris$Sepal.Length, iris$Sepal.Width,
     col = iris$Species,
     pch = 16,
     xlab = "Comprimento da Sépala",
     ylab = "Largura da Sépala",
     main = "Gráfico de Dispersão - Sépalas")


## Autor

| [<img src="https://avatars1.githubusercontent.com/u/46221221?s=460&u=0d161e390cdad66e925f3d52cece6c3e65a23eb2&v=4" width=115><br><sub>@jacksonn455</sub>](https://github.com/jacksonn455) |
| :---: |

--------------------
![](https://github.com/jacksonn455/kdd-topicos-especiais-computacao/blob/main/results/distribuicoes_verde_suave.png)
