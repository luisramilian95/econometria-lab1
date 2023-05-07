## ################################################## 
## #                    Parte 2                     #
## ##################################################

load("./data.RData")
data_frame <- data.frame(info_estudiantes)

# 1. ¿Qué tipo de dato es info_estudiantes?

print(class(info_estudiantes))

## El tipo de info estudiantes es de tipo list.
#___________________________________________________________________________________________________

# 2. ¿Cuantos elementos tiene info_estudiantes?

length(info_estudiantes)
length(data_frame$carnet)

## info_estudiantes tiene 3 elementos, con 8000 filas.
#___________________________________________________________________________________________________

# 3. ¿Qué representa cada uno de los elementos de info_estudiantes?

names(info_estudiantes)
# los elementos representan (carnet, promedio, tipo) de los estudiantes. 

#___________________________________________________________________________________________________
# 4. ¿Cuál es la media de los estudiantes ingresados en el año 2019?

students_2019 <- subset(data_frame, startsWith(carnet, "19"))
mean(students_2019$promedio)
# la media del promedio de estudiantes ingresados en el 2019 es de 70.85942


#___________________________________________________________________________________________________
# 5. ¿Cuál es la suma de desviación estándar de los estudiantes que ingresaron en el año 2016 y 2018?

students_2016 <- subset(data_frame, startsWith(carnet, "16"))
sd_2016 <- sd((students_2016$promedio))
students_2018 <- subset(data_frame, startsWith(carnet, "18"))
sd_2018 <- sd((students_2018$promedio))
print(sd_2016 + sd_2018)

## La suma de la desviacion estandar entre los estudiantes que ingresaron en 2016 y 2018 es de 35.13241
#___________________________________________________________________________________________________


# 6. ¿Cuál es el mínimo de notas de aquellos estudiantes donde su carnet termina con los números 45 a 48?
students_ <- subset(data_frame, endsWith(carnet, "45") | endsWith(carnet, "46") | endsWith(carnet, "47") | endsWith(carnet, "48"))
min((students_$promedio))
# El promedio minimo de notas es de 40
#___________________________________________________________________________________________________


# 7. ¿Cuál es la probabilidad de que un estudiante tipo A tenga una nota mayor a 85?
students_A <- subset(data_frame, tipo == 'A' )
students_A_85 <- subset(students_A, promedio > 85 )
probability <- length(students_A_85$tipo)/length(students_A$tipo)
print(probability)

#La probalilidad de que un estudiante de tipo A tenga una nota mayor a 85 es de 0.2461075
#___________________________________________________________________________________________________

# 8. ¿Cuál es la probabilidad de que un estudiante tipo C haya ingresado en el año 2017 o 2019?

students_C <- subset(data_frame, tipo == 'C' )
students_A_2017_2019 <- subset(students_C,  startsWith(carnet, "17") | startsWith(carnet, "19"))
probability_ <- length(students_A_2017_2019$carnet)/length(students_C$carnet)
print(probability_)

#La probalilidad de que un estudiante de tipo C haya ingresado en el año 2017 o 2019 es de 0.4972459