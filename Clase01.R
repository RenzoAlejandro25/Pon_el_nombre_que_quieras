#### FUndamentos de R ####
getwd()
setwd("C:/Users/Usuario/Desktop/Clases_de_R/Prácticas")

#Estos dos tipos de help son distintos, aún no se en que 
help("mean")
help.search("mean")
?mean #Es lo mismo que help(mean)

# R también sirve como calculadora

# Vamos a trabajor con unos vectores
peso <- c(60,72,84,65,43,87,90,56)
length(peso) #Me da el número de elementos
peso[3] #Las "[]" me permiten visualizar los elementos del vector, dentro de [] va el 
# el orden del elemento que quiero ver

altura <- c(1.59,1.75,1.85,1.60,1.57,1.90,1.83,1.73)
length(altura) #Tiene la misma longitud que peso

# También se puede hacer operaciones con los vectores
imc <- peso/altura^2

# ¿Qué ocurre si la longitud de los vectores son distintas?
altura2 <- c(1.59,1.75,1.85,1.60,1.57,1.90,1.83,1.73,1.85)
IMC <- peso/altura2 
length(peso)
length(altura2)
peso[1]
altura2[9]
60/(1.85)^2
IMC[9]
X/(1.85)^2=32.43243
# Después de todo esto sigo sin saber que pasa cuando las longitudes no son iguales

#### Programación en R ####

#Tipos de datos
  #numeric: número real con doble precisión -> entero, fracción, notación científica
  #complex: números complejos -> a+bi
  #character: cadena alfanuméricas de texto.
  # logical: variables lógicas -> TRUE FALSE

# NA: not available
x <- NA
x+1
y <- c(x,3,5,x)
mean(y) #Al tener un NA en sus elementos no puede calcular la media
mean(y, na.rm = T)# con rm.na=T se omite los NA

# Algunas operaciones con +Inf o -Inf 
# NaN's significa not a number

#### Matrices ####

# Una matriz es un vector numérico de longitud 2, todos los elementos deben ser del mismo
# tipo. 
# Las funciones is.matrix() y as.matrix() fuerzan el carácter de matriz a un objeto.

m1 <- matrix(1:12, ncol=3, byrow=T, dimnames=list(c("r1","r2","r3","r4"), 
                                                  c("c1","c2","c3")))
m1[1,1]#Seleccionar un elemento de una matriz
m1[,c(2,3)] #Selecionar las columnas 2 y 3
m1[,c(-1,-3),drop=F] #Mostrar todas las columnas menos la 1 y la 3. Si se omite drop=F, se
# visualiza la columna 2 como una fila.

sel <- matrix(rep(c(T,F),3),4,3) #Repite los valores de TRUE y FALSE en un matriz de orden 4,3
m1[sel] #Muestra los valores que conciden con TRUE

ncol(m1) #muestra el número de columnas de una matriz
nrow(m1n)
t(m1) #Transpuesta de una matriz
cbind(1,m1) #Combina distintos vectores, por columnas, para crear una matriz
cbind(1:3,1:6,1:12)
#rbind() -> Combina distintos vectores, por filas, para crear una matriz
diag(m1) #Muestra la diagonal de una matriz (esta no tiene porque ser cuadrada)
help("col")
# No sé para que sirve las funciones col() y row().
apply(m1,1,sum) #Muestra la suma de los elementos de una misma fila de la matriz m1
apply(m1,2,mean) #Muestra la media de los elementos de una misma columna de la matriz m1

#### Estructuras de decisión ####

x <- runif(1,0,10) 
if (x>5) {
  y <- TRUE
} else {
  y <- FALSE
}
# El if tiene que ir en la siguiente fila. En este ejemplo x = 1.3172 y y = FALSE
# Pero eso cambia cada vez que ejecutamos en comando.

q <- runif(10,0,20) #10 es el número de elementos,  0 - 20 es el rango
VectorBoolaono <- (q>=14) #El resultado es un vector logical
NumAprobados1 <- sum(VectorBoolaono)#Solo dos cumplen con la condición 
