params[
	["_crate",nil,[objNull]]
];
private _condition = { _this call  PSA_fnc_canResupplyOnCrate};
private _statement = { _this spawn PSA_fnc_crateResupplyLoadOut};
private _title     = "<t color='#e0f213'>Resupply Loadout</t>";
private _icon      = "\Patty_Abilities\textures\icons\RC.paa";

private _actionData = 
[
	_crate,
	_title,
	_condition,
	_statement,
	_icon

] call PSA_fnc_simpleObjectActionACE;