private _man       = player;
private _animState = animationState _man;
private _sounds    = ["beep_target", "hintExpand"];
private _text      = "Placing Rally Point";
private _placeTime = PSA_rallyPlaceTime;
private _endCode   = [[_man, _animState], PSA_fnc_onRallyPointCompleted];
private _abortCode = [[_man], PSA_fnc_onRallyPointAborted];
private _condition = [[_man], PSA_fnc_functionalMan];

[_sounds] spawn  PSA_fnc_playSoundList;
[_text, _placeTime, _endCode,_abortCode,_condition] call PSA_fnc_progressBar;

_man playMoveNow "AinvPknlMstpSlayWrflDnon_medicOther";

true;