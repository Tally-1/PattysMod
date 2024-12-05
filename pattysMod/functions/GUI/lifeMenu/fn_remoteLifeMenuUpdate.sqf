params[["_light",false,[true]]];
if(!hasInterface)exitWith{};

private _display = uiNamespace getVariable ["PTTY_LifeMenuDisplay",displayNull];
if(isNull _display)exitWith{};

private _lastRemoteUpdate = uiNamespace getVariable ["PTTY_lastRemoteUpdate",0];
private _time             = time-_lastRemoteUpdate;
private _data             = _display getVariable "PTTY_data";

if(isNil "_data")exitWith{};
if(_time < 0.2)  then{sleep (0.25-_time)};

_lastRemoteUpdate = uiNamespace getVariable ["PTTY_lastRemoteUpdate",0];
_time             = time-_lastRemoteUpdate;
if(_time < 0.2) exitWith{systemChat "cannot update menu"};
if(_light)      exitWith{_data call ["lightUpdate"]};

uiNamespace setVariable ["PTTY_lastRemoteUpdate",time];
[] call PTTY_fnc_initLifeMenu;

"Complete menu update" call p_dbg;

true;