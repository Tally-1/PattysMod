{
    private _data = _y;
    if(typeName _data isEqualTo "HASHMAP")
	then{_data call ["toggleContested"]};

} forEach PSA_allRallypoints;

true;