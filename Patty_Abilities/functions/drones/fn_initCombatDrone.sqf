params[
    ["_drone",nil,[objNull]]
];
private _timeLimit = time + 5;

waitUntil{[_drone, _timeLimit] call PSA_fnc_combatDroneReady};

[_drone] call PSA_fnc_droneReloadAction;
[
    _drone, 
    PSA_combatDroneGun, 
    PSA_combatDroneMagazine

] call PSA_fnc_setDroneWeapon;

_drone addEventHandler ["Fired", {_this call PSA_fnc_combatDroneFired}];

removeAllActions _drone;

true;