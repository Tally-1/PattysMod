private _status        = _self get "status";
private _contested     = _status isEqualTo"contested";
private _contestedNow  = _self call ["contestedNow"];
private _deactivated   = _status isEqualTo"deactivated";
private _sameStatus    = _contested isEqualTo _contestedNow;

if(_deactivated)  exitWith{};
if(_sameStatus)   exitWith{_contested};
if(_contestedNow) exitWith{
	_self call ["onContestedStart"]; 
	true;
};

_self call ["onContestedEnd"];

false;