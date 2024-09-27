params[
    ["_drone", nil,[objNull]],
    ["_man",   nil,[objNull]]
];
private _owner      = _drone getVariable ["PSA_droneOwner",objNull];
private _manIsOwner = _man isEqualTo _owner;

_manIsOwner;