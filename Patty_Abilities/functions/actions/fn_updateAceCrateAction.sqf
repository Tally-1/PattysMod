params[
	["_player",         nil,[objNull]],
	["_abilities",      nil,     [[]]],
	["_abilityActions", nil,     [[]]]
];
private _hasCrateAbility = "crate" in _abilities;
private _hasCrateAction  = PSA_crateAction in _abilityActions;

if(_hasCrateAbility isEqualTo true
&&{_hasCrateAction isEqualTo false})then{
	PSA_crateAction = [_player] call PSA_fnc_aceActionPlaceCrate;
};

if(_hasCrateAbility isEqualTo false
&&{_hasCrateAction isEqualTo true})then{
	[_player, PSA_crateAction] call PSA_fnc_removeAceSelfAction;
};