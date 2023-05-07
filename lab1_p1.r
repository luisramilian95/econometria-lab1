## ################################################## 
## #                    Parte 1                     #
## ##################################################


# 1. ¿Cómo generaría un arreglo aleatorio de 250 elementos con los colores primarios?

colors <- c("red", "blue", "yellow")
random_colors <- sample(colors, size = 250, replace = TRUE)
print(random_colors)


print("________________________________________")


# 2. Dado un arreglo de 120000 elementos de números enteros entre 40 y 70, 
# ¿Cómo haría para obtener la desviación estándar de aquellos números 
# que son mayores a 55 y menores a 64?

random_numbers <- sample(40:70, size = 120000, replace = TRUE)
numbers_between_55_and_64 <- random_numbers[random_numbers > 55 & random_numbers < 64]
sd(numbers_between_55_and_64)

print("________________________________________")
# 3. Suponga que se almacena en una variable un arreglo con todos los números de carnet 
# de los estudiantes del Instituto de Investigación de Operaciones de la universidad en forma de 
# string, los carnets tiene al inicio dos caracteres que identifican el año en el que la 
# persona entró a la universidad por ejemplo: 19004528 hacer referencia a una persona que 
# ingreso en el año 2019, 06009878 hace referencia a una persona que ingreso que el año 2006, 
# ¿Cómo haría para contar la cantidad de alumnos por año?



get_students <- function(students, year) {
    
    year_string <- as.character(year)
    year_ <- substr(year_string,3,4)

    students_per_year <- students[startsWith(students, year_)]
    print(students_per_year)
    
   return (length(students_per_year))
}

students <- c('19004528', '19004529', '19004530', '06009878', '06009880')

print("Estudiantes del 2019")
print(get_students(students, 2019))
print("Estudiantes del 2006")
print(get_students(students, 2006))

print("________________________________________")
# 4. Define el vector y = (1, 3, 5, 7) utilizando la función c(). 
# ¿Cómo lo harías con la función seq()?
seq(1, 7, by = 2)

print("________________________________________")
#5. Si b <- list(a=1:10, c="Hola", d="XX"), escriba una expresión en R 
# que devuelva todos los elementos de la lista excepto los
# elementos 4,6,7,8 del vector a.

b <- list(a=1:10, c="Hola", d="XX")
numbers <- b$a[b$a %in% c(4,6,7,8)]

print("________________________________________")
# 6. Dado los siguientes vectores, muestre el código en R necesario para declarar 
# y calcular el promedio, deviación estándar, mediana, moda y sumatoria total 
# para los siguientes vectores:

# a. x=(8,7,6,5)
# b. y = (3,3, 3, 3, 3, 3, 3, 3, 2, 2)
# c. z = (1, 1.75, 2.5, 3.25, 4)

mode <- function(x) {
   return(as.numeric(names(which.max(table(x)))))
}

description <- function(vector) {
   print("Standard Deviation")
   print(sd(vector))
   print("Mediana")
   print(median(vector))
   print("Moda")
   print(mode(vector))
   print("Sumatoria")
   print(sum(vector))
}

description(c(8,7,6,5))
description(c(3,3, 3, 3, 3, 3, 3, 3, 2, 2))
description(c(1, 1.75, 2.5, 3.25, 4))

print("________________________________________")
# 7. Sabemos que para sumar vectores estos deben tener la misma longitud. Sin embargo R 
# trabaja de manera distinta. 
# Defina los vectores x = (1, 2, 3, 4, 5, 6), y = (7, 8), z = (9, 10, 11, 12). Calcula:
#  a. x + x
#  b. x + y.
#  c. Responda ¿Qué ha hecho R?

x <- c(1, 2, 3, 4, 5, 6)
y <- c(7, 8)
z <- c(9, 10, 11, 12)

print(x + x)
print(x + y)
print("Para la suma x + x es igual a (1+1, 2+2, 3+3, 4+4, 5+5, 6+6)")
print("Para el suma x + y es igual a (1+7, 2+8, 3+7, 4+8, 5+7, 6+8)")
print("________________________________________")
# 8. Dada la variable string <- "Hola Mundo", escriba una instrucción en R
# que devuelva la siguiente salida:
# [[1]]
# [1] "Hola"
# [[2]]
# [1] "Mundo"

string <- "Hola Mundo"
hello_world <- (strsplit(string, split = " "))
print(list(hello_world[[1]][1]))
print(list(hello_world[[1]][2]))

