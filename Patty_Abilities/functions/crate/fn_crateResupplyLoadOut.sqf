params[
	["_crate", nil,[objNull]],
	["_man",   nil,[objNull]]
];
private _time = PSA_crateResupplyTime;
private _text = "Resupplying";
private _code = [[_man],{_this call PSA_fnc_applyLoadOut}];

_man playMoveNow "AinvPknlMstpSlayWrflDnon_medic";

[_text, PSA_crateResupplyTime, _code, true] call PSA_fnc_progressBar;

true;