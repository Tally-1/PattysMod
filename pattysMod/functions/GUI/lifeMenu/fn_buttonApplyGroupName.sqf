params [
	["_ctrl",nil,[controlNull]]
];
private _data        = _ctrl getVariable "PTTY_data";
private _displayData = _data call ["getParentData"];
private _actionMenu  = _displayData get "actionMenu";
private _group       = _actionMenu get "currentGroup";
private _actionMenu  = _displayData get "actionMenu";
private _oldName     = groupId _group;
private _newName     = ctrlText (_actionMenu get"groupEditBox"get"ctrl");
private _msg         = [_oldName, " changed to  ", _newName]joinString"";
private _noChange    = _oldName isEqualTo _newName;

if(_noChange)exitWith{};

[_group, [_newName]] remoteExecCall ["setGroupId"];
_group setGroupIdGlobal [_newName];

[true] remoteExec ["PTTY_fnc_remoteLifeMenuUpdate"];

systemChat _msg;

true;