params [
	["_corpse",     nil, [objNull]], 
	["_killer",     nil, [objNull]], 
	["_instigator", nil, [objNull]]
];
private _MRSdata = _corpse getVariable "PSA_mobileRespawnData";
if(isNil "_MRSdata")exitWith{};

_MRSdata call ["delete"];

true;