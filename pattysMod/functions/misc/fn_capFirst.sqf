params[
	["_string",nil,[""]]
];
private _arr = (toLower _string)splitString"";
private _cap = toUpper (_arr#0);

_arr set [0,_cap];

private _new = _arr joinString"";

_new;