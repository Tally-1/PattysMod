params[
    ["_player",nil,[objNull]]
];
private _drone = _player getVariable ["PSA_bombDrone",objNull];

if(alive _drone)exitWith{true};

false;