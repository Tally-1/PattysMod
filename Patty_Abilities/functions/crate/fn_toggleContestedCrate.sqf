private _contested     = _self get   "contested";
private _destroyed     = _self get   "destroyed";
private _retrieved     = _self get   "retrieved";
private _contestedNow  = _self call ["contestedNow"];
private _statusChanged = _contested isEqualTo _contestedNow;

if(_destroyed)     exitWith {false};
if(_retrieved)     exitWith {false};
if(_statusChanged) exitWith {_contestedNow};

_self set ["contested", _contestedNow];

if(_contestedNow)exitWith{_self call ["onContestedStart"]; true};

_self call ["onContestedEnd"];

false;