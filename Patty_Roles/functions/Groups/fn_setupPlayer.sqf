/*
	File: fn_setupPlayer.sqf
	Author: Dom & Tally
	Description: Finishes setting up the player in their new role/group
*/
params [
	["_desiredRole","rifleman",[""]],
	["_isRespawn",false,[true]]
];


private _roleConfig     = missionConfigFile >> "Dynamic_Roles" >> _desiredRole;
private _defaultLoadout = getArray(_roleConfig >> "defaultLoadout");
private _customVars      = getArray(_roleConfig >> "customVariables");

if (_isRespawn) then {
	player setUnitLoadout (missionNamespace getVariable ["PTG_savedLoadout",_defaultLoadout]);
} else {
	// systemChat "Player setup (On selection)";
	PTG_savedLoadout = _defaultLoadout;
	player setUnitLoadout _defaultLoadout;

	private _roleTraits = getArray(_roleConfig >> "traits");
	{
		_x params ["_trait","_value"];
		if (_value isEqualType true && {_value}) then {
			player setUnitTrait [_trait,false];
		};
	} forEach (getAllUnitTraits player);

	{
		_x params ["_trait","_value",["_custom","false"]];
		if (_value in ["true","false"]) then {_value = call compile _value};
		player setUnitTrait [_trait,_value,call compile _custom];
	} forEach _roleTraits;

	private _customVariables = getArray(_roleConfig >> "customVariables");
	{
		player setVariable [_x,nil,true];
	} forEach (missionNamespace getVariable ["PTG_myCustomVariables",[]]);

	PTG_myCustomVariables = [];
	{
		_x params ["_variable","_value","_global"];
		if (_value in ["true","false"]) then {_value = call compile _value};
		player setVariable [_variable,_value,call compile _global];
		PTG_myCustomVariables pushBack _variable;
	} forEach _customVariables;

	player setVariable ["PTG_role",_desiredRole,true];
};

["PTG_roleChanged", [player, _desiredRole, _customVars]] call CBA_fnc_localEvent;