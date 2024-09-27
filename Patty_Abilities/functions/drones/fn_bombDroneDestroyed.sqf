params[
    ["_drone",nil,[objNull]]
];
[_drone] call PSA_fnc_bombDroneRemoveEvent;
private _detonated = _drone getVariable "PSA_detonated";
if(_detonated)exitWith{};

[_drone] call PSA_fnc_detonateBombDrone;

true;