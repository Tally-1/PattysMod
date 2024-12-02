params[
	["_group",nil,[grpNull]]
];
(_self get "position")
params["_x", "_y", "_w", "_h"];
private _displayData  = _self call ["displayData"];
private _color        = _self get"frameColor";
private _frame        = _self get "frame";
private _title        = groupId _group;
private _editPos      = [_x+0.03,_y+0.07,_w*0.6,_h*0.075];
private _subTitlePos  = [_x+0.026,_y+0.045,_w*0.6,_h*0.075];
private _buttonPos    = [_x+0.03,_y+0.11,_w*0.3,_h*0.075];
private _buttonGPos   = [_x+0.03+(_w*0.3)+0.001,_y+0.11,_w*0.3,_h*0.075];
private _buttonCode   = PTTY_fnc_buttonApplyGroupName;
private _globalUpdate = {[] remoteExec ["PTTY_fnc_remoteLifeMenuUpdate"]};
private _editBox      = _displayData call ["addCtrl",                           ["RscEditMulti",_editPos]];
private _editFrame    = _displayData call ["addFrame",                             [_editPos, "", _color]];
private _subTitleTxt  = _displayData call ["addTextBox",                [_subTitlePos, "Edit Group Name"]];
private _applyButton  = _displayData call ["addButton",                 [_buttonPos, "Apply",_buttonCode]];
private _updateButton = _displayData call ["addButton", [_buttonGPos, "Global Menu Update",_globalUpdate]];
private _editCtrl     = _editBox      get "ctrl";
private _buttonCtrl   = _applyButton  get "ctrl";
private _buttonGCtrl  = _updateButton get "ctrl";
private _admin        = [player] call PTTY_fnc_isAdmin;

_editBox call ["setText",      [_title]];
_editBox call ["setTextColor", [[0.3,0.8,0.3,1]]];

_editCtrl ctrlSetFontHeight 0.05;
[_editCtrl] call PTTY_fnc_normalizeTextCtrlHeight;
ctrlSetFocus _editCtrl;
_editCtrl ctrlSetBackgroundColor [0,0,0,0.8];

_frame call ["spawnStringText", [_title, 0.5]];
_self  set  ["groupEditBox",         _editBox];
_self  set  ["currentGroup",           _group];

if(!_admin)
then{_subTitleTxt call["setTextColor", [[1,1,1,0.3]]]};
_editCtrl    ctrlEnable _admin;
_buttonCtrl  ctrlEnable _admin;
_buttonGCtrl ctrlEnable _admin;

private _newCtrls = [
	_editBox, 
	_editFrame, 
	_subTitleTxt,
	_applyButton,
	_updateButton
];

_newCtrls;