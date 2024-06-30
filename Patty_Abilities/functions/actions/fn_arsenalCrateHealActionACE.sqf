params[
	["_crate",nil,[objNull]]
];
private _condition = {true};
private _statement = {[_this#1] call PSA_fnc_selfHealProgressBar;};
private _title     = "<t color='#e0f213'>Full heal</t>";
private _icon      = "\Patty_Abilities\textures\icons\ACH.paa";

private _actionData = 
[
	_crate,
	_title,
	_condition,
	_statement,
	_icon

] call PSA_fnc_simpleObjectActionACE;

true;