params[
	["_man", nil,[objNull]]
];
private _abilities       = _man getVariable ["PSA_abilities", []];
private _myCrate         = _man getVariable ["PSA_myCrate", objNull];
private _coolDown        = _man getVariable ["PSA_crateCooldown", 0];
private _placingEh       = _man getVariable "PSA_cratePlaceDeathEh";
private _isPlacingCrate  = !isNil "_placingEh";
private _timeSincePlaced = time - (_man getVariable ["PSA_crateTime",0]);

if!("crate" in _abilities) exitWith{false};
if!(isNull _myCrate)       exitWith{false};
if (time < _coolDown)      exitWith{false};
if (_timeSincePlaced < 3)  exitWith{false};
if (_isPlacingCrate)       exitWith{false};

true;