#Guia 3-------------------------------------------------------------------------
#Ramo: Estadistica IV
#Estudiantes: Josefa Espinoza y Karla Medina
#Profesora: Maria Constanza Ayala
#Ayudantes: Charo Astorga y Lucas Galanakis
#Fecha: 14- Noveimbre-2022

#Carga de paquetes y ajustes iniciales------------------------------------------
pacman::p_load(haven, 
               lm.beta, 
               dplyr,sjPlot,texreg,sjmisc, tidyverse, table1, psych, moments)
options(scipen=999) 
rm(list=(ls()))

#Carga de datos y exploracion---------------------------------------------------
CEP <- read_dta("input/data/base_85.dta")
names(CEP)
head(CEP)

#Seleccion de variables---------------------------------------------------------
#interes_pol_1_b: ¿Cuan interesado está Ud.en la politica?
#confianza_6_c: A continuacion, le voy a leer los nombres de algunas instituciones.
De acuerdo con las alternativas de la tarjeta,¿Cuanta confianza tiene Ud. en cada
una de ellas? PARTIDOS POLITICOS.
#confianza_6_d: A continuacion, le voy a leer los nombres de algunas instituciones.
De acuerdo con las alternativas de la tarjeta,¿Cuanta confianza tiene Ud. en cada
una de ellas? TRIBUNALES DE JUSTICIA.
#confianza_6_h: A continuacion, le voy a leer los nombres de algunas instituciones.
De acuerdo con las alternativas de la tarjeta,¿Cuanta confianza tiene Ud. en cada
una de ellas? CARABINEROS.
#confianza_6_i: A continuacion, le voy a leer los nombres de algunas instituciones.
De acuerdo con las alternativas de la tarjeta,¿Cuanta confianza tiene Ud. en cada
una de ellas? Gobierno.
#confianza_6_k: A continuacion, le voy a leer los nombres de algunas instituciones.
De acuerdo con las alternativas de la tarjeta,¿Cuanta confianza tiene Ud. en cada
una de ellas? CONGRESO.

frq(CEP$interes_pol_1_b)
frq(CEP$confianza_6_c)
frq(CEP$confianza_6_d)
frq(CEP$confianza_6_h)
frq(CEP$confianza_6_i)
frq(CEP$confianza_6_k)

#Recodificacion de variables----------------------------------------------------

