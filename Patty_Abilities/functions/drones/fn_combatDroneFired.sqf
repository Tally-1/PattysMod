if(!alive (_this#0))exitWith{(_this#0)removeAllEventHandlers "Fired"};
params [
    ["_drone",      nil, [objNull]],
    ["_weapon",     nil,      [""]],
    ["_muzzle",     nil,      [""]],
    ["_mode",       nil,      [""]],
    ["_ammo",       nil,      [""]],
    ["_magazine",   nil,      [""]],
    ["_projectile", nil, [objNull]],
    ["_gunner",     nil, [objNull]]
];
_drone setVariable  ["PSA_lastWeaponFire", round time];
if!(_drone getVariable "PSA_hidden")exitWith{};

[_drone] call PSA_fnc_showSpecialDrone;

true;