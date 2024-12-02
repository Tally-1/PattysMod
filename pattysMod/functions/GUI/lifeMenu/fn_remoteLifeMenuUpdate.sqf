if(!hasInterface)exitWith{};

private _display = uiNamespace getVariable ["PTTY_LifeMenuDisplay",displayNull];
if(isNull _display)exitWith{};

private _lastRemoteUpdate = uiNamespace getVariable ["PTTY_lastRemoteUpdate",0];
private _time             = time-_lastRemoteUpdate;
private _data             = _display getVariable "PTTY_data";
if(isNil "_data")exitWith{};

_data call ["updateTVList"];

if(_time < 0.3)then{
	sleep (0.35-_time);
};

_lastRemoteUpdate = uiNamespace getVariable ["PTTY_lastRemoteUpdate",0];
_time             = time-_lastRemoteUpdate;
if(_time < 0.3)exitWith{systemChat "cannot update menu"};

uiNamespace setVariable ["PTTY_lastRemoteUpdate",time];
[] call PTTY_fnc_initLifeMenu;

true;