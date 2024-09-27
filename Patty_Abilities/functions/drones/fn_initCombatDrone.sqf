params[
    ["_drone",nil,[objNull]]
];
private _timeLimit = time + 5;
waitUntil{[_drone, _timeLimit] call PSA_fnc_combatDroneReady};

[_drone, PSA_combatDroneGun] call PSA_fnc_setDroneWeapon;
_drone addEventHandler ["Fired", {_this call PSA_fnc_combatDroneFired}];

true;