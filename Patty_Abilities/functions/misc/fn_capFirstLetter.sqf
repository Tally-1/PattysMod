params[
   ["_string", nil, [""]]
];

private _arr    = _string splitString "";
private _letter = toUpper (_arr#0);

_arr deleteAt 0;
_arr insert [0, [_letter], false];
private _newString = (_arr joinString "");

_newString;