params [
	["_ctrl",nil,[controlNull]]
];
private _data        = _ctrl getVariable "PTTY_data";
private _displayData = _data call ["getParentData"];
private _actionMenu  = _displayData get "actionMenu";
private _newName     = ctrlText (_actionMenu get"groupEditBox"get"ctrl");
private _group       = _actionMenu get "currentGroup";

[_group, [_newName]] remoteExecCall ["setGroupId"];
_group setGroupIdGlobal [_newName];

[] remoteExec ["PTTY_fnc_remoteLifeMenuUpdate"];

true;