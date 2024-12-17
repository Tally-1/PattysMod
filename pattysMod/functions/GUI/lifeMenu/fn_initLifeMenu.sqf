private _path = call PTTY_fnc_getLifeMenuPath;
params[
	["_treePath",_path,[[]]]
];
private _lastMenuInit = localNamespace getVariable ["PTTY_lastMenuInit",0];
private _timeSince    = time - _lastMenuInit;
private _newOpen      = _treePath isEqualTo [0];

// Exit if the button was just pressed to open the menu.
if(_timeSince<2)
exitWith{hint "Do not spam the menu!"};

// Store the time if it the menu was just opened.
if(_newOpen)then{localNamespace setVariable ["PTTY_lastMenuInit",time]};

private _data       = call PTTY_fnc_initLifeMenuDisplay;
private _actionMenu = _data call ["initActionMenu"];
private _treeView   = _data call ["initTreeView"];
private _treeCtrl   = _treeView get "ctrl";

_data set ["actionMenu", _actionMenu];
_data set ["treeView",     _treeView];

_treeCtrl tvSetCurSel _treePath;
_treeCtrl spawn
{[_this,tvCurSel _this] call PTTY_fnc_onTreeSelChangedLifeMenu};

true;