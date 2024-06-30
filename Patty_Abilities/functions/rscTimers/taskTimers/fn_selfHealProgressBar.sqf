params[
	["_man", nil, [objNull]]
];
private _time      = PSA_crateHealTime;
private _text      = "Healing";
private _endCode   = [
	[_man],
	{
		params["_man"];
		[_man,_man] call ace_medical_treatment_fnc_fullHeal;
		playSound "hintCollapse";
	}	
];
private _abortCode = [[_man], PSA_fnc_postProgressAbortMan];
private _condition = [[_man], PSA_fnc_functionalMan];
private _sounds    = ["beep_target", "hintExpand"];

[_text, _time, _endCode, _abortCode, _condition] call PSA_fnc_progressBar;
[_sounds] spawn  PSA_fnc_playSoundList;

_man playMoveNow "AinvPknlMstpSlayWrflDnon_medic";

true;