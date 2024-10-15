Algoritmo calculoPesos
    Definir numPersonas Como Entero;
    Definir pesos Como Real;
    Definir pesoTotal, pesoPromedio, pesoMaximo, pesoMinimo Como Real;
    Definir rango, sobrePromedio Como Entero;
    Definir pesoLibras, pesoKg Como Real;
    Definir clasificacion Como Caracter;
    Definir persona Como Entero;
    
    Escribir "Ingrese el número de personas: ";
    Leer numPersonas;
	
    Mientras numPersonas <= 0 Hacer
        Escribir "Por favor, ingrese un número válido de personas (mayor que 0): ";
        Leer numPersonas;
    Fin Mientras
    
    Dimension pesos[numPersonas];
    
    Para persona Desde 0 Hasta numPersonas - 1 Hacer
        Escribir "Ingrese el peso de la persona ", persona + 1, " en libras:";
        Leer pesoLibras;
        
        Mientras pesoLibras <= 0 Hacer
            Escribir "El peso no puede ser negativo. Ingrese un valor válido:";
            Leer pesoLibras;
        Fin Mientras
        
        pesoKg = pesoLibras * 0.453592;
        pesos[persona] = pesoKg;
    FinPara
    
    pesoTotal = 0;
    pesoMaximo = pesos[0];
    pesoMinimo = pesos[0];
    
    Para persona Desde 0 Hasta numPersonas - 1 Hacer
        pesoTotal = pesoTotal + pesos[persona];
        
        Si pesos[persona] > pesoMaximo Entonces
            pesoMaximo = pesos[persona];
        Fin Si
        
        Si pesos[persona] < pesoMinimo Entonces
            pesoMinimo = pesos[persona];
        Fin Si
    FinPara
    
    pesoPromedio = pesoTotal / numPersonas;
    
    rango = 0;
    sobrePromedio = 0;
    Para persona Desde 0 Hasta numPersonas - 1 Hacer
        Si pesos[persona] >= 55 Y pesos[persona] <= 70 Entonces
            rango = rango + 1;
        Fin Si
        Si pesos[persona] > pesoPromedio Entonces
            sobrePromedio = sobrePromedio + 1;
        Fin Si
    FinPara
    
    Escribir "Pesos de las personas (libras y kilogramos):";
    Para persona Desde 0 Hasta numPersonas - 1 Hacer
        Escribir "Persona ", persona + 1, ": ", pesos[persona] / 0.453592, " lb = ", pesos[persona], " kg";
    FinPara
    
    Escribir "Número de personas en el rango de 55-70 kg: ", rango;
    Escribir "Peso promedio: ", pesoPromedio, " kg";
    Escribir "Número de personas por encima del peso promedio: ", sobrePromedio;
    Escribir "Peso máximo: ", pesoMaximo, " kg";
    Escribir "Peso mínimo: ", pesoMinimo, " kg";
    
    Escribir "Clasificación de los pesos:";
    Para persona Desde 0 Hasta numPersonas - 1 Hacer
        Si pesos[persona] < 55 Entonces
            clasificacion = "Bajo peso";
        Sino
            Si pesos[persona] >= 55 Y pesos[persona] <= 70 Entonces
                clasificacion = "Peso normal";
            Sino
                Si pesos[persona] > 70 Y pesos[persona] <= 85 Entonces
                    clasificacion = "Sobrepeso";
                Sino
                    clasificacion = "Obesidad";
                Fin Si
            Fin Si
        Fin Si
        Escribir "Persona ", persona + 1, ": ", clasificacion;
    FinPara
FinAlgoritmo
