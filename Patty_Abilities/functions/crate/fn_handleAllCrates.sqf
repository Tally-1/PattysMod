{
	private _data  = _x getVariable "PSA_crateData";
	private _owner = _data get "owner";
	
	if(!isNull _owner)then{_data call ["toggleContested"]};
	
} forEach (PSA_specialCrates);

true;