num_personas = int(input("Ingrese el número de personas: "))

while num_personas <= 0:
    print("Por favor, ingrese un número válido de personas (mayor que 0): ")
    num_personas = int(input())

pesos = [0] * num_personas

for persona in range(num_personas):
    peso_libras = float(input(f"Ingrese el peso de la persona {persona + 1} en libras: "))

    while peso_libras <= 0:
        print("El peso no puede ser negativo. Ingrese un valor válido:")
        peso_libras = float(input())

    peso_kg = peso_libras * 0.453592
    pesos[persona] = peso_kg

peso_total = 0
peso_maximo = pesos[0]
peso_minimo = pesos[0]

for persona in range(num_personas):
    peso_total += pesos[persona]

    if pesos[persona] > peso_maximo:
        peso_maximo = pesos[persona]

    if pesos[persona] < peso_minimo:
        peso_minimo = pesos[persona]

peso_promedio = peso_total / num_personas

rango = 0
sobre_promedio = 0

for persona in range(num_personas):
    if 55 <= pesos[persona] <= 70:
        rango += 1
    if pesos[persona] > peso_promedio:
        sobre_promedio += 1

print("Pesos de las personas (libras y kilogramos):")
for persona in range(num_personas):
    print(f"Persona {persona + 1}: {pesos[persona] / 0.453592:.2f} lb = {pesos[persona]:.2f} kg")

print(f"Número de personas en el rango de 55-70 kg: {rango}")
print(f"Peso promedio: {peso_promedio:.2f} kg")
print(f"Número de personas por encima del peso promedio: {sobre_promedio}")
print(f"Peso máximo: {peso_maximo:.2f} kg")
print(f"Peso mínimo: {peso_minimo:.2f} kg")

print("Clasificación de los pesos:")
for persona in range(num_personas):
    if pesos[persona] < 55:
        clasificacion = "Bajo peso"
    elif 55 <= pesos[persona] <= 70:
        clasificacion = "Peso normal"
    elif 70 < pesos[persona] <= 85:
        clasificacion = "Sobrepeso"
    else:
        clasificacion = "Obesidad"
    print(f"Persona {persona + 1}: {clasificacion}")
