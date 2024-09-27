params [
    ["_drone",      nil, [objNull]]
];

_drone setUnitTrait ["audibleCoef",    1];
_drone setUnitTrait ["camouflageCoef", 1];

_drone setVariable["PSA_hidden",false,true];

[["Drone visible ",round time]] call p_dbg;

true;