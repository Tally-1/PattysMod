params[
	["_man", nil, [objNull]]
];
private _placeTime = PSA_cratePlacementTime;
private _text      = "Retrieving Crate";
private _code      = [
	[_man], 
	{
		params [
			["_man",nil,[objNull]]
		];
		private _crate = _man getVariable "PSA_myCrate";
		[_crate] remoteExecCall ["deleteVehicle",2];
		playSoundUI ["click", 1, 1];
		_this spawn PSA_fnc_endCrateAnim;
	}
];

[_text, _placeTime, _code] call PSA_fnc_progressBar;

true;