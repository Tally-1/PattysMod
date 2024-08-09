{
	private _initNew = [_x]call PSA_fnc_canInitMRSP;
	if(_initNew)
	then{[_x] call PSA_fnc_initMRSP};
	
} forEach allUnits;

true;