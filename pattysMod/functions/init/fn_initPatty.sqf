[player, PTTY_defaultLives] call BIS_fnc_respawnTickets;

if(PTTY_Debug)then{
	{[_x, PTTY_defaultLives] call BIS_fnc_respawnTickets} forEach (entities "caManBase");
};

PTDBG = PTTY_fnc_debugMessage;

true;