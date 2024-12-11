params[
	["_respawn",     false, [true]],
	["_customTitl",  nil,     [""]],
	["_customText",  nil,     [""]],
	["_customIcon",  nil,     [""]],
	["_customColor", nil,     [[]]]
];

private _lives    = [player] call PTTY_fnc_getLives;
private _strLife  = " Lives";
private _iconText = "";
private _title    = "Life Status:";
private _icon     = [_lives] call PTTY_fnc_livesLeftIcon;
private _color    = [1,1,1,1];

if(_lives isEqualTo 1) then{_strLife = " Life"};

private _text = parseText(["You have ", _lives, _strLife]joinString"");


if(_lives isEqualTo 0)    then{_text  = "Out of Lives"};
if(!isNil "_customTitl")  then{_title =    _customTitl};
if(!isNil "_customText")  then{_text  =    _customText};
if(!isNil "_customColor") then{_color =   _customColor};
if(!isNil "_customIcon")  then{_icon  =    _customIcon};

_color call PTTY_fnc_setNotificationIconColor;

[
	"livesLeft", 
	[
		_title, 
		_text, 
		_icon,
		_iconText,
		1
	]
] call BIS_fnc_showNotification;