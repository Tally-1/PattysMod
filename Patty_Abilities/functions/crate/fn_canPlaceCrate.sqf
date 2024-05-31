params[
	["_man", nil,[objNull]]
];
private _placingEh       = _man getVariable "PSA_cratePlaceDeathEh";
private _isPlacingCrate  = !isNil "_placingEh";
private _timeSincePlaced = time - (_man getVariable ["PSA_crateTime",0]);

if(_timeSincePlaced < 3) exitWith{false};
if(_isPlacingCrate)      exitWith{false};

true;