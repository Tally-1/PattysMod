{
	private _data = _x getVariable "PSA_crateData";
	_data call ["toggleContested"];
	
} forEach (PSA_specialCrates);