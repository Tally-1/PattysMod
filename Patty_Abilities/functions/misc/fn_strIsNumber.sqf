params[
	["_strNumber",nil,[""]]
];
private _parsedResult = parseNumber _strNumber;
if(_parsedResult isEqualTo 0
&&{_strNumber isNotEqualTo "0"})exitWith{false};

true;