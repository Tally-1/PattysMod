closeDialog 2;

private _display = createDialog ["life_GUI", true];

[_display] spawn PTTY_fnc_initLifeGUI;
uiNamespace setVariable ["PTTY_LifeManager", _display];

_display;