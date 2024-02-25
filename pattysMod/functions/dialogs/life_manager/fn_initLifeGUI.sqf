params[
	["_display", nil, [displayNull]]
];
private _controls = [_display]call PTTY_fnc_lifeGUIComponents; _controls
params["_frame", "_list"];

[_frame]    call PTTY_fnc_initLifeGUIFrame;
[_list]     call PTTY_fnc_initLifeGUIList;
[_display]  call PTTY_fnc_initLifeGUIButtons;
[_controls] call PTTY_fnc_setCtrlArrTxtSizes;