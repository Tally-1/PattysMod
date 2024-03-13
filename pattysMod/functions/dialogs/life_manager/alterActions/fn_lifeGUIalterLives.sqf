/*
	File: fn_alterLives.sqf
	Author: Dom
	Edited by: Tally
	Description: Adjusts the players lives depending on selection
*/
params [
	["_action","",[""]]
];
private _display    = uiNamespace getVariable "PTTY_LifeManager";
private _components = [_display] call PTTY_fnc_lifeGUIComponents;
private _listbox    = _components#1;
private _index      = lbCurSel _listbox;
private _uid        = _listbox lbData _index;
 
if(_uid isEqualTo "")
then{_uid = _listbox lbText _index;};
_uid call PTDBG;

private _unit       = [_uid]  call PTTY_fnc_findPlayerByUID;
private _unitsLives = [_unit] call PTTY_fnc_getLives;
private _isAi       = !(_unit in allPlayers);
private _title      = "New Life!";                            // For the notification.
private _icon       = "pattysMod\images\SkullBones_Icon.paa"; // For the notification.

switch _action do {
	// The variables declared above will be "remembered" in the functions called below since 
	// the variableName of the function works as codeblock inserted into the "switch" logic.
	case "transfer": PTTY_fnc_lifeGUItransferAction;
	case "give":     PTTY_fnc_lifeGUIgiveAction;
	case "remove":   PTTY_fnc_lifeGUIremoveAction;
	case "reset":    PTTY_fnc_lifeGUIresetAction;
	case "resetAll": PTTY_fnc_lifeGUIresetAllAction;
};

//This should in theory update the Menu for all players.
[] remoteExecCall ["PTTY_fnc_updateLifeManager", -clientOwner];

_listbox lbSetCurSel _index;