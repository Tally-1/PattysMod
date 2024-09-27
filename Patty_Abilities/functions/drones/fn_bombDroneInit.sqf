params[
    ["_drone",nil,[objNull]]
];
private _eh = _drone addEventHandler ["EpeContactStart",{_this call PSA_fnc_bombDroneCollision}];
_drone setVariable ["PSA_collisionEh",_eh];

[_drone] call PSA_fnc_detonateDroneAction;
[_drone] call PSA_fnc_setDroneExplosives;