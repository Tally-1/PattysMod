sleep 0.1;
private _time = localNamespace getVariable "PTTY_respawnDelay";
setplayerrespawntime _time;
localNamespace setVariable ["PTTY_respawnDisabled", false];

"Respawn enabled" call p_dbg;

true;