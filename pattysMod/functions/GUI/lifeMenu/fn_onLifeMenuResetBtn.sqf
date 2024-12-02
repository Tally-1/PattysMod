params[
	["_ctrl",nil,[controlNull]]
];
(_this call PTTY_fnc_onLifeMenuBtnClick)
params["_actionMenu", "_man", "_isAi"];

private _validReset = [_man] call PTTY_fnc_resetLivesMan;
private _debugMsg   = if(_validReset)then{[["Lives reset for ", name _man]]}else{[[name _man," Already have the default amount of lives"]]};

_debugMsg call PTDBG;
_actionMenu call ["updateManMenu"];

if(!_validReset)exitWith{};

private _icon  = "\pattysMod\images\Notification.paa";
private _title = "Alert!";
private _txt   = ["Your lives was reset by Admin"] joinString "";
[false, _title, _txt, _icon] remoteExecCall ["PTTY_fnc_livesLeftNotification", _man];

true;