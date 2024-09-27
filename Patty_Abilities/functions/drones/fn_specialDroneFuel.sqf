params[
    ["_drone",   nil, [objNull]],
    ["_hasFuel", nil,   [false]]
];
if(_hasFuel)        exitWith{};
if(fuel _drone > 0) exitWith{};

[_drone, "has no fuel."] call PSA_fnc_deleteSpecialDrone;

true;