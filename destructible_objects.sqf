private _obj = this; 
_obj addEventHandler ["HandleDamage", { 
  params ["_target","_selection","_damage","_source","_projectile"]; 
  if (damage _target > 0.25) then { 
    DESTROYED_OBJECT = true;
    deleteVehicle _target; 
  }; 
}];
