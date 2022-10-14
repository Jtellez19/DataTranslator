def holaMundo():
    print("Hola mundo")
    
holaMundo()

def resistencias():
    valor = ""
    resistencias = input("Escribe los colores de la resistencia seguido de un guión, color-color:")
    lista = resistencias.split("-")
    for x in lista:
        if(x == "Negro"):
            valor += "0"
        elif(x == "marron"):
            valor += "1"
        elif(x == "Rojo"):
            valor += "2"
        elif(x == "Naranja"):
            valor += "3"
        elif(x == "Amarillo"):
            valor += "4"
        elif(x == "verde"):
            valor += "5"
        elif(x == "Azul"):
            valor += "6"
        elif(x == "Purpura"):
            valor += "7"
        elif(x == "Gris"):
            valor += "8"
        elif(x == "Blanco"):
            valor += "9"
    print("Resultado: "+valor)

resistencias()

def bisiesto():
    year = 0
    year = int(input("Ingresa el año a revisar:"))
    if(year%4 == 0 and year%100 == 0 and year%400 == 0):
        print("Es bisiesto")
    else:
        print("No es bisiesto")

bisiesto()

def edadSolar(segundos,planeta):
    diccionario ={"mercurio":0.2408467,"venus":0.61519726,
                  "tierra":1.0,"marte":1.8808158,"jupiter":11.862615,
                  "saturno":29.447498
                 ,"urano":4.016846,"neptuno":64.79132}
    edadTierra = segundos/31557600
    edadEnPlaneta = edadTierra * diccionario[planeta]
    print("Edad en {0} es de {1}".format(planeta,"{:.2f}".format(edadEnPlaneta)) )

edadSolar(1000000000,"tierra")

