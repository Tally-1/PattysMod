params[
	["_respawn",     false, [true]],
	["_customTitle", nil,     [""]],
	["_customText",  nil,     [""]]
];

private _lives    = [player] call PTTY_fnc_getLives;
private _strLife  = " lives";
private _icon     = "\a3\Ui_F_Curator\Data\CfgMarkers\kia_ca.paa";
private _iconText = str _lives;
private _title    = "STATUS:";
private _color    = [_lives] call PTTY_fnc_livesLeftColor;

if(_lives isEqualTo 1) then{_strLife = " life"};
if(_respawn)           then{_title = "LIFE LOST!"};

private _text = parseText(["You have ", _lives, _strLife, " left!"]joinString"");

if(!isNil "_customTitle") then{_title = _customTitle;};
if(!isNil "_customText")  then{_text  = _customText;};

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