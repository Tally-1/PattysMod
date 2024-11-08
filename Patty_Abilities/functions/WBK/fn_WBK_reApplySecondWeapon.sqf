params[
    ["_man",nil,[objNull]]
];
private _secondWeapon = _man getVariable "PSA_WBK_secondWeapon";
if(isNil "_secondWeapon")exitWith{"No second weapon found" call p_dbg};

_secondWeapon params[
	["_holder",     objNull,[objNull]],
	["_weaponData", [],          [[]]]
];
deleteVehicle _holder;

[_man, _weaponData] call PSA_fnc_WBK_applySecondWeapon;