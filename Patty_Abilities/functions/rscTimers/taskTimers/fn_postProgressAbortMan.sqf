params [
	["_man",nil,[objNull]]
];

"Action aborted" call p_dbg;

if!([_man] call PSA_fnc_functionalMan)exitWith{};

_man switchMove "amovpknlmstpsraswrfldnon";

true;