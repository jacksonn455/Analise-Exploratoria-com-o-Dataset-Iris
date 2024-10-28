# Carregando a base de dados 'iris'
data(iris)

# Exibindo as primeiras linhas do dataset
head(iris)

# Simples remoção de atributos
# Apagando colunas usando NULL
iris$Sepal.Length = NULL
iris$Sepal.Width = NULL

# Exibindo a estrutura do dataset após a remoção
str(iris)

# Carregando novamente a base original para outras operações
data(iris)

# Seleção de subconjuntos - Separar sépalas e pétalas
sepal <- subset(iris, select = c(Sepal.Length, Sepal.Width, Species))
petal <- subset(iris, select = c(Petal.Length, Petal.Width, Species))

# Exibindo as primeiras linhas de cada subconjunto
head(sepal)
head(petal)

# Estatísticas básicas
summary(iris)  # Resumo estatístico de todas as colunas
mean(iris$Sepal.Length)  # Média do comprimento da sépala
sd(iris$Petal.Width)  # Desvio-padrão da largura da pétala

# Criando uma nova coluna com a proporção entre comprimento e largura da pétala
iris$Petal.Ratio <- iris$Petal.Length / iris$Petal.Width

# Verificando as primeiras linhas para conferir a nova coluna
head(iris)

# Ordenando o dataset por comprimento da pétala em ordem decrescente
iris_sorted <- iris[order(iris$Petal.Length, decreasing = TRUE), ]
head(iris_sorted)

# Contagem do número de observações por espécie
table(iris$Species)

# Gráfico simples - Dispersão entre comprimento e largura da sépala
plot(iris$Sepal.Length, iris$Sepal.Width,
     col = iris$Species,
     pch = 16,
     xlab = "Comprimento da Sépala",
     ylab = "Largura da Sépala",
     main = "Gráfico de Dispersão - Sépalas")

# Salvando um subconjunto como CSV
write.csv(sepal, "sepal_subset.csv", row.names = FALSE)
