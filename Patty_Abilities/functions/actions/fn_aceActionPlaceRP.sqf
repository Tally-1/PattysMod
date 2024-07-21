private _man        = player;
private _title      = "Place Rally Point";
private _condition  = { [player] call PSA_fnc_canPlaceRP};
private _function   = { [player] spawn PSA_fnc_playerSetRallyPoint};
private _icon       = "\PATTY_ABILITIES\textures\icons\RP.paa";
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