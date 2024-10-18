params[
    ["_drone",nil,[objNull]]
];

private _timeLimit = time + 5;
waitUntil{[_drone, _timeLimit] call PSA_fnc_combatDroneReady};

private _magType  = PSA_combatDroneMagazine;
private _extraMag = count(magazines _drone select {_x == _magType})>1;
if(_extraMag)then{_drone removeMagazineGlobal _magType};

[_drone] call PSA_fnc_droneReloadAction;

_drone addEventHandler ["Fired", {_this call PSA_fnc_combatDroneFired}];
if(!isServer)then{
[_drone, ["Fired", {_this call PSA_fnc_combatDroneFired}]] remoteExecCall ["addEventHandler",2];
};


removeAllActions _drone;

true;