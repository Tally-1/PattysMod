params[
    ["_man",nil,[objNull]]
];
private _secondWeapon = _man getVariable "PSA_WBK_secondWeapon";

[_man] call PSA_fnc_WBK_deleteWpHolders;

if(isNil "_secondWeapon")
exitWith{"No second weapon found" call p_dbg};

_secondWeapon params[
	["_holder",     objNull,[objNull]],
	["_weaponData", [],          [[]]]
];

[_man, _weaponData] call PSA_fnc_WBK_applySecondWeapon;