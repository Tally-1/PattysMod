params[
    ["_type",  nil,  [""]],
    ["_reason", nil, [""]]
];
private _typeName = [[_type] call PSA_fnc_capFirstLetter, " Drone "]joinString"";
private _title    = [_typeName, _reason]joinString"";
private _icon     = "\A3\Air_F_Orange\UAV_06\Data\UI\Map_UAV_06_CA.paa";
private _text     = ["The ", _typeName,"has been stored, you may redeploy it immediately."]joinString"";

[
	_title, 
	_text, 
	_icon
] call PSA_fnc_showNotification;