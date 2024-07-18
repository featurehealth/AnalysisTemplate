library(readr)
library(ggplot2)
library(here)

path <- here::here()
temp_data <- read_tsv(file.path(path, "data", "datafile.tsv"))

temp_plot <- ggplot(temp_data) +
  geom_line(aes(x=date, y=temperature))

ggsave(file.path(path, "outputs", "temperature.pdf"), temp_plot)
