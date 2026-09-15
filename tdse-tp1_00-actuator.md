Eventos y Acciones del modelo Actuator para describir el comportamiento del módulo de código C.

Estados:

ST_NO_HAY_AUTO: no hay un auto en la terminal

ST_WELCOME: la pantalla de la maquina muestra el mensaje "Welcome"

ST_BARRIER_UP: la barrera esta arriba

Eventos:

EV_COIL_ON: la bobina detecta un auto cerca

EV_COIL_OFF: la bobina dejo de detectar el auto

EV_BTN_DOWN: el botón de la maquina fue presionado por el usuario del auto

Acciones:

EV_ACT_WELCOME: le confirma a los actuadores que la pantalla muestra el mensaje "Welcome"

EV_ACT_PRINT_TICKET: le confirma a los actuadores que el ticket fue impreso

EV_ACT_BARRIER_UP: le confirma a los actuadores que la barrera está arriba

EV_ACT_BARRIER_DOWN: le confirma a los actuadores que la barrera está abajo

EV_ACT_REGISTER: le confirma a los actuadores que el auto fue registrado en los servidores

Tabla de Estados y Excitaciones del modelo Actuator

+-----------------+--------------------+----------+-----------------+-------------------------------+

| Current State   | Event              | [Guard]  | Next State      | Actions                       |

+-----------------+--------------------+----------+-----------------+-------------------------------+

| ST_NO_HAY_AUTO  | EV_COIL_ON         | -        | ST_WELCOME      | raise EV_ACT_WELCOME          |

| ST_WELCOME      | EV_BTN_DOWN        | -        | ST_BARRIER_UP   | raise EV_ACT_PRINT_TICKET ;   |

|                 |                    |          |                 | raise EV_ACT_BARRIER_UP       |

| ST_BARRIER_UP   | EV_COIL_OFF        | -        | ST_NO_HAY_AUTO  | raise EV_ACT_BARRIER_DOWN ;   |

|                 |                    |          |                 | raise EV_ACT_REGISTER         |

+-----------------+--------------------+----------+-----------------+-------------------------------+
