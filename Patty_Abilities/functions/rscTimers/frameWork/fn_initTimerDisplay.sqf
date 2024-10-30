disableSerialization;
private _layerName = ["PSA_timerLayer_",round time]joinString"";

(_layerName call BIS_fnc_rscLayer) cutRsc ["PSA_timers", "PLAIN"];

waitUntil {!isNull (uiNameSpace getVariable "PSA_timers")};

private _display = uiNameSpace getVariable "PSA_timers";

_display;