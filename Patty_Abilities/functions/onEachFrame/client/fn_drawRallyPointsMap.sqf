private _map = findDisplay 12 displayCtrl 51;
{
	if(typeName _y isEqualTo "HASHMAP")
	then{_y call ["drawMapIcon",[_map]]};

} forEach PSA_allRallypoints;