private _man       = player;
private _clientId  = clientOwner;
private _placeTime = PSA_rallyPlaceTime;
private _text      = "Placing Rally Point";
private _animState = animationState _man;
private _endCode   = [["PSA_placeRallypoint", [_man, _clientId, _animState]], CBA_fnc_serverEvent];
private _abortCode = [[_man],PSA_fnc_postProgressAbortMan];
private _condition = [[_man], PSA_fnc_functionalMan];

[_text, _placeTime, _endCode,_abortCode,_condition] call PSA_fnc_progressBar;

_man playMoveNow "AinvPknlMstpSlayWrflDnon_medicOther";

true;