params [
    ["_player",nil,[objNull]]
];
private _lifeMap     = missionNamespace getVariable "PTTY_lifeMap";
private _uid         = [_player] call PTTY_fnc_getPlayerUID;
private _playerLives = round([_player] call PTTY_fnc_getLives);
private _default     = round(_lifeMap getOrDefault [_uid, PTTY_defaultLives])-1;
private _msg         = [name _player, " has ",_playerLives," lives"]joinString "";
private _exitMessage =  {[_msg] remoteExecCall ["PTTY_fnc_debugMessage"]; diag_log _msg};

if(_default isEqualTo _playerLives) exitWith _exitMessage;

[_player,_default - _playerLives] call BIS_fnc_respawnTickets;

_msg = ["Applied ",_default," lives to ", name _player]joinString "";

[_msg] remoteExecCall ["PTTY_fnc_debugMessage"]; 

diag_log _msg;