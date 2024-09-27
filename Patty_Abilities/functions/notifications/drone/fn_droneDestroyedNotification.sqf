params[
    ["_drone",nil,[objNull]]
];
private _type     = _drone getVariable "PSA_droneType";
private _typeName = [_type] call PSA_fnc_capFirstLetter;
private _title    = [_typeName," Drone destroyed!"]joinString"";
private _text     = "";
private _icon     = "\Patty_Abilities\textures\icons\DroneCooldown.paa";

[
	_title, 
	_text, 
	_icon
] call PSA_fnc_showNotification;

true;