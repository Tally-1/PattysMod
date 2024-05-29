PTG_isACEEnabled = isClass (configFile >> "CfgPatches" >> "ace_common");
player addEventHandler ["Respawn",{_this call PTG_fnc_onRespawn}];

if(isNil "PTG_arsenalBoxes")then{PTG_arsenalBoxes=[]};

if(PTG_isACEEnabled)exitWith{call PTG_fnc_clientInitACE};

{_x addAction ["Role Manager",PTG_fnc_initGroupMenu]}forEach PTG_arsenalBoxes;

[
	missionNamespace,
	"arsenalClosed",
	{PTG_savedLoadout = getUnitLoadout player}

] call BIS_fnc_addScriptedEventHandler;