params[
	["_crate", nil,[objNull]],
	["_man",   nil,[objNull]]
];
private _time      = PSA_crateResupplyTime;
private _text      = "Resupplying";
private _endCode   = [[_man],{_this call PSA_fnc_applyLoadOut}];
private _abortCode = [[_man], PSA_fnc_resupplyBarAborted];
private _condition = [[_man, _crate], PSA_fnc_resupplyBarCondition];

_man playMoveNow "AinvPknlMstpSlayWrflDnon_medic";

[_text, _time, _endCode, _abortCode, _condition] call PSA_fnc_progressBar;

true;