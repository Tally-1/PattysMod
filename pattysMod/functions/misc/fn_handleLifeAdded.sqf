params[
	["_reciever",nil,[objNull]]
];
if(_reciever != player) exitWith{};
if(alive player)        exitWith{};

private _disabled = localNamespace getVariable "PTTY_respawnDisabled";
if(!_disabled)exitWith{};

private _notWaiting = playerRespawnTime < 0;
if(_notWaiting)exitWith{};

[] spawn PTTY_fnc_enableRespawn;

true;