params[
	["_respawn",     false, [true]],
	["_customTitl",  nil,     [""]],
	["_customText",  nil,     [""]],
	["_customIcon",  nil,     [""]],
	["_customColor", nil,     [[]]]
];

private _lives    = [player] call PTTY_fnc_getLives;
private _strLife  = " lives";
private _iconText = "";//str _lives;
private _title    = "STATUS:";
private _icon     = [_lives] call PTTY_fnc_livesLeftIcon;
private _color    = [1,1,1,1];//[_lives] call PTTY_fnc_livesLeftColor;

if(_lives isEqualTo 1) then{_strLife = " life"};
if(_respawn)           then{_title = "LIFE LOST!"};

private _text = parseText(["You have ", _lives, _strLife, " left!"]joinString"");

if(!isNil "_customTitl")  then{_title = _customTitl;};
if(!isNil "_customText")  then{_text  = _customText;};
if(!isNil "_customColor") then{_color = _customColor;};
if(!isNil "_customIcon")  then{_icon  = _customIcon;};

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