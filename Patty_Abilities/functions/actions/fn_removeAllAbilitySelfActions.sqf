params[
	["_man",nil,[objNull]]
];
private _abilityActions = [_man] call PSA_fnc_getAbilitySelfActionsACE;

{[_man, _x] call PSA_fnc_removeAceSelfAction} forEach _abilityActions;
[_man, "PSA_abilitiesACE"] call PSA_fnc_removeAceSelfAction;

true;