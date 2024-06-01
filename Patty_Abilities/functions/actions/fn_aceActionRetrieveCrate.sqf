private _man       = player;
private _title     = "Retrieve Resupply Crate";
private _condition = PSA_fnc_canRetrieveMyCrate;
private _function  = PSA_fnc_retrieveMyCrate;
private _icon      = "\a3\ui_f\data\igui\cfg\simpletasks\types\box_ca.paa";

[
	_man,
	_title,
	_condition,
	_function,
	_icon
] call PSA_fnc_simpleSelfActionACE;

true;