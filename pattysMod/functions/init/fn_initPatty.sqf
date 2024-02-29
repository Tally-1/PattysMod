PTDBG = PTTY_fnc_debugMessage;

[] call PTTY_fnc_initClient;
if(!isServer)exitWith{};
// if(PTTY_Debug)then{[] call PTTY_fnc_addBotLives;};
[] call PTTY_fnc_respawnEh;
[] call PTTY_fnc_killedEh;

true;