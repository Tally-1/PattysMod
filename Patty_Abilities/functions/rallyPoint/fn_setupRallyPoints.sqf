// To set rallypoint players position:
// ["PSA_placeRallypoint", [player]] call CBA_fnc_serverEvent;

PSA_allRallypoints = createHashmapObject [[]];
PSA_allRallypoints set ["getNearest", PSA_fnc_nearestRP];

publicVariable "PSA_allRallypoints";

[
	"PSA_placeRallypoint",
	{_this call PSA_fnc_setRallyPoint}

] call CBA_fnc_addEventHandler;

[
	"PSA_removeRallypoint",
	{_this call PSA_fnc_removeRallyPoint}

] call CBA_fnc_addEventHandler;



"RallyPoints set up";