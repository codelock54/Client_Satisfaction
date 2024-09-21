library(caret)
library(DataExplorer)
library(ggplot2)
library(colorspace)
library(data.table)
library(MASS)
library(foreign)
library(dplyr)
library(tidyverse)
library(tidyr)
library(scales)
library(factoextra)
library(mvoutlier)
library(outliers)
library(readxl)
library(psych)
library(corrplot)
library(sqldf)
library(gridExtra)
library(gdata)
library(GPArotation)
library(gplots)
library(RColorBrewer)
library(semPlot)
library(mvtnorm)
library(plotly)
library(scatterplot3d)
library(GGally)
library(MVN)
library(matrixcalc)
library(car)
library(PerformanceAnalytics)


setwd("/home/dev/Documents/ESAN/Multivariado I/ANALISIS_MULTI_I/BASES")
getwd()

library(foreign)
Data <- read.spss("BASE MODELO DE SATISFACCIÓN - GRUPO 2.sav",to.data.frame=T)
attach(Data)

glimpse(Data)

head(x)
x <- dplyr::select(Data,enc,p5_1,p5_2,p5_3,p5_4,p5_5,p5_6,p5_7,p5_8,p5_9,p5_10,p5_11,
                   p7_1,p7_2,p7_3,p7_4,p7_5,p7_6,p7_7) |> as.data.frame()



str(x)
sapply(x,class)

ggpairs(x, 
        title = "Correlaciones con Distribuciones", 
        upper = list(continuous = wrap("cor", method = "pearson")), 
        lower = list(continuous = "smooth"),
        diag = list(continuous = "densityDiag"))


chart.Correlation(x, histogram = TRUE, method = "pearson",
                  pch = 19, col = "blue", main = "Correlaciones con Distribuciones")

plot_missing(Data)

colSums(is.na(Data))  |> as.data.frame()

summary(Data)

describe(Data)

par(mfrow = c(2, 3))  
hist(x$p5_1, main = "SOLUCION DADA EN EL LOCAL", col = "orange")
hist(x$p5_2, main = "AGILIDAD MOSTRADA", col = "orange")
hist(x$p5_3, main = "INTERES MOSTRADO", col = "orange")
hist(x$p5_4, main = "AMABILIDAD Y TRATO", col = "orange")
hist(x$p5_5, main = "OFERTA DE PRODUCTOS Y SERVICIOS", col = "orange")
hist(x$p5_6, main = "NIVEL DE CONOCIMIENTOS DEL FUNCIONARIO / CAJERO", col = "orange")
par(mfrow = c(1, 1)) 
