Eventos y Acciones del modelo Sensor para describir el comportamiento del módulo de código C.

Estados:

ST_BTN_UP: el botón no está siendo presionado

ST_BTN_FALL: el botón está empezando a ser presionado 

ST_BTN_DOWN: el botón está completamente presionado y está en la posición más baja

ST_BTN_RISING: el botón está dejando de ser presionado

Eventos:

EV_ BTN _PRESSED: algo aprieta el botón

EV_ BTN _RELEASED: algo deja de apretar el botón

Acciones:

tick = 0 : reinicia la variable de conteo de tiempo (tick) al detectar el inicio de un posible flanco

tick++ : incrementa la variable de conteo de tiempo (tick), por cada 1 milisegundo, para después compararla con el limite de tiempo (debounce)

EV_SYS_BTN_DOWN: le confirma al sistema que el botón no fue presionado

EV_SYS_BTN_UP: le confirma al sistema que el botón fue presionado

Timer:

DEL_ BTN _DEBOUNCE: el limite de tiempo para confirmar que el botón fue presionado

Tabla  de  Estados y Excitaciones  del  modelo  Sensor

+-----------------+-------------------+--------------------------+-----------------+-----------------------+

| Current State   | Event             | [Guard]                  | Next State      | Actions               |

+-----------------+-------------------+--------------------------+-----------------+-----------------------+

| ST_BTN_UP       | EV_BTN_PRESSED    | -                        | ST_BTN_FALL     | tick = 0              |

| ST_BTN_FALL     | every 1 ms        | -                        | ST_BTN_FALL     | tick++                |

| ST_BTN_FALL     | EV_BTN_RELEASED   | -                        | ST_BTN_UP       | -                     |

| ST_BTN_FALL     | -                 | tick >= DEL_BTN_DEBOUNCE | ST_BTN_DOWN     | raise EV_SYS_BTN_DOWN |

| ST_BTN_DOWN     | EV_BTN_RELEASED   | -                        | ST_BTN_RISING   | tick = 0              |

| ST_BTN_RISING   | every 1 ms        | -                        | ST_BTN_RISING   | tick++                |

| ST_BTN_RISING   | EV_BTN_PRESSED    | -                        | ST_BTN_DOWN     | -                     |

| ST_BTN_RISING   | -                 | tick >= DEL_BTN_DEBOUNCE | ST_BTN_UP       | raise EV_SYS_BTN_UP   |

+-----------------+-------------------+--------------------------+-----------------+-----------------------+

