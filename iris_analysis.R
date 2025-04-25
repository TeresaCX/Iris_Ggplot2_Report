# Proyecto: Análisis gráfico con ggplot2 del dataset Iris

# Cargar librerías necesarias
library(ggplot2)
library(readr)

# Crear carpeta plots si no existe
if (!dir.exists("plots")) {
  dir.create("plots")
}

# Cargar datos
iris_data <- read_csv("Iris.csv", skip = 1)

# 1. Scatter plot
p1 <- ggplot(iris_data, aes(x = Petal.Length, y = Petal.Width, color = Species)) +
  geom_point(size = 3) +
  labs(title = "Relación entre Largo y Ancho del Pétalo", x = "Largo del Pétalo", y = "Ancho del Pétalo") +
  theme_minimal()
ggsave("plots/scatter_plot_iris.png", plot = p1)

# 2. Boxplot
p2 <- ggplot(iris_data, aes(x = Species, y = Sepal.Length, fill = Species)) +
  geom_boxplot() +
  labs(title = "Distribución del Largo del Sépalo por Especie", y = "Largo del Sépalo") +
  theme_minimal()
ggsave("plots/boxplot_iris.png", plot = p2)

# 3. Histograma
p3 <- ggplot(iris_data, aes(x = Petal.Width)) +
  geom_histogram(binwidth = 0.2, fill = "skyblue", color = "black") +
  labs(title = "Histograma del Ancho del Pétalo", x = "Ancho del Pétalo", y = "Frecuencia") +
  theme_minimal()
ggsave("plots/histogram_iris.png", plot = p3)

# 4. Gráfico de barras
p4 <- ggplot(iris_data, aes(x = Species, fill = Species)) +
  geom_bar() +
  labs(title = "Cantidad de Observaciones por Especie") +
  theme_minimal()
ggsave("plots/barplot_iris.png", plot = p4)

# 5. Gráfico de densidad
p5 <- ggplot(iris_data, aes(x = Petal.Length, fill = Species)) +
  geom_density(alpha = 0.5) +
  labs(title = "Densidad del Largo del Pétalo por Especie") +
  theme_minimal()
ggsave("plots/density_plot_iris.png", plot = p5)
