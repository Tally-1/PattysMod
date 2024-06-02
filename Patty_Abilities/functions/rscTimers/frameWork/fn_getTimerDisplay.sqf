private _display = uiNameSpace getVariable ["PSA_timers",displayNull];

if(!isNull _display)exitWith{_display};

private _display = call PSA_fnc_initTimerDisplay;

_display;