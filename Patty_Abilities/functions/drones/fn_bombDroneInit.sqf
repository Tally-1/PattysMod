params[
    ["_drone", nil,[objNull]],
    ["_owner", nil,[objNull]]
];
private _eh = _drone addEventHandler ["EpeContactStart",{_this call PSA_fnc_bombDroneCollision}];

_drone setVariable ["PSA_collisionEh",_eh];
_owner setVariable ["PSA_bombDrone",_drone,true];

[_drone]  remoteExecCall ["PSA_fnc_detonateDroneAction"];
[_drone]  call PSA_fnc_setDroneExplosives;
[_player] call PSA_fnc_updateDetonateDroneActionPlayer;