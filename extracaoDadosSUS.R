install.packages("remotes")
remotes::install_github("rfsaldanha/microdatasus")

library(microdatasus)

# Extraindo os dados para os leitos
dados <- fetch_datasus(year_start = 2010,month_start = 1,month_end = 12, year_end = 2022, uf = "GO", information_system = "CNES-LT")
dados <- process_sim(dados)
write.csv(dados,"E:/CandidaturaDC/dadosSUS.csv")