PTG_isACEEnabled = isClass (configFile >> "CfgPatches" >> "ace_common");
player addEventHandler ["Respawn",PTG_fnc_onRespawn];

if(isNil "PTG_arsenalBoxes")then{PTG_arsenalBoxes=[]};

if(PTG_isACEEnabled)exitWith{call PTG_fnc_clientInitACE};

{_x addAction ["Open Roles menu",PTG_fnc_initGroupMenu]}forEach PTG_arsenalBoxes;

[
	missionNamespace,
	"arsenalClosed",
	{PTG_savedLoadout = getUnitLoadout player}

] call BIS_fnc_addScriptedEventHandler;