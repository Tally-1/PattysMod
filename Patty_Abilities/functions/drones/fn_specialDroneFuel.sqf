params[
    ["_drone",   nil, [objNull]],
    ["_hasFuel", nil,   [false]]
];
if(_hasFuel)        exitWith{};
if(fuel _drone > 0) exitWith{};

[_drone, "Out of Battery"] call PSA_fnc_deleteSpecialDrone;

true;