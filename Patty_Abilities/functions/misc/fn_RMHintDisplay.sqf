disableSerialization;
private _khaki = [0.68,0.75,0.51,1];
private _white = [1,1,1,1];
private _darkB = [0,0,0,0.5];
params[
	["_title",      nil,    [""]],
	["_text",       nil,    [""]],
	["_txtColor",   _white, [[]]],
	["_bckColor",   _darkB, [[]]],
	["_frameColor", _khaki, [[]]]
];

private _display = uiNameSpace getVariable ["PSA_hintDisplay",displayNull];
if(!isNull _display)
then{_display closeDisplay 1; uiSleep 0.1;};

1 cutRsc ["PSA_hintDisplay","PLAIN"];
waitUntil {!isNull (uiNameSpace getVariable "PSA_hintDisplay")};

private _display = uiNameSpace getVariable ["PSA_hintDisplay",displayNull];
private _backG   = _display ctrlCreate ["RscStructuredText", 0];
private _textBox = _display ctrlCreate ["RscStructuredText", 1];
private _frame   = _display ctrlCreate ["RscFrame", 2];
private _text    = parseText _text;

private _width    = 0.191 * safezoneW;
private _height   = 0.14  * safezoneH;
private _textH    = 0.05;
private _xPos     = (0.7 * safezoneW + safezoneX)+(_width*0.5);
private _yPos     = (0.2 * safezoneH + safezoneY)-_height*0.5;
private _backGPos = [_xPos,_yPos,_width,_height];
private _txtPos   = [_xPos,_yPos+0.025,_width,_height];
private _framePos = [
    _xPos, 
    _yPos-(_textH*0.52), 
    _width, 
    _height+(_textH*0.52)
];

_frame   ctrlSetPosition _framePos;
_backG   ctrlSetPosition _backGPos;
_textBox ctrlSetPosition _txtPos;
_frame   ctrlCommit 0;
_backG   ctrlCommit 0;
_textBox ctrlCommit 0;

_frame   ctrlSetFontHeight _textH;
_frame   ctrlSetTextColor  _khaki;
_textBox ctrlSetTextColor  _white;
_backG   ctrlSetBackgroundColor _bckColor;

_frame   ctrlSetText _title;
_textBox ctrlSetStructuredText _text;

[_frame] call PSA_fnc_normalizeTextSize;
[_textBox] call PSA_fnc_normalizeTextSize;