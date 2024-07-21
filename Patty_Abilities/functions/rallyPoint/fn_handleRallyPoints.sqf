{
    
    private _data = _y;
    if(typeName _data isEqualTo "HASHMAP")then{
        private _ownerObj = _data get "owner";
        if(!isNull _ownerObj)
        then{_data call ["toggleContested"]};
    
}} forEach PSA_allRallypoints;

true;