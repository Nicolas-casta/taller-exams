# Respuestas del taller — Students Performance in Exams

## Ejercicio 1

**¿En algún nivel educativo la ventaja del curso se atenúa, desaparece o se invierte?**
Si, en `master's degree` la ventaja es de solo 4 puntos, mientras que en otros niveles llega a 8. No desaparece ni se invierte, pero claramente se reduce en los niveles educativos más altos.

**¿Qué implica esto para la afirmación "el curso mejora los puntajes"?**
Que es una afirmación incompleta. El curso ayuda, pero no por igual a todos. Los estudiantes que más se benefician son los que vienen de familias con menos educación.

**¿Qué variable está "confundiendo" el efecto del curso?**
El nivel educativo de los padres. Los estudiantes con papás que tienen buena educación ya llegan con ventaja, con o sin curso, lo que hace que el efecto del curso parezca menor en esos grupos.

## Ejercicio 2

**¿El curso beneficia más a los de bajo rendimiento, a los de alto rendimiento, o desplaza toda la distribución por igual?**
Desplaza toda la distribución por igual. El p10 sube 7 puntos y el p90 sube casi 7 también. No hay un grupo que gane más que otro, el curso simplemente sube el nivel general de todos sin cerrar la brecha entre los que van bien y los que van mal.

## Ejercicio 3

**¿La brecha se agranda, reduce o cambia de signo según el nivel educativo de los padres?**
No cambia de signo, pero sí varía. En matemáticas los hombres siempre sacan más que las mujeres. En lectura y escritura es al revés, las mujeres siempre superan a los hombres. Esto se mantiene en todos los niveles educativos.

**¿En qué materia y nivel educativo es más extrema? ¿En cuál es más pequeña?**
La más extrema está en escritura para `some college`, donde las mujeres superan a los hombres por casi 11 puntos. La más pequeña está en lectura para `master's degree`, con solo 4 puntos de diferencia.

**Hipótesis explicativa:**
Es un patrón conocido en educación, las mujeres suelen tener mejor rendimiento en lenguaje y los hombres en matemáticas, influenciado en parte por las expectativas sociales sobre cada género desde temprana edad.

## Ejercicio 4

**¿La ventaja del almuerzo standard se mantiene dentro de cada nivel educativo, o se diluye?**
Se mantiene en todos los niveles. Los estudiantes con almuerzo estándar sacan entre 7 y 11 puntos más que los de almuerzo gratuito, sin importar el nivel educativo de sus papás.

**¿El almuerzo es causa real del rendimiento, o solo un proxy del nivel socioeconómico?**
Es un proxy del nivel socioeconómico. El tipo de almuerzo refleja los ingresos de la familia, y esos ingresos afectan el rendimiento por muchas razones: acceso a recursos, estabilidad en el hogar, alimentación general, entre otras. Es importante aclarar que con este dataset no se puede demostrar causalidad, solo que las dos variables están relacionadas.

## Ejercicio 5

**¿Qué porcentaje del dataset está en riesgo?**
Aproximadamente el 33%, es decir, 1 de cada 3 estudiantes tiene un promedio menor a 60.

**¿Qué variable usarías para predecir si un estudiante está en riesgo?**
El nivel educativo de los padres. Es la variable que mejor separa a los estudiantes en riesgo de los que no lo están, porque refleja el ambiente en el que creció el estudiante. El lift entre el nivel más alto y el más bajo de esta variable es el más grande de todas las variables analizadas, lo que la convierte en el mejor predictor individual.
