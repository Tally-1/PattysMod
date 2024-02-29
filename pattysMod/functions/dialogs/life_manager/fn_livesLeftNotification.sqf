params[
	["_respawn",     false, [true]],
	["_customTitl", nil,      [""]],
	["_customText",  nil,     [""]],
	["_customIcon",  nil,     [""]]
];

private _lives    = [player] call PTTY_fnc_getLives;
private _strLife  = " lives";
private _icon     = "\pattysMod\images\Wounded_Icon.paa";
private _iconText = str _lives;
private _title    = "STATUS:";
private _color    = [_lives] call PTTY_fnc_livesLeftColor;

if(_lives isEqualTo 1) then{_strLife = " life"};
if(_respawn)           then{_title = "LIFE LOST!"};

private _text = parseText(["You have ", _lives, _strLife, " left!"]joinString"");

if(!isNil "_customTitl") then{_title = _customTitl;};
if(!isNil "_customText") then{_text  = _customText;};
if(!isNil "_customIcon") then{
	_iconText = "";
	_icon     = _customIcon; 
};

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