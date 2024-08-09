params[
	["_display", nil, [displayNull]]
];
disableSerialization;

private _isAdmin    = [player] call PTTY_fnc_isAdmin;
private _components = [_display]call PTTY_fnc_lifeGUIComponents; _components
params[
	"_frame",
	"_list",
	"_giveBtn",
	"_transferBtn",
	"_removeBtn",
	"_resetBtn",
	"_resetAllBtn",
	"_closeBtn"
];

_closeBtn    ctrlAddEventHandler ["ButtonClick", {["PTTY_livesChanged"] call CBA_fnc_serverEvent; closeDialog 1}];
_transferBtn ctrlAddEventHandler ["ButtonClick", {["transfer"] call PTTY_fnc_lifeGUIalterLives; "transfer life" call PTDBG;}];
_transferBtn ctrlEnable false;
if!(_isAdmin)exitWith{_components call PTTY_fnc_LifeManagerDisableButtons;};

_giveBtn     ctrlAddEventHandler ["ButtonClick", {["give"]     call PTTY_fnc_lifeGUIalterLives; "give life"     call PTDBG;}];
_removeBtn   ctrlAddEventHandler ["ButtonClick", {["remove"]   call PTTY_fnc_lifeGUIalterLives; "remove life"   call PTDBG;}];
_resetBtn    ctrlAddEventHandler ["ButtonClick", {["reset"]    call PTTY_fnc_lifeGUIalterLives; "reset life"    call PTDBG;}];
_resetAllBtn ctrlAddEventHandler ["ButtonClick", {["resetAll"] call PTTY_fnc_lifeGUIalterLives; "resetAll life" call PTDBG;}];
