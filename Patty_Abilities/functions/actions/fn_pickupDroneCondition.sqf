params[
    ["_drone", nil,[objNull]],
    ["_man",   nil,[objNull]]
];
if(!alive _drone) exitWith{false};
if(!alive _man)   exitWith{false};
private _owner      = _drone getVariable ["PSA_droneOwner",objNull];
private _manIsOwner = _man isEqualTo _owner;

_manIsOwner;