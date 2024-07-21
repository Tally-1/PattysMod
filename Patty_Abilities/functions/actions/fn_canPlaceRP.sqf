params[
	["_man",nil,[objNull]]
];
private _abilities = _man getVariable ["PSA_abilities", []];
private _myRP      = PSA_allRallypoints get (getPlayerUID _man);
private _contested = (!isNil "_myRP")&&{(_myRP get"status")isEqualTo"contested"};

if!("rallyPoint" in _abilities) exitWith{false};
if (_contested)                 exitWith{false};
if (PSA_counterAttackActive)    exitWith{false};

true;