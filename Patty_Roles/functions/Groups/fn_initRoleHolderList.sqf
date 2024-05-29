(call PTG_fnc_groupMenuSettings)
params[
	["_backColor", nil,[[]]],
	["_titleColor",nil,[[]]]
];
private _commitTime  = 0.2;
private _display     = findDisplay 9702;
private _tree        = _display displayCtrl 1500;
private _header      = _display displayCtrl 1080;
private _backGround  = _display displayCtrl 1082;
private _boxPos      = ctrlPosition _backGround;
private _txtSize     = 0.06;
private _listTxtSize = 0.05;
private _listBackgr  = _display ctrlCreate ["RscStructuredText", 1004];
private _playerList  = _display ctrlCreate ["RscStructuredText", 1002];
private _frame       = _display ctrlCreate ["RscFrame", 1003];
private _lstBckGPos  = [_boxPos#0-0.5,_boxPos#1,0.4,0.35];
private _listPos     = [_lstBckGPos#0,_lstBckGPos#1+(_txtSize*0.3),_lstBckGPos#2,_lstBckGPos#3];
private _title       = "Players";
private _framePos    =[
	(_lstBckGPos#0), 
	(_lstBckGPos#1)-(_txtSize*0.4), 
	(_lstBckGPos#2), 
	(_lstBckGPos#3)+(_txtSize*0.4)
];

_listBackgr ctrlSetPosition _lstBckGPos;
_listBackgr ctrlSetBackgroundColor _backColor;

_playerList ctrlSetFontHeight _listTxtSize;
_playerList ctrlSetPosition _listPos;

_frame ctrlSetTextColor  _titleColor;
_frame ctrlSetFontHeight (_txtSize*0.8);
_frame ctrlSetPosition   _framePos;

_listBackgr ctrlCommit _commitTime;
_playerList ctrlCommit _commitTime;
_frame      ctrlCommit _commitTime;

[
	_frame,
	_title,
	_commitTime,
	_commitTime
] spawn PTG_fnc_spawnCtrlText;

_playerList;