### Este script carga un archivo .txt y obtiene alguna información sobre su contenido

# carga el archivo
maices<-read.delim(file="../meta/maizteocintle_SNP50k_meta_extended.txt")

# tipo de objeto
class("maices")

# ver las primeras 6 filas
maices[1:6,]

# obtener número de muestras
nrow(maices)

#número de estados muestreados
x<-as.factor(maices$Estado)
nlevels(x)

# Número de muestras colectadas antes de 1980
sum(maices$A.o._de_colecta<1980, na.rm=TRUE)

# número de muestras de cada raza
table(maices$Raza)

# Promedio de la altitud
mean(maices$Altitud)

# Altitud máxima y mínima
max(maices$Altitud)
min(maices$Altitud)

# df de las muestras de raza Olotillo
muestrasOlotillo<-data.frame(subset(maices, maices$Raza == "Olotillo"))

# df con las muestras de raza Reventador, Jala y Ancho
tresrazas<-data.frame(subset(maices, maices$Raza == "Reventador" | maices$Raza == "Jala" | maices$Raza == "Ancho"))

# Escribir "tresrazas" a submat.csv en /meta
write.csv(tresrazas, "../meta/submat.csv")

