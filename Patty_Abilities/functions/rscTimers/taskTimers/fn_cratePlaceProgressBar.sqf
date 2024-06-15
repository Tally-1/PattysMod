params[
	["_man", nil, [objNull]]
];
private _placeTime = PSA_cratePlacementTime;
private _text      = "Placing crate";
private _code      = [
	[_man], 
	{
		params [
			["_man",nil,[objNull]]
		];
		(_man getVariable "PSA_cratePosDir")
		params [
			["_pos", nil, [[]]],
			["_dir", nil,  [0]]
		];
		playSoundUI ["click", 1, 1];
		[_man, _pos, _dir] remoteExecCall ["PSA_fnc_initSpecialCrate",2];
	}
];

[_text, _placeTime, _code, true] call PSA_fnc_progressBar;

true;