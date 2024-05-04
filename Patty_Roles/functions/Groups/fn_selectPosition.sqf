/*
	File: fn_selectPosition.sqf
	Author: Dom
	Description: Selects the position in the group
*/
private _display = findDisplay 9702;
private _tree = _display displayCtrl 1500;
private _selectionPath = tvCurSel _tree;
private _oldGroup = group player;

_selectionPath params ["_groupIndex","_unitIndex"];

(parseSimpleArray (_tree tvData _selectionPath)) 
params ["_role","_limit"];
private _roleHolders  = [_role] call PTG_fnc_getPlayersByRole;
private _count        = count _roleHolders;
if(_count >= _limit)exitWith {_tree tvSetCurSel _selectionPath}; //role full

[player,_selectionPath, _role] remoteExecCall ["PTG_fnc_assignPlayer",2];
closeDialog 0;