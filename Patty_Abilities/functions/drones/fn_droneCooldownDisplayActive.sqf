params[ 
	["_droneType",nil,[""]]
];
private _display = uiNameSpace getVariable ["PSA_timers",displayNull];
if(isNull _display)exitWith{false};

private _countDownActive = false;
{
	private _txt = toLower ctrlText _x;
	if("drone" in _txt
	&&{_droneType in _txt})
	exitWith{
		[[_droneType, " drone is on countdown"],true,false,1] call p_dbg;
		_countDownActive = true;
	};

} forEach (allControls _display);


_countDownActive;