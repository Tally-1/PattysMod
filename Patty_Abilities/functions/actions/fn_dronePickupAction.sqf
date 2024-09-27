params[
    ["_drone",nil,[objNull]]
];
private _function  = { _this call PSA_fnc_dronePickupBar};
private _condition = { _this call PSA_fnc_pickupDroneCondition};
private _title     = "<t color='#eef74f'>Pick up</t>";
private _icon      = "\Patty_Abilities\textures\icons\DroneAbility.paa";

private _actionData = 
[
	_drone,
	_title,
	_condition,
	_function,
	_icon

] call PSA_fnc_simpleObjectActionACE;