private _path = call PTTY_fnc_getLifeMenuPath;
params[
	["_treePath",_path,[[]]]
];
private _data       = call PTTY_fnc_initLifeMenuDisplay;
private _treeView   = _data call ["initTreeView"];
private _actionMenu = _data call ["initActionMenu"];
private _treeCtrl   = _treeView get "ctrl";

_data set ["actionMenu", _actionMenu];
_data set ["treeView",     _treeView];

_treeCtrl tvSetCurSel _treePath;
_treeCtrl spawn
{[_this,tvCurSel _this] call PTTY_fnc_onTreeSelChangedLifeMenu};

true;