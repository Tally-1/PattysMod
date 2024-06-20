params[
	["_player",     nil, [objNull]],
	["_role",       nil,      [""]],
	["_customVars", nil,      [[]]]
];
private _varNames        = _customVars apply {toLower(_x#0)};
private _abilityDeclared = "psa_abilities" in _varNames;

if!(_abilityDeclared)exitWith{
	_player setVariable ["PSA_abilities", [], true];
	[_player] call PSA_fnc_updateAcePlayerActions;
};

private _index = _customVars findIf {toLower(_x#0) isEqualTo "psa_abilities"};
private _value = call compile ((_customVars#_index)#1);

_player setVariable ["PSA_abilities", _value, true];

[_player] call PSA_fnc_updateAcePlayerActions;