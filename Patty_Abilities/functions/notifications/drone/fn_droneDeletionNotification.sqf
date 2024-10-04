params[
    ["_type",  nil,  [""]],
    ["_reason", nil, [""]]
];
private _typeName = [[_type] call PSA_fnc_capFirstLetter, " Drone "]joinString"";
private _title    = [_typeName, _reason]joinString"";
private _icon     = "\Patty_Abilities\textures\icons\DroneAvaliable.paa";
private _text     = ["You may redeploy the ",_typeName,"immediately"]joinString"";

[
	_title, 
	_text, 
	_icon
] call PSA_fnc_showNotification;