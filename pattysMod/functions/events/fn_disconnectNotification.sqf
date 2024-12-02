[["Disconnect notification for ", _name]] call PTDBG;
if(!hasInterface)exitWith{};

params [
    ["_name",  nil,[""]],
    ["_lives", nil, [0]]
];
private _title    = [_name," Disconnected!"]joinString"";
private _text     = [_name," has ", _lives, " lives left."]joinString"";
private _icon     = "\A3\ui_f\data\map\markers\military\circle_CA.paa";
private _iconText = str _lives;



[
	_title, 
	_text, 
	_icon,
    _iconText
] call PSA_fnc_showNotification;

true;