# Roulette
Roulette es un sencillo juego de ruleta.

## Instalación
1. Clona el repositorio `(https://github.com/tomfloresa/roulette.git)`
2. Ejecuta `bundle install` para instalar las gemas necesarias
3. Crea la base de datos desde el esquema con `rake db:schema:load` y agrega jugadores por defecto mediante el seed de la app. Para esto ejecuta `rake db:seed`
4. Ejecuta `rails s` para ejecutar la app de manera local

## Jugar
La aplicación es muy sencilla y fácil de usar.

En la parte izquierda de la pantalla aparecera una columna en la cual estarán listados todos los jugadores. Cada uno debe ingresar el monto de la apuesta, la opción de apuesta (Rojo, Negro o Verde según lo indicado: 1, 2 o 3),
y luego de esto deben confirmar su apuesta apretando el botón apostar. Este formulario crea un registro de apuesta en la base de datos.

Una vez que los jugadores hayan hecho sus apuestas, en la parte derecha de la pantalla (con fondo rosado), estará el botón "girar ruleta". Apretado entregará el resultado de la ronda y
el número de ganadores.

Para iniciar una nueva ronda, solo recarga la página o aprieta el botón "nueva ronda".

Cada ronda tiene un máximo de 3 minutos de duración, tiempo en el cual los jugadores deben hacer sus apuestas. (Timer esta en la parte superior izquierda).
