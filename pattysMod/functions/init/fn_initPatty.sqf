[] call PTTY_fnc_initClient;
if(!isServer)exitWith{};
if(PTTY_Debug)then{[] call PTTY_fnc_addBotLives;};

true;