params[
    ["_drone",nil,[objNull]]
];
[_drone] call PSA_fnc_bombDroneRemoveEvent;
_drone setVariable ["PSA_detonated", true, true];
{
    detach _x; 
    _x spawn{_this setDamage 1}
}forEach(_drone getVariable ["PSA_mines", []]);

true;