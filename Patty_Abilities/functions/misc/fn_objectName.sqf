params[
	["_object", nil,[objNull]]
];
private _type = typeOf _object;
private _name = getText (configfile >> "CfgVehicles" >> _type >> "displayName");

_name;