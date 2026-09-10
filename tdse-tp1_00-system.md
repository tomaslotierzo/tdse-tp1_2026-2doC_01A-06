Eventos y Acciones del modelo System para describir el comportamiento del módulo de código C.

Estados:

ST_NO_HAY_AUTO: no hay un auto en la terminal

ST_HAY_AUTO hay un auto en la terminal

ST_BARRIER_UP: la barrera esta arriba

ST_BARRIER_DOWN: la barrera esta abajo

Eventos:

EV_SYS_CAMERA_ON: la cámara detecta un auto cerca de la terminal

EV_SYS_BTN_DOWN: el botón de la maquina fue presionado por el usuario del auto

Acciones:

tick = 0 : reinicia la variable de conteo de tiempo (tick) al detectar el inicio de un posible flanco

tick++ : incrementa la variable de conteo de tiempo (tick), por cada 1 milisegundo, para después compararla con el limite de tiempo (debounce)

EV_SYS_BARRIER_UP: le confirma al sistema que la barrera está arriba

EV_SYS_BARRIER_DOWN: le confirma al sistema que la barrera está abajo

Timer:

DEL_BARRIER_DEBOUNCE: tiempo que dura la barrera arriba para esperar que el auto pase

Tabla de Estados y Excitaciones del modelo System

