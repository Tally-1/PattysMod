params[
	["_man", nil, [objNull]]
];
private _placeTime = PSA_cratePlacementTime;
private _text      = "Retrieving Crate";
private _endCode   = [[_man], PSA_fnc_crateRetrieveProgressBarEnded];
private _abortCode = [[_man], PSA_fnc_crateRetrieveProgressBarAborted];
private _condition = [[_man], PSA_fnc_functionalMan];

[_text, _placeTime, _endCode, _abortCode, _condition] call PSA_fnc_progressBar;

true;