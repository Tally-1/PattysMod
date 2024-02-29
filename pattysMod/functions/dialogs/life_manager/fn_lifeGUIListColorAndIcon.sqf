/*
Original Author: DOM
Edited by: Tally

*/
params [
	["_lifeCount", 0,                     [0]],
	["_unit",      objNull,         [objNull]],
	["_list",      controlNull, [controlNull]],
	["_index",     -1,                    [0]]
];

private _colour = [_lifeCount] call PTTY_fnc_livesLeftColor;
private _icon = "";

if!(alive _unit)   then{_icon   = "\a3\Ui_F_Curator\Data\CfgMarkers\kia_ca.paa"};

_list lbSetColorRight   [_index, _colour];
_list lbSetPictureRight [_index, _icon];

true;