params[
    ["_man",     nil,[objNull]],
	["_loadOut", nil,     [[]]]
];
if(isNil "_loadOut")
then{_loadOut = _man getVariable "PSA_loadOut"};

if(isNil "_loadOut")
exitWith{[["No loadout found for ", name _man]] call p_dbg};

_man setUnitLoadout _loadOut;
[_man] call PSA_fnc_WBK_reApplySecondWeapon;

true;