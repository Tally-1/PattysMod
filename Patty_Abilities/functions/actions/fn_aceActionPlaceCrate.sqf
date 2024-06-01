private _man       = player;
private _title     = "Place Resupply Crate";
private _condition = { [player] call PSA_fnc_canPlaceCrate};
private _function  = { [player] call PSA_fnc_initCratePlacement};
private _icon      = "\a3\ui_f\data\igui\cfg\simpletasks\types\box_ca.paa";

[
	_man,
	_title,
	_condition,
	_function,
	_icon
] call PSA_fnc_simpleSelfActionACE;

true;