private _drone = _this#0;
private _invalid = (!alive _drone)or{!canMove _drone};
if(_invalid)exitWith{_drone removeAllEventHandlers "Fired"};
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

[_drone] call PSA_fnc_handleDroneAmmo;


_drone setVariable  ["PSA_lastWeaponFire", round time];
if!(_drone getVariable "PSA_hidden")exitWith{};

[_drone] call PSA_fnc_showSpecialDrone;

true;