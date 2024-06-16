params[
	["_crate",nil,[objNull]]
];
private _function  = { _this call PSA_fnc_retrieveMyCrate};
private _condition = { _this call PSA_fnc_canRetrieveThisCrate};
private _title     = "<t color='#eef74f'>Retrieve Resupply Crate</t>";
private _icon      = "\Patty_Abilities\textures\icons\RC.paa";

private _actionData = 
[
	_crate,
	_title,
	_condition,
	_function,
	_icon

] call PSA_fnc_simpleObjectActionACE;