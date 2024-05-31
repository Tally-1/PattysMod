params[
    ["_man",   nil,[objNull]],
	["_crate", nil,[objNull]]	
];

if(isNil "_crate") exitWith{false};
if(isNull _crate)  exitWith{false};

private _crateData = _crate getVariable "PSA_crateData";
if(isNil "_crateData")exitWith{false};

private _owner = _crateData get "owner";
if(_owner isNotEqualTo _man)exitWith{false};

private _distance = _man distance2D _crate;
if(_distance > PSA_cratePickupDistance)exitWith{false};

true;