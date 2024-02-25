params[
	["_display", nil, [displayNull]]
];
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

_closeBtn    ctrlAddEventHandler ["ButtonClick", {closeDialog 1;}];
_transferBtn ctrlAddEventHandler ["ButtonClick", {["transfer"] call PTTY_fnc_lifeGUIalterLives;}];
if!(_isAdmin)exitWith{_components call PTTY_fnc_deactivateButtons;};

_giveBtn ctrlAddEventHandler     ["ButtonClick", {["give"]     call PTTY_fnc_lifeGUIalterLives;}];
_removeBtn ctrlAddEventHandler   ["ButtonClick", {["remove"]   call PTTY_fnc_lifeGUIalterLives;}];
_resetBtn ctrlAddEventHandler    ["ButtonClick", {["reset"]    call PTTY_fnc_lifeGUIalterLives;}];
_resetAllBtn ctrlAddEventHandler ["ButtonClick", {["resetAll"] call PTTY_fnc_lifeGUIalterLives;}];
