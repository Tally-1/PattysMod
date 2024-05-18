(call PTG_fnc_groupMenuSettings)
params[
	["_backColor", nil,[[]]],
	["_titleColor",nil,[[]]]
];
private _commitTime = 0.2;
private _display    = findDisplay 9702;
private _tree       = _display displayCtrl 1500;
private _header     = _display displayCtrl 1080;
private _backGround = _display displayCtrl 1082;
private _boxPos     = ctrlPosition _backGround;
private _txtSize    = 0.06;
private _playerList = _display ctrlCreate ["RscStructuredText", 1002];
private _frame      = _display ctrlCreate ["RscFrame", 1003];
private _listPos    = [_boxPos#0-0.5,_boxPos#1,0.4,0.35];
private _title      = "Players";
private _framePos   =[
	(_listPos#0), 
	(_listPos#1)-(_txtSize*0.51), 
	(_listPos#2), 
	(_listPos#3)+(_txtSize*0.51)
];

_playerList ctrlSetFontHeight _txtSize;
_playerList ctrlSetPosition _listPos;
_playerList ctrlSetBackgroundColor _backColor;

_frame ctrlSetTextColor  _titleColor;
_frame ctrlSetFontHeight (_txtSize*0.8);
_frame ctrlSetPosition   _framePos;

_playerList ctrlCommit _commitTime;
_frame      ctrlCommit 0;

[
	_frame,
	_title,
	_commitTime,
	_commitTime
] spawn PTG_fnc_spawnCtrlText;

_playerList;