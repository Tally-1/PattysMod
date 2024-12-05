params [
    ["_name",  nil,[""]],
    ["_lives", nil, [0]]
];
private _dbgMsg = [_name, " disconnected with ", _lives, " lives."]joinString"";
[_dbgMsg,true,true] call PTDBG;

if(!hasInterface)exitWith{};

private _title    = "Player Disconnected";
private _text     = [_name," had ", _lives, " lives"]joinString"";
private _icon     = "\pattysMod\images\Disconnect1.paa";
private _iconText = str _lives;

[
	_title, 
	_text, 
	_icon
] call PSA_fnc_showNotification;

true;