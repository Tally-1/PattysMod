params[
    ["_drone",nil,[objNull]]
];
private _type     = _drone getVariable "PSA_droneType";
private _typeName = [_type] call PSA_fnc_capFirstLetter;
private _title    = [_typeName," Drone destroyed!"]joinString"";
private _text     = "";
private _icon     = "\A3\Air_F_Orange\UAV_06\Data\UI\Map_UAV_06_CA.paa";

[
	_title, 
	_text, 
	_icon
] call PSA_fnc_showNotification;

true;