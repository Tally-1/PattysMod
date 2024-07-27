params [
	["_man",nil,[objNull]]
];

"Rally Point aborted" call p_dbg;

if!([_man] call PSA_fnc_functionalMan)exitWith{};

playSound "hintCollapse";

_man switchMove "amovpknlmstpsraswrfldnon";

true;