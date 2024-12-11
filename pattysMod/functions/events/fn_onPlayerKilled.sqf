params [
	["_player",nil,[objNull]]
];
call PTTY_fnc_updateLifeMap;

private _lives  = [_player] call PTTY_fnc_getLives;
// [true]remoteExec["PTTY_fnc_remoteLifeMenuUpdate"];

if(_lives > 0)exitWith{
	[_player] remoteExec ["PTTY_fnc_handleLifeAdded",_player];
};

[] remoteExec ["PTTY_fnc_disableRespawn",_player];

private _title = "ALERT:";
private _name  = name _player;
private _text  = [PTTY_eliminationText, _name] call PTTY_fnc_parseNameString;
private _icon  = "pattysMod\images\Dead4.paa";

[
    true,
    _title,
    _text,
    _icon

] remoteExecCall ["PTTY_fnc_livesLeftNotification"];


true;