params [
	["_man",objNull,[objNull]]
];
private _lives = [_man] call BIS_fnc_respawnTickets;
private _templatesUsed = getMissionConfigValue "RespawnTemplates";

if(isNil "_templatesUsed")
exitWith{
	Hint parseText("No respawn template defined!<br/>Set up respawn in mission editor.");
	"No respawn template defined!<br/>Set up respawn in mission editor." call PTDBG;
	nil;
};

// if ("Tickets" in _templatesUsed) then {
// 	_lives = _lives - 1; //display 1 less life as we are subtracting on death
// };


if!(_man in allPlayers)then{
	_lives = [_man, 0] call PTTY_fnc_addLifeToAi;
};

round _lives;