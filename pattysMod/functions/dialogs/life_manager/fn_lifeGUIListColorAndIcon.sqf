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

private _colour = [0,1,0,1];
private _icon = "";

if!(alive _unit)   then{_icon   = "\a3\Ui_F_Curator\Data\CfgMarkers\kia_ca.paa"};
if (_lifeCount < 4)then{_colour = [0.9,0.9,0.1,1]};
if (_lifeCount < 2)then{_colour = [1,0.451,0,1]};
if (_lifeCount < 1)then{_colour = [1,0,0,1]};

_list lbSetColorRight   [_index, _colour];
_list lbSetPictureRight [_index, _icon];

true;