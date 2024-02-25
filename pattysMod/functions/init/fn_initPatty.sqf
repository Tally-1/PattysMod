[]spawn{ 
waitUntil{time>0};

[player, PTTY_defaultLives] call BIS_fnc_respawnTickets;

PTDBG = PTTY_fnc_debugMessage;

if(PTTY_Debug)then{
	{[_x, PTTY_defaultLives] call BIS_fnc_respawnTickets} forEach (entities "caManBase");
};

};