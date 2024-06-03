params[
	["_crate",nil,[objNull]]
];
private _statement = { [(_this#1)] call PSA_fnc_applyLoadOut};
private _condition = { true};
private _title     = "<t color='#f8aa45'>Resupply</t>";
private _icon      = "\a3\ui_f\data\igui\cfg\simpletasks\types\box_ca.paa";

private _actionData = 
[
	_crate,
	_title,
	_condition,
	_statement,
	_icon

] call PSA_fnc_simpleObjectActionACE;