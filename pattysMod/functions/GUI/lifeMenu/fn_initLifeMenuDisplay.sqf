private _display = uiNamespace getVariable ["PTTY_LifeMenuDisplay",displayNull];
if(!isNull _display)then{
	_display closeDisplay 1;
	waitUntil {isNull _display};
};

private _display = createDialog ["PTTY_LifeMenuDisplay", true];
private _data    = [_display, "PTTY_LifeMenuDisplay"] call PTTY_fnc_initDisplayData;
private _methods = [
	["initTreeView",       PTTY_fnc_initLifeTreeView],
	["initTVFrame",   PTTY_fnc_initLifeTreeViewFrame],
	["initTVList",     PTTY_fnc_initLifeTreeViewList],
	["updateTVList", PTTY_fnc_updateLifeTreeViewList],
	["lightUpdate",     PTTY_fnc_lifeMenuUpdateLight],
	["initActionMenu",   PTTY_fnc_initLifeActionMenu],
	["initActionFrame", PTTY_fnc_initLifeActionFrame]
];

{_data set [(_x#0),(_x#1)]} forEach _methods;

_data set ["listPos",         [0.29, 0.23, 0.15, 0.42]];
_data set ["listUpdate",                             0];
_data set ["frameColor", [0.678431,0.74902,0.513726,1]];

_data;