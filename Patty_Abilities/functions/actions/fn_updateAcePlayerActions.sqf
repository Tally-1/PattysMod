params[
	["_player",nil,[objNull]]
];
private _abilities      = _player getVariable ["PSA_abilities", []];
private _abilityActions = [_player] call PSA_fnc_getAllACESelfActionNames;

if(_abilities isEqualTo [])
exitWith{[_player] call PSA_fnc_removeAllAbilitySelfActions};

[_player, _abilities, _abilityActions] call PSA_fnc_updateAceCrateAction;
[_player, _abilities, _abilityActions] call PSA_fnc_updateAceRPAction;
[_player, _abilities, _abilityActions] call PSA_fnc_updateAceDroneActions;