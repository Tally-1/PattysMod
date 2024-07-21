params[
	["_player",         nil,[objNull]],
	["_abilities",      nil,     [[]]],
	["_abilityActions", nil,     [[]]]
];
private _hasRPAbility = "rallyPoint" in _abilities;
private _hasRPAction  = PSA_RPAction in _abilityActions;

if(_hasRPAbility isEqualTo true
&&{_hasRPAction isEqualTo false})then{
	PSA_RPAction = [_player] call PSA_fnc_aceActionPlaceRP;
};

if(_hasRPAbility isEqualTo false
&&{_hasRPAction isEqualTo true})then{
	[_player, PSA_RPAction] call PSA_fnc_removeAceSelfAction;
};