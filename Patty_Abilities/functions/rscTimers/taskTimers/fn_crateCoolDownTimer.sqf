params[
	["_endTime",   nil,        [0]]
];
private _text     = "Next crate available in: ";
private _icon     = "\a3\ui_f\data\igui\cfg\simpletasks\types\box_ca.paa";
private _while    = {};
private _endCode  = {playSoundUI ["click",1,1]; call PSA_fnc_crateReadyNotification;};
private _txtColor = [1,1,1,1];
private _bckColor = [0,0,0,0.1];

[_endTime, _text, _icon, _while,_endCode, _txtColor, _bckColor] call PSA_fnc_addRscTimer;

true;