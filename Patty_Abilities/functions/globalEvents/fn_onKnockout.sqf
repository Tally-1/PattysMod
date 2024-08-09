params[
	["_man",nil,[objNull]]
];
private _data = _man getVariable "PSA_mobileRespawnData";
if(isNil "_data")exitWith{};
if(!alive _man)exitWith{_data call ["delete"]};
_data call ["deactivate"];