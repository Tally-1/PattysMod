disableSerialization;

("PSA_timerLayer" call BIS_fnc_rscLayer) cutRsc ["PSA_timers", "PLAIN"];

waitUntil {!isNull (uiNameSpace getVariable "PSA_timers")};

private _display = uiNameSpace getVariable "PSA_timers";

_display;