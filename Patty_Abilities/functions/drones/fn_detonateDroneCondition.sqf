params[
    ["_drone",  nil,[objNull]]
];

private _playerDrone = getConnectedUAV player;
private _connected   = (str _drone) isEqualTo (str _playerDrone);

_connected;