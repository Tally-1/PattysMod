private _man        = player;
private _title      = "Place Resupply Crate";
private _condition  = { [player] call PSA_fnc_canPlaceCrate};
private _function   = { [player] call PSA_fnc_initCratePlacement};
private _icon       = "\PATTY_ABILITIES\textures\icons\RC.paa";
private _actionData = 
[
	_man,
	_title,
	_condition,
	_function,
	_icon
] call PSA_fnc_simpleSelfActionACE;

private _crateActionName = _actionData#1;

_crateActionName;