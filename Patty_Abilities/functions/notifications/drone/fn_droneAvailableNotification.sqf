params[
    ["_typeName",nil,[""]]
];
// private _typeName = [_typeName, " Drone"]joinString"";
private _title    = [_typeName," Available!"]joinString"";
private _text     = ["You may deploy a ", _typeName, " again"]joinString"";
private _icon     = "\Patty_Abilities\textures\icons\DroneAvaliable.paa";

[
	_title, 
	_text, 
	_icon
] call PSA_fnc_showNotification;

true;