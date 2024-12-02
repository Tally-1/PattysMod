params [
	["_string", nil, [""]],
	["_name",   nil, [""]]
];
private _newString = _string  regexReplace ["<name>", _name];

_newString;