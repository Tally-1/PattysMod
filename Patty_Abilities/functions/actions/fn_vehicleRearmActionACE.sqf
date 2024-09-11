params[
	["_crate",nil,[objNull]]
];
private _condition = {_this call PSA_fnc_vehicleRearmActionCondition};
private _statement = {_this call PSA_fnc_rearmNearestVehicle};
private _title     = "<t color='#e0f213'>Rearm Vehicle</t>";
private _icon      = "\Patty_Abilities\textures\icons\RC.paa";

private _actionData = 
[
	_crate,
	_title,
	_condition,
	_statement,
	_icon

] call PSA_fnc_simpleObjectActionACE;

true;