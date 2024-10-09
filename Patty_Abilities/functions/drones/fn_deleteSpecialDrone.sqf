params[
    ["_drone",  nil, [objNull]],
    ["_reason", nil,      [""]]
];

_drone setVariable ["PSA_deletionReason", _reason,true];
{deleteVehicle _x} forEach crew _drone;

deleteVehicle _drone;

true;