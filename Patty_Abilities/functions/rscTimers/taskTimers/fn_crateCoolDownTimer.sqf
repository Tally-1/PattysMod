params[
	["_endTime",   nil,        [0]]
];
private _text     = "Next crate available in: ";
private _icon     = "\Patty_Abilities\textures\icons\RC.paa";
private _while    = {};
private _endCode  = { call PSA_fnc_crateReadyNotification};
private _txtColor = [1,1,1,1];
private _bckColor = [0,0,0,0.1];

[_endTime, _text, _icon, _while,_endCode, _txtColor, _bckColor] call PSA_fnc_addRscTimer;

true;