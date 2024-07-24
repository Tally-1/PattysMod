private _isModule     = _self get "isModule";
private _status       = _self get "status";
private _ownerName    = name (_self get "owner");
private _ownerMachine = _self get "machine";

if(_isModule)exitWith{};

if(_status isEqualTo "placed")
then{[_ownerName]remoteExecCall["PSA_fnc_notifyPlacedRP"]};

if(_status isEqualTo "moved")
then{[]remoteExecCall["PSA_fnc_notifyMovedRP",_ownerMachine]};

if(_status isEqualTo "contested")
then{[]remoteExecCall["PSA_fnc_notifyContestedRP",_ownerMachine]};

true;