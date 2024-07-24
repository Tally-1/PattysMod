params[
	["_strArr",nil,[""]]
];
if!("[" in _strArr)exitWith{false};
if!("]" in _strArr)exitWith{false};
if!("," in _strArr)exitWith{false};

private _excluded = "[],.";
private _length   = count _strArr -1;
private _isNumArr = true;

for "_i" from 0 to _length do
{
	if!(_isNumArr)exitWith{};

	private _isNumber = true;
	private _letter   = _strArr select [_i,1];
	private _check    = (!(_letter in _excluded)) && {!(_letter isNotEqualTo "")};

	if(_check)
	then{_isNumber = [_letter] call PSA_fnc_strIsNumber};
	
	if!(_isNumber)exitWith{_isNumArr = false};
};


_isNumArr;