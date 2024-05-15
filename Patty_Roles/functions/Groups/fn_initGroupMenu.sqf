/*
	File: fn_initGroupMenu.sqf
	Author: Dom & Tally.
	Description: Open and populates the group menu
*/
(call PTG_fnc_groupMenuSettings)
params[
	["_backColor", nil,[[]]],
	["_titleColor",nil,[[]]],
	["_title",     nil,[""]]
];

private _display    = createDialog ["PTG_groupMenu",true];
private _frame      = _display ctrlCreate ["RscFrame", 1001];
private _tree       = _display displayCtrl 1500;
private _header     = _display displayCtrl 1080;
private _backGround = _display displayCtrl 1082;
private _headerText = _display displayCtrl 1000;
private _headerPos  = ctrlPosition _header;
private _boxPos     = ctrlPosition _backGround;
private _txtSize    = 0.05;

_boxPos params["_boxX", "_boxY", "_boxW", "_boxH"];
call PTG_fnc_initGroupMenuButtons;

_frame      ctrlSetTextColor       _titleColor;
_backGround ctrlSetBackgroundColor _backColor;
_header     ctrlSetBackgroundColor [0,0,0,0];

_frame ctrlSetFontHeight _txtSize;
_frame ctrlSetPosition   _boxPos;
_frame ctrlCommit 0;

_frame ctrlSetPosition [
	_boxX, 
	_boxY-(_txtSize*0.5), 
	_boxW, 
	_boxH+(_txtSize*0.5)
];

_frame ctrlCommit 0.5;
[
	_frame,
	_title,
	1,
	0.5
] spawn PTG_fnc_spawnCtrlText;

private _myPath = [0,0];

{[_x] call PTG_fnc_addGroupMenuEntry} forEach PTG_dynamicGroups;

_tree tvSetCurSel _myPath;