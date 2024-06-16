params[
	["_crate",nil,[objNull]]
];
private _display = uiNameSpace getVariable ["PSA_timers",displayNull];
if(isNull _display)
exitWith{false};

private _activeTimers = _display getVariable ["PSA_AllTimers", []];
if(_activeTimers isEqualTo [])
exitWith{false};

private _crateTimers  = _activeTimers select { 
	private _data       = _x getVariable "PSA_TimerData";
	private _timerCrate = _data getOrDefault ["crate",objNull];
	private _sameCrate  = _timerCrate isEqualTo _crate;
	
	_sameCrate;
};
if(_crateTimers isEqualTo [])
exitWith{false};

true;