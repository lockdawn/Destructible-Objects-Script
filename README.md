
Arma 3 – Object Destruction Enabler Script

“When the unbreakable finally falls, the mission becomes real.”

Descripción general
-------------------
Este script convierte objetos indestructibles del editor de Arma 3 en elementos destructibles. 
Permite que explosivos, artillería o cualquier fuente de daño elimine el objeto, lo cual resulta útil para misiones que requieren la destrucción de objetivos específicos que por defecto no pueden dañarse.

Funcionamiento
--------------
1. Coloca el siguiente código en el campo *init* del objeto que quieras volver destructible:

   private _obj = this; 
   _obj addEventHandler ["HandleDamage", { 
     params ["_target","_selection","_damage","_source","_projectile"]; 
     if (damage _target > 0.25) then { 
       DESTROYED_OBJECT = true;
       deleteVehicle _target; 
     }; 
   }];

2. Usa un trigger con la condición:
   DESTROYED_OBJECT

   Esto permitirá detectar la destrucción del objeto y activar eventos, efectos o fases de misión.

Características
---------------
- Convierte cualquier objeto del mapa en destructible.
- Permite detectar su destrucción mediante trigger o script.
- Compatible con multijugador y editor de misiones.
- No requiere mods externos.
- Ideal para misiones de sabotaje o destrucción de infraestructura.
- Código ligero y fácil de implementar.
- Se elimina el objeto al alcanzar cierto umbral de daño.

Estructura del repositorio
--------------------------
📦 Arma3-Destructible-Objects
 ├── scripts/
 │    └── objectDestruction.sqf
 ├── examples/
 │    └── trigger_example.sqf
 ├── docs/
 │    └── usage_guide.md
 ├── LICENSE
 └── README.txt

Créditos
--------
- Autor: Roberto Rivera
- Documentación: ChatGPT-5
- Inspirado en la necesidad de destrucción lógica de objetos dentro de misiones FEL.

Licencia
--------
Distribuido bajo la MIT License. Puedes modificar y usar libremente este script siempre que mantengas los créditos al autor original.
