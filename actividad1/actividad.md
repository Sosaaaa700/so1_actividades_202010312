#### SISTEMAS OPERATIVOS 1 Sección “A”
#### JULIO ESTUARDO SOLORZANO SOSA
#### 202010312

# Actividad 1

## Tipos de Kernel y sus diferencias:
### Monolítico:

#### Características:
	
- Todo el sistema operativo funciona como una única entidad.
- Todas las funciones del sistema operativo comparten el mismo espacio de memoria y se ejecutan en el mismo espacio de direcciones.
- Suele ser eficiente en términos de rendimiento ya que no hay costos de comunicación entre módulos.
- <b>Ejemplo: Linux.</b>
### Microkernel:

#### Características:
 - Solo las funciones esenciales se implementan en el núcleo, y los servicios adicionales se ejecutan como procesos separados fuera del núcleo.
 - Menor tamaño y mayor modularidad.
 - Mayor estabilidad ya que los fallos en los servicios no afectan directamente al núcleo.
 - <b>Ejemplo: QNX.</b>
### Híbrido:

#### Características:
- Combina características de los kernels monolíticos y microkernels.
- Algunas partes del sistema operativo se ejecutan en el espacio de usuario, mientras que otras en el espacio del núcleo.
- Intenta combinar la eficiencia del monolítico con la modularidad del microkernel.
- <b>Ejemplo: Windows NT.</b>

## User vs Kernel Mode:

### User Mode (Modo Usuario):

- Las aplicaciones de usuario se ejecutan en este modo.
- Tiene restricciones de acceso a recursos del sistema.
- Las instrucciones que podrían dañar el sistema operativo o hardware están restringidas.

### Kernel Mode (Modo Kernel):
 - El sistema operativo y los controladores de dispositivos se ejecutan en este modo.
- Tiene acceso completo a los recursos del sistema.
- Las instrucciones privilegiadas y funciones críticas se ejecutan en este modo.

## Interruptions vs Traps:

###  Interrupciones (Interrupts):
- Señales externas al procesador que indican eventos que requieren atención.
- Pueden ser generadas por hardware (por ejemplo, un dispositivo de E/S) o software (por ejemplo, una instrucción de interrupción).
- Pueden interrumpir la ejecución normal del programa para manejar el evento.
### Traps:
- También conocidas como excepciones o fallos de software.
- Son eventos generados por el propio programa en ejecución debido a condiciones anómalas (por ejemplo, división por cero).
- El control pasa al sistema operativo para manejar la situación.


