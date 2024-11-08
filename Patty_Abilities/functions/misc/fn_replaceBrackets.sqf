params[
	["_string",nil,[""]]
];
_string = _string regexReplace  ["]","}"];
private _arr = _string splitString"" apply{
	private _return = _x;
	if(_x isEqualTo "[")then{_return = "{"};
	if(_x isEqualTo "]")then{_return = "}"};
	_return;
};

_string = _arr joinString "";

_string;