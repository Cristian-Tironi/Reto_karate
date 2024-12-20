# Ejercicio de Automatización de API con Karate

Este proyecto contiene pruebas automatizadas para el registro y login de usuarios en la página de [Demoblaze](https://www.demoblaze.com).

### Casos de prueba
- Crear un nuevo usuario en signup
- Intentar crear un usuario ya existente
- Usuario y password correcto en login
- Usuario y password incorrecto en login

## Requisitos
* Java 17 installed
* Gradle  (Suggested version 8.8.0)
* IDE installed (Suggested IntelliJ IDEA)

## Instalación

1. Clona este repositorio en tu máquina local.

## Ejecución de las pruebas y Visualización de reporte

1. Navega hasta el directorio del proyecto en tu terminal.
2. Puedes ejecutar todas las pruebas con en paralelo con  `./gradlew test --tests *ManagementTest`.

3. Una vez que las pruebas se hayan ejecutado, se generará un informe en HTML. Puedes encontrar el enlace al informe en la salida de la consola después de ejecutar las pruebas.
> Ejemplo:
> ```plaintext
> HTML report: (paste into browser to view) | Karate version: 1.5.0
> file:///C:/Users/cristian.tironi/Desktop/reto_automatizacion_karate/reto_karate/build/karate-reports/karate-summary.html
>


También puedes encontrar este informe dentro del proyecto, se encuentra en el directorio dentro `reto_karate/build/karate-reports/karate-summary.html` 

