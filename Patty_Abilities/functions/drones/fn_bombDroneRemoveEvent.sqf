params[
    ["_drone",nil,[objNull]]
];

private _eh = _drone getVariable "PSA_collisionEh";
if(isNil "_eh")exitWith{};

_drone removeEventHandler ["EpeContactStart",_eh];
_drone setVariable ["PSA_collisionEh",nil];

true;