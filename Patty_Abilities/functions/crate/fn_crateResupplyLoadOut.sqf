params[
	["_crate", nil,[objNull]],
	["_man",   nil,[objNull]]
];
private _time = PSA_crateResupplyTime;
private _text = "Resupplying";
private _code = [
	[_man], 
	{
		params[["_man",nil,[objNull]]];
		_this call PSA_fnc_applyLoadOut;
		[_man,true] call PSA_fnc_endResupplyAnim;
	}
];

_man setVariable ["PSA_resupplyEndTime", time+_time];
[_text, PSA_crateResupplyTime, _code] call PSA_fnc_progressBar;
[_man, _time]                         call PSA_fnc_crateResupplyAnim;

true;