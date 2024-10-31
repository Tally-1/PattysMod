params[
    ["_player",nil,[objNull]]
];
private _bombDrone = _player getVariable ["PSA_bombDrone",objNull];
[_bombDrone] remoteExecCall ["PSA_fnc_detonateBombDrone",2];

true;